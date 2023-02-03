//
//  Student_Struct.swift
//  Final College Addmission
//
//  Created by Akshay Yendhe on 26/12/22.
//

import Foundation

struct Student {
    var studentName : String
    var percentage : Double
    func checkPassOrFailed() -> Bool{
        if percentage >= 35{
           return true
        }
        else{
            return false
        }
    }
}

