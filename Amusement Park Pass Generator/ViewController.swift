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
        enteredType = .reject
        dobText.isEnabled = false
        dobText.alpha = 0.2
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = false
        firstText.alpha = 0.2
        lastText.isEnabled = false
        lastText.alpha = 0.2
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = false
        streetText.alpha = 0.2
        cityText.isEnabled = false
        cityText.alpha = 0.2
        stateText.isEnabled = false
        stateText.alpha = 0.2
        zipText.isEnabled = false
        zipText.alpha = 0.2
        popButton.isEnabled = false
        popButton.alpha = 0.4
        genButton.isEnabled = false
        genButton.alpha = 0.4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Hide / Show or disable UI Items based on which entry type is slected
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
        dobText.alpha = 1.0
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = false
        firstText.alpha = 0.2
        lastText.isEnabled = false
        lastText.alpha = 0.2
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = false
        streetText.alpha = 0.2
        cityText.isEnabled = false
        cityText.alpha = 0.2
        stateText.isEnabled = false
        stateText.alpha = 0.2
        zipText.isEnabled = false
        zipText.alpha = 0.2
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    @IBAction func adultSelected(_ sender: UIButton) {
        enteredType = .classicGuest
        dobText.isEnabled = false
        dobText.alpha = 0.2
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = false
        firstText.alpha = 0.2
        lastText.isEnabled = false
        lastText.alpha = 0.2
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = false
        streetText.alpha = 0.2
        cityText.isEnabled = false
        cityText.alpha = 0.2
        stateText.isEnabled = false
        stateText.alpha = 0.2
        zipText.isEnabled = false
        zipText.alpha = 0.2
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    @IBAction func seniorSelected(_ sender: UIButton) {
        enteredType = .senior
        dobText.isEnabled = true
        dobText.alpha = 1.0
        firstText.isEnabled = true
        firstText.alpha = 1.0
        lastText.isEnabled = true
        lastText.alpha = 1.0
        projectText.isEnabled = false
        projectText.alpha = 0.2
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = false
        streetText.alpha = 0.2
        cityText.isEnabled = false
        cityText.alpha = 0.2
        stateText.isEnabled = false
        stateText.alpha = 0.2
        zipText.isEnabled = false
        zipText.alpha = 0.2
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    @IBAction func vipSelected(_ sender: UIButton) {
        enteredType = .vipGuest
        dobText.isEnabled = false
        dobText.alpha = 0.2
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = false
        firstText.alpha = 0.2
        lastText.isEnabled = false
        lastText.alpha = 0.2
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = false
        streetText.alpha = 0.2
        cityText.isEnabled = false
        cityText.alpha = 0.2
        stateText.isEnabled = false
        stateText.alpha = 0.2
        zipText.isEnabled = false
        zipText.alpha = 0.2
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    @IBAction func seasonSelected(_ sender: UIButton) {
        enteredType = .seasonPass
        dobText.isEnabled = false
        dobText.alpha = 0.2
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = true
        firstText.alpha = 1.0
        lastText.isEnabled = true
        lastText.alpha = 1.0
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = true
        streetText.alpha = 1.0
        cityText.isEnabled = true
        cityText.alpha = 1.0
        stateText.isEnabled = true
        stateText.alpha = 1.0
        zipText.isEnabled = true
        zipText.alpha = 1.0
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
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
        dobText.alpha = 0.2
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = true
        firstText.alpha = 1.0
        lastText.isEnabled = true
        lastText.alpha = 1.0
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = true
        streetText.alpha = 1.0
        cityText.isEnabled = true
        cityText.alpha = 1.0
        stateText.isEnabled = true
        stateText.alpha = 1.0
        zipText.isEnabled = true
        zipText.alpha = 1.0
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    @IBAction func rideSelected(_ sender: UIButton) {
        enteredType = .employeeRideServices
        dobText.isEnabled = false
        dobText.alpha = 0.2
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = true
        firstText.alpha = 1.0
        lastText.isEnabled = true
        lastText.alpha = 1.0
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = true
        stateText.alpha = 1.0
        cityText.isEnabled = true
        cityText.alpha = 1.0
        stateText.isEnabled = true
        stateText.alpha = 1.0
        zipText.isEnabled = true
        zipText.alpha = 1.0
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    @IBAction func maintenanceSelected(_ sender: UIButton) {
        enteredType = .employeeMaintenances
        dobText.isEnabled = false
        dobText.alpha = 0.2
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = true
        firstText.alpha = 1.0
        lastText.isEnabled = true
        lastText.alpha = 1.0
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = true
        streetText.alpha = 1.0
        cityText.isEnabled = true
        cityText.alpha = 1.0
        stateText.isEnabled = true
        stateText.alpha = 1.0
        zipText.isEnabled = true
        zipText.alpha = 1.0
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    @IBAction func managerSelected(_ sender: UIButton) {
        subMenuView.isHidden = true
        enteredType = .employeeManagers
        dobText.isEnabled = false
        dobText.alpha = 0.2
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = true
        firstText.alpha = 1.0
        lastText.isEnabled = true
        lastText.alpha = 1.0
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = true
        streetText.alpha = 1.0
        cityText.isEnabled = true
        cityText.alpha = 1.0
        stateText.isEnabled = true
        stateText.alpha = 1.0
        zipText.isEnabled = true
        zipText.alpha = 1.0
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    @IBAction func venderSelected(_ sender: UIButton) {
        subMenuView.isHidden = true
        enteredType = .vender
        dobText.isEnabled = true
        dobText.alpha = 1.0
        projectText.isEnabled = false
        projectText.alpha = 0.2
        firstText.isEnabled = true
        firstText.alpha = 1.0
        lastText.isEnabled = true
        lastText.alpha = 1.0
        companyText.isEnabled = true
        companyText.alpha = 1.0
        streetText.isEnabled = false
        streetText.alpha = 0.2
        cityText.isEnabled = true
        cityText.alpha = 0.2
        stateText.isEnabled = true
        stateText.alpha = 0.2
        zipText.isEnabled = true
        zipText.alpha = 0.2
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }

    @IBAction func contractSelected(_ sender: UIButton) {
        enteredType = .contract
        dobText.isEnabled = false
        dobText.alpha = 0.2
        projectText.isEnabled = true
        projectText.alpha = 1.0
        firstText.isEnabled = true
        firstText.alpha = 1.0
        lastText.isEnabled = true
        lastText.alpha = 1.0
        companyText.isEnabled = false
        companyText.alpha = 0.2
        streetText.isEnabled = true
        streetText.alpha = 1.0
        cityText.isEnabled = true
        cityText.alpha = 1.0
        stateText.isEnabled = true
        stateText.alpha = 1.0
        zipText.isEnabled = true
        zipText.alpha = 1.0
        popButton.isEnabled = true
        popButton.alpha = 1.0
        genButton.isEnabled = true
        genButton.alpha = 1.0
    }
    
    // Function to add alerts for invalid data
    func showAlert(title: String, message: String? = nil, style: UIAlertControllerStyle = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func genPass(_ sender: UIButton) {
        // Update Vars based on which entry type the pass is being created for
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
        } catch passThrows.InvalidFirstName {
            showAlert(title: "Invalid First Name!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.InvalidLastName {
            showAlert(title: "Invalid Last Name!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.InvalidAddress {
            showAlert(title: "Invalid Address!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.InvalidCity {
            showAlert(title: "Invalid City!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.InvalidState {
            showAlert(title: "Invalid State!")
            playSound(path: Bundle.main.path(forResource: "AccessDenied", ofType: "wav")!)
        } catch passThrows.InvalidZipCode {
            showAlert(title: "Invalid Zip Code!")
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
            //showAlert(title: "Welcome!")
            playSound(path: Bundle.main.path(forResource: "AccessGranted", ofType: "wav")!)
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "passView")//storyBoard.instantiateViewControllerWithIdentifier("passView") as PassViewController
            self.present(nextViewController, animated:true, completion:nil)
        } catch {
            showAlert(title: "Missing Data!")
        }
    }
    
    @IBAction func popData(_ sender: UIButton) {
        switch enteredType {
        case .childGuest:
            dobText.text = "01/01/2000"
        case .classicGuest:
            print("Adult Type does not require any data")
        case .vipGuest:
            print("VIP Type does not require any data")
        case .senior:
            dobText.text = "01/01/1960"
            firstText.text = "Johnny"
            lastText.text = "Appleseed"
        case .seasonPass:
            firstText.text = "Johnny"
            lastText.text = "Appleseed"
            streetText.text = "1 Infinite Loop"
            cityText.text = "Cupertino"
            stateText.text = "CA"
            zipText.text = "95014"
        case .employeeFoodServices:
            firstText.text = "Johnny"
            lastText.text = "Appleseed"
            streetText.text = "1 Infinite Loop"
            cityText.text = "Cupertino"
            stateText.text = "CA"
            zipText.text = "95014"
        case .employeeRideServices:
            firstText.text = "Johnny"
            lastText.text = "Appleseed"
            streetText.text = "1 Infinite Loop"
            cityText.text = "Cupertino"
            stateText.text = "CA"
            zipText.text = "95014"
        case .employeeMaintenances:
            firstText.text = "Johnny"
            lastText.text = "Appleseed"
            streetText.text = "1 Infinite Loop"
            cityText.text = "Cupertino"
            stateText.text = "CA"
            zipText.text = "95014"
        case .contract:
            firstText.text = "Johnny"
            lastText.text = "Appleseed"
            streetText.text = "1 Infinite Loop"
            cityText.text = "Cupertino"
            stateText.text = "CA"
            zipText.text = "95014"
            projectText.text = "1001"
        case .employeeManagers:
            firstText.text = "Johnny"
            lastText.text = "Appleseed"
            streetText.text = "1 Infinite Loop"
            cityText.text = "Cupertino"
            stateText.text = "CA"
            zipText.text = "95014"
        case .vender:
            firstText.text = "Johnny"
            lastText.text = "Appleseed"
            companyText.text = "Orkin"
            dobText.text = "01/01/1980"
        default:
            print("Why am I here?")
        }
    }
    
}
