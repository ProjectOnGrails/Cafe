package cafe

import com.cafe.Role
import com.cafe.User
import com.cafe.UserRole
import grails.gorm.transactions.Transactional
import user.Employee

@Transactional
class InitialService {
def firstEntry(){
    if (Employee.count() == 0) {

        def roleAdmin = new Role(
                authority: 'ROLE_ADMIN',
        )
        roleAdmin.save()

        def user = new User(
                username: 'admin',
                password: 'admin'
        )
        user.save()


        def emp1 = new Employee(name: 'Sujan', gender: Employee.Gender.MALE, email: 'karna.sujan52@gmail.com', number: 9848317348, createdBy: 'admin', user: user)

        emp1.save(failOnError: true)

        def userRole = new UserRole(
                user: user,
                role: roleAdmin
        )
        userRole.save(failOnError: true)
    }
    }

}
