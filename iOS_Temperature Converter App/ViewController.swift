//
//  ViewController.swift
//  iOS_Temperature Converter App
//
//  Created by Manoj Kumar on 5/2/18.
//  Copyright © 2018 Manoj Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFahrenheit: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.identifier == "showResult" {
            //if let indexPath = self.tableView.indexPathForSelectedRow {
                let controller = segue.destination as! ResultPageViewController
            let fah = Float(txtFahrenheit.text!)
            let cel = (fah! - 32) * 5/9;
            let strfah = String(describing: cel)
                controller.selectedName = strfah //txtFahrenheit.text!//
            //}
       }

    }

    @IBAction func onBtnClose(_ sender: Any) {
        
        exit (0);
    }
    @IBAction func btClickHandler(_ sender: Any) {
        print("button clicked")
    }
}

