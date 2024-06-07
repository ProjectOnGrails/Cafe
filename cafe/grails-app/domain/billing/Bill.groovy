package billing

import user.Employee

class Bill {

    int billNumber = 100
    static belongsTo = [employee: Employee]
    Date orderDate
    double amount = 0
    static hasOne = [cancellationRequest: OrderCancellation]


    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy

    int updateCount = 0
    static constraints = {
        orderDate nullable: false,blank: false,date: true
        amount nullable: false,blank: false
        lastUpdated nullable: true
        updatedBy nullable: true

    }
    def beforeInsert = {
        billNumber +=1
        dateCreated = new Date()

    }
    def beforeUpdate ={
        lastUpdated = new Date()
        if(isDirty()){
            updateCount++;
        }
    }


}
