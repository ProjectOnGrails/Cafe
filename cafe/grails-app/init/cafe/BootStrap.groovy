package cafe

import com.cafe.Requestmap
import com.cafe.Role
import com.cafe.User
import com.cafe.UserRole
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
        new Role(
                authority: 'ROLE_ADMIN',
        ).save()
        def user = new User(
                username: 'admin',
                password: 'admin'
        )
        new Employee(name:'Sujan',gender: Employee.Gender.MALE,email: 'karna.sujan52@gmail.com',number:'9848317348',joinedDate: new Date(),lastUpdated: new Date(),createdBy: 'admin',updatedBy: 'admin',user: user).save()
        User user1 = User.findByUsername('admin')
        Role role = Role.findByAuthority('ROLE_ADMIN')
        UserRole userRole = new UserRole(
                user: user1,
                role: role
        ).save()

    }

    def destroy = {
    }
}
