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
        let endstr="\(x*x)";
        cutSet(endstr);
    }
    @IBAction func Delstr(sender: UIButton) {
        if(c.text!.isEmpty||c.text!=="0")
        {
            c.text!="0";
        }
        else if((c.text!.characters.count)==1)
        {
            c.text!="0";
        }
        else
        {
            var str=c.text!;
            str.removeAtIndex(str.endIndex.predecessor());
            c.text!=str;
        }
        
    }
    @IBAction func SetSqrt(sender: UIButton) {
        xSet();
        var str:String;
        str="\(sqrt(x))";
        cutSet(str);
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
    @IBAction func setPai(sender: UIButton) {
        c.text!="3.14";
    }
    
    @IBAction func SetSin(sender: UIButton) {
        xSet();
        c.text!="\(sin(x))";
    }
    @IBAction func SetCos(sender: UIButton) {
        xSet();
        c.text!="\(cos(x))";
    }
    @IBAction func SetTan(sender: UIButton) {
        xSet();
        c.text!="\(tan(x))";
    }
    @IBAction func SetLn(sender: UIButton) {
        xSet();
        c.text!="\(log10(x))";
    }
    @IBAction func SetLg(sender: UIButton) {
        xSet();
        c.text!="\(log(x))";
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
    @IBAction func mode(sender: UIButton) {
        xSet();
        c.text!="";
        pointLoop=false;
        loop=5;
    }
    @IBAction func Count(sender: UIButton) {
        ySet();
        var endstr:String;
        switch (loop){
        case 0:
            c.text!="0";break;
        case 1:
            endstr="\(x+y)";cutSet(endstr);break;
        case 2:
            endstr="\(x-y)";cutSet(endstr);break;
        case 3:
            endstr="\(x*y)";cutSet(endstr);break;
        case 4:
            endstr="\(x/y)";cutSet(endstr);break;
        case 5:
            endstr="\(fmod(x,y))";cutSet(endstr);break;
        case 6:
            endstr="\(pow(x,y))";cutSet(endstr);break;
        default:
            c.text!="0";
        }
    }
    @IBAction func del(sender: UIButton) {
        c.text!="0";
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
    func cutSet(var str:String){
        let strend=(str as NSString).substringFromIndex(str.characters.count-2);
        if(strend==".0")
        {
            str.removeAtIndex(str.endIndex.predecessor());
            str.removeAtIndex(str.endIndex.predecessor());
            c.text!=str;
        }
        else
        {
            c.text!=str;
        }
    }
    func StrSet(){
        //let str = c.text!;
        // 获得指定字符位置   rangeOfString()
        //获得指定范围的子字符串  substringWithRange()
        //var left = str.rangeOfString("(");
        //var lindex=left?.startIndex;
        //var right = str.rangeOfString(")");
        //var rindex=right?.startIndex;
        //let index = str.startIndex.advancedBy(lindex);
        //var index2 = str.startIndex.advancedBy(rindex);
        
        //var range = Range<String.Index>(start:left.startIndex,end: right.startIndex);
        
       // var range = Range<String.Index>(start: lindex,end: rindex);
        //let ns3=(str as NSString).substringWithRange(<#T##range: NSRange##NSRange#>)
        //substringWithRange(NSMakeRange(startindex,right-left);

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
