//
//  PassViewController.swift
//  Amusement Park Pass Generator
//
//  Created by Ty Schenk on 7/5/17.
//  Copyright © 2017 Ty Schenk. All rights reserved.
//

import UIKit

class PassViewController: UIViewController {
    
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var perms1: UILabel!
    @IBOutlet weak var perms2: UILabel!
    @IBOutlet weak var perms3: UILabel!
    @IBOutlet weak var perms4: UILabel!
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        checkPermission(.amusementAreas)
        checkPermission(.kitchenAreas)
        checkPermission(.maintenanceAreas)
        checkPermission(.rideControlAreas)
        checkPermission(.skipRideLines)*/
        
        if checkPermission(.amusementAreas) == true {
            perms1.text = "- Unlimited Rides"
        } else {
            perms1.isHidden = true
        }
        if checkPermission(.rideRides) == true {
            perms2.text = "- Skip Ride Lines"
        } else {
            perms2.isHidden = true
        }
        if access[accessData.discountFood.rawValue] != "0" {
            perms3.text = "- \(access[accessData.discountFood.rawValue]!)% Food Discount"
        } else {
            perms3.isHidden = true
        }
        if access[accessData.discountMerch.rawValue] != "0" {
            perms4.text = "- \(access[accessData.discountMerch.rawValue]!)% Merch Discount"
        } else {
            perms4.isHidden = true
        }
    }
    
    @IBAction func newPassButton(_ sender: UIButton) {
        access["discountFood"] = "0"
        access["discountMerch"] = "0"
        access["Skip Ride Lines"] = accessBool.accessFalse.rawValue
        access["Amusement Areas"] = accessBool.accessFalse.rawValue
        access["Access Rides"] = accessBool.accessFalse.rawValue
        access["Kitchen Areas"] = accessBool.accessFalse.rawValue
        access["Ride Control Areas"] = accessBool.accessFalse.rawValue
        access["Maintenance Areas"] = accessBool.accessFalse.rawValue
        access["Office Areas"] = accessBool.accessFalse.rawValue
        access["dobMonth"] = ""
        access["dobDay"] = ""
        access["dobYear"] = ""
        access["age"] = ""
        access["firstName"] = ""
        access["lastName"] = ""
        access["address"] = ""
        access["city"] = ""
        access["state"] = ""
        access["zipCode"] = ""
        access["vender"] = ""
        access["project"] = ""
        access["Birthday"] = accessBool.accessFalse.rawValue
        access["enter"] = accessBool.accessFalse.rawValue
        
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "mainView") as? ViewController {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window?.rootViewController!.present(vc, animated: true, completion: nil)
        }
    }
    
    @IBAction func area(_ sender: UIButton) {
        if checkPermission(.amusementAreas) == true {
            result1.text = entrantPerms.amusementAreas.rawValue
        } else {
            result1.isHidden = true
        }
        if checkPermission(.kitchenAreas) == true {
            result2.text = entrantPerms.kitchenAreas.rawValue
        } else {
            result2.isHidden = true
        }
        if checkPermission(.maintenanceAreas) == true {
            result3.text = entrantPerms.maintenanceAreas.rawValue
        } else {
            result3.isHidden = true
        }
        if checkPermission(.rideControlAreas) == true {
            result4.text = entrantPerms.rideControlAreas.rawValue
        } else {
            result4.isHidden = true
        }
        if checkPermission(.officeArea) == true {
            result5.text = entrantPerms.officeArea.rawValue
        } else {
            result5.isHidden = true
        }
    }
    
    @IBAction func discount(_ sender: UIButton) {
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        if access[accessData.discountFood.rawValue] != "0"  {
            result1.text = "Food Discount: \(access[accessData.discountFood.rawValue]!)%"
        } else {
            result1.isHidden = true
        }
        if access[accessData.discountMerch.rawValue] != "0" {
            result2.text = "Merch Discount: \(access[accessData.discountMerch.rawValue]!)%"
        } else {
            result2.isHidden = true
        }
    }
    
    @IBAction func ride(_ sender: UIButton) {
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        if checkPermission(.rideRides) == true {
            result1.text = entrantPerms.rideRides.rawValue
        } else {
            result1.isHidden = true
        }
        if checkPermission(.skipRideLines) == true {
            result2.text = entrantPerms.skipRideLines.rawValue
        } else {
            result2.isHidden = true
        }
    }
    
    
    
    
    
    
}
