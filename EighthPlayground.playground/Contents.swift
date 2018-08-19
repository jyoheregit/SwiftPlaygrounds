// Classes

import Foundation

class Person : NSObject {
    
    var age: Int {
        //property observers
        willSet{
            print("willSet newValue \(newValue)")
        }
        didSet{
            print("didSet oldValue \(oldValue)")
        }
    }
    var gender: String
    
    var address : String?
    
    //the point of lazy properties is that they are computed only when they are first needed, after which their value is saved
    lazy var boyType  = {
        
        return self.age > 10 ? "Big Boy" : "Small Boy"
        
    }()
    
    init(age: Int, gender : String) {
        print("init called")
        self.age = age
        self.gender = gender
    }
    
    func incrementAge() {
        print("incrementAge")
        self.age = self.age + 1
    }
}

let adam = Person(age: 10, gender: "M")
adam.age
adam.gender
adam.boyType
adam.address
adam.address = "India"
adam.address
adam.incrementAge()
adam.age
adam.boyType //lazy properties computed only when first needed, after their value is saved

let copyAdam = adam //copy by reference
copyAdam.incrementAge()
copyAdam.age
adam.age
copyAdam.boyType
adam.boyType


