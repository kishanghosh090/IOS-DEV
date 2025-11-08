class Comic {
    var title: String
    var author: String
    var pages: Int

    init(title: String, author: String, pages: Int) {
        self.title = title
        self.author = author
        self.pages = pages
    }

    func description() -> String {
        return "\(title) by \(author), \(pages) pages"
    }
    
}

let comic = Comic(title: "The Swift Adventures", author: "Jane Doe", pages: 120)
print(comic.description())
comic.pages += 20
print("Updated pages: \(comic.pages)")


// lazy stored property example
class ImageLoader {
    var name: String
    lazy var imageData: String = {
        print("Loading image data for \(self.name)...") // This will only print when imageData is accessed the first time
        // Simulate loading image data
        return "ImageData for \(self.name)"
    }()
    init(name: String) {
        self.name = name
    }
}

let loader = ImageLoader(name: "SampleImage")
print("ImageLoader created.")
print(loader.imageData)  // imageData is loaded here
print(loader.imageData)  // imageData is already loaded, no print from closure

// computed property example
class Circle {
    var radius: Double

    init(radius: Double = 1.0) {
        self.radius = radius
    }
    var area: Double {
        get {
            return Double.pi * radius * radius
        }
        set(newArea) {
            radius = (newArea / Double.pi).squareRoot()
        }
    }

  
}
let circle = Circle()
// print("Area of circle: \(circle.area)")
circle.area = 50.0
print("Updated radius after setting area to 50.0: \(circle.radius)")
// Computed property with getter and setter

// property observers example
class Changes {
    var num1: Int = 0 {
        willSet {
            print("num1 will change from \(num1) to \(newValue)")
        }
        didSet {
            if num1 > oldValue {
                print("num1 changed from \(oldValue) to \(num1)")
            }
        }
    }
    
}