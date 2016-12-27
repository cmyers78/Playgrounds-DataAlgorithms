//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func albumsIsTaylor(with name: String) -> Bool {
    switch name {
    case "Taylor Swift": return true
    case "Fearless": return true
    case "Speak Now": return true
    case "Red" : return true
    case "1989": return true
    default:
        return false
        
    }
}

albumsIsTaylor(with: "Taylor Swift")

if albumsIsTaylor(with: "1989") {
    print("That's one of hers!")
}
else {
    print("who made that?")
}
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind (speed : Int)
    case snow
}

//func getHaterStatus(by weather: WeatherType ) -> String? {
//    if weather == WeatherType.sun {
//        return nil
//    } else {
//        return "hate"
//    }
//}

var status : String?
//getHaterStatus(by: WeatherType.sun)

func getHaterEnumCaseStatus(_ weather : WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain:
        return "hate"
    case .snow:
        return "play!"
    }
}

getHaterEnumCaseStatus(.snow)
getHaterEnumCaseStatus(.wind(speed: 7))
getHaterEnumCaseStatus(.sun)

// MARK : Structs

func updateUI(msg : String) {
    print(msg)
}
struct Person {
    var clothes : String { willSet {
        updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
    var shoes : String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
    
}

var taylor = Person(clothes: "T-Shirts", shoes: "sneakers")

var other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)


// MARK : Classes
class PersonClass {
    var clothes : String
    var shoes : String
    
    init(clothes : String, shoes : String) {
        self.clothes = clothes
        self.shoes = shoes
        
    }
}

class Singer {
    var name : String
    var age : Int
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
        
    }
    
    func sing() {
        print("La la la la la")
    }
}
print()

var taylorSing = Singer(name: "Taylor", age: 25)
taylorSing.name
taylorSing.age
print(taylorSing.sing())

class CountrySinger : Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylorCountry = CountrySinger(name: "Taylor", age: 25)
print()

print(taylorCountry.sing())

class HeaveyMetalSinger : Singer {
    
    var noiseLevel : Int
    
    init(name : String, age : Int, noiseLevel : Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrrrrrr rargh rargh rargrrrgh!!")
    }
}

var taylorDeath = HeaveyMetalSinger(name: "TaylorDeath", age: 25, noiseLevel: 11)

print()
print(taylorDeath.sing())

// MARK : Properties


taylor.describe()
other.describe()

taylor.clothes = "Tank Top"

other.clothes = "Boots and pants"

// MARK : Computed Properties

struct PersonStructComputed {
    var age : Int
    
    var ageInDogYears : Int {
        get {
            return age * 7
        }
    }
}
print()
print()

var fan = PersonStructComputed(age: 25)
print(fan.ageInDogYears)

struct TaylorFan {
    static var favoriteSong = "Shake it Off"
    
    var name : String
    var age : Int
    
}

let fanboy = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

// MARK : Polymorphism and tyepcasting
class Album {
    var name : String
    init(name : String) {
        self.name = name
    }
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum : Album {
    var studio : String
    init(name : String, studio : String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbu : Album {
    var location : String
    
    init(name : String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")

var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")

var iTunesLive = LiveAlbu(name: "iTunes Live form SoHo", location: "New York")

var allAlbums : [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}

for album in allAlbums {
    let studioAlbum = album as? StudioAlbum
    print(studioAlbum?.name)
}

for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbu {
        print(liveAlbum.location)
    }
}

// Closures


