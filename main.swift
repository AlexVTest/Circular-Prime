//
//  main.swift
//  circular_prime
//
//  Created by Alex on 9/7/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation


// Check if number is prime
func isPrime(number:Int) -> Bool {
    var counter:Int = 0
    for num in 1...number {
        if number%num == 0 {
            counter += 1
        }
        if counter > 2 {
            break
        }
    }
    if counter == 2 {
        return true
    } else {
        return false
    }
}

// Circulary rotates number
func rotateNum(number:Int) -> Int {
    var length = 0.0
    if number >= 100000 {
        length = 6
    } else if number >= 10000 {
        length = 5
    } else if number >= 1000 {
        length = 4
    } else if number >= 100{
        length = 3
    } else if number >= 10 {
        length = 2
    } else if number >= 0 {
        length = 1
    }
    
    return ((number % Int( pow(10.0, length-1) ))*10)+(number - (number % Int( pow(10.0, length-1) )))/Int(pow(10.0, length-1))
    
}

// Checks if number is circular
func isCircular(number:Int) -> Bool {
    
    var num:Int = number
    
    for _ in 0...String(number).characters.count-1 {
        
        if isPrime(num) == false {
            return false
        }
        num = rotateNum(num)
        
    }
    return true
    
}


var arrOfNumbers:[Int] = []
var counter = 0

// loading prime numbers array
for number in 2...1000000 {
        if isCircular(number) {
            print(number)
            counter+=1
        }
}
print("There are \(counter) numbers.")




