/*
 Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
 Output: [-1,3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 4 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.
 - 1 is underlined in nums2 = [1,3,4,2]. The next greater element is 3.
 - 2 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.

 */


class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var ans = Array(repeating: -1, count: nums1.count)
        var stack = [Int]()
        for i in 0...nums2.count-1 {
            
            while !stack.isEmpty && nums2[i] > nums2[stack.last!] {
                var index = stack.removeLast()
                if nums1.contains(nums2[index]) {
                    ans[nums1.firstIndex(of: nums2[index])!] = nums2[i]
                }
            }
            stack.append(i)
        }
        return ans
    }
}


let solution = Solution()
print(solution.nextGreaterElement([2,4],[1,2,3,4]))
