//
//  ViewController.swift
//  SWSimpleView
//
//  Created by Workout on 07/03/17.
//  Copyright © 2017 Workout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var open: UIBarButtonItem!
    
    var varView = Int();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        open.target = self.revealViewController()
       // open.action = Selector("revealToggle:")
        open.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        if(varView == 0){
            Label.text = "Strings"
        }else {
            Label.text = "Others";
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

