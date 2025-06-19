
class Solution{
    func maxProfit( array : [Int]) -> Int{
        var buyingPrice = array[0]
        var sellingPrice = 0
        
        for i in array{
            guard i < buyingPrice else{
                sellingPrice =  max(sellingPrice, i - buyingPrice)
                continue
            }
            buyingPrice = i
        }
        
         
        return sellingPrice
    }
}

let solution = Solution()
print(solution.maxProfit(array: [7,1,1,1,5,4,8]))


