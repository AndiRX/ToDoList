//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Petr on 16.12.17.
//  Copyright © 2017 Andi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func addBtnPressed(_ sender: Any) {
        
//        let itemsObject = UserDefaults.standard.object(forKey: "items")
//        var items = NSMutableArray()
//        if let _ = itemsObject as? NSMutableArray {
//            items.addObjects(from: [textField.text!])
//        } else {
//            items = [textField.text!]
//        }
//
//        UserDefaults.standard.set(items, forKey: "items")

        let itemsObject = UserDefaults.standard.stringArray(forKey: "items")
        var items = [String]()
        if let _ = itemsObject {
            items = itemsObject!
            items.append(textField.text!)
            print("items appended")
            print(items)
        } else {
            items = [textField.text!]
            print("new items array created")
            print(items)
        }
        UserDefaults.standard.set(items, forKey: "items")
        
        textField.text = ""
        
    }
    

}

