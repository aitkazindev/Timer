//
//  ViewController.swift
//  Timer
//
//  Created by Ibrahim Aitkazin on 13.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setTime(_ sender: Any) {
        let detailVC = (storyboard?.instantiateViewController(withIdentifier: "timerVC"))! as! SecondViewController
        detailVC.totalTime = Int(textField.text!)!
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
}

