//
//  LV 1.swift
//  Programers
//
//  Created by minsong kim on 12/25/23.
//

import Foundation

//콜라츠 추측
func 콜라츠_추측(_ num:Int) -> Int {
    var count = 0
    var n = num
    
    while n != 1 {
        guard count <= 500 else {
            return -1
        }
        
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = 3 * n + 1
        }
        count += 1
    }
    
    return count
}

//핸드폰 번호 가리기
func 핸드폰_번호_가리기(_ phone_number:String) -> String {
    var answer = ""
    var count = 1
    for i in phone_number {
        if count < phone_number.count - 3 {
            answer += "*"
        } else {
            answer += String(i)
        }
        count += 1
    }
    return answer
}

//직사각형 별찍기

func 직사각형_별찍기() {
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
    let (a, b) = (n[0], n[1])
    var answer = ""
    let star = String(repeating: "*", count: a)

    for _ in 1...b {
        answer += "\(star)\n"
    }

    print(answer)
}

func 이상한_문자_만들기(_ s:String) -> String {
    var arr: [String] = []
    var x = 0
    for i in s {
        if x % 2 == 0 {
            arr.append(String(i.uppercased()))
        } else {
            arr.append(String(i.lowercased()))
        }
        x += 1
        if i == " " {
            x = 0
        }
    }
    return arr.joined()
}
