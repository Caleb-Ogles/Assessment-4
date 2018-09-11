//
//  School.swift
//  Assessment4
//
//  Created by Caleb Ogles on 9/11/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

class School {
    var name: String
    var numberOfStudents: Int
    var publicOrPrivate: String
    var yearBuilt: Int
    
    init(name: String, numberOfStudents: Int, publicOrPrivate: String, yearBuilt: Int) {
        self.name = name
        self.numberOfStudents = numberOfStudents
        self.publicOrPrivate = publicOrPrivate
        self.yearBuilt = yearBuilt
    }
    
    func schoolDescription() {
        print("\(name) was founded in \(yearBuilt) and has \(numberOfStudents) students currently in attendance.")
    }
    
}


class HighSchool: School {
    var rival: String
    var schoolMascot: String
    
    init(name: String, numberOfStudents: Int, publicOrPrivate: String, yearBuilt: Int, rival: String, schoolMascot: String) {
        self.rival = rival
        self.schoolMascot = schoolMascot
        super.init(name: name, numberOfStudents: numberOfStudents, publicOrPrivate: publicOrPrivate, yearBuilt: yearBuilt)
    }
    
    func pepRally() {
        print("\(name) is the best! \(rival) is awful!")
    }
    
    override func schoolDescription() {
        print("\(name) is the best in the state since \(yearBuilt)! Go \(schoolMascot)'s!!!")
    }
    
}


class MagicalHighSchool: HighSchool {
    var size: Int
    var numberOfSecretPassages: Int
    
    init(name: String, numberOfStudents: Int, publicOrPrivate: String, yearBuilt: Int, rival: String, schoolMascot: String, size: Int, numberOfSecretPassages: Int) {
        self.size = size
        self.numberOfSecretPassages = numberOfSecretPassages
        super.init(name: name, numberOfStudents: numberOfStudents, publicOrPrivate: publicOrPrivate, yearBuilt: yearBuilt, rival: rival, schoolMascot: schoolMascot)
    }
    
    override func pepRally() {
        print("\(name) is the most magical school on earth! It's castle is \(size) square feet, and it has \(numberOfSecretPassages) secret passageways! Hurray!")
    }
    
    func quidditchMatch() {
        print("Time for the big quidditch game!")
    }
    
}



