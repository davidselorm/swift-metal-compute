import Foundation

public struct MetalComputeEngine {
    public init() {}

    /// Parallel vector addition: C[i] = A[i] + B[i]
    public func vectorAdd(_ a: [Float], _ b: [Float]) -> [Float] {
        precondition(a.count == b.count, "Vector sizes must match")
        var result = [Float](repeating: 0, count: a.count)
        for i in 0..<a.count {
            result[i] = a[i] + b[i]
        }
        return result
    }

    /// Dot product: sum(A[i] * B[i])
    public func dotProduct(_ a: [Float], _ b: [Float]) -> Float {
        precondition(a.count == b.count, "Vector sizes must match")
        var sum: Float = 0
        for i in 0..<a.count {
            sum += a[i] * b[i]
        }
        return sum
    }

    /// Softmax activation for attention logit tensors
    public func softmax(_ logits: [Float]) -> [Float] {
        guard let maxVal = logits.max() else { return [] }
        let exps = logits.map { exp($0 - maxVal) }
        let sumExps = exps.reduce(0, +)
        return exps.map { $0 / sumExps }
    }
}
