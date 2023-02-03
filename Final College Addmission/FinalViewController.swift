//
//  FinalViewController.swift
//  Final College Addmission
//
//  Created by Akshay Yendhe on 26/12/22.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var finalResultLabel: UILabel!
    var college : College?
    var stud : Student?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let college = college, let stud = stud {
            if college.eligibleOrNot(percent: stud.percentage) == true {
               let res = "\(stud.studentName) Congratulations You are Eligible For Addmission in \(college.collegeName) !"
                finalResultLabel.text = res
                finalResultLabel.textColor = .green
           } else {
               let res = "\(stud.studentName) Sorry You are Not Eligible For Addmission in \(college.collegeName) !"
               finalResultLabel.text = res
               finalResultLabel.textColor = .red
           }
        } else {
            finalResultLabel.text = "no data found!"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
