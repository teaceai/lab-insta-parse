//
//  User.swift
//  lab-insta-parse
//

import Foundation
import ParseSwift

struct User: ParseUser {
    // Required by ParseObject
    var originalData: Data?
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?

    // Required by ParseUser
    var username: String?
    var email: String?
    var password: String?
    var emailVerified: Bool?
    var authData: [String: [String: String]?]?
}

extension User {
    init(username: String?, email: String?, password: String?) {
        self.username = username
        self.email = email
        self.password = password
    }
}
