// Structure

struct Person {
    
    var age : Int
    var gender : String
    
    mutating func incrementAge(){
        age += 1
    }
    
    //no need for mutating as it is not modifying any property
    func printDetail(){
        print("\(age) and \(gender)")
    }
}

var adam = Person(age: 10, gender: "M") // Default constructor provided in case of struct
adam.age = 20 // cannot change the age if the instance is a let constant
adam.incrementAge()
adam.age
adam.printDetail()

let anotherAdam = Person(age: 10, gender: "M")
anotherAdam.age
//anotherAdam.incrementAge() - not possible as anotherAdam is a constant so the entire struct instance is a constant
anotherAdam.printDetail()

var copyAdam = anotherAdam
copyAdam.age = 100
copyAdam.age
anotherAdam.age // not affected- copy by value
