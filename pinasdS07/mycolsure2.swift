//
//  mycolsure2.swift
//  pinasdS07
//
//  Created by user on 2017/6/13.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation
func ff(){
    func f1() ->() ->(){
        func f2(){
            print("f2")
        }
        return f2  //()->()
    }
    
    let f4 = f1
    let f3 = f4()
    f3()
    
    func f5(myfunc:()->()){
        myfunc()
        print("f5")
        
    }
    
    let f6 = f5
    
    func f7(){print("f7")}
    
    //func 給值是取值
    f5(myfunc: f7)
    f6(f7)
    
    //tail 方式只能定最後的func
    f6(){
        print("tail")
    }
    
    //overload  =======API中也有這種
    func f2(){
        print("f2")
    }
    
    func f2(a:Int){
        print("f2:2")
    }
//    func f2(a:String){
//        print("f2:3")
//    }
//    
    func f2(a:Int,b:Bool){
        print("f2:4")
    }
    
    
    f2(a:3)
    
    print("--------")
    
    func f3(){
        print("f3")
    }
    
    
    func f3(by:(Int,Int)->Bool){
        print("f3:bool")
    }
    
    f3()
    
//    f3(by:{(a,b)->Bool in a<b})
//    f3(){(a,b)->Bool in
//        print("ok")
//        return a<b
//    }
    
    print("-----------")
    
    func createTWId() ->String{
        return createTWId(gender:false)
    }
    func createTWId(gender:Bool) ->String{
        
        return createTWId(gender:gender,area:4)
    }
    func createTWId(area:Int) ->String{
        
        return createTWId(gender:true,area:area)
    }
    func createTWId(gender:Bool,area:Int) ->String{
        return ""
    }
    

}
