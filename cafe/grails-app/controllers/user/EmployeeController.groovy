package user
import grails.gorm.transactions.Transactional


class EmployeeController {
    def springSecurityService
    def employeeService

    def index() {
        List<Employee> employees = Employee.list()
        [employees:employees]
    }

    def create(){
        try{
            Employee employeeInstance = new Employee(params)
            employeeInstance.createdBy = springSecurityService.currentUser
            if(employeeService.add(employeeInstance)){
                flash.message = "${employeeInstance.name} added to employee."
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
                employeeService.delete(employeeInstance)
                flash.message = "Employee with id ${id} deleted."
            }catch(e){
                flash.message = "Error deleting role: ${e.message}"
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
        if(employeeInstance){
            render (template: 'details',model: [employeeInstance:employeeInstance])
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
