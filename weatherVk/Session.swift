//
//  Session.swift
//  weatherVk
//
//  Created by Арина Соколова on 08.08.2022.
//

import Foundation

class Session {
    
    static let shared = Session()
    
    private init(){}
    
    var token: String = ""
    var userId: Int = 0
}
