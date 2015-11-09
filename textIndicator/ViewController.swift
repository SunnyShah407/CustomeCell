//
//  ViewController.swift
//  textIndicator
//
//  Created by 农盟 on 15/8/21.
//  Copyright (c) 2015年 农盟. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.grayColor()
        
       // self.collection.registerClass(YNCollectionViewCell.self , forCellWithReuseIdentifier: "Cell_Image")
        
//        self.collection.registerNib(UINib(nibName: "YNCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell_Image")
        
        let flow = UICollectionViewFlowLayout()
        
        flow.minimumLineSpacing = 10
        flow.minimumInteritemSpacing = 10
        flow.itemSize = CGSizeMake(100, 100)
        
        self.collection.collectionViewLayout = flow
    }

    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


 //MARK: UICollectionViewDataSource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let identify = "Cell_Image"
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(identify, forIndexPath: indexPath) as! YNCollectionViewCell
        cell.textView.text = "Rose"
        return cell
    }
    
//    @IBAction func textMove(sender: AnyObject) {
//        
//        let animation = CAKeyframeAnimation(keyPath: "position")
//        
//        let path: CGMutablePathRef = CGPathCreateMutable()
//        
//        let center = self.button.center
//        CGPathMoveToPoint(path, nil, center.x, center.y)
//        CGPathAddCurveToPoint(path, nil, center.x, center.y, center.x-150, center.y-150, 0, self.view.frame.size.height)
//        animation.path = path
//        animation.duration = 0.7
//        animation.beginTime = 0
//        animation.repeatCount = 0
//        animation.removedOnCompletion = false
//        animation.fillMode = kCAFillModeForwards
//        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
//        
//        self.button.layer.addAnimation(animation, forKey: "position")
//        
//    }
    
    
}

