//
//  ViewController.swift
//  Timer&Points
//
//  Created by Kakouliadis on 10/12/2018.
//  Copyright © 2018 Kakouliadis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 180
    
    var minutes = (180/60) - 1
    var seconds = 60
    
    var counter = 0

    // var points = 0
    
    @objc func decreaseTime() {

        if time > 0 {
            time -= 1
            seconds -= 1
            
            if counter == 60 {
                minutes -= 1
                seconds = 59
                counter = 0
            }
            

            TimeLabel.text = "\(String(format: "%02d", minutes)) : \(String(format: "%02d", seconds))"
            
            } else {
            
            timer.invalidate()
            
            }
        counter += 1
    }
    
  
    @IBOutlet weak var PointsLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    @IBAction func PauseTimer(_ sender: Any) {
        
        timer.invalidate()
        
    }
    @IBAction func PlayTimer(_ sender: Any) {
        if timer.isValid == false {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTime), userInfo: nil, repeats: true)}
        if time == 0 {
            startAgain()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TimeLabel.text = "03 : 00"
    }
    
    func startAgain() {
        TimeLabel.text = "03 : 00"
        minutes = (180/60) - 1
        seconds = 60
        
        counter = 0
        time = 180
    }
/*
    func rightBin() {
        
      points = points + 1
      PointsLabel.text = String(points)
        
    }
    
    func wrongBin() {
        
        points = points - 1
        PointsLabel.text = String(points)
        
    }
    
    func outsideBin() {
        
        points = points - 3
        PointsLabel.text = String(points)
        
    }

*/
    
}

