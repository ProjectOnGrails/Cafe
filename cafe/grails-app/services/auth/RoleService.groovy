package auth

import com.cafe.Role
import grails.gorm.transactions.Transactional

@Transactional
class RoleService {

    boolean save(Role role) {
        if(role.save()){
            return true
        }
        return false
    }
}
