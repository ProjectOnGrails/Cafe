package food

class Category {
    String name
    String description
    int updateCount = 0
    static hasMany = [items:Item]

    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy

    static constraints = {
        name size: 0..30,blank: false,nullable: false
        description nullable: true,blank: true
        lastUpdated nullable: true
        updatedBy nullable: true,blank: true
        lastUpdated nullable: true,blank:true
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
