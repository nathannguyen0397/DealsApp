//
//  DealsModel.swift
//  DealsApp
//
//  Created by Ngoc Nguyen on 7/6/23.
//

import Foundation

struct DealsResponse: Decodable {
    let data: DataResponse
}

struct DataResponse: Decodable {
    let deals: [Deal]
}

//struct Deal: Codable, Identifiable {
//    let id, title, url, description: String
//    let price: Int
//    let product: Product
//    let createdAt, updatedAt: String
//    let likes: [UserInteraction]
//    let dislikes: [UserInteraction]
//    let comments: [Comment]
//}
//
//struct Comment: Codable {
//    let id, createdAt, text: String
//    let user: User
//}
//
//struct User: Codable {
//    let id, name: String
//}
//
//struct UserInteraction: Codable {
//    let id: String
//    let user: UserWithLikes
//}
//
//struct UserWithLikes: Codable {
//    let id, name: String
//    let likes: [DealInteraction]?
//}
//
//struct DealInteraction: Codable {
//    let id: String
//    let deal: DealInside
//}
//
//struct DealInside: Codable {
//    let id, title, url: String
//    let price: Int
//    let createdAt, updatedAt: String
//}
//
//struct Product: Codable {
//    let availability, image, description, sku, updatedAt: String
//}

struct Deal: Hashable, Codable, Identifiable {
    let id, title, url, description: String
    let price: Int
    let product: Product
    let createdAt, updatedAt: String
    let likes: [Like]
    let dislikes: [Dislike]
    let comments: [Comment]
}

struct Comment: Hashable, Codable, Identifiable {
    let id, createdAt, text: String
    let user: User
}

struct User: Hashable, Codable {
    let id, name: String
}

struct Like: Hashable, Codable {
    let id: String
    let user: UserLikes
}

struct UserLikes: Hashable, Codable {
    let id, name: String
    let likes: [LikeInside]
}

struct LikeInside: Hashable, Codable {
    let id: String
    let deal: DealInside
}

struct DealInside: Hashable, Codable {
    let id, title, url: String
    let price: Int
    let createdAt, updatedAt: String
}

struct Product: Hashable, Codable {
    let availability, image, description, sku, updatedAt: String
}

struct Dislike: Hashable, Codable {
    let id: String
    let user: DislikeUser
}

struct DislikeUser: Hashable, Codable {
    let name: String
}
