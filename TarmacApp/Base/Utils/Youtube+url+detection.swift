//
//  youtube+url+detection.swift
//  SIM App
//
//  Created by Rajan Maharjan on 08/07/2024.
//

import Foundation

func isYouTubeURL(_ urlString: String) -> Bool {
    guard let url = URL(string: urlString) else { return false }
    return url.host?.contains("youtube.com") == true || url.host?.contains("youtu.be") == true
}
