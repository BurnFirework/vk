//
//  Session.swift
//  weatherVk
//
//  Created by Арина Соколова on 08.08.2022.
//

import Foundation

class Session {
    static let base_url = "https://api.vk.com/method/"
    static let version = "5.131"
    static let friends_get = "friends.get"
    static let shared = Session()
    
    private init(){}
    
    var token: String = ""
    var userId: Int = 0
    
    func getFriends() {
        // SEND REQUEST TO VK API with token
        // print friends data
        
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.vk.com"
        urlComponents.path = "/method/friends.get"
        urlComponents.queryItems = [
            URLQueryItem(name: "access_token", value: token),
            URLQueryItem(name: "v", value: Session.version)
        ]
        
        let url = urlComponents.url!
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print("Friends:", String(data: data, encoding: .utf8)!)
        }

        task.resume()
    }
    
    func getPhotos() {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.vk.com"
        urlComponents.path = "/method/photos.getAll"
        urlComponents.queryItems = [
            URLQueryItem(name: "access_token", value: token),
            URLQueryItem(name: "v", value: Session.version)
        ]
        
        let url = urlComponents.url!
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print("Photos:", String(data: data, encoding: .utf8)!)
        }

        task.resume()
    }
    
    func getGroups() {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.vk.com"
        urlComponents.path = "/method/groups.get"
        urlComponents.queryItems = [
            URLQueryItem(name: "access_token", value: token),
            URLQueryItem(name: "v", value: Session.version)
        ]
        
        let url = urlComponents.url!
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print("Groups:", String(data: data, encoding: .utf8)!)
        }

        task.resume()
    }
    
    func getGroupsBySearch(search: String) {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.vk.com"
        urlComponents.path = "/method/groups.search"
        urlComponents.queryItems = [
            URLQueryItem(name: "access_token", value: token),
            URLQueryItem(name: "q", value: search),
            URLQueryItem(name: "v", value: Session.version)
        ]
        
        let url = urlComponents.url!
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print("GroupsBySearch:", String(data: data, encoding: .utf8)!)
        }

        task.resume()
    }
}
