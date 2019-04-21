//
//  ApiWrapper.swift
//  REST
//
//  Created by Milan Bojic on 4/20/19.
//  Copyright © 2019 Milan Bojic. All rights reserved.
//

import Foundation

struct ApiWrapper {
    let items: [Serialization]
}

extension ApiWrapper {
    private enum Keys: String, SerializationKey {
        case items
    }
    
    init(serialization: Serialization) {
        items = serialization.value(forKey: Keys.items) ?? []
    }
}
