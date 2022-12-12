//
//  APIError.swift
//  Smart Migration
//
//  Created by Jan Janovec on 09.12.2022.
//

import Foundation

enum APIError: Error, LocalizedError {
    case invalidUrlComponents
    case noResponse
    case unacceptableResponseStatusCode
    case customDecodingFailed
    case malformedUrl//spatny protokol
}
