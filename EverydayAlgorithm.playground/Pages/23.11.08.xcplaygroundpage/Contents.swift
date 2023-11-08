//: [Previous](@previous)

import Foundation

//프로그래머스 LV.0
//1. 직사각형 넓이 구하기
func solution(_ dots:[[Int]]) -> Int {
    var answer = dots[0]
    var a = 1
    var b = 1
    
    for i in 1...3 {
        if answer[0] == dots[i][0] {
            a = dots[i][1] > answer[1] ? dots[i][1] - answer[1] : answer[1] - dots[i][1]
        }
        
        if answer[1] == dots[i][1] {
            b = dots[i][0] > answer[0] ? dots[i][0] - answer[0] : answer[0] - dots[i][0]
        }
    }
    
    return a * b
}

//2. 캐릭터의 좌표
func solution2(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var answer = [0, 0]
    var max = [board[0] / 2, board[1] / 2]
    
    for i in keyinput {
        if i == "up" && answer[1] < max[1] {
            answer[1] += 1
        } else if i == "down" && answer[1] > -max[1] {
            answer[1] -= 1
        } else if i == "left" && answer[0] > -max[0] {
            answer[0] -= 1
        } else if i == "right" && answer[0] < max[0] {
            answer[0] += 1
        }
    }
    
    
    return answer
}

//3. 최댓값 만들기(2)
func solution3(_ numbers:[Int]) -> Int {
    var plus: [Int] = []
    var minus: [Int] = []
    var plusAnswer = 0
    var minusAnswer = 0
    
    guard numbers.count != 2 else {
        return numbers[0] * numbers[1]
    }
    
    for i in numbers {
        if i < 0 {
            minus.append(-i)
        } else {
            plus.append(i)
        }
    }
    
    if plus.count >= 2 {
        plus = plus.sorted()
        plusAnswer = plus.popLast()! * plus.popLast()!
    }
    
    if minus.count >= 2 {
        minus = minus.sorted()
        minusAnswer = minus.popLast()! * minus.popLast()!
    }
    
    if plusAnswer > minusAnswer {
        return plusAnswer
    } else {
        return minusAnswer
    }
}

//4. 다항식 더하기
func solution4(_ polynomial:String) -> String {
    var a = polynomial.components(separatedBy: " + ")
    var num = 0
    var xNum = 0

    for i in a {
        if Int(i) != nil {
            num += Int(i)!
        } else {
            if i == "x" {
                xNum += 1
            } else {
                var x = i
                x.removeLast()
                xNum += Int(x)!
            }
        }
    }
    
    
    if xNum == 0 {
        if num == 0 {
            return "0"
        } else {
            return "\(num)"
        }
    } else if xNum == 1 {
        if num == 0 {
            return "x"
        } else {
            return "x + \(num)"
        }
    } else {
        if num == 0 {
            return "\(xNum)x"
        } else {
            return "\(xNum)x + \(num)"
        }
    }
}

//: [Next](@next)
