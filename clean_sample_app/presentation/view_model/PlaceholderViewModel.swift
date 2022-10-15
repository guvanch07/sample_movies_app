//
//  PlaceholderViewModel.swift
//  clean_sample_app
//
//  Created by Macbook on 11.10.22.
//

import Foundation


import Combine

final class PlaceholderViewModel: ObservableObject{
    @Published var placeHolder: [PlaceholderModel] = []
    @Published private(set) var isRefreshing = false
    @Published var hasError = false
    @Published  var error: UserError?
    
    private var getPlaceholerUseCase = GetPlaceholderListUseCase(
        moviesRepo: MoviesRepoImpl()
        
    )
    
    func call() async {
        isRefreshing = true
        defer{isRefreshing = false}
        do {
            let usecase = try await getPlaceholerUseCase.execute()
            self.placeHolder = usecase
        }catch{
            if let userErr = error as? UserError{
                self.hasError = true
                self.error = userErr
            }
        }
       
        
    }
}
