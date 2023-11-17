//
//  ApiError.swift
//  IndiaGreatClips
//
//  Created by Shobhakar Tiwari on 11/17/23.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
