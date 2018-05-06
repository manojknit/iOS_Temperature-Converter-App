//
//  ResultPageViewController.swift
//  iOS_Temperature Converter App
//
//  Created by Manoj Kumar on 5/2/18.
//  Copyright © 2018 Manoj Kumar. All rights reserved.
//

import UIKit

class ResultPageViewController: UIViewController {

    var selectedName: String = "Anonymous"
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = selectedName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
  

    
    @IBOutlet weak var myLabel: UILabel!
    
}
