package auth

import com.cafe.Role
import grails.gorm.transactions.Transactional


class RoleController {
    def roleService
    def index() {
        def roles = Role.list()
        [roles:roles]
    }
    def add(){
        try{
            Role role = new Role(params)
            if(roleService.save(role)){
                flash.message = "${role.authority} added to roles."
            }else{
                flash.message = "${role.authority} couldn't be added to roles."
            }
        }catch (e){
            flash.message = "Error during saving data. ${e.message}"
        }
        redirect(view: "index")
    }
    @Transactional
    def delete(Long id) {
        def roleInstance = Role.get(id)
        if (!roleInstance) {
            flash.message = "Role not found with id $id"
            redirect(action: "index")
        } else {
            try {
                roleInstance.delete(flush: true)
                flash.message = "Role deleted successfully"
            } catch (Exception e) {
                flash.message = "Error deleting role: ${e.message}"
            }
            redirect(action: "index")
        }
    }
    @Transactional
    def update() {
        try{
            def param1 = params.param1
            def param2 = params.param2
            Role role = Role.get(param1)
            if(role){
                role.authority = param2
                role.save()
                flash.message = "Role updated successfully."
                redirect(action: "index")
            }else{
                flash.message = "Role update failed. Role not found."
                redirect(action: "index")
            }
        }catch(e){
            flash.message = "Error while updating role: $e.message"
            redirect(action: "index")
        }

    }
}
