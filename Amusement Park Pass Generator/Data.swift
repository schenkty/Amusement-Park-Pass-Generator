//
//  Data.swift
//  Amusement Park Pass Generator
//
//  Created by Ty Schenk on 5/4/17.
//  Copyright © 2017 Ty Schenk. All rights reserved.
//

import Foundation
import AVFoundation

extension Date {
    var age: Int {
        return Calendar.current.dateComponents([.year], from: self, to: Date()).year!
    }
}

var enteredType: entrants = .childGuest
var dob: String?
var month: String?
var day: String?
var year: String?
var firstName: String?
var lastName: String?
var address: String?
var city: String?
var state: String?
var zipCode: String?
var vender: String?
var projectNumber: String?
var age: Int = 0
var entry: Bool = true
var runGate: Int = 0

enum entrants: String {
    case reject = "Not Allowed"
    case classicGuest = "Classic Guest"
    case childGuest = "Child Guest"
    case vipGuest = "VIP Guest"
    case senior = "Senior Guest"
    case seasonPass = "Season Pass Guest"
    case employeeFoodServices = "Food Service Employee"
    case employeeRideServices = "Ride Service Employee"
    case employeeMaintenances = "Maintenance Employee"
    case employeeManagers = "Manager Employee"
    case contract = "Contract Employee"
    case vender = "Vender"
}

enum entrantPerms: String {
    case enterPark = "Enter Park"
    case amusementAreas = "Amusement Areas"
    case rideRides = "Access Rides"
    case kitchenAreas = "Kitchen Areas"
    case rideControlAreas = "Ride Control Areas"
    case maintenanceAreas = "Maintenance Areas"
    case skipRideLines = "Skip Ride Lines"
    case officeArea = "Office Area"
}

enum  accessData: String {
    case discountFood = "discountFood"
    case discountMerch = "discountMerch"
    case skipRideLines = "Skip Ride Lines"
    case amusementAreas = "Amusement Areas"
    case accessRides = "Access Rides"
    case kitchenAreas = "Kitchen Areas"
    case rideControlAreas = "Ride Control Areas"
    case maintenanceAreas = "Maintenance Areas"
    case officeAreas = "Office Areas"
    case dobMonth = "dobMonth"
    case dobDay = "dobDay"
    case dobYear = "dobYear"
    case age = "age"
    case firstName = "firstName"
    case lastName = "lastName"
    case address = "address"
    case city = "city"
    case state = "state"
    case zipCode = "zipCode"
    case vender = "vender"
    case project = "project"
    case birthday = "Birthday"
    case enter = "enter"
}

enum accessBool: String {
    case accessTrue = "TRUE"
    case accessFalse = "FALSE"
}

var currentDate = ""
let date = Date()
let dateformat = DateFormatter()

func setDate() {
    dateformat.dateFormat = "MM.dd.YYYY"
    print("Today's Date: \(dateformat.string(from: date))")
    currentDate = dateformat.string(from: date)
}

var access: [String : String] =
    ["discountFood" : "0",
    "discountMerch" : "0",
    "Skip Ride Lines" : accessBool.accessFalse.rawValue,
    "Amusement Areas" : accessBool.accessFalse.rawValue,
    "Access Rides" : accessBool.accessFalse.rawValue,
    "Kitchen Areas" : accessBool.accessFalse.rawValue,
    "Ride Control Areas" : accessBool.accessFalse.rawValue,
    "Maintenance Areas" : accessBool.accessFalse.rawValue,
    "Office Areas" : accessBool.accessFalse.rawValue,
    "dobMonth" : "0", // Entrant DOB Month: 01
    "dobDay" : "0", // Entrant DOB Day: 01
    "dobYear" : "0", // Entrant DOB Year: 2017
    "age" : "0",
    "firstName" : "", // Entrant First Name: Johnny
    "lastName" : "", // Entrant Last Name: Appleseed
    "address" : "", // Entrant Address: 1 Infinite Loop
    "city" : "", // Entrant Address: Cupertino
    "state" : "", // Entrant Address: CA
    "zipCode" : "", // Entrant Address: 95014
    "vender" : "", // Entrant Address: BLANK
    "project" : "",
    "Birthday" : accessBool.accessFalse.rawValue,
    "enter" : accessBool.accessFalse.rawValue]

