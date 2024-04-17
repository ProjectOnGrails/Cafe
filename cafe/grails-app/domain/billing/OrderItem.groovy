package billing

import food.Item

class OrderItem {
    static belongsTo = [bill:Bill]
    static hasMany = [item: Item]
    int quantity
    double amount
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy

    static constraints = {
        quantity nullable: false,blank: false
        amount nullable: false,blank: false
        lastUpdated nullable: true
    }
}
