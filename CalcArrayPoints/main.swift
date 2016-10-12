//
//  main.swift
//  CalcArrayPoints
//
//  Created by Pradeep Jha on 10/11/16.
//  Copyright © 2016 Alexis Anand. All rights reserved.
//

import Foundation

func add(left: Int, right: Int) -> Int {
    return left + right
}

func add(array: Array<Int>) -> Int {
    return reduce(array: array, operation: add)
}

func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func add(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]! {
    if p1?["x"] == nil || p1?["y"] == nil || p2?["x"] == nil || p2?["y"] == nil {
        return [ "x": 0, "y": 0 ]
    }
    
    return [ "x": p1!["x"]! + p2!["x"]!, "y": p1!["y"]! + p2!["y"]! ]
}

func add(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]! {
    if p1?["x"] == nil || p1?["y"] == nil || p2?["x"] == nil || p2?["y"] == nil {
        return [ "x": 0, "y": 0 ]
    }
    
    return [ "x": p1!["x"]! + p2!["x"]!, "y": p1!["y"]! + p2!["y"]! ]
}

func subtract(left: Int, right: Int) -> Int {
    return left - right
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

func subtract(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]! {
    if p1?["x"] == nil || p1?["y"] == nil || p2?["x"] == nil || p2?["y"] == nil {
        return [ "x": 0, "y": 0 ]
    }
    
    return [ "x": p1!["x"]! - p2!["x"]!, "y": p1!["y"]! - p2!["y"]! ]
}

func subtract(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]! {
    if p1?["x"] == nil || p1?["y"] == nil || p2?["x"] == nil || p2?["y"] == nil {
        return [ "x": 0, "y": 0 ]
    }
    
    return [ "x": p1!["x"]! - p2!["x"]!, "y": p1!["y"]! - p2!["y"]! ]
}

func multiply(left: Int, right: Int) -> Int {
    return left * right
}

func multiply(array: Array<Int>) -> Int {
    return reduce(array: array, operation: multiply, start: 1)
}

func divide(left: Int, right: Int) -> Int {
    return left / right
}

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

func average(array: Array<Int>) -> Int {
    return reduce(array: array, operation: add) / array.count
}

func count(array: Array<Int>) -> Int {
    return reduce(array: array, operation: addOne)
}

func reduce(array: Array<Int>, operation: (Int, Int) -> Int, start: Int = 0) -> Int {
    var accumulator: Int = start
    
    for number in array {
        accumulator = operation(accumulator, number)
    }
    
    return accumulator;
}

func addOne(left: Int, right: Int) -> Int {
    return left + 1
}
