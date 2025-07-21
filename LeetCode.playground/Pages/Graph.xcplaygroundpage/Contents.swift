//: [Previous](@previous)

import Foundation

class Graph {
    let graph = [
        0:[1,2],
        1:[0,3],
        2:[0],
        3:[1,4]
        ]
    
    func dfs(node: Int, visited: inout Set<Int>) {
        print(node, terminator:  " ")
        visited.insert(node)
        
        for neighbour in graph[node] ?? [] {
            if !visited.contains(neighbour) {
                dfs(node: neighbour, visited: &visited)
            }
        }
    }
    
    func bfs(start: Int) {
        var visited = [start]
        print(start, terminator:  " ")
        var queue = Array<Int>()
        queue.append(start)
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            for neigbour in graph[node] ?? [] {
                if !visited.contains(neigbour) {
                    print(neigbour, terminator: " ")
                    visited.append(neigbour)
                    queue.append(neigbour)
                }
            }
            
        }
    
        
    }
    
    func dfsUsingStacks(start: Int) {
        var stack = [start]
        var visited: Set<Int> = []
        while !stack.isEmpty {
            
            let node = stack.popLast()!
            
            
            guard !visited.contains(node) else {
                continue
            }
            
            visited.insert(node)
            print(node, terminator: " ")
                        
            for neighbour in graph[node]?.reversed() ?? [] {
                stack.append(neighbour)
            }
            
        }
    }
    
    
    
    
    
}

let graph = Graph()
var visited = Set<Int>()
print("DFS:")
graph.dfs(node: 0, visited: &visited)
visited = []
print()
print("BFS:")
graph.bfs(start: 0)
print()
print("DFS using Stack:")
graph.dfsUsingStacks(start: 0)

