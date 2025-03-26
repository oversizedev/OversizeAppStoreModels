//
// Copyright © 2025 Alexander Romanov
// SubscriptionCustomerEligibility.swift, created on 05.02.2025
//

public enum SubscriptionCustomerEligibility: String, CaseIterable, Codable, Sendable {
    case new = "NEW"
    case existing = "EXISTING"
    case expired = "EXPIRED"
}
