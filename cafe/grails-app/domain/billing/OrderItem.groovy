package billing

import food.Item

class OrderItem {
    static belongsTo = [item: Item,bill:Bill]
    int quantity = 1
    double amount

    static constraints = {
        quantity nullable: false,blank: false,min: 1
        amount nullable: false,blank: false,min: 0.0d
    }
}
