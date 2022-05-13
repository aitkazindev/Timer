//
//  SecondViewController.swift
//  Timer
//
//  Created by Ibrahim Aitkazin on 13.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var timer = Timer()
    var time : Int = 120
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func play(_ sender: Any) {
        
    }
    
    @IBAction func pause(_ sender: Any) {
        
    }
    
    @IBAction func restart(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
