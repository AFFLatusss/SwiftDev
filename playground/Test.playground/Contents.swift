import Foundation

var str = "Hello World"

var str1 = "This is new"

var str3 = "what"


class person {
    let name: String
    
    init(name:String){
        self.name = name
    }
    
    func print_name() -> String{
        return self.name
    }
    
}


var jason: person = person.init(name:"Jason Yee Rong Jian")

print("This person's name is " + jason.print_name())


enum States: String{
    case Inprogress
    case Aborted
    case Complete
    case WillStart
}

let current = States.WillStart

func checkState() {
    switch current{
    case .Inprogress:
        print("current state is in progress")
    case .Aborted:
        print("current state is Aborted")
    case .Complete:
        print("current state is Completed")
    case .WillStart:
        print("current state is Will start")
    }
}


checkState()

protocol CarProto{
    
    var colour:String {get set}
    
    func drive()
    func isAllWheelDrive() -> Bool
}

class Car{
    
}


class BMW: Car, CarProto{
    var colour: String
    
    init(colour:String) {
        self.colour = colour
    }
    
    func drive() {
        
    }
    
    func isAllWheelDrive() -> Bool {
        return true
    }
}


class Child {
//    weak var balloon = "str"
    
}

var joe = Child()

func greatherThanThree(number: Int)-> Bool{
    if number > 3{
        return true
    }
    
    return false
}

var myFunction: ((Int) -> ()) = {number in
    if number > 3{
        print("True")
    }
    print("False")}

myFunction(5)



var steve: String? = "Steve Jobs"

if let name = steve{
    print(name)
}

var first: String = "Stebe"

var last: String = "Jobs"

let fullname = "\(first) \(last)"

let full = first + " " +  last


var names: [Any] =  ["Joe", "John", "Jacob"]
 
for name in names{
    print(name)
}

var cars: [String: Int] = ["bmw":3, "honda":1, "lexus": 12]

typealias validateFunction = ((String) -> Bool)?

var validate: validateFunction

func isBiggerThanFive(number:Int) -> Bool{
    return number > 5 ? true : false
}

isBiggerThanFive(number: 6)

var x = 3
var y = 2

var result = x + y

protocol AddressDataSource{
    func myAddress() -> String
}

class Neighbourhood {
    let homes: [Home] = []
    
    func myAddress() -> String {
        return "Manchester"
    }
}

class Home {
    let rooms: [Room] = []
}

class Room {
    var colour = "blue"
    var width = 12
    var length = 32.5
    
    
    
    
    func isOnSecondFloor () -> Bool{
        return false
    }
    
    func getArea() -> Int{
        let area = self.width * Int(self.length)
        
        return area
    }
    
}
