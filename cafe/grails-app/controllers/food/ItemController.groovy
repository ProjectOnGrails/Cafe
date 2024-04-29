package food

class ItemController {
    def itemService
    def index() {
        List<Category> categories = Category.list()
        List<Item> items = Item.list()
        [items:items,categories:categories]
    }

    def create() {
        Item item = new Item(params)
        item.image = params.get('image').bytes
        if (item.save(flush: true)) {
            flash.message = "Image uploaded successfully"
            redirect action: "index"
        } else {
            flash.error = "Error uploading image"
            redirect action: "index"
        }
    }
}