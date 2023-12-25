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
