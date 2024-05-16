package user

import com.cafe.Role
import com.cafe.User
import com.cafe.UserRole
import grails.gorm.transactions.Transactional


class EmployeeController {
    def springSecurityService
    def employeeService


    def index() {
        List<Employee> employees = Employee.list()
        [employees:employees]
    }

    def createForm(){
        List<Role> roles = Role.list()
        render (template: 'create',model: [roles:roles])
    }
    def create(){
        try{
            println("params values are:${params}")
            Employee employeeInstance = new Employee(params)
            User userInstance = new User()
            UserRole userRoleInstance = new UserRole()
            employeeInstance.createdBy = springSecurityService.currentUser
            userInstance.username = params.username
            userInstance.password = params.password
            if(employeeService.add(employeeInstance)){
                Employee employeeInstance2 = Employee.findByEmail(employeeInstance.email)
                userInstance.employee = employeeInstance2
                if(userInstance.save(failedOnError:true)){
                    User userInstance2 = User.findByUsername(userInstance.username)
                    def id = params.roleId
                    Role roleInstance = Role.findById(id as Long)
                    userRoleInstance.user=userInstance2
                    userRoleInstance.role= roleInstance
                    if(employeeService.addUserRole(userRoleInstance)){
                        flash.message = "${employeeInstance.name} added to employee.${userInstance.username} added to user.${userRoleInstance.user.username} could not be added to UserRole."
                    }else{
                        flash.message = "${employeeInstance.name} added to employee.${userInstance.username} added to user.${userRoleInstance.user.username} could not be added to UserRole."
                    }

                }else{
                    flash.message = "${employeeInstance.name} added to employee.${userInstance.username} could not be added to user."
                }

            }else{
                flash.message = "${employeeInstance.name} couldn't be added to employee. ${employeeInstance.errors}"
            }
        }catch (e){
            flash.message = "Error during saving data. ${e.message}"
        }
        redirect(view: "index")
    }

    def delete() {
        Employee employeeInstance = Employee.findById(params.id)
        if (employeeInstance){
            try {
                if(employeeService.delete(employeeInstance)){
                    flash.message = "Employee with id ${id} deleted."
                }else{
                    flash.message = "Employee with id ${id} could not be deleted."
                }

            }catch(e){
                flash.message = "Error deleting employee: ${e.message}"
            }
            finally {
                redirect(action:"index")
            }
        }else{
            flash.message = "Cannot find employee with Id:${id}"
            redirect(action:"index")
        }
    }

    def details(){
        def employeeId = params.id
        Employee employeeInstance = Employee.findById(employeeId)
        User userInstance = employeeInstance.user
        if(employeeInstance){
            render (template: 'details',model: [employeeInstance:employeeInstance,userInstance:userInstance])
        }else{
            render "${message(code: 'default.not.found.message', args: [message(code: 'Employee'), ""])}"
        }
    }

    def edit(){
        def id = params.id
        Employee employeeInstance = Employee.findById(id)
        if(employeeInstance){
            render (template: 'edit',model: [employeeInstance:employeeInstance])
        }else{
            render "${message(code: 'default.not.found.message', args: [message(code: 'Employee'), ""])}"
        }
    }

    @Transactional
    def update(){
        def employeeId = params.id
        Employee employeeInstance = Employee.findById(employeeId)
        employeeInstance.lastUpdated = springSecurityService.currentUser
        if(employeeInstance){
            try {
                bindData(employeeInstance, params)
                employeeInstance.updatedBy = springSecurityService.currentUser
                if(employeeInstance.save(flush:true)) {
                    flash.message = "${message(code: 'default.updated.message', args: [message(code: 'Employee'), employeeInstance.name])}"
                    redirect(action:"index")
                }else {
                    flash.message = "Error while updating employee."
                    redirect(action: "index")
                }
            }catch(e) {
                flash.error = "Employee update failed: ${e.message}"
                redirect(action: "index")
            }
        }else{
            flash.error = "${message(code: 'default.not.found.message', args: [message(code: 'Employee'), ""])}"
            redirect(action: "index")
        }
    }

}
