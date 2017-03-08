//
//  FirstViewController.swift
//  todolist
//  Copyright © 2016 theswiftproject. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {
    @IBOutlet var table: UITableView!
func tableView(tableView: UITableView,numberOfRowsInSection section: Int) -> Int
    
{
    return toDoList.count
}
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
{
    let cell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier: "Cell")
    cell.textLabel?.text = toDoList[indexPath.row]
    return cell
}
    
    override func viewDidAppear(animated: Bool) {
        table.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if NSUserDefaults.standardUserDefaults().objectForKey("arr") != nil
        {
        toDoList = NSUserDefaults.standardUserDefaults().objectForKey("arr") as! [String]
        }
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            toDoList.removeAtIndex(indexPath.row)
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "arr")
            table.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

