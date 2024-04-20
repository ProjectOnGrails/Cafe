package auth

import com.cafe.Role
import grails.gorm.transactions.Transactional


class RoleController {
    def roleService
    def index() {
        def roles = Role.list()
        [roles:roles]
//        def response=[
//                draw: params.int('draw'),
//                recordsTotal: roles.size(),
//                recordsFiltered: roles.size(),
//                data: roles
//        ]
//        render response as JSON
    }
    def add(){
        Role role = new Role(params)
        if(role.id){
            update(role.id,role.authority)
        }else{
            try{
                if(roleService.save(role)){
                    flash.message = "${role.authority} added to roles."
                }else{
                    flash.message = "${role.authority} couldn't be added to roles."
                }
            }catch (e){
                flash.message = "Error during saving data. ${e.message}"
            }
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
    def update(Long id, String authority) {
        try{
            Role roleInstance = Role.get(id)
            if(!roleInstance){
                flash.message = "Role not found with id $id"
            }else{
                roleInstance.authority = authority
                roleInstance.save()
                flash.message = "Role updated with id $id"
            }
        }catch(e){
            flash.message = "Error while updating role: $e.message"
        }
    }
}
