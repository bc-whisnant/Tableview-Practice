//
//  ViewController.swift
//  tablePractice
//
//  Created by Whisnant, Brandon on 1/3/18.
//  Copyright © 2018 Whisnant, Brandon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let tasks = ["todo1", "todo2", "todo3", "todo4", "todo5"]
    
    //this has to match the identifier set for the prototype cell in storyboard
    let cellReuseIdentifier = "todoCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //table code goes here
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //removed self reference here - previously self.tasks.count
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //removed self reference here - previously self.cellReuseIdentifier
        let cell =  tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        
        let taskList = tasks[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = taskList
        
        return cell
        
    }
    
    
    
    
    


}

