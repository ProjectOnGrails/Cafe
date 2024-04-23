package food

import grails.gorm.transactions.Transactional

@Transactional
class CategoryService {

    boolean save(Category categoryInstance) {
        if(categoryInstance.save()){
            return true
        }else{
            return false
        }
    }

    boolean delete(long id){
        Category categoryInstance = Category.findById(id)
        if(categoryInstance.delete(flush:true)){
            return true
        }else{
            return false
        }
    }
}
