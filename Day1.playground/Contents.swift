import UIKit
import Foundation

//// Array
//var array = ["Mishal","Umang","Manoj","Savan"]
//print(array[0])
//print(array[3])
//
//array.append("Mishit")
//print(array)
//
//array.insert("Anmol", at: 0)
//print(array)
//
////Linked Lists
//
//let node1 = Node(value: 1)
//let node2 = Node(value: 2)
//let node3 = Node(value: 3)
//
//node1.next = node2
//node2.next = node3
//
//print(node1
//)
//
//class myS{
//    private let que = DispatchQueue.init(label: "cc")
//    
//    func run(){
//        print("1")
//        
//        que.async {
//            print("2")
//        }
// 
//        que.sync {
//            print("df")
//        }
//        
//        print("end")
//    }
//}
//
//let scheduler = myS()
//scheduler.run()
//
//func d(_ s: String?){
//    guard let s = s else{
//        return
//    }
//    
//    print(s.uppercased())
//}
//
//var firt: String?
//var second = "cdc"
//d(firt)
//d(second)
//
//struct IntStack {
//    var items = [Int]()
//
//    mutating func add(x: Int){
//        items.append(x)
//    }
//    
//}
//
//var t = IntStack(items: [1,2])
//t.add(x: 4)
//
//print(t)
//
//var a = [1,2,4]
//var b = a
//b.append(44)
//print(b)
//
//
//let na = ["ab","bbb"]
//
//for n in 0...na.count-1{
//    print(n,na.max() ?? "aa")
//}
//
//protocol bc{
//    func cc() -> Void
//}
//
//extension bc{
//    func cc() -> Void{
//        print("NO CC")
//    }
//}
//
//final class Do : bc{
//    func cc() -> Void{
//        print("No DO")
//    }
//}
//
//func swapTwoValues<T>(_ a:  inout T, _ b: inout T) {
//    let temp = a
//    a = b
//    b = temp
//}
//
//var x = 10
//var y = 20
//swapTwoValues(&x, &y)
//print("x: \(x), y: \(y)")
//
//var x1 = "Mishal"
//var y1 = "Udeshi"
//swapTwoValues(&x1, &y1)
//print("x: \(x1), y: \(y1)")
//
//
//func minMovesToMatch(arr1: [Int], arr2: [Int]) -> Int {
//    guard arr1.count == arr2.count else {
//        fatalError("Arrays must have the same length")
//    }
//    
//    var numMoves = 0
//       
//       for i in 0..<arr1.count {
//           var num1 = arr1[i]
//           var num2 = arr2[i]
//           
//           while num1 != 0 {
//               let digit1 = num1 % 10
//               let digit2 = num2 % 10
//               num1 /= 10
//               num2 /= 10
//               numMoves += abs(digit1 - digit2)
//           }
//       }
//       
//       return numMoves
//}
//
//// Example usage:
//let arr1 = [2468]
//let arr2 = [8642]
//let result = minMovesToMatch(arr1: arr1, arr2: arr2)
//print("Minimum moves required: \(result)")

var list = LinkedList<Int>()
list.push(5)
list.push(4)
list.push(3)
list.push(15)
list.push(34)
list.push(93)
print(list)

let dodo = list.node(at: 1)

list.insert(82, after: dodo!)

print(list)

list.pop()
list.removeLast()

print(list)

list.remove(after: dodo!)

print(list)
