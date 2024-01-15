import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater(){
        print("Breathing under water.")
    }
}

let abdurahman = Human(n: "Abdurahman AYDIN")
let betul = Human(n: "Betul AYDIN")
let nemo = Fish(n: "Nemo")

// Consists of different types(Human, Fish - subclasses of Animal)
let neighbours = [abdurahman, betul, nemo]

// neighbour1 is Animal, not a Human
let neighbour1 = neighbours[0]

// IS - Type Checking
if neighbours[1] is Human {
    //print("First neighbour is a Human")
}

func findNemo(from animals: [Animal]){
    for animal in animals {
        if animal is Fish{
            print(animal.name)
            //animal.breatheUnderWater()        // Value of type 'Animal' has no member 'breatheUnderWater'
            // Forced Down Casting - as!
            let fish = animal as! Fish
            fish.breatheUnderWater()
        }
    }
}

findNemo(from: neighbours)

// let fish = neighbours[1] as! Fish            // Could not cast value of type '__lldb_expr_37.Human' (0x105770880) to '__lldb_expr_37.Fish'
// We can use as? because neighbours[1] is a Human, not a Fish
if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater()
} else {
    print("Casting has failed")
}

// Upcast as
let neighbour2 = neighbours[2] as! Fish
let animalFish = neighbour2 as Animal


// Any
let num = 12
let mixedArray: [Any] = [abdurahman, betul, nemo, num]

// AnyObject
//let mixedArray2: [AnyObject] = [abdurahman, betul, nemo, num]       // num is not a object of class

// NSObject
let num2 : NSNumber = 15
let word : NSString = "abd"
//let mixedArray3: [NSObject] = [abdurahman, betul, nemo, num2, word]

