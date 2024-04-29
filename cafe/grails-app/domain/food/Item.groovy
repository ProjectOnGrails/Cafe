package food

class Item {
    String name
    double price
    String description
    double discountedPrice
    byte[] image
    static belongsTo = [category: Category]
    int updateCount = 0

    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static constraints = {
        name size: 0..30,blank: false,nullable: false
        imageURL nullable: true
        imageURL (size: 0..2048000)
        description nullable: true
        lastUpdated nullable: true, blank:true
        updatedBy nullable: true, blank: true
    }
    def beforeInsert = {
        dateCreated = new Date()
    }
    def beforeUpdate ={
        lastUpdated = new Date()
        if(isDirty('name')){
            updateCount++;
        }
    }
}
