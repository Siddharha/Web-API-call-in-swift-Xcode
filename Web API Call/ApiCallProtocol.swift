//
//  ApiCallProtocol.swift
//  Web API Call
//
//  Created by BlueHorse MacBook Pro on 27/02/18.
//  Copyright © 2018 Bluehorse Software. All rights reserved.
//

import Foundation

class APIResponseClass: MyWebResponse {
    func webResponse() -> String {
        return 
    }

    
}
protocol MyWebResponse {
    func webResponse() -> String
}
