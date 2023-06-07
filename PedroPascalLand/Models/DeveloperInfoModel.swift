//
//  AppInfoModel.swift
//  PedroPascalLand
//
//  Created by Patka on 07/06/2023.
//

import Foundation

struct DeveloperInfoModel: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var isLink: Bool
}

struct LinkInfoModel: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var isLink: Bool
}
