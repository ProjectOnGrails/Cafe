package food

class Category {
    String name
    String description
    static constraints = {
        name size: 0..30,blank: false
    }
}
