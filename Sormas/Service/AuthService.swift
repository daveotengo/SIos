//
//  AuthService.swift
//  Sormas
//
//  Created by David Oteng on 09/08/2023.
//

import Foundation
import SwiftUI



struct LoginResponse: Codable {
    let message: String
    let status: String
    let data: LoginData
}

struct LoginData: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_expires_in: Int
    let refresh_token: String
    let token_type: String
    let id_token: String?
    let notBeforePolicy: Int // Use camel case for the property name
    
    let session_state: String
    let scope: String
    let error: String?
    let error_description: String?
    let error_uri: String?

    // Custom CodingKeys enum to handle the hyphenated key
    private enum CodingKeys: String, CodingKey {
        case access_token, expires_in, refresh_expires_in, refresh_token, token_type, id_token, session_state, scope, error, error_description, error_uri
        case notBeforePolicy = "not-before-policy"
    }
}


enum APIError: Error {
    case invalidURL
    case invalidResponse
    case requestFailed(Error)
    case decodingFailed(Error)
}

func login(username: String, password: String, completion: @escaping (Result<LoginResponse, APIError>) -> Void) {
    
    let urlString = Constants.BASE_URL+"/api/v1/auth-mw/login" // Replace with your API endpoint URL
    guard let url = URL(string: urlString) else {
        completion(.failure(.invalidURL))
        return
    }
    
    let parameters = ["username": username, "password": password]
    print(parameters)
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    print(request)


    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: parameters)
        print(request)

    } catch {
        completion(.failure(.requestFailed(error)))
        return
    }
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            completion(.failure(.requestFailed(error)))
            return
        }
        
        print("printing response")

        print(response!)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
           
                print("200 here")
            completion(.failure(.invalidResponse))
            return
        }
        print("httpResponse")
        print(httpResponse)
        guard let data = data else {
            print("data here")

            completion(.failure(.invalidResponse))
            return
        }
        
        print("*printing data* ")

        print(data)

                              
        
        do {
            let decoder = JSONDecoder()
            print("data------")

            print(data)
            if let responseString = String(data: data, encoding: .utf8) {
                print("Response data as string:\n\(responseString)")
            } else {
                print("Failed to convert response data to string.")
            }
            let loginResponse = try decoder.decode(LoginResponse.self, from: data)
            print("loginResponse")

            print(loginResponse)
            completion(.success(loginResponse))
            
            
            
        } catch {
            print("failed-----")

            completion(.failure(.decodingFailed(error)))
        }
    }
    
    task.resume()
}


// Registration


struct RegistrationResponse: Codable {
    let message: String
    // Other relevant properties in the response can be added here
}

func register(username: String, password: String, email: String, completion: @escaping (Result<RegistrationResponse, Error>) -> Void) {
    let urlString = Constants.BASE_URL+"/api/v1/auth-mw/register" // Replace with your API endpoint URL
    guard let url = URL(string: urlString) else {
        completion(.failure(APIError.invalidURL))
        return
    }
    
    let parameters: [String: Any] = ["username": username, "password": password, "email": email]
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
    } catch {
        completion(.failure(error))
        return
    }
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            completion(.failure(error))
            return
        }
        
        guard let data = data else {
            completion(.failure(APIError.invalidResponse))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let registrationResponse = try decoder.decode(RegistrationResponse.self, from: data)
            completion(.success(registrationResponse))
            
          
            
        } catch {
            completion(.failure(error))
        }
    }
    
    task.resume()
}


// Forgot password


func forgotPassword(email: String, completion: @escaping (Result<String, Error>) -> Void) {
    let urlString = Constants.BASE_URL+"/api/v1/auth-mw/reset-password" // Replace with your API endpoint URL
    guard let url = URL(string: urlString) else {
        completion(.failure(APIError.invalidURL))
        return
    }
    
    let parameters = ["email": email]
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
    } catch {
        completion(.failure(error))
        return
    }
    
    let task = URLSession.shared.dataTask(with: request) { _, response, error in
        if let error = error {
            completion(.failure(error))
            return
        }
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            completion(.failure(APIError.invalidResponse))
            return
        }
        
        completion(.success("Password reset request successful"))
    }
    
    task.resume()
}

