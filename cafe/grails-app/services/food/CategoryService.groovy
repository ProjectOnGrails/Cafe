package food

import grails.gorm.transactions.Transactional

@Transactional
class CategoryService {

    def read() {
        List<Category> categories = Category.list()
        return categories
    }

    def create(Category category){
        if(category){
            category.save()
            return category
        }
        return  0
    }

    def delete(long id){
        Category data = Category.get(id)
        if(data){
            data.delete()
            return data
        }
        return 0
    }

    def update(long id, Category category){
        Category obj1 = Category.get(id)
        if(obj1){
            obj1 = category
            obj1.save()
            return obj1
        }
        return 0


    }
}
