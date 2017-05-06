//
//  Data.swift
//  Amusement Park Pass Generator
//
//  Created by Ty Schenk on 5/4/17.
//  Copyright © 2017 Ty Schenk. All rights reserved.
//

import Foundation

extension Date {
    var age: Int {
        return Calendar.current.dateComponents([.year], from: self, to: Date()).year!
    }
}

var enteredType: entrants = .childGuest
var month: String?
var day: String?
var year: String?
var firstName: String?
var lastName: String?
var address: String?
var city: String?
var state: String?
var zipCode: Int?
var vender: String?
var age: Int = 0

enum entrants: String {
    case reject = "Not Allowed"
    case classicGuest = "Classic Guest"
    case childGuest = "Child Guest"
    case vipGuest = "VIP Guest"
    case employeeFoodServices = "Food Service Employee"
    case employeeRideServices = "Ride Service Employee"
    case employeeMaintenances = "Maintenance Employee"
    case employeeManagers = "Manager Employee"
}

enum entrantPerms: String {
    case amusementAreas = "Amusement Areas"
    case kitchenAreas = "Kitchen Areas"
    case rideControlAreas = "Ride Control Areas"
    case maintenanceAreas = "Maintenance Areas"
    case skipRideLines = "Skip Ride Lines"
}

var currentDate = ""
let date = Date()
let dateformat = DateFormatter()
func setDate() {
    dateformat.dateFormat = "MM.dd.YYYY"
    print("Today's Date: \(dateformat.string(from: date))")
}

var access: [String : String] =
    ["discountFood" : "0",
    "discountMerch" : "0",
    "Skip Ride Lines" : "FALSE",
    "Amusement Areas" : "FALSE",
    "Kitchen Areas" : "FALSE",
    "Ride Control Areas" : "FALSE",
    "Maintenance Areas" : "FALSE",
    "Office Areas" : "FALSE",
    "dobMonth" : "", // Entrant DOB Month: 01
    "dobDay" : "", // Entrant DOB Day: 01
    "dobYear" : "", // Entrant DOB Year: 2017
    "age" : "",
    "firstName" : "", // Entrant First Name: Johnny
    "lastName" : "", // Entrant Last Name: Appleseed
    "address" : "", // Entrant Address: 1 Infinite Loop
    "city" : "", // Entrant Address: Cupertino
    "state" : "", // Entrant Address: CA
    "zipCode" : "", // Entrant Address: 95014
    "vender" : "", // Entrant Address: BLANK
    "Birthday" : "FALSE",
    "enter" : "FALSE"]

func checkBirthday(_ type: entrants) {
    // setup formating for use later in function
    dateformat.dateFormat = "MM.dd"
    let currentMMDD = dateformat.string(from: date)
    
    // Calc Age for use later in the function
    print("Checking Birthday")
    let ageDOB = Calendar.current.date(from: DateComponents(year: Int(access["dobYear"]!), month: Int(access["dobMonth"]!), day: Int(access["dobDay"]!)))!
    age = ageDOB.age
    access["age"] = "\(age)"
    
    if (access["dobMonth"] != "") && (access["dobDay"] != "") {
        // Check if today is the Entrant's Birthday
        if "\(access["dobMonth"]!).\(access["dobDay"]!)" ==  currentMMDD {
            access["Birthday"] = "TRUE"
            print("Happy Birthday!")
        } else {
            access["Birthday"] = "FALSE"
        }
    } else {
        print("Sorry. We do not have your Birthday on file. :/")
    }
    
    // Check if Entrant is old enough to enter
    if age >= 5 {
        access["enter"] = "TRUE"
    } else {
        // reject Entrant. Entrant is not old enough to enter!
        access["enter"] = "FALSE"
        enteredType = .reject
        print("Entrant is not old Enough!")
    }
}

func checkPermission(_ area: entrantPerms) {
    switch area {
    case .amusementAreas:
        if access[area.rawValue] == "TRUE" {
            print("Entrant is allowed in: \(area.rawValue)")
        } else {
            print("Entrant is not allowed in: \(area.rawValue)")
        }
    case .kitchenAreas:
        if access[area.rawValue] == "TRUE" {
            print("Entrant is allowed in: \(area.rawValue)")
        } else {
            print("Entrant is not allowed in: \(area.rawValue)")
        }
    case .maintenanceAreas:
        if access[area.rawValue] == "TRUE" {
            print("Entrant is allowed in: \(area.rawValue)")
        } else {
            print("Entrant is not allowed in: \(area.rawValue)")
        }
    case .rideControlAreas:
        if access[area.rawValue] == "TRUE" {
            print("Entrant is allowed in: \(area.rawValue)")
        } else {
            print("Entrant is not allowed in: \(area.rawValue)")
        }
    case .skipRideLines:
        if access[area.rawValue] == "TRUE" {
            print("Entrant is allowed in: \(area.rawValue)")
        } else {
            print("Entrant is not allowed in: \(area.rawValue)")
        }
    }
}
