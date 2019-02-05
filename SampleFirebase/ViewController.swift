//
//  ViewController.swift
//  SampleFirebase
//
//  Created by 原田摩利奈 on 2019/01/29.
//  Copyright © 2019 原田摩利奈. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    // インスタンス変数
    var DBRef:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //インスタンスを作成
        DBRef = Database.database().reference()
    }
    @IBAction func update(_ sender: AnyObject) {
        let data = ["name": textField.text!]
        DBRef.child("user").child("01").updateChildValues(data)
        
    }
    @IBAction func remove(_ sender: AnyObject) {
        DBRef.child("user").child("01").child("name").removeValue()
    }
}
