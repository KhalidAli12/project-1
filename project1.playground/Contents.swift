import UIKit
import Darwin


//class ToDoList {
//    var list : [String:Int] = [:]
//
//
//    func addList(key: String, value: Int) {
//       list[key] = value
//    }
//
//
//    func UpdateList() {
//        list.updateValue(4, forKey: "Jeddah")
//
//
//    }
//    func removeList(){
//        list.removeValue(forKey: "Jeddah")
//
//}
//
//}
//var test = ToDoList()
//test.addList(key: "Bdr", value: 0)
//test.addList(key: "Yanbu", value: 1)
//test.addList(key: "Abha", value: 2)
//
//
//test.UpdateList()
//test.removeList()
//print(test.list)




struct Item {                          // create struct
    var title: String
    var status: Bool
    var id : Int
}
class ToDoList {                     // create class
    var items: [Item] = []

     func createItem(item: Item){  // create function
        self.items.append(item)
    }
     func readItems(){  // show or print the item
         for item in self.items {
             print("Task: \(item.title), Status: \(item.status), id: \(item.id)")
         }
       
    }
    func updateItem(index: Int,name:String){    // change one element
        if index >= (items.count - 1) {print("error") }
        else{
            list.items[index].title = name}
        
    }
    
    func deleteItem(index: Int){
        // reomve one element
        if index >= (items.count - 1) {print("error") }
        else{
            list.items.remove(at: index)}
    }

}
var list = ToDoList()   // create
list.createItem(item: Item(title: "Finish project", status: true, id: 1))
list.createItem(item: Item(title: "Finish homework", status: true, id: 2))
print(list.items.count)
list.readItems()
list.updateItem(index: 0,name: "ok fixed")
list.readItems()

list.deleteItem(index: 1)
list.readItems()








//list.updateItem(index: 0, name: "fix homework")
// create list of item


//print(list.items[0].title)
//
//list.items[0].status = true
//

//print(list.items)

//list.cities.append("Rabiq") // append to list
//print(list.cities)
//
//list.cities.count // read the list
//print(list.cities)
//
//list.cities.remove(at: 2) // remove index 2 (Jeddah)
//print(list.cities)
//
//list.cities[0] = "Abha" // change Yanbu to Abha
//print(list.cities)

//struct Araay2 {
//    var title: [String]
//    var iscomplet = Bool()
//}
//
//var task1 = Araay2(title: ["go to saqr website at 6:00 pm" ,"code the project 01 tell 9:00 " , "go to sleep befor 11:00pm" , ])

//for i in  {
//    print(task1.iscomplet)
    
//}
//var T = Araay2(title: ["Khalid" , "Ahmed" , "Ali"], iscomplet: true)
//print(T.iscomplet)

