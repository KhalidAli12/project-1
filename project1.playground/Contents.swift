struct Item {                          // Create a struct named Item
    var title: String
    var status: Bool
    var id : Int
}
struct List {                         //Create a struct named List
    var title: String
    var items: [Item] = []
    
    mutating func createItem(item: Item){  //create item for a list
        self.items.append(item)
    }
    
    mutating func updateItem(index: Int,name:String){    // update the name of the item at a particular index
        if index > (self.items.count - 1) {print("error") }
        else{
            self.items[index].title = name}
        
    }
    
    mutating func deleteItem(index: Int){       //Delete item at a particular index
        if index > (items.count - 1) {print("error") } //Safety check
        else{
            self.items.remove(at: index)}
    }
    
    mutating func readListItems(){  // show or print the item
        for item in self.items{           //iterate over the whole array
            print("Task: \(item.title), Status: \(item.status), id: \(item.id)")
            
        }
        
    }
}
class ToDoList {                     // create class
    var lists: [List] = []            //collection of lists
    func readItemsAllLists(){
        
        for list in self.lists {         
            print("List Title: \(list.title)")
            for item in list.items {
                print("# \(item.id) Task: \(item.title), status: \(item.status), id \(item.id)")
            }
        }
    }
    
    func createList(list: List){  //create item for a list
        self.lists.append(list)
    }
    
    
}

var myLists = ToDoList()
myLists.lists.append(List(title: "Work" , items: [Item(title: "swift programing", status: true, id: 0)]))
myLists.lists.append(List(title: "Personal", items: [Item(title: "Buy water", status: false, id: 1)]))

//myLists.lists[0].deleteItem(index: 0)
myLists.lists[1].updateItem(index: 0, name: "Buy pepsi")
var item1 = Item(title: "Creat Project", status: true, id: 2)
var item2 = Item(title: "Edite Project", status: true, id: 3)
var item3 = Item(title: "Finsh Project", status: true, id: 4)

var list1 = List(title: "My new List", items: [item1,item2,item3])
myLists.createList(list: list1)


myLists.lists[0].updateItem(index: 0, name: "JavaScript Programing")
myLists.readItemsAllLists()
myLists.lists[0].deleteItem(index: 0)

myLists.readItemsAllLists()

