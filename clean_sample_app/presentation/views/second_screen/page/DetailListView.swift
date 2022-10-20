//
//  DetailListView.swift
//  clean_sample_app
//
//  Created by Macbook on 20.10.22.
//

import SwiftUI

struct DetailListView: View {
    var title: String
    var body: some View {
        Text(title)
    }
}

struct DetailListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailListView(title: "empty")
    }
}
