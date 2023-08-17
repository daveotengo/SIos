//
//  Profile.swift
//  Sormas
//
//  Created by David Oteng on 17/08/2023.
//

import Foundation

struct Profile : Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var description : String
 
}

var profileList=[
Profile(name: "History",
        image: "clock.arrow.circlepath",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."
       
       ),

Profile(name: "Peronal Details",
        image: "person",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."
      
       ),

Profile(name: "Location",
        image: "location",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."
     
       ),

Profile(name: "Payment Method",
        image: "creditcard",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."

       ),

Profile(name: "Setting",
        image: "gear",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."

       ),

Profile(name: "Help",
        image: "questionmark.circle",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."
       ),

]
