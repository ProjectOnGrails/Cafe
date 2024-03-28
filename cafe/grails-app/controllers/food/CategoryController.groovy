package food

class CategoryController {

    def index() { }

    def create(){
        Category obj = new Category()
        [data:obj]
    }

    def save(Category data){
        if(data){
            data.save()
            redirect(view: "index")
        }else{
            redirect(view: "create")
        }
    }

    def show(){
        List<Category> data = Category.list()

        [category:data]
    }
}
