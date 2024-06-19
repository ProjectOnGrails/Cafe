package billing

import com.cafe.User
import grails.gorm.transactions.Transactional

class BillController {
def springSecurityService


    def index() {


    }
    @Transactional
    def submitBill(){
        Bill billInstance = new Bill(params)
        billInstance.user = springSecurityService.currentUser
        billInstance.save(failOnError:true,flush:true)
        def dataToPass = [billId: billInstance.billNumber]
        redirect(controller:'orderitem',action: 'saveItem',params:dataToPass)
    }

}
