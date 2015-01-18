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
    
    // Information Labels
    var creditsLabel : UILabel!
    var betLabel : UILabel!
    var winnerPaidLabel : UILabel!
    
    
    // Buttons
    
    var resetButton : UIButton!
    var betOneButton : UIButton!
    var betMaxButton : UIButton!
    var spinButton : UIButton!
    
    //static labels
    var creditsTitleLabel : UILabel!
    var betTitleLabel : UILabel!
    var winnerPaidTitleLabel : UILabel!
    
    let kMarginForView: CGFloat = 10.0
    let kSixth: CGFloat = 1.0/6.0
    
    let kNumberOfContainers = 3  //no. of columns
    let kNumberOfSlots = 3 //no of rows
    let kThird:CGFloat = 1.0/3.0
    let kMarginForSlot: CGFloat = 2.0
    
    let kHalf: CGFloat = 1.0/2.0
    let kEight: CGFloat = 1.0/8.0
    
    
    
    //Functions

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupContainerViews()
        self.setupFirstContainer(firstContainer)
        self.setupSecondContainer(secondContainer)
        self.setupThirdContainer(thirdContainer)
        self.setupFourthCountainer(fourthContainer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //IBActions
    func resetButtonPressed(button: UIButton)
    {
        println("Reset ButtonPressed")
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
    
    
    func setupThirdContainer(containerView : UIView) {
        
        self.creditsLabel = UILabel()
        self.creditsLabel.text = "000000"
        self.creditsLabel.textColor = UIColor.redColor()
        self.creditsLabel.font = UIFont(name: "Menlo-Bold", size:16)
        self.creditsLabel.sizeToFit()
        self.creditsLabel.center = CGPoint(x: containerView.frame.width * kSixth, y: containerView.frame.height * kThird)
        self.creditsLabel.textAlignment = NSTextAlignment.Center
        self.creditsLabel.backgroundColor = UIColor.darkGrayColor()
        containerView.addSubview(self.creditsLabel)
        
        self.betLabel = UILabel()
        self.betLabel.text = "0000"
        self.betLabel.textColor = UIColor.redColor()
        self.betLabel.font = UIFont (name: "Menlo-Bold", size: 16)
        self.betLabel.sizeToFit()
        self.betLabel.center = CGPoint(x: containerView.frame.width * kSixth * 3, y: containerView.frame.height * kThird)
        self.betLabel.textAlignment = NSTextAlignment.Center
        self.betLabel.backgroundColor = UIColor.darkGrayColor()
        containerView.addSubview(betLabel)
        
        self.winnerPaidLabel = UILabel()
        self.winnerPaidLabel.text = "00000"
        self.winnerPaidLabel.textColor = UIColor.redColor()
        self.winnerPaidLabel.font = UIFont(name: "Menlo-Bold", size : 16)
        self.winnerPaidLabel.sizeToFit()
        self.winnerPaidLabel.center = CGPoint(x: containerView.frame.width * kSixth * 5, y: containerView.frame.height * kThird)
        self.winnerPaidLabel.textAlignment = NSTextAlignment.Center
        self.winnerPaidLabel.backgroundColor = UIColor.darkGrayColor()
        containerView.addSubview(self.winnerPaidLabel)
        
        self.creditsTitleLabel = UILabel()
        self.creditsTitleLabel.text = "Credits"
        self.creditsTitleLabel.textColor = UIColor.blackColor()
        self.creditsTitleLabel.font = UIFont (name: "AmericanTypewriter", size: 14)
        self.creditsTitleLabel.sizeToFit()
        self.creditsTitleLabel.center = CGPoint(x: containerView.frame.width * kSixth , y: containerView.frame.height * kThird * 2)
        containerView.addSubview(self.creditsTitleLabel)
        
        self.betTitleLabel = UILabel()
        self.betTitleLabel.text = "Bet"
        self.betTitleLabel.textColor = UIColor.blackColor()
        self.betTitleLabel.font = UIFont(name: "AmericanTypewriter", size: 14)
        self.betTitleLabel.sizeToFit()
        self.betTitleLabel.center = CGPoint(x: containerView.frame.width * kSixth * 3, y: containerView.frame.height * kThird * 2)
        containerView.addSubview(self.betTitleLabel)
        
        self.winnerPaidLabel = UILabel()
        self.winnerPaidLabel.text = "Winner Paid"
        self.winnerPaidLabel.textColor = UIColor.blackColor()
        self.winnerPaidLabel.font = UIFont(name: "AmericanTypewriter", size: 14)
        self.winnerPaidLabel.sizeToFit()
        self.winnerPaidLabel.center = CGPoint(x: containerView.frame.width * 5 * kSixth, y: containerView.frame.height * 2 * kThird)
        containerView.addSubview(self.winnerPaidLabel)
        
    }
    
    func setupFourthCountainer(containerView: UIView){
        self.resetButton = UIButton()
        self.resetButton.setTitle("Reset", forState: UIControlState.Normal)
        self.resetButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        self.resetButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
        self.resetButton.backgroundColor = UIColor.lightGrayColor()
        self.resetButton.sizeToFit()
        self.resetButton.center = CGPoint(x: containerView.frame.width * kEight, y: containerView.frame.height * kHalf)
        self.resetButton.addTarget(self, action: "resetButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(self.resetButton)
        
        
        
    }
    
}

