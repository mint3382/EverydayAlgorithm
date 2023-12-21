//
//  첫번째 나들이.swift
//  BaekJoon
//
//  Created by minsong kim on 12/23/23.
//

//선택의 기로
//let n = Int(readLine()!)!
//var q = [Int]()
//var p = [Int]()
//
//for _ in 1...n {
//    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
//    q.append(input[0])
//    p.append(input[1])
//}
//
//func first(_ q: [Int], _ p: [Int]) -> Int {
//    var max = 0
//    var index = 0
//
//    for i in 0...q.count - 1 {
//        if q[i] > max {
//            max = q[i]
//            index = i
//        } else if q[i] == max {
//            if p[i] <= p[index] {
//                max = q[i]
//                index = i
//            }
//        }
//    }
//
//    return index
//}
//
//func second(_ q: [Int], _ p: [Int]) -> Int {
//    var min = 10000
//    var index = 0
//
//    for i in 0...p.count - 1 {
//        if p[i] < min {
//            min = p[i]
//            index = i
//        } else if p[i] == min {
//            if q[i] >= q[index] {
//                min = p[i]
//                index = i
//            }
//        }
//    }
//
//    return index
//}
//
//func firstAnswer(q: [Int], p: [Int]) -> String {
//    var answer = ""
//    var quality = q
//    var price = p
//    let firstIndex = first(q, p)
//
//    answer += "\(q[firstIndex]) \(p[firstIndex]) "
//    price.remove(at: firstIndex)
//    quality.remove(at: firstIndex)
//
//    let secondIndex = first(quality, price)
//    answer += "\(quality[secondIndex]) \(price[secondIndex])"
//
//    return answer
//}
//
//func secondAnswer(q: [Int], p: [Int]) -> String {
//    var answer = ""
//    var quality = q
//    var price = p
//    let firstIndex = second(q, p)
//
//    answer += "\(q[firstIndex]) \(p[firstIndex]) "
//    price.remove(at: firstIndex)
//    quality.remove(at: firstIndex)
//
//    let secondIndex = second(quality, price)
//    answer += "\(quality[secondIndex]) \(price[secondIndex])"
//
//    return answer
//}
//
//print(firstAnswer(q: q, p: p))
//print(secondAnswer(q: q, p: p))
//

//진주로 가자!
//let number = Int(readLine()!)!
//var array = [Int]()
//var answer = 0
//var count = 0
//
//for _ in 1...number {
//    let ticket = readLine()!.split(separator: " ")
//
//    if ticket[0] == "jinju" {
//        answer = Int(ticket[1])!
//    } else {
//        array.append(Int(ticket[1])!)
//    }
//}
//
//for i in array {
//    if i > answer {
//        count += 1
//    }
//}
//
//print(answer)
//print(count)
