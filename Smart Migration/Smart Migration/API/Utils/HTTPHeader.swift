//
//  HTTPHeader.swift
//  Smart Migration
//
//  Created by Jan Janovec on 11.12.2022.
//

import Foundation

enum HTTPHeader {
    enum HeaderField: String {
        case contentType = "Content-Type"
    }

    enum ContentType: String {
        case json = "application/json"
        case htmlText = "text/html;charset=utf-8"
        case plainText = "text/plain; charset=utf-8"
    }
}
