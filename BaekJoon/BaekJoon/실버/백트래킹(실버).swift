//
//  백트래킹(실버).swift
//  BaekJoon
//
//  Created by minsong kim on 1/7/24.
//

import Foundation

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
