package billing

import food.Category
import food.Item

class BillController {
def springSecurityService
    def billService
    List<Item> itemList = []

    def index() {
        def id = params.id
        List<Bill> bills = Bill.list()
        List<Category> categories = Category.list()
        def date = new Date()
        def user = springSecurityService.currentUser

        if(id!=null){
            Category categoryInstance = Category.findById(id)
            List<Item> items = Item.findAllByCategory(categoryInstance)
            [bills:bills,date:date,user:user,categories: categories,items: items,itemList: itemList]
        }else{
            Category categoryInstance = Category.findById(1)
            List<Item> items = Item.findAllByCategory(categoryInstance)
            [bills:bills,date:date,user:user,categories: categories,items: items,itemList: itemList]
        }
    }
    def createBill(){
        def id = params.id
        Item item = Item.findById(id)

        itemList.add(item)

        render (template: 'create',model: [itemList:itemList])
    }
    def cancelItem(){
        def id = params.int("id")
        println("Id=${id}")
        itemList.remove(id)
        redirect(action: 'index')
    }
    def create(){
        try{
            Bill billInstance = new Bill(params)
            billInstance.createdBy = springSecurityService.currentUser
            if(billService.add(billInstance)){
                flash.message = "${billInstance.id} added to bill."
            }else{
                flash.message = "${billInstance.id} couldn't be added to employee. ${billInstance.errors}"
            }
        }catch (e){
            flash.message = "Error during saving data. ${e.message}"
        }
        redirect(view: "index")
    }
    def cancelBill(){
        itemList.clear()
        redirect(action:'index')
    }
    def viewPic(){
        Item itemInstance =Item.findById(params.id)
        response.outputStream << itemInstance.image
        response.outputStream.flush()
        return ;

    }

}
