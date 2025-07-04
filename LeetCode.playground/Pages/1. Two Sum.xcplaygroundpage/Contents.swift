/*
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var sorted_arr = nums.sorted()
        var l = 0,r = sorted_arr.count-1
        var twoSum : [Int] = []
        while l <= r {
            let result = sorted_arr[l] + sorted_arr[r] 
            
            if result > target {
                r -= 1
            }
            else if result < target {
                l += 1
            }
            else {
                twoSum.append(nums.firstIndex(of: sorted_arr[l])!)
                twoSum.append( (sorted_arr[l] == sorted_arr[r] ? nums.lastIndex(of: sorted_arr[r]) : nums.firstIndex(of: sorted_arr[r]))!)
                break
            }
        }
        return twoSum
    }
    
    func twoSumUsingHasing(_ nums: [Int], _ target: Int) -> [Int] {
        var map : [Int:Int] = [:]
        for i in 0...nums.count-1 {
            
            let dif = target + nums[1]
            if map.keys.contains(dif) {
                return [map[dif]!,i]
            }
            else {
                map[nums[i]] = i
            }
        }
        
        return []
    }
}


var solution = Solution()

print(solution.twoSumUsingHasing([1,7,-1,2,4],6))
