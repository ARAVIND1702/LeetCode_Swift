
class NodeSingle{
    var next : NodeSingle?
    var data : Int
    init( data: Int){
        self.data = data
        self.next = nil
    }
}


func displaySingleLinkedList(headNode : NodeSingle){
    var currentNode : NodeSingle? = headNode
    while currentNode != nil {
        print(currentNode?.data)
        currentNode = currentNode?.next ?? nil
    }
}

func addElemtsinSingleLinkedList(headNode : NodeSingle, newNode: NodeSingle){
    var currentNode : NodeSingle? = headNode
    while currentNode != nil {
        guard currentNode?.next != nil else{
            currentNode?.next = newNode
            return 
        }
        currentNode = currentNode?.next
    }
}
    
    func deleteSecondLastNode(headnode: NodeSingle){
        var currentNode : NodeSingle? = headNode
        var secondLastNode = headNode
        while currentNode != nil {
            guard currentNode?.next != nil else{
                return 
            }
            currentNode = currentNode?.next
            secondLastNode = currentNode!
        }
        secondLastNode.next = nil    }
    







var headnode = NodeSingle( data: 0)

addElemtsinSingleLinkedList(headNode: headnode, newNode: (NodeSingle(data: 1)))
addElemtsinSingleLinkedList(headNode: headnode, newNode: (NodeSingle(data: 2)))

displaySingleLinkedList(headNode: headnode )

deleteSecondLastNode(headnode: headnode)



