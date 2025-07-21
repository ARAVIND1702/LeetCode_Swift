/*
 You are given an array of integers nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.

 Return the max sliding window.

  

 Example 1:

 Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
 Output: [3,3,5,5,6,7]
 Explanation:
 Window position                Max
 ---------------               -----
 [1  3  -1] -3  5  3  6  7       3
  1 [3  -1  -3] 5  3  6  7       3
  1  3 [-1  -3  5] 3  6  7       5
  1  3  -1 [-3  5  3] 6  7       5
  1  3  -1  -3 [5  3  6] 7       6
  1  3  -1  -3  5 [3  6  7]      7
 Example 2:

 Input: nums = [1], k = 1
 Output: [1]
  
 
 */


class Solution {
    func maxSlidingWindow_TimeLimitExceeded(_ nums: [Int], _ k: Int) -> [Int] {
        var queue = Array<Int>()
        var ans : [Int] = []
        
        
        
        for i in 0..<k {
            queue.append(nums[i])
        }
        
        ans.append(queue.max()!)
        
        guard k != nums.count else {
            return ans
        }
        
        for i in k...nums.count-1 {
            
            queue.append(nums[i])
            queue.removeFirst()
            ans.append(queue.max()!)
        }
        
        return ans
    }
    
    
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var dequeue = [Int]() // double ended queue
        var ans : [Int] = []
        
        
        for i in 0..<k {
            while !dequeue.isEmpty && nums[i] > nums[dequeue.last!]{
                var index = dequeue.removeLast()
            }
            dequeue.append(i)
        }
        
        ans.append(nums[dequeue.first!])
        
        guard k != nums.count else {
            return ans
        }
        
        for i in k...nums.count-1 {
            
            if !(dequeue.first! > i - k)
            {
                dequeue.removeFirst()
            }
           
            while !dequeue.isEmpty && nums[i] > nums[dequeue.last!] {
                var index = dequeue.removeLast()
            }
            ans.append(nums[dequeue.first ?? i])
            dequeue.append(i)
        }
        
        return ans
    }
}

var solution = Solution()
print(solution.maxSlidingWindow([1,3,1,2,0,5], 3))
