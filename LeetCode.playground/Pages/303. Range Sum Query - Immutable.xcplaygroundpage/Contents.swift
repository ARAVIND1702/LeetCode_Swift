
class NumArray {
    let nums : [Int] 
    var prefix_arr : [Int] = []
    init(_ nums: [Int]) {
        self.nums = nums
        calculatePrefixSum()
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
       guard left != 0 else {
           return prefix_arr[right]
       }
       
        return prefix_arr[right] - prefix_arr[left-1] 
        
    }
    
    func calculatePrefixSum() -> [Int]{
        
        
        for i in 0...nums.count-1{
            guard i != 0 else {
                prefix_arr.append(nums[i])
                continue
            }
            
            prefix_arr.append(prefix_arr[i - 1] + nums[i])
        }
        
        return prefix_arr
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */

var solution : NumArray = NumArray([-1])
print(solution.prefix_arr)

print(solution.sumRange(0, 0))
