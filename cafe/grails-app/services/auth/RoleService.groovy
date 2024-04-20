package auth

import com.cafe.Role
import grails.gorm.transactions.Transactional

@Transactional
class RoleService {

    boolean save(Role role) {
        if(role.save()){
            return true
        }else{
            return false
        }

    }

    boolean delete(def id){
        Role role = Role.get(id)
        if(!role){
            return false
        }else{
            role.delete(flush:true)
            return true
        }

    }
}
