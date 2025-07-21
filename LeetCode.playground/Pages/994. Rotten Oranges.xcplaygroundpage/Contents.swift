//: [Previous](@previous)

import Foundation

class Solution {
    let directions = [(0,1), (1,0), (0,-1), (-1,0)]
    
    
    func orangesRotting(_ grid: [[Int]]) -> Int{
        var maxTime = 0
        var visitedGrid = grid
        let row = grid.count
        let col = grid[0].count
        
        var queue : [((Int,Int),Int)] = []
        
        for rows in 0..<row  {
            for cols in 0..<col {
                if grid[rows][cols] == 2 {
                    queue.append(((rows,cols),0))
                }
            }
        }
        
        while !queue.isEmpty {
            
        var ((row,col),tempTime) = queue.removeFirst()
                        
            maxTime = max(maxTime, tempTime)
            
                        
            for (dx,dy) in directions {
                
                if isInBoudary(row + dx, col + dy, grid) && visitedGrid[row + dx][col + dy] == 1 {
                    queue.append(((row + dx,col + dy),tempTime + 1))
                    visitedGrid[row + dx][col + dy] = 2
                }
                
            }
            
        }
        
        for rows in 0..<row  {
            for cols in 0..<col {
                if visitedGrid[rows][cols] == 1 {
                    return -1
                }
            }
        }
        
        
        return maxTime
    }
    
    func isInBoudary(_ row: Int, _ col: Int, _ grid: [[Int]]) -> Bool {
        row >= 0 && row < grid.count && col >= 0 && col < grid[0].count
    }
    
    
    
    
    
}
let solution = Solution()
var grid = [[2,2],[1,1],[0,0],[2,0]]


print(solution.orangesRotting(grid))
//solution.bfs(0, 0, &grid)

