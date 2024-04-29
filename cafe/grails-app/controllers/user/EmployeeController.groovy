package user

import com.cafe.Role
import com.cafe.User
import com.cafe.UserRole


class EmployeeController {
    def springSecurityService

    def index() {
    }

    def create(){
        try{
            User user = new User(
                    username: 'sujan',
                    password: 'sujan'
            )

            user.save()
            Role role = Role.findById(2)
            UserRole userRole = new UserRole(
                user: user,
                    role: role
            )
            println(user)
            println(role)
            userRole.save(failOnError:true)

            Employee employeeInstance = new Employee(params)
            employeeInstance.createdBy = springSecurityService.currentUser
            if(employeeInstance.save()){
                flash.message = "${employeeInstance.name} added to employee."
            }else{
                flash.message = "${employeeInstance.name} couldn't be added to employee. ${employeeInstance.errors}"
            }
        }catch (e){
            flash.message = "Error during saving data. ${e.message}"
        }
        redirect(view: "index")
    }
}
