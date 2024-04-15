package food

class Category {
    String name
    String description
    static hasMany = [items:Item]

    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy

    static constraints = {
        name size: 0..30,blank: false,nullable: false
        description nullable: true
    }
}
