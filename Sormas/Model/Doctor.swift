//
//  Doctor.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//


import Foundation

struct Doctor : Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var description : String
 
}

var doctorList=[
Doctor(name: "Dr David O.",
        image: "doctor1",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."
       
       ),

Doctor(name: "Dr Mave",
        image: "doctor2",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."
      
       ),

Doctor(name: "Dr Ken",
        image: "doctor3",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."
     
       ),

Doctor(name: "Dr Vun",
        image: "doctor4",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."

       ),

Doctor(name: "Dr Maum",
        image: "doctor5",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."

       ),

Doctor(name: "Dr Fuh",
        image: "doctor6",
        description: "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis."
       ),

]
