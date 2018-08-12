//Optionals

var optionalString : String?

optionalString = nil
optionalString = "Some String"

if (optionalString != nil) {
    print(optionalString!) //Forced Unwrapping after checking for nil
}

//Optional Binding
if let string = optionalString { //checking for nil and unwrapping and assigning the optional value
    print(string)
}

// Used a function here as there should be a return or throw in else condition of guard statement
func testOptionalString() {
    
    guard let string = optionalString else {

        print("optionalString is nil")
        return //
    }

    print("\(optionalString!) is not nil") //statement executed only when the guard conditional is evaluated to true
}

testOptionalString()


