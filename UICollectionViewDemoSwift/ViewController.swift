//
//  ViewController.swift
//  UICollectionViewDemoSwift
//
//  Created by Hardik Trivedi on 29/07/2016.
//  Copyright © 2016 iHart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
        
        let lbl: UILabel = UILabel(frame: cell.contentView.frame)
        lbl.textColor = UIColor.whiteColor()
        lbl.textAlignment = .Center
        lbl.text = "Cell : \(indexPath.row + 1)"
        
        cell.addSubview(lbl)
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        let alert: UIAlertController = UIAlertController(title: "Cell Tap", message: "Cell : \(indexPath.row + 1) selected", preferredStyle: .Alert)
        
        let okAction: UIAlertAction = UIAlertAction(title: "Okay", style: .Default, handler: nil)
        alert.addAction(okAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }

}

