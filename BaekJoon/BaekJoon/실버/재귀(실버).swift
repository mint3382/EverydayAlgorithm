//
//  재귀(실버).swift
//  BaekJoon
//
//  Created by minsong kim on 12/31/23.
//

import Foundation

func 색종이_만들기() {
    let input = Int(readLine()!)!
    var range = [[Int]](repeating: [], count: input)
    var whitePaper = 0
    var bluePaper = 0
    
    for i in 0...input - 1 {
        let line = readLine()!.split(separator: " ").compactMap { Int($0) }
    
        range[i] = line
    }
    
    func isSame(array:[[Int]]) -> Bool {
        let first = array[0][0]
        for i in 0...array.count - 1 {
            for j in 0...array[0].count - 1 {
                if array[i][j] != first {
                    return false
                }
            }
        }
    
        return true
    }
    
    func recursive(array: [[Int]]) {
        if isSame(array: array) {
            if array[0][0] == 0 {
                whitePaper += 1
            } else {
                bluePaper += 1
            }
            return
        }
    
        let row = array.count
        let col = array[0].count
        for i in 0...1 {
            for j in 0...1 {
                var temp: [[Int]] = []
                let x = array.index(array.startIndex, offsetBy: i * (row / 2))
                let y = array.index(array.startIndex, offsetBy: (i + 1) * (row / 2))
    
                for k in j * (col / 2) ... (j + 1) * (col / 2) - 1 {
                    temp.append(array[k][x...y - 1].map{$0})
                }
                recursive(array: temp)
            }
        }
    }
    
    recursive(array: range)
    
    print(whitePaper)
    print(bluePaper)
}
