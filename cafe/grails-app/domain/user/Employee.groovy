package user

import billing.Order

import javax.validation.constraints.Email

class Employee {
    String name
    Gender gender
    static enum Gender{
        MALE, FEMALE, OTHER
    }
    String email
    long number
    Date joinedDate
    static  hasMany = [order: Order]

    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static constraints = {
        name nullable: false,blank: false
        gender nullable: false,blank: false
        email nullable: false,blank: false, email: true
        number nullable: false,blank: false
        joinedDate nullable: false,blank: false
    }
}

