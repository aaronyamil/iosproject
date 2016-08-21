//
//  MaleTableViewController.swift
//  FindSmartPeople
//
//  Created by Diego Alejandro Orellana Lopez on 8/21/16.
//  Copyright © 2016 Aaron Luna. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MaleTableViewController: UITableViewController {
    
    var people = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadPeople()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.people.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MaleCell", forIndexPath: indexPath) as! MaleTableViewCell
        let person = self.people[indexPath.row]
        cell.PersonName.text = person.name
        cell.PersonEmail.text = person.email
        
        let url = NSURL(string:person.photo)
        let data = NSData(contentsOfURL:url!)
        if data != nil {
            cell.PersonImage.image = UIImage(data:data!)
        }
        
        // Configure the cell...
        
        return cell
    }
    
    func loadPeople() {
        
        // populate using Rest
        Alamofire.request(.GET, "http://api.randomuser.me/?results=10&gender=male")
            .responseJSON { response in
                
                
                let json = JSON(data: response.data!)
                
                //If json is .Dictionary
                for (key,subJson):(String, JSON) in json {
                    if key == "results"{
                        for (index,subJson1):(String, JSON) in subJson {
                            let person1 = Person(name: subJson1["name"]["first"].string!, email: subJson1["email"].string!,photo: subJson1["picture"]["medium"].string!)
                            self.people.append(person1!)
                            
                        }
                    }
                }
                print(self.people.count)
                self.tableView.numberOfRowsInSection(self.people.count)
                self.tableView.reloadInputViews()
                self.tableView.reloadData()
        }
        
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
