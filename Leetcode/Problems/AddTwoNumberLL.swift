//
//  AddTwoNumberLL.swift
//  Leetcode
//
//  Created by ds-mayur on 6/10/2020.
//

import Foundation


//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
        
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

struct AddTwoNumberLL {
    
    func addTwoNumber(){
        
        /*
        let head1 = ListNode(0)
        let head2 = ListNode(0)
        */
        
        /*
         let head1 = ListNode(2)
         head1.next = ListNode(4)
         head1.next?.next = ListNode(3)
         
         let head2 = ListNode(5)
         head2.next = ListNode(6)
         head2.next?.next = ListNode(4)
         */
        
         let head1 = ListNode(9)
         head1.next = ListNode(9)
         head1.next?.next = ListNode(9)
         head1.next?.next?.next = ListNode(9)
         head1.next?.next?.next?.next = ListNode(9)
         head1.next?.next?.next?.next?.next = ListNode(9)
         head1.next?.next?.next?.next?.next?.next = ListNode(9)
         
         let head2 = ListNode(9)
         head2.next = ListNode(9)
         head2.next?.next = ListNode(9)
         head2.next?.next?.next = ListNode(9)
        
        debugPrint("Head 1 : \(head1)")
        debugPrint("Head 2 : \(head2)")
        
        let result = addTwoNumbers(head1, head2)
        print(result)
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var head : ListNode?
        var tempNode : ListNode? // Temp Node next is node where we have to append the node
        var prevNode : ListNode?
        
        var valueOne = l1
        var valueTwo = l2
        var add = 0
        
        
        repeat{
            
            //1. Addition Logic
            let first = valueOne?.val ?? 0
            let second = valueTwo?.val ?? 0
            
            let addition = first + second + add
            let resultValue = addition % 10
            add = addition / 10
            
            //2. Creating linkedList with the result values
            tempNode = ListNode(resultValue) //This is the new node which we need to append
            
            if(head == nil){
                head = tempNode
            }else{
                prevNode?.next = tempNode
            }
            
            prevNode = tempNode
            
            //3. Moving to next values
            valueOne = valueOne?.next
            valueTwo = valueTwo?.next
            
        }while(valueOne?.val != nil || valueTwo?.val != nil)
        
        
        if(add > 0){
            let node = ListNode(add)
            tempNode?.next = node
        }
        
        //4. Returning the result
        return head
    }
}
