package cafe

import com.cafe.Requestmap
import com.cafe.Role
import com.cafe.User
import com.cafe.UserRole
import grails.gorm.transactions.Transactional
import user.Employee



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
        new Requestmap(url: '/employee/**',      configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/bill/**',      configAttribute: 'ROLE_ADMIN').save()
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
            

            
            def emp1 = new Employee(name: 'Sujan', gender: Employee.Gender.MALE, email: 'karna.sujan52@gmail.com',number: 9848317348,createdBy: 'admin', user: user)

            emp1.save(failOnError:true)

            def userRole = new UserRole(
                    user: user,
                    role: roleAdmin
            )
            userRole.save(failOnError:true)

        }
    }
    def destroy = {
    }
}
