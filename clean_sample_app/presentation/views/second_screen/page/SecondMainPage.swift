//
//  FirstMainPage.swift
//  clean_sample_app
//
//  Created by Macbook on 11.10.22.
//

import SwiftUI

struct SecondMainPage: View {
    @StateObject var viewModel = MoviesViewModel()
    @State var text = ""
   
    var body: some View {
        VStack{
            List {
                ForEach(, id: \.id) {
                    MovieRow(movie: $0)
                }
                
            }
        }
    }
}

struct FirstMainPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstMainPage()
    }
}
