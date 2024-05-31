package cafe

import java.time.Duration
import java.time.Instant

class BillTagLib {
    static defaultEncodeAs = [taglib:'html']
    static namespace = "my"
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    def updateTime = { attrs, body ->
        def dateNow = new Date()
        def lastDate = attrs.date
        if (dateNow && lastDate) {
            Instant instant1  = Instant.ofEpochMilli(dateNow.getTime())
            Instant instant2 = lastDate.toInstant()
            Duration duration = Duration.between(instant2, instant1)

            out << duration.toDays() << " days, " << duration.toHoursPart() << " hours, " << duration.toMinutesPart() << " minutes"
        } else {
            out << "Please provide both date1 and date2 attributes."
        }
    }
}
