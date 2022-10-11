//
//  CreateMovieView.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import SwiftUI

struct CreateMovieView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: MoviesViewModel
    
    
    @State var name = ""
    @State var date = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Movie")) {
                    TextField("Name", text: $name)
                        .foregroundColor(.white)
                    
                }
                DisclosureGroup("Date") {
                    DatePicker("\(date)", selection: $date).datePickerStyle(GraphicalDatePickerStyle())
                }
            }
            .navigationBarTitle("Add", displayMode: .inline)
            .navigationBarItems(leading:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            },
                                           label: {
                Text("Cancel").foregroundColor(.red)
            }),
                                trailing:
                                    Button(action: {
                viewModel.addMovie(name: name, date: date)
                presentationMode.wrappedValue.dismiss()
            },
                                           label: {
                Text("Save")
            }).disabled(name.isEmpty)
            )
        }
    }
}

struct CreateMovieView_Previews: PreviewProvider {
    static var previews: some View {
        CreateMovieView(viewModel: MoviesViewModel())
    }
}
