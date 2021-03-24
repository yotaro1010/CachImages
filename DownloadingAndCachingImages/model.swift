//
//  model.swift
//  DownloadingAndCachingImages
//
//  Created by Yotaro Ito on 2021/03/02.
//

import Foundation


struct Post: Decodable {
    let id: String
    let description: String?
    let user: PostUser
    let urls: PostUrls
}

struct PostProfileImage: Decodable {
    let medium: String
}

struct PostUser: Decodable {
    let profile_image: PostProfileImage
}
struct PostUrls: Decodable {
    let regular: String
}

