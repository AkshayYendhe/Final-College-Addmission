//
//  ViewController.swift
//  Final College Addmission
//
//  Created by Akshay Yendhe on 26/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var percentageTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func nextButtonAction(_ sender: Any) {
        let percent = Double(percentageTextField.text ?? "0.0") ?? 0
        let stud = Student(studentName: fullNameTextField.text!, percentage: percent)
        
        if stud.checkPassOrFailed() {
            let main = UIStoryboard(name: "Main", bundle: .none)
            let secondVC = main.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            secondVC.stud = stud
            self.present(secondVC, animated: true)
        }
        else{
            resultLabel.text = "\(stud.studentName) Sorry You Are Failed...Not Eligible"
        }
        
        
    }
}
