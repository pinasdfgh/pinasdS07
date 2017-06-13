//
//  mycolsure.swift
//  pinasdS07
//
//  Created by user on 2017/6/13.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation
func hh () {
    //var str = "Hello, World"
    //
    ////let regexRange = str.range(of: <#T##String#>, options: <#T##String.CompareOptions#>, range: <#T##Range<String.Index>?#>, locale: <#T##Locale?#>)
    //
    //if let range = str.range(of: "^H.*d$", options: .regularExpression){
    //    let result = str.substring(with: range)
    //    print("OK:\(result)")
    //}else{
    //    print("XX")
    //}
    
    //0 closures
    func mysort(a:Int,b:Int) -> Bool{
        print("\(a):\(b)")
        return a<b
    }
    
    print(type(of:mysort))
    
    
    let a1 = [4,2,7,1]
    
    var a2 = a1.sorted(by: mysort)
    
    print(a2.description)
    
    //1
    
    let a3 = a1.sorted(by: {(a,b) -> Bool in
        print("\(a):\(b)")
        return a<b
    })
    
    print(a3.description)
    
    //2
    
    let a4 = a1.sorted(by: {(a,b) -> Bool in a<b})
    
    print(a4.description)
    
    //3
    
    let a5 = a1.sorted(by: {$0<$1})
    
    print(a5.description)
    
    //4
    
    let a6 = a1.sorted(by: <)
    
    print(a6.description)
    
    //tailing closure
    
    let a7 = a1.sorted() {(a:Int,b:Int)->Bool in
        return a>b
    }
    print(a7.description)
    
    let s1 = ["10","11","1","2","20"]
    
    func fsort (a:String,b:String) -> Bool{
        return Int(a) ?? 0 < Int(b) ?? 0
    }
    
    let s2 = s1.sorted(by: fsort)
    
    print(s2.description)
    
    func f1 (myfunc:(Int,Int)->Int,a:Int,b:Int) ->Int{
        return myfunc(a,b)
    }
    
    func f2 (a:Int,b:Int)->Int{
        //    print("is f2 \(a+b)")
        return a >= b ? a:b
    }
    
    func f3(a:Int,b:Int)->Int{
        //    print("is f3 \(a-b)")
        return a <= b ? a:b
        
    }
    
    print(type(of:f2))
    
    let v1 = f1(myfunc: f2,a:3,b:4)
    let v2 = f1(myfunc: f3,a:3,b:4)
    print(v1)
    print(v2)
    
    func f4(myfunc:()->(),myfunc2:()->()){
        myfunc()
        myfunc2()
    }
    
    func f5(){
        print("f5")
    }
    func f6(){
        print("f6")
    }
    
    f4(myfunc:f5,myfunc2:f6)
}
