package billing

import food.Category
import food.Item

class BillController {
def springSecurityService
    def billService


    def index() {

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

        redirect(action:'index')
    }
    def viewPic(){
        Item itemInstance =Item.findById(params.id)
        response.outputStream << itemInstance.image
        response.outputStream.flush()
        return ;

    }

}
