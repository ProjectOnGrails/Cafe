package cafe

import com.cafe.Requestmap
import com.cafe.User
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
        def user = new User(
                username: 'admin',
                password: 'admin'
        )
        new Employee(name:'Sujan',gender: Employee.Gender.MALE,email: 'karna.sujan52@gmail.com',number:'9848317348',joinedDate: new Date(),dateCreated: new Date(),lastUpdated: new Date(),user: user).save()
    }

    def destroy = {
    }
}
