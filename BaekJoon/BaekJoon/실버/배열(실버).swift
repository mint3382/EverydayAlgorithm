//
//  배열(실버).swift
//  BaekJoon
//
//  Created by minsong kim on 12/23/23.
//

//방 번호
//let N = readLine()!
//var arr = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
//
//for i in N {
//    arr[Int(String(i))!] += 1
//}
//
//arr[6] = (arr[6] + arr[9] + 1) / 2
//arr[9] = 0
//
//print(arr.max()!)

//두 수의 합
//import Foundation
//let n = readLine()!
//var arr = readLine()!.split(separator: " ").sorted()
//let x = Int(readLine()!)!
//var count = 0
//var arr2 = [Int](repeating: 0, count: x - 1)
//
//for i in arr {
//    if Int(i)! < x {
//        arr2[Int(i)! - 1] += 1
//    }
//}
//
//if x == 1 || x == 2 {
//    print(count)
//} else {
//    for i in 0...((x - 1) / 2) - 1 {
//        if arr2[i] == 1 && arr2[i] == arr2[x - i - 2] {
//            count += 1
//        }
//    }
//}
//
//print(count)
//
//
