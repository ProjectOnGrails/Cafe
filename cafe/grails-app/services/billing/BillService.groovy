package billing

import grails.gorm.transactions.Transactional

@Transactional
class BillService {

    boolean add(Bill billinstance) {
        if(billinstance.save()){
            return true
        }
        return false
    }
}
