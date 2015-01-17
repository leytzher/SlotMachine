//
//  ViewController.swift
//  SlotMachine
//
//  Created by Leytzher on 1/17/15.
//  Copyright (c) 2015 Leytzher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var firstContainer: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer: UIView!

    var titleLable : UILabel!
    
    
    let kMarginForView: CGFloat = 10.0
    let kSixth: CGFloat = 1.0/6.0
    
    let kNumberOfContainers = 3  //no. of columns
    let kNumberOfSlots = 3 //no of rows
    let kThird:CGFloat = 1.0/3.0
    let kMarginForSlot: CGFloat = 2.0
    
    
    //Functions

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupContainerViews()
        self.setupFirstContainer(firstContainer)
        self.setupSecondContainer(secondContainer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupContainerViews(){
        self.firstContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: self.view.bounds.origin.y, width: self.view.bounds.width - (kMarginForView*2), height: self.view.bounds.height*kSixth))
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
        
        self.secondContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height, width: self.view.bounds.width - (kMarginForView*2), height: self.view.bounds.height*(3*kSixth)))
        self.secondContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.secondContainer)
        
        self.thirdContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height + secondContainer.frame.height, width: self.view.bounds.width - (kMarginForView*2), height: self.view.bounds.height*(kSixth)))
        self.thirdContainer.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(thirdContainer)
        
        self.fourthContainer = UIView(frame: CGRect(x:self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height+secondContainer.frame.height+thirdContainer.frame.height, width: self.view.bounds.width - (kMarginForView*2), height: self.view.bounds.height*kSixth))
        self.fourthContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.fourthContainer)
        
    }
    
    func setupFirstContainer(containerView: UIView){
        self.titleLable = UILabel()
        self.titleLable.text = "Super Slots"
        self.titleLable.textColor = UIColor.yellowColor()
        self.titleLable.font = UIFont(name: "MarkerFelt-Wide", size:40)
        self.titleLable.sizeToFit()
        self.titleLable.center = containerView.center
        containerView.addSubview(self.titleLable)
    }

    func setupSecondContainer(containerView: UIView){
        for var containerNumber = 0 ; containerNumber < kNumberOfContainers; ++containerNumber {
            for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber {
                
                var slotImageView = UIImageView()
                slotImageView.backgroundColor = UIColor.yellowColor()
                
                slotImageView.frame = CGRect(x: containerView.bounds.origin.x + (containerView.bounds.size.width * CGFloat(containerNumber) * kThird), y: containerView.bounds.origin.y + (containerView.bounds.size.height * CGFloat(slotNumber)*kThird), width: containerView.bounds.width * kThird - kMarginForSlot , height: containerView.bounds.height * kThird - kMarginForSlot)
                
                containerView.addSubview(slotImageView)
            }
        }
    }
    
}

