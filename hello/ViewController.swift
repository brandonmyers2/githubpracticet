//
//  ViewController.swift
//  hello
//
//  Created by Brandon Myers on 4/12/16.
//  Copyright © 2016 Brandon Myers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pizzaArray : Array<Pizza> = []
    var totalTime : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let aPizza = Pizza(pizzaTime: 10, pizzaTopping: ["Gold","BBQ Beef","Hamburger","Dollar Bills","BBQ Sauce","Canadian Bacon"], pizzaSize: 22, pizzaCrust: "Stuffed Crust")
        //print(aPizza.toString())
        addPizzaToOrders(aPizza)
        let anotherPizza = Pizza(pizzaTime: 10, pizzaTopping: ["Hamburger","BBQ Beef","Italian Sausage"], pizzaSize: 18, pizzaCrust: "Stuffed Crust")
        addPizzaToOrders(anotherPizza)
    }
    func addPizzaToOrders(pizza: Pizza){
        //print("--------STARTING ADD--------")
        totalTime += pizza.pizzaTime
        pizzaArray.append(pizza)
        for order in pizzaArray{
//            print("-----PRINTING A PIZZA-----")
            print("Your pizza order which is a \(order.pizzaSize) piece \(order.pizzaCrust) with \(order.pizzaTopping) as your toppings and will cost \(order.calculaterTopping())")
//            
            
        }
        print("The pizza(s) will be ready in \(totalTime) minutes\n\n")
        
        
    }
    
    
    
}

