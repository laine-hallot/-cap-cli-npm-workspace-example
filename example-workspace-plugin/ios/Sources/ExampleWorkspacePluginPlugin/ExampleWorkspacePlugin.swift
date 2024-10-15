import Foundation

@objc public class ExampleWorkspacePlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print("Im a workspace plugin - " + value)
        return value
    }
}
