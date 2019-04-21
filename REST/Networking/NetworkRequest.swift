//
//  NetworkRequest.swift
//  REST
//
//  Created by Milan Bojic on 4/21/19.
//  Copyright © 2019 Milan Bojic. All rights reserved.
//

import Foundation

protocol NetworkRequest: class {
    associatedtype Model
    func load(withCompletion completion: @escaping (Model?) -> Void)
    func decode(_ data: Data) -> Model?
}

extension NetworkRequest {
     func load(_ url: URL, withCompletion completion: @escaping (Model?) -> Void) {
        let configuration = URLSessionConfiguration.ephemeral
        let session = URLSession(configuration: configuration, delegate: nil, delegateQueue: .main)
        let task = session.dataTask(with: url) { [weak self] (data, response, error) in
            guard let data = data else { completion(nil); return}
            completion(self?.decode(data))
        }
        task.resume()
    }
}
