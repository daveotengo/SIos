//
//  ContentView.swift
//  Sormas
//
//  Created by David Oteng on 06/08/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("log_Status") var log_Status: Bool = false
    @State var showLoginPage : Bool = false
    var data = OnboardingDataModel.data

    var body: some View {
        Group{
            if log_Status {
                
                MainView()
            }else{

                OnboardingViewPure(data: data, doneFunction: {
                    DispatchQueue.main.async {
                        
                        showLoginPage = true
                    }
                    /// Update your state here
                    //self.onboardinDone = true
                    print("done onboarding")
                })
                .overlay(
                
                    Group{
                        
                        if showLoginPage {
                            AuthView()
                                //.edgesIgnoringSafeArea(.all)
                                .transition(.move(edge: .bottom))
                        }
                    }
                
                )
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
