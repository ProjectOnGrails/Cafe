package cafe

import billing.Bill
import com.cafe.Role
import com.cafe.User
import food.Category
import food.Item
import grails.converters.JSON

class DashboardController {

    def index() {
        List<Category> category = Category.list()
        def categoryNames = Category.list().name
        println(categoryNames)
        [categories:Category.count(),items:Item.count(),users:User.count(),roles:Role.count(),categoryNames:categoryNames as JSON]
    }
}
