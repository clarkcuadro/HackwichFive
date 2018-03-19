//
//  detailviewControllerViewController.swift
//  HackwichFive
//
//  Created by CM Student on 3/19/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class detailviewControllerViewController: UIViewController {

    
    
    
    //variable to receive the image beingpassed from VC
    var imagePass: String?
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //set imagePass to imageName that holds the string (image file name) that to be displayed in view
            if let imageName = imagePass {
                imageView.image = UIImage(named: imageName)
            }
            
            
            
            
            
        // Do any additional setup after loading the view.
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
