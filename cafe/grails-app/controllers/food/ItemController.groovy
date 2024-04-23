package food

import grails.gorm.transactions.Transactional



class ItemController {
    def itemService
    def categoryService
    def sql
    def index() {

        //create operation start
        def itemName = params.name
        def itemPrice = params.double('price')
        def itemDescription = params.description
        def itemDiscountedPrice = params.double('discountedPrice')
        def itemImage = params.bytes('image')
        def categoryId = params.int('categoryId')
        def createdBy = params.createdBy

        def result = sql.executeInsert("""
        INSERT INTO Item (name, price, description, discountedPrice, image, category_id, dateCreated, createdBy)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    """, [
                itemName,
                itemPrice,
                itemDescription,
                itemDiscountedPrice,
                itemImage,
                categoryId,
                new Date(),
                createdBy
        ])
        if (result > 0) {
            render "Item created successfully"
        } else {
            render "Failed to create item"
        }
        //create operation end

        //read operation start
        Item obj = sql.rows("SELECT * FROM items")
        if(obj){
            render "${obj}"
        }else{
            render "Empty table"
        }
        //read operation end
    }

    def create() {
    }
}