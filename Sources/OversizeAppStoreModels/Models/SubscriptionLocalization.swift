//
// Copyright © 2025 Alexander Romanov
// SubscriptionLocalization.swift, created on 12.01.2025
//

import AppStoreAPI
import Foundation
#if !os(Linux)
    import SwiftUI
#endif

public struct SubscriptionLocalization: Codable, Equatable, Identifiable, Sendable {
    public let id: String
    public var name: String
    public var locale: AppStoreLanguage
    public var description: String?
    public var state: State

    public init?(schema: AppStoreAPI.SubscriptionLocalization) {
        guard let attributes = schema.attributes,
              let localeRaw = attributes.locale,
              let locale: AppStoreLanguage = .init(rawValue: localeRaw),
              let stateRawValue = schema.attributes?.state?.rawValue,
              let state: State = .init(rawValue: stateRawValue)
        else { return nil }
        self.locale = locale
        self.state = state
        id = schema.id
        name = attributes.name ?? ""
        description = schema.attributes?.description
    }

    public enum State: String, CaseIterable, Codable, Sendable {
        case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
        case waitingForReview = "WAITING_FOR_REVIEW"
        case approved = "APPROVED"
        case rejected = "REJECTED"

        public var displayName: String {
            switch self {
            case .prepareForSubmission: "Prepare for Submission"
            case .waitingForReview: "Waiting for Review"
            case .approved: "Approved"
            case .rejected: "Rejected"
            }
        }

        #if !os(Linux)
            public var statusColor: Color {
                switch self {
                case .waitingForReview, .prepareForSubmission: .yellow
                case .approved: .green
                case .rejected: .red
                }
            }
        #endif
    }
}
