//
//  ViewController.swift
//  SwitchViewDemo
//
//  Created by qingjiezhao on 7/19/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func indexChange(sender: UISegmentedControl) {
        removeWidgets()
        switch sender.selectedSegmentIndex {
        case 0:
            println("A clicked")
            removeWidgets()
            loadWidgetA()
            
        case 1:
            println("B clicked")
            removeWidgets()
            loadWidgetB()
            
        case 2:
            println("C clicked")
            removeWidgets()
            loadWidgetC()
            
        case 3:
            println("D clicked")
            removeWidgets()
            loadWidgetD()
            
        case 4:
            println("ClearAll clicked")
            removeWidgets()
        case 5:
            println("ShowAll clicked")
            removeWidgets()
            loadWidgets()
        default:
            break;
        }
    }
    
    func loadWidgets(){
        loadWidgetA()
        loadWidgetB()
        loadWidgetC()
        loadWidgetD()
        
    }
    
    func removeWidgets(){
        removeWidgetA()
        removeWidgetB()
        removeWidgetC()
        removeWidgetD()
    }
    
    func loadWidgetA(){
        let v = WidgetA()
        v.frame = CGRectMake(36, 68, 200, 100)
        self.view.addSubview(v)
    }
    
    func removeWidgetA(){
        if(view.subviews.count > 0){
            for subview in view.subviews {
                if subview is WidgetA {
                    println(subview)
                    subview.removeFromSuperview()
                }
            }
        }
    }
    

    func loadWidgetB(){
        let v = WidgetB()
        v.frame = CGRectMake(36, 268, 200, 100)
        self.view.addSubview(v)
    }
    
    func removeWidgetB(){
        if(view.subviews.count > 0){
            for subview in view.subviews {
                if subview is WidgetB {
                    println(subview)
                    subview.removeFromSuperview()
                }
            }
        }
    }
    
    func loadWidgetC(){
        let v = WidgetC()
        v.frame = CGRectMake(36, 468, 200, 100)
        self.view.addSubview(v)
    }
    
    func removeWidgetC(){
        if(view.subviews.count > 0){
            for subview in view.subviews {
                if subview is WidgetC {
                    println(subview)
                    subview.removeFromSuperview()
                }
            }
        }
    }
    
    func loadWidgetD(){
        let v = WidgetD()
        v.frame = CGRectMake(36, 568, 200, 100)
        self.view.addSubview(v)
    }
    
    func removeWidgetD(){
        if(view.subviews.count > 0){
            for subview in view.subviews {
                if subview is WidgetD {
                    println(subview)
                    subview.removeFromSuperview()
                }
            }
        }
    }
}

