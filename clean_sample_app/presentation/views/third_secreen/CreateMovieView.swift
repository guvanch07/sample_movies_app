//
//  CreateMovieView.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import SwiftUI

struct CreateMovieView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State var name = ""
    @State var author = ""
    @State var genre = ""
    @State var rating = 3
    @State var review = ""
    
    let genres = ["Fantacy","Horror","Kids","Romance","Mystery","Poetry"]
    
    
    @State var date = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    TextField("Book of Name",text:$name)
                    TextField("Author'n name", text: $author)
                    Picker("Genre",selection: $genre){
                        ForEach(genres,id: \.self){
                            Text($0)
                        }
                    }
                }
                Section{
                    TextField("review",text:$review)
                    RatingView(rating: $rating)
                } header: {
                    Text("write the review")
                }
                
                Section{
                    Button("Save"){
                        let newBook = Book(context: moc)
                        newBook.genre = genre
                        newBook.id = UUID()
                        newBook.name = name
                        newBook.author = author
                        newBook.rating = Int16(rating)
                        newBook.review = review
                        try? moc.save()
                        
                        print("saved")
                        dismiss()
                    }
                }
            }
        
            .navigationBarTitle("Add", displayMode: .inline)
            
        }
    }
}

struct CreateMovieView_Previews: PreviewProvider {
    static var previews: some View {
        CreateMovieView()
    }
}
