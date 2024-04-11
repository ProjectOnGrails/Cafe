package user

import billing.Order

import javax.validation.constraints.Email

class Employee {
    String name
    String gender
    Email email
    long number
    Date joinedDate
    static belongsTo = [role:Role]
    static  hasMany = [order: Order]
    static constraints = {
    }

}
