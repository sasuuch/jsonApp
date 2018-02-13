//
//  Post.swift
//  nerwica
//
//  Created by  Łukasz Wojtarowicz on 13.02.2018.
//  Copyright © 2018  Łukasz Wojtarowicz. All rights reserved.
//

import Foundation
struct Post: Decodable{
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
}
