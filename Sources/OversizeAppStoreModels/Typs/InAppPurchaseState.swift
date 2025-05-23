//
// Copyright © 2025 Alexander Romanov
// InAppPurchaseState.swift, created on 02.01.2025
//

#if !os(Linux)
    import SwiftUI
#endif

public enum InAppPurchaseState: String, CaseIterable, Codable, Sendable {
    case missingMetadata = "MISSING_METADATA"
    case waitingForUpload = "WAITING_FOR_UPLOAD"
    case processingContent = "PROCESSING_CONTENT"
    case readyToSubmit = "READY_TO_SUBMIT"
    case waitingForReview = "WAITING_FOR_REVIEW"
    case inReview = "IN_REVIEW"
    case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
    case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
    case approved = "APPROVED"
    case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
    case removedFromSale = "REMOVED_FROM_SALE"
    case rejected = "REJECTED"

    #if !os(Linux)
        public var statusColor: Color {
            switch self {
            case .approved:
                .green
            case .waitingForUpload, .processingContent, .readyToSubmit, .waitingForReview, .inReview, .pendingBinaryApproval, .missingMetadata:
                .yellow
            case .developerActionNeeded, .developerRemovedFromSale, .removedFromSale, .rejected:
                .red
            }
        }
    #endif

    // Computed property to return display-friendly name
    public var displayName: String {
        switch self {
        case .missingMetadata:
            "Missing Metadata"
        case .waitingForUpload:
            "Waiting for Upload"
        case .processingContent:
            "Processing Content"
        case .readyToSubmit:
            "Ready to Submit"
        case .waitingForReview:
            "Waiting for Review"
        case .inReview:
            "In Review"
        case .developerActionNeeded:
            "Developer Action Needed"
        case .pendingBinaryApproval:
            "Pending Binary Approval"
        case .approved:
            "Approved"
        case .developerRemovedFromSale:
            "Developer Removed from Sale"
        case .removedFromSale:
            "Removed from Sale"
        case .rejected:
            "Rejected"
        }
    }

    public var isEditable: Bool {
        switch self {
        case .missingMetadata, .developerActionNeeded, .rejected:
            true
        default:
            false
        }
    }
}
