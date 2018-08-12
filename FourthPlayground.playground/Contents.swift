// Functions

func add(first : Int, second: Int){
    
    print(first + second)
}

add(first: 5, second: 10)

//Default Value
func addWithDefaultValues(first : Int = 10, second: Int = 10){
    
    print(first + second)
}

addWithDefaultValues()
addWithDefaultValues(first: 20, second: 20)

//With return type
func addWithReturnValue(first : Int, second: Int) -> Int{
    
    return first + second
}

print(addWithReturnValue(first: 80, second: 20))

//Tuple
func addWithTupleReturn(first : Int, second: Int) -> (firstNum : Int, secondNum : Int, result : Int){
    
    return(first, second, first+second)
}

let returnedValue = addWithTupleReturn(first: 5, second: 8)
returnedValue.firstNum
returnedValue.secondNum
returnedValue.result
