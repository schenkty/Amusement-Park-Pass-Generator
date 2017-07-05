//
//  ViewController.swift
//  Amusement Park Pass Generator
//
//  Created by Ty Schenk on 5/2/17.
//  Copyright © 2017 Ty Schenk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var dobText: UITextField!
    @IBOutlet weak var projectText: UITextField!
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var lastText: UITextField!
    @IBOutlet weak var companyText: UITextField!
    @IBOutlet weak var streetText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateText: UITextField!
    @IBOutlet weak var zipText: UITextField!
    @IBOutlet weak var genButton: UIButton!
    @IBOutlet weak var popButton: UIButton!
    @IBOutlet weak var subMenuView: UIStackView!

    @IBOutlet weak var childEntry: UIButton!
    @IBOutlet weak var adultEntry: UIButton!
    @IBOutlet weak var seniorEntry: UIButton!
    
    @IBOutlet weak var vipEntry: UIButton!
    @IBOutlet weak var seasonEntry: UIButton!
    
    @IBOutlet weak var foodEntry: UIButton!
    @IBOutlet weak var rideEntry: UIButton!
    @IBOutlet weak var maintenanceEntry: UIButton!
    
    @IBOutlet weak var contractEntry: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        subMenuView.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guestSelected(_ sender: UIButton) {
        subMenuView.isHidden = false
        childEntry.isHidden = false
        adultEntry.isHidden = false
        seniorEntry.isHidden = false
        vipEntry.isHidden = false
        seasonEntry.isHidden = false
        foodEntry.isHidden = true
        rideEntry.isHidden = true
        maintenanceEntry.isHidden = true
        contractEntry.isHidden = true
    }
    
    @IBAction func childSelected(_ sender: UIButton) {
        enteredType = .childGuest
        dobText.isEnabled = true
        projectText.isEnabled = false
        firstText.isEnabled = false
        lastText.isEnabled = false
        companyText.isEnabled = false
        streetText.isEnabled = false
        cityText.isEnabled = false
        stateText.isEnabled = false
        zipText.isEnabled = false
    }
    
    @IBAction func adultSelected(_ sender: UIButton) {
        enteredType = .classicGuest
        dobText.isEnabled = false
        projectText.isEnabled = false
        firstText.isEnabled = false
        lastText.isEnabled = false
        companyText.isEnabled = false
        streetText.isEnabled = false
        cityText.isEnabled = false
        stateText.isEnabled = false
        zipText.isEnabled = false
    }
    
    @IBAction func seniorSelected(_ sender: UIButton) {
        enteredType = .senior
    }
    
    @IBAction func vipSelected(_ sender: UIButton) {
        enteredType = .vipGuest
        dobText.isEnabled = false
        projectText.isEnabled = false
        firstText.isEnabled = false
        lastText.isEnabled = false
        companyText.isEnabled = false
        streetText.isEnabled = false
        cityText.isEnabled = false
        stateText.isEnabled = false
        zipText.isEnabled = false
    }
    
    @IBAction func seasonSelected(_ sender: UIButton) {
        enteredType = .seasonPass
    }
    
    @IBAction func employeeSelected(_ sender: UIButton) {
        subMenuView.isHidden = false
        childEntry.isHidden = true
        adultEntry.isHidden = true
        seniorEntry.isHidden = true
        vipEntry.isHidden = true
        seasonEntry.isHidden = true
        foodEntry.isHidden = false
        rideEntry.isHidden = false
        maintenanceEntry.isHidden = false
        contractEntry.isHidden = false
    }
    
    @IBAction func foodSelected(_ sender: UIButton) {
        enteredType = .employeeFoodServices
        dobText.isEnabled = false
        projectText.isEnabled = false
        firstText.isEnabled = true
        lastText.isEnabled = true
        companyText.isEnabled = false
        streetText.isEnabled = true
        cityText.isEnabled = true
        stateText.isEnabled = true
        zipText.isEnabled = true
    }
    
    @IBAction func rideSelected(_ sender: UIButton) {
        enteredType = .employeeRideServices
        dobText.isEnabled = false
        projectText.isEnabled = false
        firstText.isEnabled = true
        lastText.isEnabled = true
        companyText.isEnabled = false
        streetText.isEnabled = true
        cityText.isEnabled = true
        stateText.isEnabled = true
        zipText.isEnabled = true
    }
    @IBAction func maintenanceSelected(_ sender: UIButton) {
        enteredType = .employeeMaintenances
        dobText.isEnabled = false
        projectText.isEnabled = false
        firstText.isEnabled = true
        lastText.isEnabled = true
        companyText.isEnabled = false
        streetText.isEnabled = true
        cityText.isEnabled = true
        stateText.isEnabled = true
        zipText.isEnabled = true
    }
    
    @IBAction func managerSelected(_ sender: UIButton) {
        subMenuView.isHidden = true
        enteredType = .employeeManagers
        dobText.isEnabled = false
        projectText.isEnabled = false
        firstText.isEnabled = true
        lastText.isEnabled = true
        companyText.isEnabled = false
        streetText.isEnabled = true
        cityText.isEnabled = true
        stateText.isEnabled = true
        zipText.isEnabled = true
    }
    
    @IBAction func venderSelected(_ sender: UIButton) {
        subMenuView.isHidden = true
        enteredType = .vender
        
    }

    @IBAction func contractSelected(_ sender: UIButton) {
        enteredType = .contract
    }
    
    func showAlert(title: String, message: String? = nil, style: UIAlertControllerStyle = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func genPass(_ sender: UIButton) {
        switch enteredType {
        case .childGuest:
            print("Starting PassBuilder")
            dob = dobText.text
        case .classicGuest:
            print("Starting PassBuilder")
        case .vipGuest:
            print("Starting PassBuilder")
        case .contract:
            print("Starting PassBuilder")
            firstName = firstText.text
            lastName = lastText.text
            address = streetText.text
            city = cityText.text
            state = stateText.text
            zipCode = zipText.text
            projectNumber = projectText.text
        case .employeeFoodServices:
            print("Starting PassBuilder")
            firstName = firstText.text
            lastName = lastText.text
            address = streetText.text
            city = cityText.text
            state = stateText.text
            zipCode = zipText.text
        case .employeeMaintenances:
            print("Starting PassBuilder")
            firstName = firstText.text
            lastName = lastText.text
            address = streetText.text
            city = cityText.text
            state = stateText.text
            zipCode = zipText.text
        case .employeeRideServices:
            print("Starting PassBuilder")
            firstName = firstText.text
            lastName = lastText.text
            address = streetText.text
            city = cityText.text
            state = stateText.text
            zipCode = zipText.text
        case .employeeManagers:
            print("Starting PassBuilder")
            firstName = firstText.text
            lastName = lastText.text
            address = streetText.text
            city = cityText.text
            state = stateText.text
            zipCode = zipText.text
        case .seasonPass:
            print("Starting PassBuilder")
            firstName = firstText.text
            lastName = lastText.text
            address = streetText.text
            city = cityText.text
            state = stateText.text
            zipCode = zipText.text
        case .senior:
            print("Starting PassBuilder")
            firstName = firstText.text
            lastName = lastText.text
            dob = dobText.text
            do {
                try formatDates(datefunction: dob!)
            } catch passThrows.InvalidDOB {
                showAlert(title: "Invalid DOB Format! USE MM/DD/YYYY!")
            } catch {
                showAlert(title: "Invalid Data")
            }
        case .vender:
            firstName = firstText.text
            lastName = lastText.text
            vender = companyText.text
            dob = dobText.text
            do {
                try formatDates(datefunction: dob!)
            } catch passThrows.InvalidDOB {
                showAlert(title: "Invalid DOB Format! USE MM/DD/YYYY!")
            } catch {
                showAlert(title: "Invalid Data")
            }
            
        default:
            showAlert(title: "User Not Selected")
        }
        
        do {
            try PassBuilder.init(type: enteredType).run()
        } catch passThrows.MissingFirstName {
            showAlert(title: "Missing First Name!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.MissingLastName {
            showAlert(title: "Missing Last Name!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.MissingAddress {
            showAlert(title: "Missing Address!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.MissingCity {
            showAlert(title: "Missing City!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.MissingState {
            showAlert(title: "Missing State!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.MissingZipCode {
            showAlert(title: "Missing Zip Code!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.InvalidDOB {
            showAlert(title: "Invalid DOB!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.BlockedEntry {
            showAlert(title: "Blocked Entry!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.DoubleEntry {
            showAlert(title: "Double Entry! Please Wait.")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.EntryWelcome {
            showAlert(title: "Welcome!")
            playSound(path: Bundle.main.path(forResource: "AccessGranted", ofType: "wav")!)
        } catch {
            showAlert(title: "Missing Data!")
        }
        if access[accessData.enter.rawValue] == accessBool.accessTrue.rawValue {
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "passView") as? ViewController {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                appDelegate.window?.rootViewController!.present(vc, animated: true, completion: nil)
            }
        } else {
            showAlert(title: "Blocked Entry!")
        }
    }
}
