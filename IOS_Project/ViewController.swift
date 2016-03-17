//
//  ViewController.swift
//  IOS_Project
//
//  Created by MasterBoot on 16/3/17.
//  Copyright © 2016年 MasterBoot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var c: UITextField!
    @IBOutlet weak var b: UITextField!
    @IBOutlet weak var a: UITextField!
    @IBAction func add(sender: UIButton) {
        //print("hello world");
        //c = a+b;
        var ta:Double!=0;
        var tb:Double!=0;
        var tc:Double!=0;
        
        if(!a.text!.isEmpty)//判断是否为空
        {
            ta=(a.text! as NSString).doubleValue
        }
        if(!b.text!.isEmpty)
        {
            //tb=(b.text! as NSString).doubleValue
            tb=(Double)(b.text!);
        }
        tc=ta+tb;
        c.text="\(tc)";
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
