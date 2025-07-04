//Input: temperatures = [73,74,75,71,69,72,76,73]
//Output: [1,1,4,2,1,1,0,0]

class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        var stack = [Int]()
        for i in 0...temperatures.count-1 {
            
            while !stack.isEmpty && temperatures[i] > temperatures[stack.last!]{
                var index = stack.removeLast()
                result[index] = i - index
            }
            
            stack.append(i)            
        }
        return result
    }
}

var solution = Solution()
print(solution.dailyTemperatures([73,74,75,71,69,72,76,73]))
