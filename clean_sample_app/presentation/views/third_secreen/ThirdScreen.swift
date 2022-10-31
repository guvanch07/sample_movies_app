//
//  ThirdScreen.swift
//  clean_sample_app
//
//  Created by Macbook on 21.10.22.
//

import SwiftUI

struct ThirdMainScreen: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>
    @State private var showAddscreen = false
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(books,id: \.id){
                        BookRow(book: $0)
                    }
                }
                
            }
            .navigationTitle("")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showAddscreen.toggle()
                    }label: {
                        Label("add book",systemImage: "plus")
                    }
                }
            }.sheet(isPresented: $showAddscreen){
                CreateMovieView()
            }
            
        }
    }
}

struct ThirdMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdMainScreen()
    }
}


struct BookRow: View {
    var book: Book
    
    var body: some View {
        NavigationLink{
            Text(book.name ?? "")
        }label: {
            HStack{
                EmojiRatingView(rating: book.rating)
                    .font(.largeTitle)
                VStack(alignment: .leading){
                    Text(book.name ?? "")
                        .font(.headline)
                    Text(book.author ?? "")
                        .foregroundColor(.secondary)
                }
            }
        }
    }
    
}
