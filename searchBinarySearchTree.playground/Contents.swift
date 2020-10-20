import UIKit

//Given the root node of a binary search tree (BST) and a value. You need to find the node in the BST that the node's value equals the given value. Return the subtree rooted with that node. If such node doesn't exist, you should return NULL.
//
//For example,
//
//Given the tree:
//        4
//       / \
//      2   7
//     / \
//    1   3
//
//And the value to search: 2
//You should return this subtree:
//
//      2
//     / \
//    1   3


//once BST is ALREADY created
func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if root == nil { return nil}
        if root?.val == val {
            return root
        } else if root!.val > val{
            return searchBST(root?.left, val)
        } else if root!.val < val{
            return searchBST(root?.right, val)
        }
        return nil
    }

