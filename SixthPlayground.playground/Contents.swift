//Control Statements

//if
var number = 3

if (number % 2 == 0){
    print("\(number) is Even number")
}
else{
    print("\(number) is Odd number")
}

number = 2
switch number % 2 == 0 {
    case true:
        print("\(number) is Even number")
    case false:
        print("\(number) is Odd number")
}

//Range operator check
number = 9
switch number {
    case 1...5:
        print("\(number) is between 1 and 5")
    case 5..<10:
        print("\(number) is between 5 and 9")
    default:
        print("\(number) is above 9")
}

