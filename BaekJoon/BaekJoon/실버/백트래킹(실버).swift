//
//  백트래킹(실버).swift
//  BaekJoon
//
//  Created by minsong kim on 1/7/24.
//

import Foundation

func N과M11() {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let input2 = readLine()!.split(separator: " ").compactMap { Int($0) }
    var arraySet = Set<Int>()
    var array = [String]()
    for i in input2 {
        arraySet.insert(i)
    }
    for i in arraySet.sorted() {
        array.append(String(i))
    }
    var result = [String]()
    var answer = [String]()

    func recursive() {
        if result.count == input[1] {
            let numbers = result.joined(separator: " ")
            answer.append(numbers)
            return
        }

        for i in 0...array.count - 1 {
            result.append(array[i])
            recursive()
            result.removeLast()
        }
    }

    recursive()

    print(answer.joined(separator: "\n"))
}

func N과M12() {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let array = Set(readLine()!.split(separator: " ").compactMap { Int($0) }).sorted()
    var result = [String]()
    var answer = [String]()

    func recursive(start: Int) {
        if result.count == input[1] {
            let numbers = result.joined(separator: " ")
            answer.append(numbers)
            return
        }

        for i in start...array.count - 1 {
            result.append(String(array[i % array.count]))
            recursive(start: i)
            result.removeLast()
        }
    }

    recursive(start: 0)

    print(answer.joined(separator: "\n"))
}

func 부분수열의_합() {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let array = readLine()!.split(separator: " ").compactMap { Int($0) }
    var result = 0
    var answer = 0
    var visited = [Bool](repeating: false, count: input[0])

    func recursive(x: Int, start: Int) {
        if result == input[1] && x >= 1 {
            answer += 1
        }

        for i in start...array.count - 1 {
            if visited[i] == false {
                visited[i] = true
                result += array[i]
                recursive(x: x + 1 ,start: i)
                result -= array[i]
                visited[i] = false
            }
        }
    }

    recursive(x: 0, start: 0)

    print(answer)
}
