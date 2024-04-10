package user

import javax.validation.constraints.Email

class Customer {
    String name
    Email email
    long number
    String address
    static constraints = {
    }
}
