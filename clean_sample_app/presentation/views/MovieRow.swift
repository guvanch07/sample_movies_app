//
//  MovieRow.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack{
            Image(movie.imageName ?? "")
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(6)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
            VStack{
                Text("Name:")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(movie.name)
                    .font(.system(size: 15, weight: .bold))
                Spacer().frame(height: 10)
                HStack {
                    Text("Date:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(movie.date , style: .date).font(.system(size: 13))
                }
                
            }
        }.padding()
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieRow(movie: Movie(name: "name", date: Date(), imageName: nil))
    }
}
