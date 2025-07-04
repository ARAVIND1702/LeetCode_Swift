import Foundation

//
//[https://www.geeksforgeeks.org/problems/find-last-digit-of-ab-for-large-numbers1936/1](https://www.geeksforgeeks.org/problems/find-last-digit-of-ab-for-large-numbers1936/1)
//
//


public class Solution{
    func getLastDigit( a : String, b : String) -> Character{
        var num1 = Int(a)
        var num2 = Int(b)
        
        var ans = Foundation.pow(Double(a)!, Double(b)!)
        
        return String(Int(ans)).last!
    }    
}

let solution = Solution()

print(solution.getLastDigit(a: "2", b: "4"))
