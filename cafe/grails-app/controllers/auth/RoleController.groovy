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

    def edit(){
        def id = params.id
        Role roleInstance = Role.findById(id)
        if(roleInstance){
          render (template: 'edit',model: [roleInstance:roleInstance])
        }else{
            render "${message(code: 'default.not.found.message', args: [message(code: 'Role'), ""])}"
        }
    }

    def delete() {
        def id = params.id
        try {
            if(roleService.delete(id)){

                flash.message = "Role with id ${id} deleted."
            }else{
                flash.message = "Role with id ${id} not found."
            }
        }catch(e){
            flash.message = "Error deleting role: ${e.message}"
        }
        redirect (action:'index')
    }

    @Transactional
    def update() {
            def roleId = params.id
            def roleAuthority = params.authority
            Role roleInstance = Role.findById(roleId)
            if(roleInstance){
                try {
                    roleInstance.authority = roleAuthority
                    if(roleInstance.save(flush:true)) {
                        flash.message = "${message(code: 'default.updated.message', args: [message(code: 'Role'), roleInstance.authority])}"
                        redirect(action:"index")
                    }else {
                        flash.message = "Error while updating role."
                        redirect(action: "index")
                    }
                }catch(e) {
                    flash.error = "Medical Test update failed: ${e.message}"
                    redirect(action: "index")
                }
            }else{
                flash.error = "${message(code: 'default.not.found.message', args: [message(code: 'Role'), ""])}"
                redirect(action: "index")
            }
        }
    }

