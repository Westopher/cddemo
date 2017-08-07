//
//  ViewController.swift
//  cdDemo
//
//  Created by West Kraemer on 8/7/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        newUser.setValue("west", forKey: "username")
        newUser.setValue("myPass", forKey: "password")
        newUser.setValue(32, forKey: "age")
        
        do {
            
            try context.save()
            
            print("Saved")
            
        }
        catch {
            
            print("There was an error")
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

