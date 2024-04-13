package billing

import food.Item

class OrderItem {
    static belongsTo = [order:Order]
    static hasMany = [item: Item]
    int quantity
    double amount
    static constraints = {
        quantity nullable: false,blank: false
        amount nullable: false,blank: false
    }
}
