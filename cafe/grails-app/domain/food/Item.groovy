package food

class Item {
    String name
    int price
    String description
    int discountedPrice
    byte[] image
    static belongsTo = [category: Category]
    static constraints = {
        name size: 0..30,blank: false
        imageURL nullable: true
        imageURL (size: 0..2048000)
    }
}
