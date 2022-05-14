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
    var isTimeRun : Bool = false
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func timeCount(){
        label.text = timeToString(intTime: time)
        if time == 0 {
            timer.invalidate()
            isTimeRun = false
            return
        }
        progressView.progress = 1 - Float(time)/120.0
        time = time - 1
    }
    
    func timeToString(intTime : Int) -> String {
        let second = intTime % 60
        let minute = (intTime/60) % 60
        let hour = intTime/3600
        return String(format: "%0.2d:%0.2d:%0.2d", hour,minute,second)
    }
    @IBAction func play(_ sender: Any) {
        progressView.progress = 0
        if isTimeRun{
            return
        }
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timeCount), userInfo: nil, repeats: true)
        isTimeRun = true
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
        isTimeRun = false
    }
    
    @IBAction func restart(_ sender: Any) {
        timer.invalidate()
        time = 120
        progressView.progress = 0
        label.text = "\(time)"
        isTimeRun = false
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
