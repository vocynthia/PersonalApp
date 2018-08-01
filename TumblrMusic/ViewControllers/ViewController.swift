//
//  ViewController.swift
//  TumblrMusic
//
//  Created by Macbook on 7/24/18.
//  Copyright © 2018 makeschool. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation
import Alamofire
import SwiftyJSON



class ViewController: UIViewController {
    
    
    //IBOUTLETS
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var tagTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
   
    @IBOutlet weak var invalidUsername: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        // WIP can only segue if username is valid 
//        if (!usernameTextField.text.length) {
//        performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
//        } else {
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//IBACTIONS
    @IBAction func usernameTextFieldUsed(_ sender: Any) {
        
    }
    
    @IBAction func tagTextFieldUsed(_ sender: Any) {
        
    }

    @IBAction func enterButtonPressed(_ sender: UIButton) {
        guard let usernameTextField = self.usernameTextField.text
            else { return }

        
        guard let tagTextField = self.tagTextField.text
            else {return}
        print("username entered is \(usernameTextField)")
        print("button was pressed")
        print("tag entered was \(tagTextField)")
        
        //perform your segueway
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "MusicListSegue" {
                let musicTableVC = segue.destination as! MusicListTableViewController
                musicTableVC.username = usernameTextField.text
                musicTableVC.tag = tagTextField.text
            }
        }
    }

    }


