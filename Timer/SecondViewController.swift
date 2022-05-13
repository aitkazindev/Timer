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
    
    @objc func timeCount(){
        label.text = "\(time)"
        time = time - 1
    }
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timeCount), userInfo: nil, repeats: true)
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
