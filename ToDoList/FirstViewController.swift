//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Petr on 16.12.17.
//  Copyright © 2017 Andi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewDidAppear(_ animated: Bool) {

        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemsObject as? [String] {
            items = tempItems
        }
        self.tableView.reloadData()
    }

  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
    
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
   public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    @IBAction func deleteBtnPressed(_ sender: Any) {
        
        
        
    }
    

}

