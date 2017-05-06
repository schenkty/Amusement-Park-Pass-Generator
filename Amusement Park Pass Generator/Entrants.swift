//
//  Entrants.swift
//  Amusement Park Pass Generator
//
//  Created by Ty Schenk on 5/2/17.
//  Copyright © 2017 Ty Schenk. All rights reserved.
//

import Foundation

class PassBuilder {
    init(type: entrants) {
        enteredType = type
    }
    func run() {
        switch enteredType {
        // MARK: Child Guest
        case .childGuest:
            guard let dobMonth = month else {
                print("No DOB Month to submit")
                return
            }
            guard let dobDay = day else {
                print("No DOB Day to submit")
                return
            }
            guard let dobYear = year else {
                print("No DOB Year to submit")
                return
            }
            access["dobMonth"] = dobMonth
            access["dobDay"] = dobDay
            access["dobYear"] = dobYear
            
            // Check to make sure the Guest is old enough
            checkBirthday(enteredType)
            
            // Check if you are allowed to enter and assign permission
            if (access["enter"] == "TRUE") {
                access["Amusement Areas"] = "TRUE"
            }
        case .classicGuest: // MARK: Classic Guest
            access["enter"] = "TRUE"
            access["Amusement Areas"] = "TRUE"
        case .vipGuest: // MARK: VIP Guest
            access["enter"] = "TRUE"
            access["Amusement Areas"] = "TRUE"
            access["Skip Ride Lines"] = "TRUE"
            access["discountFood"] = "10"
            access["discountMerch"] = "20"
        case .employeeFoodServices: // MARK: Food Employee
            guard let fname = firstName else {
                print("No First Name to submit")
                return
            }
            guard let lname = lastName else {
                print("No Last Name to submit")
                return
            }
            guard let eaddress = address else {
                print("No Address to submit")
                return
            }
            guard let ecity = city else {
                print("No City to submit")
                return
            }
            guard let estate = state else {
                print("No State to submit")
                return
            }
            guard let ezip = zipCode else {
                print("No Zip Code to submit")
                return
            }
            access["firstName"] = fname
            access["lastName"] = lname
            access["address"] = eaddress
            access["city"] = ecity
            access["state"] = estate
            access["zipCode"] = "\(ezip)"
            access["enter"] = "TRUE"
            access["Amusement Areas"] = "TRUE"
            access["Kitchen Areas"] = "TRUE"
            access["discountFood"] = "15"
            access["discountMerch"] = "25"
        case .employeeRideServices: // MARK: Ride Employee
            guard let fname = firstName else {
                print("No First Name to submit")
                return
            }
            guard let lname = lastName else {
                print("No Last Name to submit")
                return
            }
            guard let eaddress = address else {
                print("No Address to submit")
                return
            }
            guard let ecity = city else {
                print("No City to submit")
                return
            }
            guard let estate = state else {
                print("No State to submit")
                return
            }
            guard let ezip = zipCode else {
                print("No Zip Code to submit")
                return
            }
            access["firstName"] = fname
            access["lastName"] = lname
            access["address"] = eaddress
            access["city"] = ecity
            access["state"] = estate
            access["zipCode"] = "\(ezip)"
            access["enter"] = "TRUE"
            access["Ride Control Areas"] = "TRUE"
            access["Amusement Areas"] = "TRUE"
            access["discountFood"] = "15"
            access["discountMerch"] = "25"
        case .employeeMaintenances: // MARK: Maintenance Employee
            guard let fname = firstName else {
                print("No First Name to submit")
                return
            }
            guard let lname = lastName else {
                print("No Last Name to submit")
                return
            }
            guard let eaddress = address else {
                print("No Address to submit")
                return
            }
            guard let ecity = city else {
                print("No City to submit")
                return
            }
            guard let estate = state else {
                print("No State to submit")
                return
            }
            guard let ezip = zipCode else {
                print("No Zip Code to submit")
                return
            }
            access["firstName"] = fname
            access["lastName"] = lname
            access["address"] = eaddress
            access["city"] = ecity
            access["state"] = estate
            access["zipCode"] = "\(ezip)"
            access["enter"] = "TRUE"
            access["Amusement Areas"] = "TRUE"
            access["Kitchen Areas"] = "TRUE"
            access["Maintenance Areas"] = "TRUE"
            access["discountFood"] = "15"
            access["discountMerch"] = "25"
        case .employeeManagers: // MARK: Manager Employee
            guard let fname = firstName else {
                print("No First Name to submit")
                return
            }
            guard let lname = lastName else {
                print("No Last Name to submit")
                return
            }
            guard let eaddress = address else {
                print("No Address to submit")
                return
            }
            guard let ecity = city else {
                print("No City to submit")
                return
            }
            guard let estate = state else {
                print("No State to submit")
                return
            }
            guard let ezip = zipCode else {
                print("No Zip Code to submit")
                return
            }
            access["firstName"] = fname
            access["lastName"] = lname
            access["address"] = eaddress
            access["city"] = ecity
            access["state"] = estate
            access["zipCode"] = "\(ezip)"
            access["enter"] = "TRUE"
            access["Amusement Areas"] = "TRUE"
            access["Kitchen Areas"] = "TRUE"
            access["Maintenance Areas"] = "TRUE"
            access["Office Areas"] = "TRUE"
            access["discountFood"] = "25"
            access["discountMerch"] = "25"
        case .reject: // MARK: Reject Guest
            access["enter"] = "FALSE"
        }
    }
}

