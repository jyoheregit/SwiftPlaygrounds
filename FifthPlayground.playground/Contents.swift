// Closure

//No param
let closure = {
    
    print("Closure")
}

closure()

//Any type param
let anotherClosure = { input in
    
    print(input)
    
}

anotherClosure("testClosure")

//Defined params with no return value
let closureTest = { (one: Int, two : Int) in
    
    print(one*two)
    
}
closureTest(2,5)

//Defined params with return value
let closureWithReturn = {(one: Int, two : Int) -> Int in
    
    return (one+two)
}

print(closureWithReturn(5,7))

//closure as a parameter in a function
func testClosure(inputClosure : (Int, Int) -> ()){
    
    inputClosure(5 , 3)
}

testClosure(inputClosure: closureTest)
testClosure { (first, second) in
    print(first-second)
}





