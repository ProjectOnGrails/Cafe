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

    def delete() {
        try {
            if(!roleService.delete(params.param1)){
                flash.message = "Role with id ${params.param1} not found."

            }else{
                flash.message = "Role with id ${param1} deleted."
            }
        }catch(e){
            flash.message = "Error deleting role: ${e.message}"
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
