package cafe

import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class InitialServiceSpec extends Specification implements ServiceUnitTest<InitialService>{

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
