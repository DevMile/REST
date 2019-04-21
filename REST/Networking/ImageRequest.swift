//
//  ImageRequest.swift
//  REST
//
//  Created by Milan Bojic on 4/21/19.
//  Copyright © 2019 Milan Bojic. All rights reserved.
//

import UIKit

class ImageRequest {
    let url: URL
    
    init(url: URL) {
        self.url = url
    }
}

extension ImageRequest: NetworkRequest {
    func decode(_ data: Data) -> UIImage? {
        return UIImage(data: data)
    }
    
    func load(withCompletion completion: @escaping (UIImage?) -> Void) {
        load(url, withCompletion: completion)
    }
}
