//
//  SecondViewController.swift
//  Final College Addmission
//
//  Created by Akshay Yendhe on 26/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    var stud : Student?
    var college : College?
    @IBOutlet weak var collegeNameTextField: UITextField!
    @IBOutlet weak var cutOffTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkButtonAction(_ sender: Any) {
        let cutOff = Double(cutOffTextField.text!)!
        let college = College(collegeName: collegeNameTextField.text!, cutOffMarks: cutOff, city: cityTextField.text!)
        let main = UIStoryboard(name: "Main", bundle: .none)
        let finalVC = main.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
        finalVC.college = college
        finalVC.stud = stud
        self.present(finalVC,animated: true)

    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
