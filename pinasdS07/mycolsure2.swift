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
    

}
