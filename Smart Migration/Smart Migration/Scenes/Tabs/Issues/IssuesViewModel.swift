//
//  IssuesViewModel.swift
//  Smart Migration
//
//  Created by Jan Janovec on 11.12.2022.
//

import Foundation

@MainActor final class IssuesViewModel: ObservableObject {
    @Published var issues = IssueExapmles().issues
}
