//
//  SecondViewController.swift
//  ProtocolAndDelegatesSample
//
//  Created by Yutaro Tanaka on 2014/10/17.
//  Copyright (c) 2014年 Yutaro Tanaka. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate {
    func userDidEnterInformation(info: NSString)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField! = UITextField()
    
    var delegate:DataEnteredDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sendData(sender: AnyObject) {
        if (delegate != nil) {
            let information:NSString = dataTextField.text
            
            delegate!.userDidEnterInformation(information)
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
}
