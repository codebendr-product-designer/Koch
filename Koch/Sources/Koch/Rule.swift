import Foundation

protocol Rule {
    associatedtype Body: Rule
    var body: Body { get }
}

extension Rule {
    func execute() {
        // ...
    }
}

protocol BuiltinRule {
    func run()
}
