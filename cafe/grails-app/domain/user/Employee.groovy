package user

import billing.Order

import javax.validation.constraints.Email

class Employee {
    String name
    String gender
    String email
    long number
    Date joinedDate
    static  hasMany = [order: Order]
    static constraints = {
    }

}
