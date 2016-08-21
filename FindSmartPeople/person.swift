//
//  person.swift
//  FindSmartPeople
//
//  Created by Aaron Luna on 8/20/16.
//  Copyright © 2016 Aaron Luna. All rights reserved.
//

import UIKit

class Person {
    var name:String
    var email:String
    var photo:String
    
    init?(name:String,email:String,photo:String){
        self.name = name
        self.email = email
        self.photo = photo
        
        if name.isEmpty {
            return nil
        }
    }
}
