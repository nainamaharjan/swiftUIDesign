//
//  ToJson.swift
//  SIM App
//
//  Created by Rajan Maharjan on 05/06/2024.
//

import Foundation
extension Encodable {
    func toDictionary() throws -> [String: Any]? {
        let data = try JSONEncoder().encode(self)
        let jsonObject = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
        return jsonObject as? [String: Any]
    }
}
