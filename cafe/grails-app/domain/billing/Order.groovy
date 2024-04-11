package billing


import user.Employee

class Order {
    static belongsTo = [employee: Employee]
    Date orderDate
    int amount
    static constraints = {
    }
}
