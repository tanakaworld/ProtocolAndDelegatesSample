//
//  ViewController.swift
//  ProtocolAndDelegatesSample
//
//  Created by Yutaro Tanaka on 2014/10/17.
//  Copyright (c) 2014年 Yutaro Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var dataLabel: UILabel! = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidEnterInformation(info: NSString) {
        dataLabel.text = info
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addNewText" {
            let secondVC = segue.destinationViewController as SecondViewController
            secondVC.delegate = self
        }
    }
}

