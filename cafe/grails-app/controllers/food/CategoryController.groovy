package food

import com.cafe.Role
import grails.gorm.transactions.Transactional



class CategoryController {
    def springSecurityService
    def categoryService

    def index() {
        List<Category> categories  = Category.list();
        [categories:categories]
    }
    def createForm(){
        render (template: 'create')
    }
def details(){
    def id = params.id
    Category categoryInstance = Category.findById(id)
    render(template: 'details',model:[category:categoryInstance])
}
    def create(){
        try{
            Category newCategory = new Category(params)
            newCategory.createdBy = springSecurityService.currentUser
            if(categoryService.save(newCategory)){
                flash.message = "${newCategory.name} added to category."
            }else{
                flash.message = "${newCategory.name} couldn't be added to category."
            }
        }catch (e){
            flash.message = "Error during saving data. ${e.message}"
        }
        redirect(view: "index")
    }


    @Transactional
    def delete(long id){
        try {
            if(categoryService.delete(id)){
                flash.message = "Category deleted successfully!"
                redirect(view: 'index')
            }
            else{
                flash.message = "Category not found!"
                redirect(view: 'index')
            }
        }catch(e){
            flash.message = "Cannot connect to database."+"${e.message}"
            redirect(view: 'index')
        }
    }

    def edit(){
        def id = params.id
        Category categoryInstance = Category.findById(id)
        if(categoryInstance){
            render (template: 'edit',model: [category:categoryInstance])
        }else{
            render "${message(code: 'default.not.found.message', args: [message(code: 'Category'), ""])}"
        }
    }

    @Transactional
    def update(){
        def categoryId = params.id
        Category categoryInstance = Category.findById(categoryId)
        if(categoryInstance){
            try {
                categoryInstance.properties = params
                categoryInstance.updatedBy = springSecurityService.currentUser
                if(categoryInstance.save(flush:true)) {
                    flash.message = "${message(code: 'default.updated.message', args: [message(code: 'Category'), categoryInstance.name])}"
                    redirect(action:"index")
                }else {
                    flash.message = "Error while updating category."
                    redirect(action: "index")
                }
            }catch(e) {
                flash.error = "Category update failed: ${e.message}"
                redirect(action: "index")
            }
        }else{
            flash.error = "${message(code: 'default.not.found.message', args: [message(code: 'Category'), ""])}"
            redirect(action: "index")
        }
    }

}
