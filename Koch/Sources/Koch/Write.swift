import Foundation

struct Write: BuiltinRule, Rule {
    var contents: String
    var to: String // relative path
    
    func run() {
        print("\(contents) — filename: \(to)")
    }
    
    var body: Never {
        fatalError()
    }
}

extension Never: Rule {
    var body: Never {
        fatalError()
    }
}

