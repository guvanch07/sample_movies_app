//
//  SecondMainPage.swift
//  clean_sample_app
//
//  Created by Macbook on 11.10.22.
//

import SwiftUI

struct FirstMainPage: View {
    @StateObject var viewModel = MoviesViewModel()
    let req = NetworkHandler()
    var body: some View {
        VStack{
            MoviesSearchView(viewModel: viewModel)
            MoviesListView(moviesViewModel: viewModel)
            Button(action: {req.fetchData()}) {
                Image(systemName: "arrow.down.heart.fill").foregroundColor(.red)
                
            }
        }
        
    }
}

struct SecondMainPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondMainPage()
    }
}