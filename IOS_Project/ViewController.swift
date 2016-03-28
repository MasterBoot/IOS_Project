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
    var loop=0;
    var x=0.0;
    var y=0.0;
    var pointLoop=false;
    @IBAction func x_y(sender: UIButton) {
        xSet();
        c.text!="\(x*x*x)";
    }
    @IBAction func x_2(sender: UIButton) {
        xSet();
        c.text!="\(x*x)";
    }
    @IBAction func x_mode(sender: UIButton) {
        xSet();
        c.text!="";
        pointLoop=false;
        loop=5;
    }
    @IBAction func Add_1(sender: AnyObject) {
        zeroSet();
        c.text! += "1";
    }
    @IBAction func Add_2(sender: UIButton) {
        zeroSet();
        c.text! += "2";
    }
    @IBAction func Add_3(sender: UIButton) {
        zeroSet();
        c.text! += "3";
    }
    @IBAction func Add_4(sender: UIButton) {
        zeroSet()
        c.text! += "4";
    }
    @IBAction func Add_5(sender: UIButton) {
        zeroSet();
        c.text! += "5";
    }
    @IBAction func Add_6(sender: UIButton) {
        zeroSet();
        c.text! += "6";
    }
    @IBAction func Add_7(sender: UIButton) {
        zeroSet();
        c.text! += "7";
    }
    @IBAction func Add_8(sender: UIButton) {
        zeroSet();
        c.text! += "8";
    }
    @IBAction func Add_9(sender: UIButton) {
        zeroSet();
        c.text! += "9";
    }
    @IBAction func Add_0(sender: UIButton) {
        if(c.text!.isEmpty){
            c.text! = "0";
        }
        else{
            zeroSet();
            c.text! += "0";
        }
        
    }
    @IBAction func Add_Point(sender: UIButton) {
        if(!pointLoop)
        {
            if(!(c.text!=="")){
                c.text! += ".";
                pointLoop=true;
            }
            
        }
        
    }
    @IBAction func Add_JIA(sender: UIButton) {
        xSet();
        c.text! = "";
        pointLoop=false;
        loop=1;
    }
    @IBAction func Add_JIAN(sender: UIButton) {
        xSet();
        //c.text! += "-";
        c.text!="";
        pointLoop=false;
        loop=2;
    }
    @IBAction func Add_CHENG(sender: UIButton) {
        xSet();
        //c.text! += "*";
        c.text!="";
        pointLoop=false;
        loop=3;
    }
    @IBAction func Add_CHU(sender: UIButton) {
        xSet();
        //c.text! += "/";
        c.text!="";
        pointLoop=false;
        loop=4;
    }
    @IBAction func Count(sender: UIButton) {
        ySet();
        switch (loop){
        case 0:
            c.text!="0";break;
        case 1:
            c.text!="\(x+y)";break;
        case 2:
            c.text!="\(x-y)";break;
        case 3:
            c.text!="\(x*y)";break;
        case 4:
            c.text!="\(x/y)";break;
        case 5:
            c.text!="\(x%y)";break;
        default:
            c.text!="0";
        }
    }
    @IBAction func Clear(sender: UIButton) {
        c.text!="";
        x=0.0;
        y=0.0;
        pointLoop=false;
    }
     func xSet(){
        if(!c.text!.isEmpty){
            x=(Double)(c.text!)!;
        }
        else{
            c.text!="0";
        }
    }
    func ySet(){
        if(!c.text!.isEmpty){
            y=(Double)(c.text!)!;
        }
        else{
            c.text!="0";
        }
    }
    func zeroSet(){
        if(c.text!=="0"){
            c.text!="";
        }
    }
    func cutSet(){
        
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
