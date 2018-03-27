//
//  AddToDB.swift
//  passwordSaver
//
//  Created by Ed Basurto on 3/12/18.
//  Copyright © 2018 Ed Basurto. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import EasyCoreData

class AddToDB: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet var username: UITextField?
    @IBOutlet var password: UITextField?
    @IBOutlet var website: UITextField?
    @IBOutlet var added: UILabel?
    
    var coreData = CoreDataModule(entityName: "Entity", xcDataModelID: "passwordSaver")
    
    @IBAction func addToDB() {
        coreData.push(values: [username?.text, password?.text, website?.text], keys: ["username", "password", "website"])
        username?.text = ""
        password?.text = ""
        website?.text = ""
        added?.text = "Added!"
    }
    
}
