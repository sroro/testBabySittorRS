//
//  UserData.swift
//  testBabySittorRS
//
//  Created by Rodolphe Schnetzer on 29/09/2022.
//

import Foundation

// MARK: - UserData
struct UserData: Codable {
    let count: Int
    let data: [UserInfos]
    let hasMore: Bool
    let object: String
    let totalCount: Int

    enum CodingKeys: String, CodingKey {
        case count, data
        case hasMore = "has_more"
        case object
        case totalCount = "total_count"
    }
}

// MARK: - Datum
struct UserInfos: Codable {
    let active: Bool
    let averageReviewScore: Double?
    let banned: Bool
    let birthday: String?
    let cguAccepted: Bool
    let cguAcceptedAt: String?
    let country: Country
    let createdAt: String
    let currentAddressID, currentPictureID: Int?
    let defaultPictureURL: String?
    let datumDescription, education, email: String?
    let emailAccepted: Bool
    let emailAcceptedAt: EmailAcceptedAt?
    let facebookFriendsTotalCount: Int?
    let facebookID, firebaseID: String?
    let firstName: String
    let gender: Gender
    let gensDeConfianceNbReferrers: Int?
    let gensDeConfianceURL: String?
    let hasBasicData: Bool
    let homeCardsSyncedAt: String?
    let id: Int
    let isBanned, isCguAccepted, isEmailAccepted, isSubscribed: Bool
    let isTelephoneVerified: Bool
    let lastActivityAt, lastName: String
    let locale: Country
    let object: Object
    let reviewsTotalCount: Int
    let stripeCustomerCurrency: StripeCustomerCurrency?
    let stripeCustomerID, telephone: String?
    let telephoneVerified: Bool
    let updatedAt: String

    enum CodingKeys: String, CodingKey {
        case active
        case averageReviewScore = "average_review_score"
        case banned, birthday
        case cguAccepted = "cgu_accepted"
        case cguAcceptedAt = "cgu_accepted_at"
        case country
        case createdAt = "created_at"
        case currentAddressID = "current_address_id"
        case currentPictureID = "current_picture_id"
        case defaultPictureURL = "default_picture_url"
        case datumDescription = "description"
        case education, email
        case emailAccepted = "email_accepted"
        case emailAcceptedAt = "email_accepted_at"
        case facebookFriendsTotalCount = "facebook_friends_total_count"
        case facebookID = "facebook_id"
        case firebaseID = "firebase_id"
        case firstName = "first_name"
        case gender
        case gensDeConfianceNbReferrers = "gens_de_confiance_nb_referrers"
        case gensDeConfianceURL = "gens_de_confiance_url"
        case hasBasicData = "has_basic_data"
        case homeCardsSyncedAt = "home_cards_synced_at"
        case id
        case isBanned = "is_banned"
        case isCguAccepted = "is_cgu_accepted"
        case isEmailAccepted = "is_email_accepted"
        case isSubscribed = "is_subscribed"
        case isTelephoneVerified = "is_telephone_verified"
        case lastActivityAt = "last_activity_at"
        case lastName = "last_name"
        case locale, object
        case reviewsTotalCount = "reviews_total_count"
        case stripeCustomerCurrency = "stripe_customer_currency"
        case stripeCustomerID = "stripe_customer_id"
        case telephone
        case telephoneVerified = "telephone_verified"
        case updatedAt = "updated_at"
    }
}

enum Country: String, Codable {
    case be = "be"
    case fr = "fr"
}

enum EmailAcceptedAt: String, Codable {
    case the00000000000000 = "0000-00-00 00:00:00"
    case the20190915173840 = "2019-09-15 17:38:40"
    case the20220627214701 = "2022-06-27 21:47:01"
}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
}

enum Object: String, Codable {
    case user = "user"
}

enum StripeCustomerCurrency: String, Codable {
    case eur = "eur"
}

