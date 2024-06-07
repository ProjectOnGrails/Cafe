package billing

import food.Item

class OrderItem {
    static belongsTo = [item: Item,bill:Bill]
    int quantity = 1
    double amount

    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy

    static constraints = {
        quantity nullable: false,blank: false,min: 1
        amount nullable: false,blank: false,min: 0.0d
        lastUpdated nullable: true
    }
}
