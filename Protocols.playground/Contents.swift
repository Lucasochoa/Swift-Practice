//: Playground - noun: a place where people can play

import UIKit

protocol FullyNamed {
    var fullNAme: String { get }
}

struct User: FullyNamed {
    var fullName: String
}

let user = User(fullName: "John Smith")

struct Friend {
    var firstName: String
    var middleName: String
    var lastName: String

    var fulllName: String {
        return "\(firstName)\(middleName)\(lastName)"
    }
}

let friend = Friend(firstName: "Taylor", middleName: "Alison", lastName: "Swift")
friend.fulllName

//Inheritance vs. Protocols


import Foundation

protocol Payable {
    func pay() -> (basePay: Int,benefits: Int, deduction: Int, vacationTime: Int)
    
}


class Employee {
    
    let name: String
    let address: String
    let startDate: NSDate
    let type: String
    
    var department: String?
    var reportsTo: Employee?
    
    init(fullName: String, employeeAddress: String, employeeStartDate: NSDate, employeeType: String){
        name = fullName
        address = employeeAddress
        startDate =  employeeStartDate
        type = employeeType
    }
    
}

class HourlyEmployee: Employee, Payable {
    
    let hourlyWage = 12
    let hoursWorked = 40
    let availableVacation = 0
    
    func pay() -> (basePay: Int, benefits: Int, deduction: Int, vacationTime: Int) {
        return ((hourlyWage * hoursWorked),0,0,availableVacation)
    }
    
}

class SalariedEmployee: Employee {
    let salary = 40000
}

//Modeling Loose Relationships

protocol Blendable {
    func blend()
}


class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func blend() {
        println("i'm mush")
    }
}

class Dairy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Cheese: Dairy {

}

class Milk: Dairy, Blendable {

    func blend() {
        println("I havent changed im still milk!")
    }
}

func makeSmoothie(ingredients: [Blendable]){
    println("Smoothie Time!")
}

let strawberry = Fruit(name: "Strawberry")
let cheddar = Cheese(name: "Cheddar Cheese")
let chocolateMilk = Milk(name: "Chocolate")

let ingredients: [Blendable] = [strawberry, chocolateMilk]
makeSmoothie(ingredients)

//Random Number Generator
/*
protocol RandomNumberGenerator{
    fun random() ->
}
*/














