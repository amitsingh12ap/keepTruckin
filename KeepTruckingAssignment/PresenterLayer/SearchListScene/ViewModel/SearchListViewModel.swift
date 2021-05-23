//
//  SearchListViewModel.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import Foundation

class SearchListViewModel {
    enum Row: Equatable {
        case movieCell(MovieListCellModel)
        
        static func == (lhs: MovieListViewModel.Row, rhs: MovieListViewModel.Row) -> Bool {
            switch (lhs, rhs) {
            case (movieCell(let item1), movieCell(let item2)):
                return item1.id == item2.id
            }
        }
    }
    
    // MARK: - Properties
    var dataSource = [Row]()
    var responseModel = Binding<MovieResponseModel?>.init(value: nil)
    var isFetching = Binding<Bool?>.init(value: nil)
    
    var getNumberOfRows: Int { return dataSource.count }
        
        func getRowDetails(for row: Int) -> Row? {
            if row < dataSource.count {
                return dataSource[row]
            }
            return nil
        }
        
        func setUpDataSource() { addRows() }
        
        private func addRows() {
            responseModel.value?.search?.forEach({ movie in
                let cellModel = MovieListCellModel.init(with: movie)
                dataSource.append(.movieCell(cellModel))
            })
        }
}
