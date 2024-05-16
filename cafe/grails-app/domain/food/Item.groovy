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
        image nullable: true,maxSize: 1024 * 1024 * 2
        description nullable: true,blank: true
        lastUpdated nullable: true, blank:true
        updatedBy nullable: true, blank: true
        discountedPrice nullable:true, blank:true
    }
    def beforeInsert = {
        dateCreated = new Date()
    }
    def beforeUpdate ={
        lastUpdated = new Date()
        if(isDirty()){
            updateCount++;
        }
    }
}
