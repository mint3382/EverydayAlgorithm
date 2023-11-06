//: [Previous](@previous)

//중복된 숫자 개수
func solution(_ array:[Int], _ n:Int) -> Int {
    var count = 0
    
    for i in 0...array.count - 1 {
        if array[i] == n {
            count += 1
        }
    }
    
    return count
}

//머쓱이보다 키 큰 사람
func solution2(_ array:[Int], _ height:Int) -> Int {
    var count = 0
    
    for i in array {
        if i > height {
            count += 1
        }
    }
    
    return count
}

//잘라서 배열로 저장하기
func solution3(_ my_str:String, _ n:Int) -> [String] {
    var new_str = ""
    var new_line: [String] = []
    
    for i in my_str {
        new_str += String(i)
        if new_str.count == n {
            new_line.append(new_str)
            new_str = ""
        }
    }
    
    if new_str != "" {
        new_line.append(new_str)
    }
    
    return new_line
}

//: [Next](@next)
