//
//  재귀(골드).swift
//  BaekJoon
//
//  Created by minsong kim on 12/29/23.
//

import Foundation

func 별찍기10() {
    let n = Int(readLine()!)!
    var board = [[String]](repeating: [String](repeating: "*", count: n), count: n)
    
    func recursive(width: Int, row: Int, col: Int) {
        if width == 3 {
            board[row + 1][col + 1] = " "
            return
        }
    
        let third = width / 3
    
        for i in row + third...(row + (third * 2)) - 1 {
            for j in col + third...(col + (third * 2)) - 1 {
                board[i][j] = " "
            }
        }
    
        recursive(width: third, row: row, col: col)
        recursive(width: third, row: row, col: col + third)
        recursive(width: third, row: row, col: col + (third * 2))
        recursive(width: third, row: row + third, col: col)
        recursive(width: third, row: row + third, col: col + (third * 2))
        recursive(width: third, row: row + (third * 2), col: col)
        recursive(width: third, row: row + (third * 2), col: col + third)
        recursive(width: third, row: row + (third * 2), col: col + (third * 2))
    }
    
    recursive(width: n, row: 0, col: 0)
    
    var answer = ""
    
    for i in board {
        answer += i.joined()
        answer += "\n"
    }
    
    print(answer)
}

func 별찍기11() {
    let n = Int(readLine()!)!
    
    func makeStar(size: Int) -> [String] {
        guard size > 1 else {
            return ["*"]
        }
        
        let star = makeStar(size: size / 2)
        let space = String(repeating: " ", count: size / 2)
        var answer = [String]()
        
        if star.count == 1 {
            star.forEach { answer.append("  " + $0 + "  ")}
            star.forEach { answer.append(" " + $0 + " " + $0 + " ")}
            star.forEach { answer.append($0 + $0 + $0 + $0 + $0)}
        } else {
            star.forEach { answer.append(space  + $0 + space) }
            star.forEach { answer.append($0 + " " + $0) }
        }
        
        
        return answer
    }
    
    print(makeStar(size: n).joined(separator: "\n"))
}
