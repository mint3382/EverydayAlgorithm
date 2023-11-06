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
func solution(_ array:[Int], _ height:Int) -> Int {
    var count = 0
    
    for i in array {
        if i > height {
            count += 1
        }
    }
    
    return count
}

//: [Next](@next)
