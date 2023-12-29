//
//  재귀(골드).swift
//  BaekJoon
//
//  Created by minsong kim on 12/29/23.
//

import Foundation

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
