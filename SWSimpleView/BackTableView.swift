//
//  BackTableView.swift
//  SWSimpleView
//
//  Created by Kumar on 07/03/17.
//  Copyright © 2017 Workout. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Hello", "Second", "World"];
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return TableArray.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row];
        
        
        return cell;
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestVC = segue.destination as! ViewController
        var indexPath = self.tableView.indexPathForSelectedRow;
        DestVC.varView = (indexPath?.row)!;
         
        //DestVC.varView = index.
    }
    
    
}
