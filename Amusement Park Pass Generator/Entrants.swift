//
//  Entrants.swift
//  Amusement Park Pass Generator
//
//  Created by Ty Schenk on 5/2/17.
//  Copyright © 2017 Ty Schenk. All rights reserved.
//

import Foundation

enum passThrows: Error {
    case EntryWelcome
    case BlockedEntry
    case DoubleEntry
    case MissingAllData
    case MissingFirstName
    case MissingLastName
    case MissingAddress
    case MissingCity
    case MissingState
    case MissingZipCode
    case MissingProject
    case MissingVender
    case InvalidDOB
}

class PassBuilder {
    init(type: entrants) {
        enteredType = type
    }
    func run() throws {
        if entry == false {
            enteredType = .reject
            access[accessData.firstName.rawValue] = ""
            access[accessData.lastName.rawValue] = ""
            access[accessData.address.rawValue] = ""
            access[accessData.city.rawValue] = ""
            access[accessData.state.rawValue] = ""
            access[accessData.zipCode.rawValue] = ""
            access[accessData.project.rawValue] = ""
            access[accessData.vender.rawValue] = ""
            access[accessData.enter.rawValue] = accessBool.accessFalse.rawValue
            access[entrantPerms.amusementAreas.rawValue] = accessBool.accessFalse.rawValue
            access[entrantPerms.kitchenAreas.rawValue] = accessBool.accessFalse.rawValue
            access[entrantPerms.maintenanceAreas.rawValue] = accessBool.accessFalse.rawValue
            access[entrantPerms.rideRides.rawValue] = accessBool.accessFalse.rawValue
            access[entrantPerms.officeArea.rawValue] = accessBool.accessFalse.rawValue
            access[accessData.discountFood.rawValue] = "0"
            access[accessData.discountMerch.rawValue] = "0"
            throw passThrows.DoubleEntry
        }
        switch enteredType {
        // MARK: Child Guest
        case .childGuest:
            guard let dobInput = dob else {
                throw passThrows.InvalidDOB
            }
            
            do {
                try formatDates(datefunction: dobInput)
            } catch {
                throw passThrows.InvalidDOB
            }
            
            if month == "" {
                throw passThrows.InvalidDOB
            }
            if day == "" {
                throw passThrows.InvalidDOB
            }
            if year == "" {
                throw passThrows.InvalidDOB
            }
            
            // Check if you are allowed to enter and assign permission
            access[accessData.dobMonth.rawValue] = month
            access[accessData.dobDay.rawValue] = day
            access[accessData.dobYear.rawValue] = year
            
            // Check to make sure the Guest is old enough
            checkBirthday(enteredType)
            
            if (access[accessData.enter.rawValue] == accessBool.accessTrue.rawValue) {
                access[entrantPerms.amusementAreas.rawValue] = accessBool.accessTrue.rawValue
                access[entrantPerms.rideRides.rawValue] = accessBool.accessTrue.rawValue
            } else {
                throw passThrows.BlockedEntry
            }
            
            throw passThrows.EntryWelcome
        case .classicGuest: // MARK: Classic Guest
            access[entrantPerms.amusementAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.rideRides.rawValue] = accessBool.accessTrue.rawValue
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .vipGuest: // MARK: VIP Guest
            access[entrantPerms.amusementAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.skipRideLines.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.rideRides.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.discountFood.rawValue] = "10"
            access[accessData.discountMerch.rawValue] = "20"
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .senior:
            if firstName == "" {
                print("No First Name to submit")
                throw passThrows.MissingFirstName
            }
            if lastName == "" {
                print("No Last Name to submit")
                throw passThrows.MissingLastName
            }
            if month == "" {
                print("No DOB Month to submit")
                throw passThrows.InvalidDOB
            }
            if day == "" {
                print("No DOB Day to submit")
                throw passThrows.InvalidDOB
            }
            if year == "" {
                print("No DOB Year to submit")
                throw passThrows.InvalidDOB
            }
            access[accessData.dobMonth.rawValue] = month
            access[accessData.dobDay.rawValue] = day
            access[accessData.dobYear.rawValue] = year
            access[accessData.firstName.rawValue] = firstName
            access[accessData.lastName.rawValue] = lastName
            access[entrantPerms.amusementAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.skipRideLines.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.discountFood.rawValue] = "10"
            access[accessData.discountMerch.rawValue] = "10"
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .seasonPass:
            if firstName == "" {
                print("No First Name to submit")
                throw passThrows.MissingFirstName
            }
            if lastName == "" {
                print("No Last Name to submit")
                throw passThrows.MissingLastName
            }
            if address == "" {
                print("No Address to submit")
                throw passThrows.MissingAddress
            }
            if city == "" {
                print("No City to submit")
                throw passThrows.MissingCity
            }
            if state == "" {
                print("No State to submit")
                throw passThrows.MissingState
            }
            if zipCode == "" {
                print("No Zip Code to submit")
                throw passThrows.MissingZipCode
            }
            access[accessData.firstName.rawValue] = firstName
            access[accessData.lastName.rawValue] = lastName
            access[accessData.address.rawValue] = address
            access[accessData.city.rawValue] = city
            access[accessData.state.rawValue] = state
            access[accessData.zipCode.rawValue] = zipCode
            access[entrantPerms.amusementAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.skipRideLines.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.discountFood.rawValue] = "10"
            access[accessData.discountMerch.rawValue] = "20"
            print("Entry Allowed")
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .employeeFoodServices: // MARK: Food Employee
            if firstName == "" {
                print("No First Name to submit")
                throw passThrows.MissingFirstName
            }
            if lastName == "" {
                print("No Last Name to submit")
                throw passThrows.MissingLastName
            }
            if address == "" {
                print("No Address to submit")
                throw passThrows.MissingAddress
            }
            if city == "" {
                print("No City to submit")
                throw passThrows.MissingCity
            }
            if state == "" {
                print("No State to submit")
                throw passThrows.MissingState
            }
            if zipCode == "" {
                print("No Zip Code to submit")
                throw passThrows.MissingZipCode
            }
            access[accessData.firstName.rawValue] = firstName
            access[accessData.lastName.rawValue] = lastName
            access[accessData.address.rawValue] = address
            access[accessData.city.rawValue] = city
            access[accessData.state.rawValue] = state
            access[accessData.zipCode.rawValue] = zipCode
            access[entrantPerms.maintenanceAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.rideRides.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.kitchenAreas.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.discountFood.rawValue] = "15"
            access[accessData.discountMerch.rawValue] = "25"
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .employeeRideServices: // MARK: Ride Employee
            if firstName == "" {
                print("No First Name to submit")
                throw passThrows.MissingFirstName
            }
            if lastName == "" {
                print("No Last Name to submit")
                throw passThrows.MissingLastName
            }
            if address == "" {
                print("No Address to submit")
                throw passThrows.MissingAddress
            }
            if city == "" {
                print("No City to submit")
                throw passThrows.MissingCity
            }
            if state == "" {
                print("No State to submit")
                throw passThrows.MissingState
            }
            if zipCode == "" {
                print("No Zip Code to submit")
                throw passThrows.MissingZipCode
            }
            access[accessData.firstName.rawValue] = firstName
            access[accessData.lastName.rawValue] = lastName
            access[accessData.address.rawValue] = address
            access[accessData.city.rawValue] = city
            access[accessData.state.rawValue] = state
            access[accessData.zipCode.rawValue] = zipCode
            access[entrantPerms.rideControlAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.amusementAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.rideRides.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.discountFood.rawValue] = "15"
            access[accessData.discountMerch.rawValue] = "25"
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .employeeMaintenances: // MARK: Maintenance Employee
            if firstName == "" {
                print("No First Name to submit")
                throw passThrows.MissingFirstName
            }
            if lastName == "" {
                print("No Last Name to submit")
                throw passThrows.MissingLastName
            }
            if address == "" {
                print("No Address to submit")
                throw passThrows.MissingAddress
            }
            if city == "" {
                print("No City to submit")
                throw passThrows.MissingCity
            }
            if state == "" {
                print("No State to submit")
                throw passThrows.MissingState
            }
            if zipCode == "" {
                print("No Zip Code to submit")
                throw passThrows.MissingZipCode
            }
            access[accessData.firstName.rawValue] = firstName
            access[accessData.lastName.rawValue] = lastName
            access[accessData.address.rawValue] = address
            access[accessData.city.rawValue] = city
            access[accessData.state.rawValue] = state
            access[accessData.zipCode.rawValue] = zipCode
            access[entrantPerms.amusementAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.rideRides.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.kitchenAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.maintenanceAreas.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.discountFood.rawValue] = "15"
            access[accessData.discountMerch.rawValue] = "25"
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .employeeManagers: // MARK: Manager Employee
            if firstName == "" {
                print("No First Name to submit")
                throw passThrows.MissingFirstName
            }
            if lastName == "" {
                print("No Last Name to submit")
                throw passThrows.MissingLastName
            }
            if address == "" {
                print("No Address to submit")
                throw passThrows.MissingAddress
            }
            if city == "" {
                print("No City to submit")
                throw passThrows.MissingCity
            }
            if state == "" {
                print("No State to submit")
                throw passThrows.MissingState
            }
            if zipCode == "" {
                print("No Zip Code to submit")
                throw passThrows.MissingZipCode
            }
            access[accessData.firstName.rawValue] = firstName
            access[accessData.lastName.rawValue] = lastName
            access[accessData.address.rawValue] = address
            access[accessData.city.rawValue] = city
            access[accessData.state.rawValue] = state
            access[accessData.zipCode.rawValue] = zipCode
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.amusementAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.rideRides.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.kitchenAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.maintenanceAreas.rawValue] = accessBool.accessTrue.rawValue
            access[entrantPerms.officeArea.rawValue] = accessBool.accessTrue.rawValue
            access[accessData.discountFood.rawValue] = "25"
            access[accessData.discountMerch.rawValue] = "25"
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .contract:
            if firstName == "" {
                print("No First Name to submit")
                throw passThrows.MissingFirstName
            }
            if lastName == "" {
                print("No Last Name to submit")
                throw passThrows.MissingLastName
            }
            if address == "" {
                print("No Address to submit")
                throw passThrows.MissingAddress
            }
            if city == "" {
                print("No City to submit")
                throw passThrows.MissingCity
            }
            if state == "" {
                print("No State to submit")
                throw passThrows.MissingState
            }
            if zipCode == "" {
                print("No Zip Code to submit")
                throw passThrows.MissingZipCode
            }
            if projectNumber == "" {
                print("No Project ID to submit")
                throw passThrows.MissingProject
            }
            access[accessData.firstName.rawValue] = firstName
            access[accessData.lastName.rawValue] = lastName
            access[accessData.address.rawValue] = address
            access[accessData.city.rawValue] = city
            access[accessData.state.rawValue] = state
            access[accessData.zipCode.rawValue] = zipCode
            access[accessData.project.rawValue] = projectNumber
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .vender:
            if firstName == "" {
                print("No First Name to submit")
                throw passThrows.MissingFirstName
            }
            if lastName == "" {
                print("No Last Name to submit")
                throw passThrows.MissingLastName
            }
            if address == "" {
                print("No Address to submit")
                throw passThrows.MissingAddress
            }
            if city == "" {
                print("No City to submit")
                throw passThrows.MissingCity
            }
            if state == "" {
                print("No State to submit")
                throw passThrows.MissingState
            }
            if zipCode == "" {
                print("No Zip Code to submit")
                throw passThrows.MissingZipCode
            }
            if vender == "" {
                print("No Vender to submit")
                throw passThrows.MissingVender
            }
            access[accessData.firstName.rawValue] = firstName
            access[accessData.lastName.rawValue] = lastName
            access[accessData.address.rawValue] = address
            access[accessData.city.rawValue] = city
            access[accessData.state.rawValue] = state
            access[accessData.zipCode.rawValue] = zipCode
            access[accessData.vender.rawValue] = vender
            print("Entry Allowed")
            access[accessData.enter.rawValue] = accessBool.accessTrue.rawValue
            entry = false
            setEntry()
            throw passThrows.EntryWelcome
        case .reject: // MARK: Reject Guest
            access[accessData.enter.rawValue] = accessBool.accessFalse.rawValue
            entry = false
            setEntry()
            throw passThrows.BlockedEntry
        }
    }
}
