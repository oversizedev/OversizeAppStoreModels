//
// Copyright © 2024 Alexander Romanov
// ProcessingState.swift, created on 28.08.2024
//

public enum ProcessingState: String, CaseIterable, Codable, Sendable {
    case processing = "PROCESSING"
    case failed = "FAILED"
    case invalid = "INVALID"
    case valid = "VALID"

    public var displayName: String {
        switch self {
        case .processing:
            "Processing"
        case .failed:
            "Failed"
        case .invalid:
            "Invalid"
        case .valid:
            "Valid"
        }
    }
}
