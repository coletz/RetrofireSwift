//
//  Sample.swift
//  RetrofireSwift_Example
//
//  Created by Stefano Venturin on 15/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import RetrofireSwift

protocol UserApi: Retrofire {
    
    /*// sourcery: GET = /api/users/{user}
     func getUser(
     /*sourcery: path*/ userId: String
     ) -> User
     
     // sourcery: GET = /api/users
     func filterUser(
     /*sourcery: query*/ filter: String
     ) -> User*/
    
    // sourcery: POST = /api/users/{user}
    func createUser(
        /*sourcery: body*/ userId: User
        ) -> UserResponse
    
}

class User: Encodable{}
class UserResponse: Decodable{}
