class Solution {
    func isValid_0ms(_ s : String) -> Bool{
        var queue : Array<Character> = []
        let closingParenthesis: Array<Character> = [")","]","}"]
        for char in s{
            guard !closingParenthesis.contains(char) else{         if queue.isEmpty {
                return false
            }
                switch char {
                case ")":
                    if "(" != queue.removeLast(){
                        return false
                    }
                case "]":
                    if "[" != queue.removeLast(){
                        return false
                    }
                    
                case "}":
                    if "{" != queue.removeLast(){
                        return false
                    }
                    
                    
                default:
                    return false
                }
                continue
            }
            queue.append(char)
            
        }
        
        return queue.isEmpty
    }
    
    func isValid_1ms(_ s: String) -> Bool {
        var queue : [Character] = []
        
        for i in s{
            if( i == "(" ||  i == "{" || i == "["){
                queue.append(i)
            }
            else if( i == ")"){
                if(queue.last == "("){
                    queue.removeLast()
                }
                else{
                    queue.append(i)
                }
            }
            else if( i == "}"){
                if(queue.last == "{"){
                    queue.removeLast()
                }
                else{
                    queue.append(i)
                }
            }
            else if( i == "]"){
                if(queue.last == "["){
                    queue.removeLast()
                }
                else{
                    queue.append(i)
                }
            }
        }
        
        
        return queue.isEmpty
        
    }
}

var solution = Solution()

print(solution.isValid("]"))


