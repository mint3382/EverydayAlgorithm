//
//  배열.swift
//  BaekJoon
//
//  Created by minsong kim on 12/23/23.
//

//숫자의 개수
//import Foundation
//let a = readLine()!
//let b = readLine()!
//let c = readLine()!
//
//let x = (Int(a)! * Int(b)! * Int(c)!)
//
//for i in 0...9 {
//    print(String(x).components(separatedBy: "\(i)").count - 1)
//}

//알파벳 개수
//let S = readLine()!
//let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//
//for i in alphabet {
//    var count = 0
//    for j in S {
//        if i == String(j) {
//            count += 1
//        }
//    }
//    print(count, terminator: " ")
//}

//개수 세기
//let N = readLine()!
//let arr = readLine()!.split(separator: " ")
//let v = readLine()!
//var count = 0
//
//for i in arr {
//    if v == String(i) {
//        count += 1
//    }
//}
//
//print(count)

//방 배정
//import Foundation
//let condition = readLine()!.split(separator: " ")
//let N = Int(condition[0])!
//let K = Double(condition[1])!
//
//var students = [[Int]](repeating: [Int](repeating: 0, count: 6), count: 2)
//var count = 0
//
//for _ in 1...N {
//    let student = readLine()!.split(separator: " ")
//    
//    if String(student[0]) == "0" {
//        students[0][Int(student[1])! - 1] += 1
//    } else {
//        students[1][Int(student[1])! - 1] += 1
//    }
//}
//
//for i in 0...5 {
//    count += Int(ceil(Double(students[0][i]) / K))
//    count += Int(ceil(Double(students[1][i]) / K))
//}
//
//print(count)

//Strfry
//import Foundation
//let N = Int(readLine()!)!
//
//for _ in 1...N {
//    let testCase = readLine()!.split(separator: " ")
//    
//    if testCase[0].sorted() == testCase[1].sorted() {
//        print("Possible")
//    } else {
//        print("Impossible")
//    }
//}
