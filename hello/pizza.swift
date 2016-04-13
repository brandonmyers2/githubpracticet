//
//  pizza.swift
//  hello
//
//  Created by Brandon Myers on 4/12/16.
//  Copyright © 2016 Brandon Myers. All rights reserved.
//

import Foundation

protocol PizzaInterface {
    func calculaterTopping() -> Double
    
}
class Pizza : PizzaInterface {
    //pizzaTime var. for 10 min.
    var pizzaTime : Int
    //topping array
//    var toppingArray = ["cheese","pepperoni","mushrooms","onions","sausage","bacon","black 
    var pizzaTopping : Array<String>
    var pizzaSize : Int
    var pizzaCrust : String
    let cost : Double = 1.25
    
    init (pizzaTime : Int, pizzaTopping : Array<String>, pizzaSize : Int, pizzaCrust : String){
        self.pizzaTime = pizzaTime
        self.pizzaSize = pizzaSize
        self.pizzaTopping = pizzaTopping
        self.pizzaCrust = pizzaCrust
        
    }
    func calculaterTopping() -> Double {
        return Double(pizzaTopping.count) * cost
    }
    
    func toString() -> String {
        return "Time : \(pizzaTime)\nSize : \(pizzaSize)\nTopping : \(pizzaTopping)\nCrust : \(pizzaCrust)"
    }
    
    init (){
        pizzaSize = 0
        pizzaCrust = ""
        pizzaTopping = [""]
        pizzaTime = 10
    }
    
    //add an init that takes the array of toppings, size, and maybe cost...if you didn't take cost, you could calculate it based on size and number of toppings
    
}

