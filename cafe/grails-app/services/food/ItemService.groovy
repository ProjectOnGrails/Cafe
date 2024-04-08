package food

import grails.gorm.transactions.Transactional

@Transactional
class ItemService {

    def read() {
        List<Item> items = Item.list()
        return items
    }

    def create(Item item){
        if(item){
            item.save()
            return item
        }
        return  0

    }

    def delete(long id){
        Item data = Item.get(id)
        if(data){
            data.delete()
            return data
        }
        return 0

    }

    def update(long id, Item item){
        Item obj1 = Item.get(id)
        if(obj1){
            obj1 = item
            obj1.save()
            return obj1
        }
        return 0


    }
}
