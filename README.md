# iOS Temperature Converter App

####                                                                                                     By Manoj Kumar
## Introduction 
iOS app to demonstrate segue data transfor from one view controller to another.

## How to Run
1.	Prerequisite: Xcode, Swift and iOS 
2.	Download or clone project code and open in Xcode.
3.	Run in iOS 8.


## Technologies Used
1.	Swift
2.	Xcode

## Manual steps
### Steps to create segue
Select button on main view in main storyboard then Ctrl + click and drag to another view. In pop up select Show.

### Select get or set value to control - Create ourlet
To create outlet
1. go to view
2. Click upper right side middle icon for Assistant Editor(two circles). it will open code windoe in parallel to view.
3. Select control then Ctrl + click and drag to code window. It will create outlet.

### Button Click event
1. go to view
2. Click upper right side middle icon for Assistant Editor(two circles). it will open code windoe in parallel to view.
3. Select control then Ctrl + click. It will open action events. Select one like I selected 'touch up inside' for button click and drag to code.

## Application Code and Screenshots 
Main Page.</br>
<img src="images/iPhone 8 Plus - 11.2 2018-05-05 19-54-56.png">
Result Page.</br>
<img src="images/iPhone 8 Plus - 11.2 2018-05-05 19-55-04.png">

## Code: ViewController.swift
```

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



```
## Code: ResultPageViewController.swift
```
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

```


## Thank You
#### [Manoj Kumar](https://www.linkedin.com/in/manojkumar19/)
#### Solutions Architect
