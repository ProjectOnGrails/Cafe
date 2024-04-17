package food

class Item {
    String name
    double price
    String description
    double discountedPrice
    byte[] image
    static belongsTo = [category: Category]
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static constraints = {
        name size: 0..30,blank: false,nullable: false
        imageURL nullable: true
        imageURL (size: 0..2048000)
        description nullable: true
        lastUpdated nullable: true
    }
}
