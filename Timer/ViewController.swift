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
        let time = Int(textField.text!) ?? 0
        let detailVC = (storyboard?.instantiateViewController(withIdentifier: "timerVC"))! as! SecondViewController
        detailVC.totalTime = time
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
}

