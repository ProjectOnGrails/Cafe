package billing

import user.Customer
import user.Employee

class Order {
    String tableNo
    static belongsTo = [customer: Customer,employee: Employee]
    Date orderDate
    int amount
    boolean status
    static constraints = {
    }
}
