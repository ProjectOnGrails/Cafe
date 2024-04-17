package user

import billing.Bill
import com.cafe.User


class Employee {
    String name
    Gender gender
    static enum Gender{
        MALE, FEMALE, OTHER
    }
    String email
    long number
    Date joinedDate
    static  hasMany = [bill: Bill]

    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [user: User]

    static constraints = {
        name nullable: false,blank: false
        gender nullable: false,blank: false
        email nullable: false,blank: false, email: true
        number nullable: false,blank: false
        joinedDate nullable: false,blank: false
        lastUpdated nullable: true
    }
    def beforeInsert = {
        dateCreated = new Date()
    }
    def beforeUpdate ={
        lastUpdated = new Date()
    }
}


