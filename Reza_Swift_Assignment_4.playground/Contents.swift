import Foundation

protocol WaterSystem {
    var waterCapacity: Double { get set }
    func fillWaterTank()
    func drainWaterTank()
}// WaterSystem protocol

protocol EntertainmentSystem {
    var hasTV: Bool { get set }
    func turnOnTV()
    func turnOffTV()
}// EntertaimentSystem protocol

class Camper: WaterSystem, EntertainmentSystem {
        var waterCapacity: Double
        var hasTV: Bool
        var name: String
        
        init( waterCapacity: Double, hasTV: Bool, name: String) {
            self.waterCapacity = waterCapacity
            self.hasTV = hasTV
            self.name = name
        }
    convenience init() {
        self.init( waterCapacity: 100.0, hasTV: true, name: "ABC" )
    }
        
        
        func fillWaterTank() {
            let maxCapacity = 200.0
            if  waterCapacity >= maxCapacity {
                print("The water tank of \(name) is full")
            }
            else {
                print("Filling the water tank of \(name) camper.")
            }
        }
        
        func drainWaterTank() {
            if waterCapacity == 0 {
                print(" The water tank of \(name) is empty")
            }
            else {
                print("Draining the water tank of \(name) camper.")
            }
        }
        
        func turnOnTV() {
            if hasTV {
                print("Turning on the TV in \(name) camper.")
            } else {
                print("\(name) camper does not have a TV.")
            }
        }
        
        func turnOffTV() {
            if hasTV {
                print("Turning off the TV in \(name) camper.")
            } else {
                print("\(name) camper does not have a TV.")
            }
        }
} //camper class


let myCamper = Camper( waterCapacity: 150.0, hasTV: true, name: "ZXY")
print("My Camper name:", myCamper.name)
myCamper.fillWaterTank()
myCamper.turnOnTV()

let yourCamper = Camper()
print("Your Camper name:", yourCamper.name)
yourCamper.drainWaterTank()
yourCamper.turnOffTV()



