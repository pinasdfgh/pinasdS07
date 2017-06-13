//
//  main.swift
//  pinasdS07
//
//  Created by user on 2017/6/12.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

//結構 struct
struct Point{
    var x:Int
    var y:Int
//    print("OK")
//全部都是定義
}

var p0 = Point(x:1 ,y:2)
print(p0.x)
print(p0.y)

p0.x = 123

print(p0.x)

print("-----------")


struct Point2{
    var x=0
    var y=0
}

var p1 = Point2()
print(p1.x)
print(p1.y)
print("-----------")
var p3 = p1
p1.x = 123 ;p1.y = 321
print("p1(\(p1.x),\(p1.y))")
print("p3(\(p3.x),\(p3.y))")


print("-----------")

struct Line{
    var Point1:Point2
    var Point2:Point2
    func f1(){
        print("OK")
    }
    static func f2(){
        print("ok2")
    }
    func len() -> Double{
        let xpow = (Point1.x-Point2.x)*(Point1.x-Point2.x)
        let ypow = (Point1.y-Point2.y)*(Point1.y-Point2.y)
        
        return sqrt(Double(xpow) + Double(ypow))
    }
}

var line1 = Line(Point1:Point2(),Point2:Point2(x:3,y:4))

print(line1.Point1.x)

line1.f1()
Line.f2()

print("--------")

var line2 = Line(Point1:Point2(),Point2:Point2(x:3,y:4))
print(line1.Point1.x)
print(line1.len())

enum Direction{
//    case Up
//    case Down
//    case Left
//    case Right
    case Up, Down, Left, Right
}

var myDir:Direction = Direction.Left

print(type(of:myDir))
myDir = .Right
switch myDir{
case .Up:
    print("Up")
case .Right:
    print("Right")
default:
    print("Other")
}

enum Town{
    case NorthArea(String),SouthArea(String)
}
let myArea:Town = Town.NorthArea("401")
print(type(of:myArea))
switch myArea{
case .NorthArea(let zonecode):
    print(zonecode)
default:
    print("OK")
}

let dirUp = 1
let dirDown = 2
