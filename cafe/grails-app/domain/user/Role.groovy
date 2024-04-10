package user

class Role {
    String name
    static hasMany = [employee:Employee]
    static constraints = {
    }
}
