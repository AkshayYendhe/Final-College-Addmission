//
//  College_Struct.swift
//  Final College Addmission
//
//  Created by Akshay Yendhe on 26/12/22.
//

import Foundation
struct College{
    var collegeName : String
    var cutOffMarks : Double
    var city : String
    func eligibleOrNot(percent : Double) -> Bool{
        if percent >= cutOffMarks{
            return true
        }
        else{
            return false
        }
    }
}
