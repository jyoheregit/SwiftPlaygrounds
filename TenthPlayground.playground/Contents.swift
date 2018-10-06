import UIKit
import PlaygroundSupport

class Animal {
    
    func run() {print("Animal Run")}
    func eat() {print("Animal Eat")}
}

class Dog : Animal {
    
    override func run() {print("Dog run overriden")}
}

let animal = Dog()
animal.run()
animal.eat()

print("------------------------")

protocol Eatable {
    func eat()
}

extension Eatable {
    
    func eat(){print("Default Eatable")}
}

protocol Runnable {
    
    var numberOfLegs: Int {get set}
    func run()
}

extension Runnable {
    func run(){print("Default Runnable")}

}

struct Doggie : Eatable, Runnable {
    
    var legsSet : Int
    
    var numberOfLegs: Int {
        get{
            return legsSet
        }
        set{
            legsSet = newValue
        }
    }
    
    func run() {
        print("Doggie Runs with \(legsSet) legs")
    }
}

var dog = Doggie(legsSet: 4)
dog.eat()
dog.run()
dog.numberOfLegs = 3
dog.run()

print("-------------------------------")

protocol PAT {
    
    associatedtype T
    func returnValue() -> T
}

class PATString : PAT{
    
    typealias T = String
    
    func returnValue() -> String {
        return "PAT String"
    }
}

struct Item {
    var name : String
    var id : Int
}

class PATItem : PAT {
    
    typealias T = Item
    
    func returnValue() -> Item {
        return Item(name: "First", id: 1)
    }
}

struct PATTest{
    
    //var pat : PAT // cannot use protocol as type because of associated type
    
    var patString : PATString
    var patItem : PATItem
    
    func testReturnString() {
        
        print(patString.returnValue())
    }
    
    func testReturnItem() {
        
        print(patItem.returnValue())
    }
    
    func genericTest<T: PAT>(t : T){
        print(t.returnValue())
    }
}

var patTest = PATTest(patString: PATString(), patItem : PATItem())
patTest.testReturnString()
patTest.testReturnItem()

let patString = PATString()
patTest.genericTest(t: patString)
let patItem = PATItem()
patTest.genericTest(t: patItem)

print("-------------------------------------")

