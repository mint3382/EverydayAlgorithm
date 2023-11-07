//: [Previous](@previous)

import Foundation

//백준_두수의 합
let n = readLine()!
var arr = readLine()!.split(separator: " ").sorted()
let x = Int(readLine()!)!
var count = 0
var arr2 = [Int](repeating: 0, count: x - 1)

for i in arr {
    if Int(i)! < x {
        arr2[Int(i)! - 1] += 1
    }
}

if x == 1 || x == 2 {
    print(count)
} else {
    for i in 0...((x - 1) / 2) - 1 {
        if arr2[i] == 1 && arr2[i] == arr2[x - i - 2] {
            count += 1
        }
    }
}

print(count)


//: [Next](@next)
