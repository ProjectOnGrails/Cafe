package cafe

import com.cafe.Requestmap
import com.cafe.Role
import com.cafe.User
import com.cafe.UserRole
import grails.gorm.transactions.Transactional
import user.Employee



@Transactional
class BootStrap {
    def init = { servletContext ->

        for (String url in [
                '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*']) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()
        }
        new Requestmap(url: '/role/**',      configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/category/**',      configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/item/**',      configAttribute: 'ROLE_ADMIN').save()
        if (Employee.count() == 0) {

            def roleAdmin = new Role(
                    authority: 'ROLE_ADMIN',
            ).save()

            def user = new User(
                    username: 'admin',
                    password: 'admin'
            )

            def emp1 = new Employee(name: 'Sujan', gender: Employee.Gender.MALE, email: 'karna.sujan52@gmail.com', number: '9848317348', joinedDate: new Date(),dateCreated:new Date(), lastUpdated: new Date(), createdBy: 'admin', updatedBy: 'admin', user: user).save()
            new UserRole(
                    user: user,
                    role: roleAdmin
            ).save()

        }
    }
    def destroy = {
    }
}
