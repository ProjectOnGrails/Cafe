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
    int joinedDays = 0
    static  hasMany = [bill: Bill]

    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    int updateCount = 0
    static hasOne = [user: User]

    static constraints = {
        name nullable: false,blank: false
        gender nullable: false,blank: false
        email nullable: false,blank: false, email: true
        number nullable: false,blank: false
        user nullable: true
        updatedBy nullable: true
        lastUpdated nullable: true
        bill nullable: true
        updatedBy nullable: true
    }
    def beforeInsert = {
        dateCreated = new Date()

    }
    def beforeUpdate ={
        lastUpdated = new Date()
        if(isDirty()){
            updateCount++;
        }
    }
}


