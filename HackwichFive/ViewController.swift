//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 2/26/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//define an array variable using an array literal with 5 items of type string
    
    var listArray = ["house", "car", "tree", "cat", "dog"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var restaurantImageData = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //set VC as delegate
        //self.tableView.datasource = self
        
        
       //set delegate
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        //Part 6
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"restaurantimages") as! [String]
        
    
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listArray.count
    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //set up cell to display items in studentArray
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let text = listArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailviewControllerViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        
        }
    
    
}


}
