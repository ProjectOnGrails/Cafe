package cafe

import food.Category
import groovy.xml.MarkupBuilder

import java.text.SimpleDateFormat

class SimpleTagLib {
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def emoticon = { attrs, body ->
        out << body() << (attrs.happy == 'true' ? " :-)" : " :-(")
    }

    def dateFormat = { attrs, body ->
        out << new SimpleDateFormat(attrs.format).format(attrs.date)
    }

    def renderCategories = { attrs, body ->
        def categories = Category.list()
        for(category in categories){
            out << category.name}
        }
}
