
class MyQueue {
    var array : [Int]
    init() {
        array = []
    }
    
    func push(_ x: Int) {
        array.append(x)
    }
    
    func pop() -> Int {
        array.removeFirst()
    }
    
    func peek() -> Int {
        array.first ?? 0
    }
    
    func empty() -> Bool {
        array.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
