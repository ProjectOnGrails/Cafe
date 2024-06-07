package cafe

import com.cafe.Requestmap
class BootStrap {
    def initialService
    def springSecurityService
    def init = { servletContext ->

        for (String url in [
                '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*']) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()
        }
        new Requestmap(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/category/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/item/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/employee/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/bill/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/dashboard/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/ordercancellation/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/orderitem/**', configAttribute: 'ROLE_ADMIN').save()
        springSecurityService.clearCachedRequestmaps()
        initialService.firstEntry()

    }

    def destroy = {
    }
}
