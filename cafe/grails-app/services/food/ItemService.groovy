package food

import grails.gorm.transactions.Transactional

@Transactional
class ItemService {

    boolean save(Item itemInstance){
        if(itemInstance.save(failOnError:true)){
            return true
        }else{
            return false
        }
    }

    boolean delete(Item itemInstance) {
        if(itemInstance.delete(flush:true)){
            return true
        }else{
            return false
        }
    }
}
