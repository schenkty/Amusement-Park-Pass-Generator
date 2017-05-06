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
        
        month = "03"
        day = "07"
        year = "2017"
        firstName = "Johnny"
        lastName = "Appleseed"
        //address = "1 Infinite Loop"
        city = "Cupertino"
        state = "CA"
        zipCode = 95014
        print("Starting PassBuilder")
        PassBuilder.init(type: .employeeFoodServices).run()
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
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
    
    var access: [String : String] =
        ["discountFood" : "0",
         "discountMerch" : "0",
         "skipRideLines" : "FALSE",
         "Amusement Areas" : "FALSE",
         "Kitchen Areas" : "FALSE",
         "Ride Control Areas" : "FALSE",
         "Maintenance Areas" : "FALSE",
         "Office Areas" : "FALSE",
         "dobMonth" : "", // Entrant DOB Month: 01
         "dobDay" : "", // Entrant DOB Day: 01
         "dobYear" : "", // Entrant DOB Year: 2017
         "age" : "", // How is the Entrant? 1?
         "firstName" : "", // Entrant First Name: Johnny
         "lastName" : "", // Entrant Last Name: Appleseed
         "address" : "", // Entrant Address: 1 Infinite Loop
         "city" : "", // Entrant Address: Cupertino
         "state" : "", // Entrant Address: CA
         "zipCode" : "", // Entrant Address: 95014
         "vender" : "", // Entrant Address: BLANK
         "Birthday" : "FALSE",
         "enter" : "FALSE"]
    
    */
}

