//
// Copyright © 2024 Alexander Romanov
// BuildAudienceType.swift, created on 28.08.2024
//

public enum BuildAudienceType: String, CaseIterable, Codable, Sendable {
    case internalOnly = "INTERNAL_ONLY"
    case appStoreEligible = "APP_STORE_ELIGIBLE"
}
