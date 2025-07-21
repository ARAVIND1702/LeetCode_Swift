//: [Previous](@previous)

import Foundation

//Given the root of a binary tree, return the inorder traversal of its nodes' values.
//
//
//
//Example 1:
//
//Input: root = [1,null,2,3]
//
//Output: [1,3,2]
//
//


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let node = root else {
            return []
        }
        var ans = inorderTraversal(node.left)
        ans.append(node.val)
        ans.append(contentsOf: inorderTraversal(node.right))
        return ans
    }
}



let solution = Solution()
let root = TreeNode(1)
root.right = TreeNode(2)
root.right?.left = TreeNode(3)

solution.inorderTraversal(root)