func checkBirthday(_ type: entrants) {
    // setup formating for use later in function
    dateformat.dateFormat = "MM.dd"
    let currentMMDD = dateformat.string(from: date)
    
    // Calc Age for use later in the function
    print("Checking Birthday")
    let ageDOB = Calendar.current.date(from: DateComponents(year: Int(access[accessData.dobYear.rawValue]!), month: Int(access[accessData.dobMonth.rawValue]!), day: Int(access[accessData.dobDay.rawValue]!)))
    age = (ageDOB?.age)!
    access[accessData.age.rawValue] = "\(age)"
    
    if (access[accessData.dobMonth.rawValue] != "") && (access[accessData.dobDay.rawValue] != "") {
     
        // Check if today is the Entrant's Birthday
        if "\(access[accessData.dobMonth.rawValue]!).\(access[accessData.dobDay.rawValue]!)" ==  currentMMDD {
            access[accessData.birthday.rawValue] = accessBool.accessTrue.rawValue
            print("Happy Birthday!")
        } else {
            access[accessData.birthday.rawValue] = accessBool.accessFalse.rawValue
        }
    } else {
        print("Sorry. We do not have your Birthday on file. :/")
    }
    
    // Check if Entrant is old enough to enter
    if age >= 5 {
        access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
    } else {
        // reject Entrant. Entrant is not old enough to enter!
        access[accessData.enter.rawValue] = accessBool.accessFalse.rawValue
        enteredType = .reject
        print("Entrant is not old Enough!")
    }
}

func projectPerms(projectID id: String, projectArea area: entrantPerms) -> Bool {
    switch id {
    case "1001":
        switch area {
        case .amusementAreas:
            return true
        case .rideRides:
            return false
        case .kitchenAreas:
            return false
        case .rideControlAreas:
            return true
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return false
        case .officeArea:
            return false
        case .enterPark:
            return true
        }
    case "1002":
        switch area {
        case .amusementAreas:
            return true
        case .rideRides:
            return false
        case .kitchenAreas:
            return false
        case .rideControlAreas:
            return true
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return true
        case .officeArea:
            return false
        case .enterPark:
            return true
        }
    case "1003":
        switch area {
        case .amusementAreas:
            return true
        case .rideRides:
            return false
        case .kitchenAreas:
            return true
        case .rideControlAreas:
            return true
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return true
        case .officeArea:
            return false
        case .enterPark:
            return true
        }
    case "2001":
        switch area {
        case .amusementAreas:
            return false
        case .rideRides:
            return false
        case .kitchenAreas:
            return false
        case .rideControlAreas:
            return false
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return false
        case .officeArea:
            return true
        case .enterPark:
            return true
        }
    case "2002":
        switch area {
        case .amusementAreas:
            return false
        case .rideRides:
            return false
        case .kitchenAreas:
            return true
        case .rideControlAreas:
            return false
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return true
        case .officeArea:
            return false
        case .enterPark:
            return true
        }
    default:
        return false
    }
}

func venderPerms(venderName ven: String, venderArea area: entrantPerms) -> Bool {
    switch ven {
    case "Acme":
        switch area {
        case .amusementAreas:
            return false
        case .rideRides:
            return false
        case .kitchenAreas:
            return true
        case .rideControlAreas:
            return false
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return false
        case .officeArea:
            return false
        case .enterPark:
            return true
        }
    case "Orkin":
        switch area {
        case .amusementAreas:
            return true
        case .rideRides:
            return false
        case .kitchenAreas:
            return true
        case .rideControlAreas:
            return true
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return false
        case .officeArea:
            return false
        case .enterPark:
            return true
        }
    case "Fedex":
        switch area {
        case .amusementAreas:
            return false
        case .rideRides:
            return false
        case .kitchenAreas:
            return false
        case .rideControlAreas:
            return false
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return true
        case .officeArea:
            return true
        case .enterPark:
            return true
        }
    case "NW Electrical":
        switch area {
        case .amusementAreas:
            return true
        case .rideRides:
            return false
        case .kitchenAreas:
            return true
        case .rideControlAreas:
            return true
        case .skipRideLines:
            return false
        case .maintenanceAreas:
            return true
        case .officeArea:
            return true
        case .enterPark:
            return true
        }
    default:
        return false
    }
}

