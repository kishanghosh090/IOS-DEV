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

