//
//  LoginScreenModel.swift
//  Sormas
//
//  Created by David Oteng on 07/08/2023.
//

import Foundation

class LoginScreenModel: ObservableObject{
    @Published var username: String = ""
    @Published var password: String = ""

}
