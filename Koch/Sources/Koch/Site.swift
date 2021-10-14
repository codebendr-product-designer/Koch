import Foundation

public struct Site: Rule {
    var body: some Rule {
        Write(contents: "Hello world", to: "index.html")
    }
}
