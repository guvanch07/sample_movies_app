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
            Text("Count: \(books.count)")
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
