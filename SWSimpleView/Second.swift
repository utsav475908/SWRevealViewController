//
//  Second.swift
//  SWSimpleView
//
//  Created by Kumar on 07/03/17.
//  Copyright © 2017 Workout. All rights reserved.
//

import Foundation

class Second: UIViewController {
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}
