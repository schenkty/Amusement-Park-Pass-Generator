//
//  ViewController.swift
//  Amusement Park Pass Generator
//
//  Created by Ty Schenk on 5/2/17.
//  Copyright © 2017 Ty Schenk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: Child Guest TEST
        // When testing please adjust the month, day, and year values
        
        /*month = "05"
        day = "05"
        year = "2005"
        print("Starting PassBuilder")
         do {
         try PassBuilder.init(type: .childGuest).run()
         } catch passError.MissingFirstName {
         showAlert(title: "Missing First Name!")
         } catch passError.MissingLastName {
         showAlert(title: "Missing Last Name!")
         } catch passError.MissingAddress {
         showAlert(title: "Missing Address!")
         } catch passError.MissingCity {
         showAlert(title: "Missing City!")
         } catch passError.MissingState {
         showAlert(title: "Missing State!")
         } catch passError.MissingZipCode {
         showAlert(title: "Missing Zip Code!")
         } catch passError.MissingDOB {
         showAlert(title: "Missing DOB!")
         } catch passError.MissingDOBDay {
         showAlert(title: "Missing DOB Day!")
         } catch passError.MissingDOBMonth {
         showAlert(title: "Missing DOB Month!")
         } catch passError.MissingDOBYear {
         showAlert(title: "Missing DOB Year")
         } catch passError.BlockedEntry {
         showAlert(title: "Blocked Entry!")
         } catch {
         showAlert(title: "Missing Data!")
         }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
        
        // MARK: Classic Guest TEST
        // As a second thought. Why am I not checking for anything here? Maybe a Birthday so a kid can not sneak in!
        
        /*month = "03"
        day = "07"
        year = "2017"
        firstName = "Johnny"
        lastName = "Appleseed"
        address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        print("Starting PassBuilder")
         do {
         try PassBuilder.init(type: .classicGuest).run()
         } catch passError.MissingFirstName {
         showAlert(title: "Missing First Name!")
         } catch passError.MissingLastName {
         showAlert(title: "Missing Last Name!")
         } catch passError.MissingAddress {
         showAlert(title: "Missing Address!")
         } catch passError.MissingCity {
         showAlert(title: "Missing City!")
         } catch passError.MissingState {
         showAlert(title: "Missing State!")
         } catch passError.MissingZipCode {
         showAlert(title: "Missing Zip Code!")
         } catch passError.MissingDOB {
         showAlert(title: "Missing DOB!")
         } catch passError.MissingDOBDay {
         showAlert(title: "Missing DOB Day!")
         } catch passError.MissingDOBMonth {
         showAlert(title: "Missing DOB Month!")
         } catch passError.MissingDOBYear {
         showAlert(title: "Missing DOB Year")
         } catch passError.BlockedEntry {
         showAlert(title: "Blocked Entry!")
         } catch {
         showAlert(title: "Missing Data!")
         }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
        
        // MARK: VIP Guest TEST
        // The more I think about it, I dont want to bother a VIP but a kid could sneak in as a VIP when they shouldnt. Hmmm. Maybe I will fix that hole next.
        
        /*month = "03"
        day = "07"
        year = "2017"
        firstName = "Johnny"
        lastName = "Appleseed"
        address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        print("Starting PassBuilder")
         do {
         try PassBuilder.init(type: .vipGuest).run()
         } catch passError.MissingFirstName {
         showAlert(title: "Missing First Name!")
         } catch passError.MissingLastName {
         showAlert(title: "Missing Last Name!")
         } catch passError.MissingAddress {
         showAlert(title: "Missing Address!")
         } catch passError.MissingCity {
         showAlert(title: "Missing City!")
         } catch passError.MissingState {
         showAlert(title: "Missing State!")
         } catch passError.MissingZipCode {
         showAlert(title: "Missing Zip Code!")
         } catch passError.MissingDOB {
         showAlert(title: "Missing DOB!")
         } catch passError.MissingDOBDay {
         showAlert(title: "Missing DOB Day!")
         } catch passError.MissingDOBMonth {
         showAlert(title: "Missing DOB Month!")
         } catch passError.MissingDOBYear {
         showAlert(title: "Missing DOB Year")
         } catch passError.BlockedEntry {
         showAlert(title: "Blocked Entry!")
         } catch {
         showAlert(title: "Missing Data!")
         }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
        
        // MARK: Employee Food Services TEST
        // When testing please adjust the all values to testing functions

        /*month = "03"
        day = "07"
        year = "2017"
        firstName = "Johnny"
        lastName = "Appleseed"
        //address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        print("Starting PassBuilder")
         do {
         try PassBuilder.init(type: .employeeFoodServices).run()
         } catch passError.MissingFirstName {
         showAlert(title: "Missing First Name!")
         } catch passError.MissingLastName {
         showAlert(title: "Missing Last Name!")
         } catch passError.MissingAddress {
         showAlert(title: "Missing Address!")
         } catch passError.MissingCity {
         showAlert(title: "Missing City!")
         } catch passError.MissingState {
         showAlert(title: "Missing State!")
         } catch passError.MissingZipCode {
         showAlert(title: "Missing Zip Code!")
         } catch passError.MissingDOB {
         showAlert(title: "Missing DOB!")
         } catch passError.MissingDOBDay {
         showAlert(title: "Missing DOB Day!")
         } catch passError.MissingDOBMonth {
         showAlert(title: "Missing DOB Month!")
         } catch passError.MissingDOBYear {
         showAlert(title: "Missing DOB Year")
         } catch passError.BlockedEntry {
         showAlert(title: "Blocked Entry!")
         } catch {
         showAlert(title: "Missing Data!")
         }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
        
        // MARK: Employee Ride Services TEST
        // When testing please adjust the all values to testing functions
        
        /*month = "03"
        day = "07"
        year = "2017"
        firstName = "Johnny"
        lastName = "Appleseed"
        address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        print("Starting PassBuilder")
         do {
         try PassBuilder.init(type: .employeeRideServices).run()
         } catch passError.MissingFirstName {
         showAlert(title: "Missing First Name!")
         } catch passError.MissingLastName {
         showAlert(title: "Missing Last Name!")
         } catch passError.MissingAddress {
         showAlert(title: "Missing Address!")
         } catch passError.MissingCity {
         showAlert(title: "Missing City!")
         } catch passError.MissingState {
         showAlert(title: "Missing State!")
         } catch passError.MissingZipCode {
         showAlert(title: "Missing Zip Code!")
         } catch passError.MissingDOB {
         showAlert(title: "Missing DOB!")
         } catch passError.MissingDOBDay {
         showAlert(title: "Missing DOB Day!")
         } catch passError.MissingDOBMonth {
         showAlert(title: "Missing DOB Month!")
         } catch passError.MissingDOBYear {
         showAlert(title: "Missing DOB Year")
         } catch passError.BlockedEntry {
         showAlert(title: "Blocked Entry!")
         } catch {
         showAlert(title: "Missing Data!")
         }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
        
        // MARK: Employee Maintenance Test
        // When testing please adjust the all values to testing functions
        
        /*month = "03"
        day = "07"
        year = "2017"
        firstName = "Johnny"
        lastName = "Appleseed"
        address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        print("Starting PassBuilder")
         do {
         try PassBuilder.init(type: .employeeMaintenances).run()
         } catch passError.MissingFirstName {
         showAlert(title: "Missing First Name!")
         } catch passError.MissingLastName {
         showAlert(title: "Missing Last Name!")
         } catch passError.MissingAddress {
         showAlert(title: "Missing Address!")
         } catch passError.MissingCity {
         showAlert(title: "Missing City!")
         } catch passError.MissingState {
         showAlert(title: "Missing State!")
         } catch passError.MissingZipCode {
         showAlert(title: "Missing Zip Code!")
         } catch passError.MissingDOB {
         showAlert(title: "Missing DOB!")
         } catch passError.MissingDOBDay {
         showAlert(title: "Missing DOB Day!")
         } catch passError.MissingDOBMonth {
         showAlert(title: "Missing DOB Month!")
         } catch passError.MissingDOBYear {
         showAlert(title: "Missing DOB Year")
         } catch passError.BlockedEntry {
         showAlert(title: "Blocked Entry!")
         } catch {
         showAlert(title: "Missing Data!")
         }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
        
        // MARK: Employee Manager Test
        // When testing please adjust the all values to testing functions
        
        /*month = "03"
        day = "07"
        year = "2017"
        firstName = "Johnny"
        lastName = "Appleseed"
        address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        print("Starting PassBuilder")
         do {
         try PassBuilder.init(type: .employeeManagers).run()
         } catch passError.MissingFirstName {
         showAlert(title: "Missing First Name!")
         } catch passError.MissingLastName {
         showAlert(title: "Missing Last Name!")
         } catch passError.MissingAddress {
         showAlert(title: "Missing Address!")
         } catch passError.MissingCity {
         showAlert(title: "Missing City!")
         } catch passError.MissingState {
         showAlert(title: "Missing State!")
         } catch passError.MissingZipCode {
         showAlert(title: "Missing Zip Code!")
         } catch passError.MissingDOB {
         showAlert(title: "Missing DOB!")
         } catch passError.MissingDOBDay {
         showAlert(title: "Missing DOB Day!")
         } catch passError.MissingDOBMonth {
         showAlert(title: "Missing DOB Month!")
         } catch passError.MissingDOBYear {
         showAlert(title: "Missing DOB Year")
         } catch passError.BlockedEntry {
         showAlert(title: "Blocked Entry!")
         } catch {
         showAlert(title: "Missing Data!")
         }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
        
        // MARK: REJECT TEST
        // When testing if I was you then I would skip this because there is no kid sneaking in here. I dont like backdoors :D
        
        /*month = "03"
        day = "07"
        year = "2017"
        firstName = "Johnny"
        lastName = "Appleseed"
        address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        print("Starting PassBuilder")
        do {
        try PassBuilder.init(type: .reject).run()
        } catch passError.MissingFirstName {
            showAlert(title: "Missing First Name!")
        } catch passError.MissingLastName {
            showAlert(title: "Missing Last Name!")
        } catch passError.MissingAddress {
            showAlert(title: "Missing Address!")
        } catch passError.MissingCity {
            showAlert(title: "Missing City!")
        } catch passError.MissingState {
            showAlert(title: "Missing State!")
        } catch passError.MissingZipCode {
            showAlert(title: "Missing Zip Code!")
        } catch passError.MissingDOB {
            showAlert(title: "Missing DOB!")
        } catch passError.MissingDOBDay {
            showAlert(title: "Missing DOB Day!")
        } catch passError.MissingDOBMonth {
            showAlert(title: "Missing DOB Month!")
        } catch passError.MissingDOBYear {
            showAlert(title: "Missing DOB Year")
        } catch passError.BlockedEntry {
            showAlert(title: "Blocked Entry!")
        } catch {
            showAlert(title: "Missing Data!")
        }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: TEST BUTTON
    // Please dont yell at me. I know i should not have UI Items yet but oh man was it hard to prove my logic worked without one so what could it hurt?
    @IBAction func TestEntry(_ sender: UIButton) {
        print("Starting PassBuilder")
        month = "03"
        day = "07"
        year = "2010"
        firstName = "Johnny"
        lastName = "Appleseed"
        address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        // I set the type to the child entrant simply to explain my logic. Please un-comment vars to test other type's
        do {
            try PassBuilder.init(type: .childGuest).run()
        } catch passThrows.MissingFirstName {
            showAlert(title: "Missing First Name!")
        } catch passThrows.MissingLastName {
            showAlert(title: "Missing Last Name!")
        } catch passThrows.MissingAddress {
            showAlert(title: "Missing Address!")
        } catch passThrows.MissingCity {
            showAlert(title: "Missing City!")
        } catch passThrows.MissingState {
            showAlert(title: "Missing State!")
        } catch passThrows.MissingZipCode {
            showAlert(title: "Missing Zip Code!")
        } catch passThrows.MissingDOB {
            showAlert(title: "Missing DOB!")
        } catch passThrows.MissingDOBDay {
            showAlert(title: "Missing DOB Day!")
        } catch passThrows.MissingDOBMonth {
            showAlert(title: "Missing DOB Month!")
        } catch passThrows.MissingDOBYear {
            showAlert(title: "Missing DOB Year")
        } catch passThrows.BlockedEntry {
            showAlert(title: "Blocked Entry!")
        } catch passThrows.DoubleEntry {
            showAlert(title: "Double Entry! Please Wait.")
        } catch passThrows.EntryWelcome {
            showAlert(title: "Welcome!")
        } catch {
            showAlert(title: "Missing Data!")
        }
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)
    }
    
    func showAlert(title: String, message: String? = nil, style: UIAlertControllerStyle = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

