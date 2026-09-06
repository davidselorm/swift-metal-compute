import Foundation

public struct VectorMath {
    public static func addVectors(_ a: [Float], _ b: [Float]) -> [Float] {
        precondition(a.count == b.count, "Vector lengths must match")
        return zip(a, b).map { $0 + $1 }
    }
}
