//
//  LoginScreenModel.swift
//  Sormas
//
//  Created by David Oteng on 07/08/2023.
//

import Foundation
import SwiftUI

class LoginScreenModel: ObservableObject{
    //Login Properties
    @Published var username: String = "test-user"
    @Published var password: String = "Password$$2020"
    @Published var showPassword: Bool = false
    
    //Register Properties
    @Published var registerUser: Bool = false
    @Published var reEnterPassword: String = ""
    @Published var showReEnterPassword: Bool = false
    
    @AppStorage("log_Status") var log_Status: Bool = false
    
    func Login(username: String, password: String){
        //used to set login status here
        
        login(username: username, password: password) { result in
            switch result {
            case .success(let response):
                print("Login successful! Token: \(response.data.access_token)")
                DispatchQueue.main.async {
                    
                    withAnimation{
                        self.log_Status = true
                    }
                }
            case .failure(let error):
                print("Login failed with error: \(error)")
            }
        }
        //  AuthService.shared.login(
    }
    
    func Register(){

        register(username: "newUser", password: "newPassword",email: "newEmail") { result in
            switch result {
            case .success(let response):
                print("Registration successful! Message: \(response.message)")
                DispatchQueue.main.async {
                    
                    withAnimation{
                        self.log_Status = true
                    }
                }
            case .failure(let error):
                print("Registration failed with error: \(error)")
            }
        }
    }
    
    func ForgotPassword(){
        forgotPassword(email: "user@example.com") { result in
            switch result {
            case .success(let response):
                print("Password reset request successful! Response: \(response)")
            case .failure(let error):
                print("Password reset request failed with error: \(error)")
            }
        }
    }

}
