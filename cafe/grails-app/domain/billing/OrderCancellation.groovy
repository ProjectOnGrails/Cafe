package billing

import com.cafe.User
import user.Employee

class OrderCancellation {
    static belongsTo = [bill:Bill,requestedBy: Employee]
    String reason

    CancellationStatus status

    static enum CancellationStatus {
        PENDING, APPROVED, REJECTED
    }
    static constraints = {
        reason(blank: false)
        status(nullable: false)
    }
}
