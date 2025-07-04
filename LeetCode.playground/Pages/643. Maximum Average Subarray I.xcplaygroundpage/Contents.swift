//Input: nums = [1,12,-5,-6,50,3], k = 4
//Output: 12.75000
//Explanation: Maximum average is (12 - 5 - 6 + 50) / 4 = 51 / 4 = 12.75


class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum  = 0
        
        
        
        for i in nums[0..<k] {
            sum += i
        }
        
        var maxSum = sum
        
        guard nums.count != k else {
            return Double(maxSum)/Double(k)
        }
        
        for i in k...nums.count-1 {
            sum+=nums[i]
            sum-=nums[i-k]
            maxSum = max(maxSum,sum)
        }
        
        var average = Double(maxSum)/Double(k)
        return average
    }
}

var solution = Solution()
print(solution.findMaxAverage([5], 1))
