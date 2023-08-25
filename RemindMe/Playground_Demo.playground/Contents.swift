struct Queue<T> {
    private var elements: [T] = []
    
    mutating func enqueue(_ value: T){
        elements.append(value)
    }
    
    mutating func dequeue() -> T? {
        elements.isEmpty ? nil : elements.removeFirst()
    }
    
    func isEmpty(){
        elements.isEmpty
    }
    
    //look at the first element
    func peek() -> T?{
        elements.first
    }
}


extension Queue: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: T...) {
        self.elements = elements
    }
}

var myQueue : Queue<Int> = [1,2,3,4,5,6]
myQueue.dequeue()
