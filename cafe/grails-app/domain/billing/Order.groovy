package billing


import user.Employee

class Order {
    static belongsTo = [employee: Employee]
    Date orderDate
    double amount
    static constraints = {
        orderDate nullable: false,blank: false,date: true
        amount nullable: false,blank: false

    }
}
