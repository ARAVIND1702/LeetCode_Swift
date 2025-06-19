

class Solution {
    
    func CountCharacters(_ str : String) -> [Character:Int]{
        var dictionary : [Character:Int] = [:]
        for i in str{
            if dictionary.keys.contains(i){
                dictionary[i]? += 1
            }
            else{
                dictionary.updateValue(1, forKey: i)
            }
        }
        return dictionary
    }
    
    // alter
    
    func CountCharacters_alter(_ str : String) -> [Character:Int]{
           var dictionary : [Character:Int] = [:]
           for i in str{
               dictionary[i] = (dictionary[i] ?? 0) + 1
           }
           return dictionary
       }
    
}

var sol : Solution = Solution()
print(sol.CountCharacters_alter("abcabcb"))
