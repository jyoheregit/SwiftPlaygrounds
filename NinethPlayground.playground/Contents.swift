//Protocols

protocol AnimalAction {
    
    var legs : Int {set get}
    func run()
    
    init(legs : Int)
    
}

class Animal {}

class Dinosaur: Animal, AnimalAction {
    
    var legs: Int
    var name : String?
    
    //required by protocol
    required init(legs : Int){
        self.legs = legs
    }
    
    init(legs : Int, name : String) {
        self.legs = legs
        self.name = name
    }
    
    func run() {
        if let name = name {
            print("\(name) runs with \(legs) legs")
        }
    }
}

var dinosaur  : AnimalAction = Dinosaur(legs: 2, name: "Indoraptor")
dinosaur.legs
dinosaur.run()
dinosaur = Dinosaur(legs: 4, name: "rodo")
dinosaur.legs
dinosaur.run()

extension AnimalAction {
    
    //default implementation
    func run(){
        print("Default Run")
    }
}

class Dog : Animal, AnimalAction {
    
    var legs: Int = 4
    
    //required by protocol
    required init(legs : Int){
        self.legs
    }
}

let dog = Dog(legs: 4)
dog.legs
dog.run()

class DogTest
{
    //As Function Parameter
    static func runTest(animal : AnimalAction) {
        
        animal.run()
    }
}

DogTest.runTest(animal: dinosaur)







