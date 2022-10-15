//
//  FirstMainPage.swift
//  clean_sample_app
//
//  Created by Macbook on 11.10.22.
//

import SwiftUI

struct SecondMainPage: View {
    @StateObject private var vm = PlaceholderViewModel()
    var body: some View {
        VStack{
            if vm.isRefreshing {
                ProgressView()
            }else{
                List {
                    ForEach(vm.placeHolder,id:\.id) { p in
                        Text(p.title)
                    }
                }
                    .listStyle(.plain)
            }
            
        }.task {
            await vm.call()
        }
        .alert(isPresented: $vm.hasError, error: vm.error) {
            Button{
                Task{
                    await vm.call()
                }
                
            }label: {
                Text("Retry")
            }
        }
    }
}

struct FirstMainPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstMainPage()
    }
}
