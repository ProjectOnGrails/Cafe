package user

import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {

    boolean add(Employee employee) {
        if(employee.save()){
            return true
        }
        return false
    }
    boolean delete(Employee employee){
        if(employee.delete(failOnError:true,flush:true)){
            return true
        }
        return false
    }
}
