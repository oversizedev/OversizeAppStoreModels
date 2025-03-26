//
// Copyright © 2024 Alexander Romanov
// AppStoreReviewDetail.swift, created on 31.10.2024
//

import AppStoreAPI
import Foundation

public struct AppStoreReviewDetail: Sendable {
    public let id: String

    public var contactFirstName: String
    public var contactLastName: String
    public var contactPhone: String
    public var contactEmail: String
    public var demoAccountName: String
    public var demoAccountPassword: String
    public var isDemoAccountRequired: Bool
    public var notes: String

    public init?(schema: AppStoreAPI.AppStoreReviewDetail) {
        guard let attributes = schema.attributes else { return nil }
        id = schema.id
        contactFirstName = attributes.contactFirstName ?? ""
        contactLastName = attributes.contactLastName ?? ""
        contactPhone = attributes.contactPhone ?? ""
        contactEmail = attributes.contactEmail ?? ""
        demoAccountName = attributes.demoAccountName ?? ""
        demoAccountPassword = attributes.demoAccountPassword ?? ""
        isDemoAccountRequired = attributes.isDemoAccountRequired ?? false
        notes = attributes.notes ?? ""
    }
}
