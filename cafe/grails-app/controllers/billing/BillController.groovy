package billing

class BillController {
def springSecurityService
    def billService

    def index() {
        List<Bill> bills = Bill.list()
        def date = new Date()
        def user = springSecurityService.currentUser
        [bills:bills,date:date,user:user]
    }
    def createBill(){
        def user = springSecurityService.currentUser
        render (template: 'create',model: [user:user])
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



}
