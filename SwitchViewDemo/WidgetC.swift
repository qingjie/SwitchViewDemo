//
//  WidgetC.swift
//  SwitchViewDemo
//
//  Created by qingjiezhao on 7/19/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

@IBDesignable class WidgetC: UIView {
    
    
    // Our custom view from the XIB file
    var view: UIView!
    
    @IBOutlet weak var buttonC: UIButton!
    
    @IBInspectable var buttonTitleC: String? {
        get {
            return buttonC.titleForState(UIControlState.Normal)
        }
        set(title) {
            buttonC.setTitle(title, forState: UIControlState.Normal)
        }
    }
    
    @IBAction func btnC(sender: AnyObject) {
        println("ccc")
    }
    
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "WidgetC", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
}
