//
//  ViewController.swift
//  7.9_UISlider
//
//  Created by 王卓 on 15/4/15.
//  Copyright (c) 2015年 王卓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var slider=UISlider(frame: CGRectMake(0, 0, 230,20))
        //var slider=UISlider()
        slider.center=view.center
        slider.maximumValue=100
        slider.minimumValue=0
        slider.setValue(20, animated: true)
        
        slider.continuous=false
        slider.addTarget(self, action: "ValueChange:", forControlEvents: UIControlEvents.ValueChanged)
        slider.minimumTrackTintColor=UIColor.redColor()
        slider.maximumTrackTintColor=UIColor.grayColor()
        //slider.minimumValueImage=UIImage(named: "01")
        //slider.minimumValueImage=UIImage(named: "02")
        
        self.view.addSubview(slider)
    }
    
    
    func ValueChange(slider1:UISlider){
        println(slider1.value)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

