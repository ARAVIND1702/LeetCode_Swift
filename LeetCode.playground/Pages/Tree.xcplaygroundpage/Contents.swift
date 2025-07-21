//: [Previous](@previous)

import Foundation

class BinaryTree {
    let data: Int
    var left: BinaryTree?
    var right: BinaryTree?
    
    init(data: Int, left : BinaryTree? = nil, right: BinaryTree? = nil) {
        self.data = data
        self.left = left
        self.right = right
    }
}


// DFS
func inOrderTraversal(_ node : BinaryTree?) {
    guard let root = node else {
        return
    }
    inOrderTraversal(root.left)
    print(root.data, terminator: " ")
    inOrderTraversal(root.right)
}

func preOrderTraversal(_ node : BinaryTree?) {
    guard let root = node else {
        return
    }
    print(root.data, terminator: " ")
    preOrderTraversal(root.left)
    preOrderTraversal(root.right)
}

func postOrderTraversal(_ node : BinaryTree?) {
    guard let root = node else {
        return
    }
    postOrderTraversal(root.left)
    postOrderTraversal(root.right)
    print(root.data, terminator: " ")
}

// BFS

func levelOrderTraversal(_ root : BinaryTree?) {
    guard let node = root else {
        return
    }
    
    var queue : [BinaryTree] = [node]
    
    while !queue.isEmpty {
        let visitedNode = queue.removeFirst()
        print(visitedNode.data,terminator: " ")
        
        if let leftNode = visitedNode.left {
            queue.append(leftNode)
        }
        
        if let rightNode = visitedNode.right {
            queue.append(rightNode)
        }
    }
}




let root = BinaryTree(data: 1)
root.left = BinaryTree(data: 2)
root.right = BinaryTree(data: 3)
root.left?.left = BinaryTree(data: 4)
root.left?.right = BinaryTree(data: 5)






print("inOrderTraversal")
inOrderTraversal(root)
print()
print("PreOrderTraversal")
preOrderTraversal(root)
print()
print("PostOrderTraversal")
postOrderTraversal(root)
print()
print("BFS Level Order Traversal")
levelOrderTraversal(root)