func checkPermission(_ area: entrantPerms) -> Bool {
    switch area {
    case .amusementAreas:
        switch enteredType {
        case .contract:
            if projectPerms(projectID: access["project"]!, projectArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        case .vender:
            if venderPerms(venderName: access["vender"]!, venderArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        default:
            if access[area.rawValue] == accessBool.accessTrue.rawValue {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        }
    case .kitchenAreas:
        switch enteredType {
        case .contract:
            if projectPerms(projectID: access["project"]!, projectArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        case .vender:
            if venderPerms(venderName: access["vender"]!, venderArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        default:
            if access[area.rawValue] == accessBool.accessTrue.rawValue {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        }
    case .maintenanceAreas:
        switch enteredType {
        case .contract:
            if projectPerms(projectID: access["project"]!, projectArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        case .vender:
            if venderPerms(venderName: access["vender"]!, venderArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        default:
            if access[area.rawValue] == accessBool.accessTrue.rawValue {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        }
    case .rideControlAreas:
        switch enteredType {
        case .contract:
            if projectPerms(projectID: access["project"]!, projectArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        case .vender:
            if venderPerms(venderName: access["vender"]!, venderArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        default:
            if access[area.rawValue] == accessBool.accessTrue.rawValue {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        }
    case .skipRideLines:
        switch enteredType {
        case .contract:
            if projectPerms(projectID: access["project"]!, projectArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        case .vender:
            if venderPerms(venderName: access["vender"]!, venderArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        default:
            if access[area.rawValue] == accessBool.accessTrue.rawValue {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        }
    case .officeArea:
        switch enteredType {
        case .contract:
            if projectPerms(projectID: access["project"]!, projectArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        case .vender:
            if venderPerms(venderName: access["vender"]!, venderArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        default:
            if access[area.rawValue] == accessBool.accessTrue.rawValue {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        }
    case .rideRides:
        switch enteredType {
        case .contract:
            if projectPerms(projectID: access["project"]!, projectArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        case .vender:
            if venderPerms(venderName: access["vender"]!, venderArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        default:
            if access[area.rawValue] == accessBool.accessTrue.rawValue {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        }
    default:
        switch enteredType {
        case .contract:
            if projectPerms(projectID: access["project"]!, projectArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        case .vender:
            if venderPerms(venderName: access["vender"]!, venderArea: area) == true {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        default:
            if access[area.rawValue] == accessBool.accessTrue.rawValue {
                access[area.rawValue] = accessBool.accessTrue.rawValue
                print("Entrant is allowed in: \(area.rawValue)")
                return true
            } else {
                access[area.rawValue] = accessBool.accessFalse.rawValue
                print("Entrant is not allowed in: \(area.rawValue)")
                return false
            }
        }
    }
}

func formatDates(datefunction dateStrings: String) throws {
    // Create date formatter
    let dateFormatter = DateFormatter()
    
    // Convert String Input to Date
    if dateStrings == "" {
        throw passThrows.InvalidDOB
    } else {
        let dateStrings = dateformat.string(from: date)
    }
    
    dateFormatter.dateFormat = "MM/dd/yyyy" // Input date format
    //let dateFromString = dateFormatter.date(from: dateStrings)
    
    if let dateFromString = dateFormatter.date(from: dateStrings) {
        // Apply date format
        dateFormatter.dateFormat = "MM"
        
        access["dobMonth"] = dateFormatter.string(from: dateFromString)
        month = dateFormatter.string(from: dateFromString)
        
        dateFormatter.dateFormat = "dd"
        
        access["dobDay"] = dateFormatter.string(from: dateFromString)
        day = dateFormatter.string(from: dateFromString)
        
        dateFormatter.dateFormat = "yyyy"
        
        access["dobYear"] = dateFormatter.string(from: dateFromString)
        year = dateFormatter.string(from: dateFromString)
        
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        print("Formatted Date: \(dateFormatter.string(from: dateFromString))")
    } else {
        // invalid format
        throw passThrows.InvalidDOB
    }
}

func setEntry() {
    if runGate == 0 {
        runGate = 1
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5), execute: {
            print("Entry Allowed")
            entry = true
            runGate = 0
        })
    }
}

// Sounds
var gameSound: SystemSoundID = 0
//Function to play sound
func playSound(path: String) {
    let soundURL = URL(fileURLWithPath: path)
    AudioServicesCreateSystemSoundID(soundURL as CFURL, &gameSound)
    AudioServicesPlaySystemSound(gameSound)
}
