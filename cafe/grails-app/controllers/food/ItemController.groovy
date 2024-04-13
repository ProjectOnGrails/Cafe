package food

import grails.gorm.transactions.Transactional



class ItemController {
    def itemService
    def categoryService
    def index() { }

    def create(){
        Item obj = new Item()
        List<Category> categories = categoryService.read()

        [data:obj,categories:categories]
    }
    @Transactional
    def save(){
        try {
            if(params){
                def item = new Item(params)
                item.save()
                flash.message = "item has been saved."
                redirect(view: "index")
            }else{
                flash.message = "item cannot be saved."
                redirect(view: "create")
            }
        }catch(e){
            flash.message = "Cannot connect to database" + "${e.message}"
            redirect(view: "create")
        }

    }
    def show(){
        try{
            if(itemService.read()){
                [item:itemService.read()]
            }
            else{
                flash.message = "No data in database."
                redirect(view: "index")
            }
        }catch(e){
            flash.message = "Cannot connect to database."+"${e.message}"
            redirect(view: "index")
        }

    }
    def getImage(Long id) {
        Item data = Item.get(id)
        if (data && data.imageURL) {
            response.contentType = 'image/jpeg' // Set appropriate content type
            response.outputStream << data.imageURL
            response.outputStream.flush()
        } else {
            response.status = 404
        }

    }
}
