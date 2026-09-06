import Foundation

public struct VectorMath {
    public static func addVectors(_ a: [Float], _ b: [Float]) -> [Float] {
        precondition(a.count == b.count, "Vector lengths must match")
        return zip(a, b).map { $0 + $1 }
    }

    public static func dotProduct(_ a: [Float], _ b: [Float]) -> Float {
        precondition(a.count == b.count, "Vector lengths must match")
        return zip(a, b).reduce(0.0) { $0 + ($1.0 * $1.1) }
    }

    public static func cosineSimilarity(_ a: [Float], _ b: [Float]) -> Float {
        let dot = dotProduct(a, b)
        let normA = sqrt(dotProduct(a, a))
        let normB = sqrt(dotProduct(b, b))
        guard normA > 0 && normB > 0 else { return 0.0 }
        return dot / (normA * normB)
    }
}
