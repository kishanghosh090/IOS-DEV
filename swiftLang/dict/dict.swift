print("dictionary")

var ytVedios:[String: Int] = [
    "title": 122,
    "react": 2233,
    "anguler": 5566,
]
print(ytVedios["title"]!)

print([String](ytVedios.keys)[0])

ytVedios.updateValue(6666, forKey: "react") // return old value
print(ytVedios)

ytVedios["title"] = nil
print(ytVedios)

ytVedios.removeValue(forKey: "title")
print(ytVedios)