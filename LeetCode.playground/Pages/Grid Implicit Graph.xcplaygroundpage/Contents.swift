//: [Previous](@previous)

import Foundation

class Solution {
    let directions = [(0,1), (1,0), (0,-1), (-1,0)]


    func dfs(_ row: Int, _ col: Int, _ grid: inout [[Int]]) {
        let rows = grid.count
        let cols = grid[0].count

        // Base conditions
        if row < 0 || col < 0 || row >= rows || col >= cols {
            return
        }

        if grid[row][col] == -1 {
            return
        }

        // Print the current cell
        print("Visiting: (\(row), \(col)) => \(grid[row][col])")

        grid[row][col] = -1 // Mark as visited

        for (dx, dy) in directions {
            dfs(row + dx, col + dy, &grid)
        }
    }
    
    func bfs(_ startRow: Int, _ startCol: Int, _ grid: inout [[Int]]) {
        var queue = [(startRow, startCol)]
        let rows = grid.count
        let cols = grid[0].count

        while !queue.isEmpty {
            let (row, col) = queue.removeFirst()
            
            guard grid[row][col] != -1 else { continue }
            print("Visiting: (\(row), \(col)) => \(grid[row][col])")
            grid[row][col] = -1
            
            for (dx, dy) in directions {
                let newRow = row + dx
                let newCol = col + dy

                if newRow >= 0 && newRow < rows &&
                   newCol >= 0 && newCol < cols &&
                   (grid[newRow][newCol] != -1) {

                    queue.append((newRow, newCol))
                }
            }
        }
    }

    func dfsByMe(_ row: Int, _ col:Int, _ grid: inout [[Int]]) {
        let rows = grid.count
        let cols = grid[0].count
        
        if( row < 0 || row >= rows || col < 0 || col >= cols) {
            return
        }
        
        guard grid[row][col] != -1 else { return }
        
        print("Visited: (\(row), \(col)) => \(grid[row][col])")
        
        grid[row][col] = -1
        
        for (dx,dy) in directions {
            dfsByMe(row+dx, col+dy, &grid)
        }
    }

    func bfsByMe(_ row: Int, _ col:Int, _ grid: inout [[Int]]) {
        let rows = grid.count
        let cols = grid[0].count
        var queue: [(Int,Int)] = [(row,col)]
        
       while !queue.isEmpty {
           var (row,col) = queue.removeFirst()
           
           guard grid[row][col] != -1 else { continue }
           
           print("Visited: (\(row), \(col)) => \(grid[row][col])")
           
           grid[row][col] = -1
           
           for (dx,dy) in directions {
               let newRow = row + dx
               let newCol = col + dy
               
               if newRow >= 0 && newRow < rows
                && newCol >= 0 && newCol < cols
                && grid[newRow][newCol] != -1
               {
                   queue.append((newRow, newCol))
               }
           }
        }
    }


    
}
let solution = Solution()
var grid = [[2,1,1],[1,1,0],[0,1,1]]

//solution.dfs(0, 0,&grid)

solution.bfsByMe(0, 0, &grid)
print("----")
//solution.bfs(0, 0, &grid)

