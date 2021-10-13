struct Item {                          // create struct
    var title: String
    var status: Bool
    var id : Int
}
struct List {
    var title: String
    var items: [Item] = []
    mutating func createItem(item: Item){  //create item for a list
        self.items.append(item)
    }
    mutating func updateItem(index: Int,name:String){    // change one element
        if index > (self.items.count - 1) {print("error") }
        else{
            self.items[index].title = name}
        
    }
    
    mutating func deleteItem(index: Int){
        // reomve one element
        if index > (items.count - 1) {print("error") }
        else{
            self.items.remove(at: index)}
    }
    
    mutating func readListItems(){  // show or print the item
        for item in self.items{
            print("Task: \(item.title), Status: \(item.status), id: \(item.id)")
            
        }
        
    }
}
class ToDoList {                     // create class
    var lists: [List] = []
    func readItemsAllLists(){
        
        for list in self.lists {
            print("List Title: \(list.title)")
            for item in list.items {
                print("# \(item.id) Task: \(item.title), status: \(item.status), id \(item.id)")
            }
        }
    }
}

var myLists = ToDoList()
myLists.lists.append(List(title: "Work" , items: [Item(title: "Fix project", status: true, id: 0)]))
myLists.lists.append(List(title: "Personal", items: [Item(title: "Buy water", status: false, id: 1)]))



myLists.readItemsAllLists()
















//
//var list = ToDoList()   // create
//list.createItem(item: Item(title: "Finish project", status: true, id: 1))
//list.createItem(item: Item(title: "Finish homework", status: true, id: 2))

//list.readItems()
//list.updateItem(index: 0,name: "ok fixed")
//list.readItems()
//
//list.deleteItem(index: 1)
//list.readItems()

//myLists.lists[0].readListItems()
//myLists.lists[1].readListItems()
//myLists.lists.remove(at: 0)
//myLists.lists
//myLists.lists[1].readItems()

//myLists.lists[0].updateItem(index: 0, name: "project completed")
//myLists.lists[0].readListItems()
//myLists.lists[0].deleteItem(index: 0)
//myLists.lists[0].readListItems()
//myLists.lists[1].readListItems()
//myLists.lists[1].updateItem(index: 0, name: "by pepsi")

//myLists.lists[1].readItems()
