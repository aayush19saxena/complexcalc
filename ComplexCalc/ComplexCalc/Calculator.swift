//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    public func add(_ args: [Int]) -> Int {
        var sum = 0
        for arg in args {
            sum += arg
        }
        return sum
    }
    
    public func multiply(_ args:[Int]) -> Int {
        var prod = 1
        for arg in args {
            prod *= arg
        }
        return prod
    }
    
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    public func avg(_ args: [Int]) -> Int {
        let sum = add(args)
        return sum / args.count
    }
    
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) ->Int {
        var total = beg
        for arg in args {
            total = op(total, arg)
        }
        return total
    }
    
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var emptyDict: [String: Int] = [:]
        if !lhs.keys.elementsEqual(rhs.keys) {
            return ["The dictionary keys do not match": 0]
        }
        for key in lhs.keys {
            emptyDict[key] = lhs[key]! + rhs[key]!
        }
        
        return emptyDict
    }
    
    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var emptyDict: [String: Int] = [:]
        if !lhs.keys.elementsEqual(rhs.keys) {
            return ["The dictionary keys do not match": 0]
        }
        for key in lhs.keys {
            emptyDict[key] = lhs[key]! - rhs[key]!
        }
        
        return emptyDict
    }
    
}
