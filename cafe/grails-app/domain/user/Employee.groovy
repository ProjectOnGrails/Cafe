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
        name nullable: false,blank: false
        gender nullable: false,blank: false
        email nullable: false,blank: false, email: true
        number nullable: false,blank: false
        joinedDate nullable: false,blank: false
    }

}
