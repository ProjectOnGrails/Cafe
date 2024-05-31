package food

import grails.gorm.transactions.Transactional


class ItemController {
    def springSecurityService
    def itemService

    def index() {
        List<Category> categories = Category.list()
        List<Item> items = Item.list()
        [items:items,categories:categories]
    }

    def createForm(){
        List<Category> categories = Category.list()
        render(template: 'create',model:[categories:categories])
    }

    def create() {
        try {
            println ("this is params value:${params}")
            Item itemInstance = new Item(params)
            def category = Category.findById(params.category.id)
            itemInstance.category = category
            itemInstance.image = params.image.bytes
            itemInstance.createdBy = springSecurityService.currentUser
            if (itemService.save(itemInstance)) {
                flash.message = "${itemInstance.name} added to item."
            } else {
                flash.message = "${itemInstance.name} could not be added to item."
            }
        }catch(e){
            flash.message = "Error while adding ${itemInstance.name}  to item.${e.message}"
        }
        finally {
            redirect(action:'index')
        }
    }

    def delete(long id){
        Item itemInstance = Item.findById(id)
        if(itemInstance){
            try {
                if(itemService.delete(itemInstance)){
                    flash.message = "Item with name: ${itemInstance.name} deleted successfully!"
                }
                else{
                    flash.message = "Could not delete item: ${itemInstance.name}"
                }
                println(itemService.delete(itemInstance))
            }catch(e){
                flash.message = "Error while deleting item: ${itemInstance.name}.${e.message}"
            }
            finally{
                redirect(view: 'index')
            }
        }else{
            flash.message = "Item with id: ${id} not found in database."
        }
    }

    def edit(){
        List<Category> categories = Category.list()
        def id = params.id
        Item itemInstance = Item.findById(id)

        render(template: 'edit',model:[itemInstance:itemInstance,categories: categories])
    }

    @Transactional
    def update(long id){
        Item itemInstance = Item.findById(id)
       def img = itemInstance.image
        itemInstance.properties = params
        if(itemInstance.image.length <= 0){
            itemInstance.image = img
        }
        itemInstance.updatedBy = springSecurityService.currentUser
        try{
            if(itemService.save(itemInstance)){
                flash.message = "Item with name: ${itemInstance.name} updated successfully!"
            }else{
                flash.message = "Item with name: ${itemInstance.name} could not be updated."
            }
        }catch(e){
            flash.message = "Error while updating item: ${itemInstance.name}.${e.message}"
        }finally{
            redirect(action: 'index')
        }
    }

    def detailCard(){
        def id = params.id
        Item itemInstance = Item.findById(id)
        render(template: 'detail',model:[itemInstance:itemInstance])
    }

    def viewPic(){
        Item itemInstance =Item.findById(params.id)
        response.outputStream << itemInstance.image
        response.outputStream.flush()
        return ;

    }
}