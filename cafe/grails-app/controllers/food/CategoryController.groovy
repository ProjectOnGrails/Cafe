package food

import grails.gorm.transactions.Transactional



class CategoryController {
    def categoryService
    def index() { }

    def create(){
        Category obj = new Category()
        [data:obj]
    }

    def save(Category data){
        try {
            if(categoryService.create(data)){
                flash.message = "${data.name} category has been saved."
                redirect(view: "index")
            }else{
                flash.message = "${data.name} category cannot be saved."
                redirect(view: "create")
            }
        }catch(e){
            flash.message = "Cannot connect to database" + "${e.message}"
            redirect(view: "create")
        }

    }

    def show(){

        try{
            if(categoryService.read()){
                [category:categoryService.read()]
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

    @Transactional
    def delete(long id){
        try {
            if(categoryService.delete(id)){
                flash.message = "Category deleted successfully!"
            }
            else{
                flash.message = "Category not found!"
            }
        }catch(e){
            flash.message = "Cannot connect to database."+"${e.message}"
        }

        redirect(action: "show")
    }

    def update(long id){
        Category obj = Category.get(id)
        [data:obj]
    }
    @Transactional
    def updatedata(long id,Category obj){
        try{
            if(categoryService.update(id,obj)){
                flash.message = "Category updated successfully!"
            }else{
                flash.message = "Category not found!"
            }
        }catch(e){
            flash.message = "Cannot connect to database."+"${e.message}"
        }
        redirect(view:"index")
    }

}
