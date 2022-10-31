//
//  EmojiRatingView.swift
//  clean_sample_app
//
//  Created by Macbook on 25.10.22.
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int16
    var body: some View {
        switch rating {
        case 1:
            return Text("💩")
            
        case 2:
            return Text("😞")
        case 3:
            return Text("😏")
        case 4:
            return Text("😵‍💫")
        case 5:
            return Text("🤩")
            
            
        default:
            return Text("😕")
        }
    }
}

