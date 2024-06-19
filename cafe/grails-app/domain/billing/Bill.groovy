package billing

import com.cafe.User
import user.Employee

class Bill {

    int billNumber = 100
    static belongsTo = [user: User]
    Date orderDate = new Date()
    double amount = 0

    static constraints = {
        orderDate nullable: false, blank: false, date: true
        amount nullable: false, blank: false
        billNumber nullable: false

    }
    def beforeInsert() {
        def maxBillNumber = Bill.createCriteria().get {
            projections {
                max 'billNumber'
            }
        }
        billNumber = (maxBillNumber ?: 0) + 1
    }
}

