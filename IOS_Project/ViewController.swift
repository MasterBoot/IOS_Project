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
    var x:Double=0.0;
    var y:Double=0.0;
    var pointLoop=false;
    @IBAction func x_y(sender: UIButton) {
        xSet();
        c.text! = "";
        pointLoop=false;
        loop=6;
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
    @IBAction func SetSqrt(sender: UIButton) {
        xSet();
        c.text!="\(sqrt(x))";
        cutSet();
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
            c.text!="\(x+y)";cutSet();break;
        case 2:
            c.text!="\(x-y)";cutSet();break;
        case 3:
            c.text!="\(x*y)";cutSet();break;
        case 4:
            c.text!="\(x/y)";cutSet();break;
        case 5:
            c.text!="\(x%y)";cutSet();break;
        case 6:
            c.text!="\(pow(x,y))";cutSet();break;
        default:
            c.text!="0";
        }
    }
    @IBAction func del(sender: UIButton) {
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
        var str=c.text!;
        let endstr=(str as NSString).substringFromIndex(2);

        if(endstr==".0")
        {
            str.removeAtIndex(str.endIndex.predecessor());
            str.removeAtIndex(str.endIndex.predecessor());
            c.text!=str;
        }
        //var str=c.text!;
    }
    func StrSet(){
        let str = c.text!;
       // 获得指定字符位置   rangeOfString()
        //获得指定范围的子字符串  substringWithRange()
        var left = str.rangeOfString("(");
        var lindex=left?.startIndex;
        var right = str.rangeOfString(")");
        var rindex=right?.startIndex;
        //let index = str.startIndex.advancedBy(lindex);
        //var index2 = str.startIndex.advancedBy(rindex);
        
        //var range = Range<String.Index>(start:left.startIndex,end: right.startIndex);
        
       // var range = Range<String.Index>(start: lindex,end: rindex);
        //let ns3=(str as NSString).substringWithRange(<#T##range: NSRange##NSRange#>)
        //substringWithRange(NSMakeRange(startindex,right-left);
        
            //12*5/(2+3);
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
