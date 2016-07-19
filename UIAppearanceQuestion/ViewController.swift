//
//  ViewController.swift
//  UIAppearanceQuestion
//
//  Created by Daniel Ramteke on 7/19/16.
//  Copyright © 2016 Dan Ramteke Consulting, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This app demonstrates some complaints about UIAppearance."
        label.numberOfLines = 0
        label.lineBreakMode = .ByWordWrapping
        label.textAlignment = .Center
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Title"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Alert", style: .Plain, target: self, action: #selector(ViewController.showAlert))
        
        self.view.backgroundColor = .whiteColor()
        self.view.addSubview(label)
        
        label.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
        label.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        label.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.8).active = true
    }


    func showAlert() {
        let alert = UIAlertController(title: "Alert!", message: "An Alert Message!", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK!", style: .Default, handler: { action in }))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    


}

