package billing

import com.cafe.User
import food.Category
import food.Item

class OrderitemController {
def springSecurityService
    List<OrderItem> orderItems = []



    def index() {
        User user = springSecurityService.currentUser
        List<Bill> bills = Bill.findAllByUser(user)

        def id = params.id
        def maxBillNumber = Bill.createCriteria().get {
            projections {
                max 'billNumber'
            }
        }
        def billNumber = (maxBillNumber ?: 0) + 1
        List<Category> categories = Category.list()
        def date = new Date()
        def totalSum = orderItems.sum { (it.item?.discountedPrice ?: 0) * (it.quantity)}


        if(id!=null){
            Category categoryInstance = Category.findById(id)
            List<Item> items = Item.findAllByCategory(categoryInstance)
            [bill:billNumber,date:date,user:user,categories: categories,items: items,orderItems: orderItems,total:totalSum,bills:bills]
        }else{
            Category categoryInstance = Category.findById(1)
            List<Item> items = Item.findAllByCategory(categoryInstance)
            [bill:billNumber,date:date,user:user,categories: categories,items: items,orderItems: orderItems,total:totalSum,bills:bills]
        }
    }

    def addItem(){
        int id = params.int('id')
        Item itemInstance = Item.findById(id)

        OrderItem orderItemInstance = new OrderItem()

        orderItemInstance.item = itemInstance
        orderItemInstance.amount = itemInstance.discountedPrice
        OrderItem existingOrderItem = orderItems.find { it.item?.id == itemInstance?.id }
        if(existingOrderItem){
            existingOrderItem.quantity += 1
            existingOrderItem.amount = orderItemInstance.item.discountedPrice * existingOrderItem.quantity
        }else{
            orderItems.add(orderItemInstance)
        }
        def totalSum = orderItems.sum { (it.item?.discountedPrice ?: 0) * (it.quantity)}
        render(template: 'create',model: [orderItems: orderItems,total: totalSum])

    }
    def cancelItem(){
        def id = params.int('id')
        orderItems.remove(id)
        redirect(view: 'index')
    }
    def addQuantity(){
        def id = params.int('id')
        OrderItem orderItemInstance = orderItems[id]
        orderItemInstance.quantity += 1
        orderItemInstance.amount = orderItemInstance.item.discountedPrice * orderItemInstance.quantity
        redirect(view: 'index')

    }
    def minusQuantity(){
        def id = params.int('id')
        OrderItem orderItemInstance = orderItems[id]
        if(orderItemInstance.quantity > 1){
            orderItemInstance.quantity -= 1
            orderItemInstance.amount = orderItemInstance.item.discountedPrice * orderItemInstance.quantity
        }
        redirect(view: 'index')
    }
    def cancelOrder(){
        orderItems.clear()
        redirect(view: 'index')
    }
    def viewPic(){
        Item itemInstance =Item.findById(params.id)
        response.outputStream << itemInstance.image
        response.outputStream.flush()
    }
    def saveItem(){
        def billNum = params.int('billId')
        def bill = Bill.findByBillNumber(billNum)

        orderItems.each {orderItem ->
            OrderItem orderItemInstance = new OrderItem()

            orderItemInstance.bill = bill
            orderItemInstance.item = orderItem.item
            orderItemInstance.quantity = orderItem.quantity
            orderItemInstance.amount = orderItem.amount

            orderItemInstance.save(failOnError:true)
        }
        orderItems.clear()
        redirect(view: 'index')


    }
}
