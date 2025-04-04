// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import AppStoreAPI

public struct BuildBundleFileSize: Sendable, Identifiable {
    public let id: String
    public let deviceModel: String
    public let osVersion: String
    public let downloadBytes: Int
    public let installBytes: Int

    init?(schema: AppStoreAPI.BuildBundleFileSize) {
        guard let attributes = schema.attributes,
              let deviceModel = attributes.deviceModel,
              let osVersion = attributes.osVersion,
              let downloadBytes = attributes.downloadBytes,
              let installBytes = attributes.installBytes
        else { return nil }
        id = schema.id
        self.deviceModel = deviceModel
        self.osVersion = osVersion
        self.downloadBytes = downloadBytes
        self.installBytes = installBytes
    }
}
