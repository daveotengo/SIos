//
//  Time.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//


import Foundation

struct Time : Identifiable, Named {
    var id = UUID()
    var name : String
    var image : String
    var description : String

}

var timeList=[
Time(name: "10:00 AM",
        image: "fn1",
        description: "Strong Leather couch with soft feel. This leather couch is designed to provide both comfort and durability. It is made from high-quality leather and features a soft and cozy feel, making it perfect for relaxing after a long day. The sleek design and neutral color of the couch make it a versatile addition to any living space. Whether you're watching TV, reading a book, or taking a nap, this leather couch will be your go-to spot."
       
       ),

Time(name: "11:00 AM",
        image: "fn2",
        description: "Nice couch with soft feel. This nice couch is designed to offer both style and comfort. Its plush cushions and soft fabric provide a cozy seating experience. The elegant design of the couch complements various interior styles, making it a versatile choice for any home. Whether you want to relax with a cup of coffee or take a quick nap, this nice couch will be your favorite spot in the house."
       
       ),

Time(name: "12:00 AM",
        image: "fn3",
        description: "Gray couch with soft feel. This gray couch is the epitome of comfort and style. Its plush cushions and neutral color create a relaxing and inviting atmosphere. Whether you're entertaining guests or simply unwinding after a long day, this gray couch will ensure you have a cozy place to rest."
       
       ),

Time(name: "01:00 AM",
        image: "fn4",
        description: "Beautiful couch with soft feel. This beautiful couch features a timeless design that adds elegance to any living space. Its comfortable cushions and soft upholstery provide the perfect combination of style and relaxation. Whether you're hosting a gathering or enjoying a quiet evening at home, this beautiful couch will be the focal point of your living room."
      
       ),

Time(name: "02:00 AM",
        image: "fn5",
        description: "Outdoor couch with soft feel. This outdoor couch is designed to withstand the elements while still offering comfort and style. Its weather-resistant materials and durable construction make it ideal for outdoor use, whether on the patio, garden, or by the pool. Enjoy the fresh air and soak in the sun while lounging on this outdoor couch."
    
       ),

Time(name: "03:00 AM",
        image: "fn6",
        description: "Green couch with soft feel. This green couch adds a pop of color and charm to your living space. Its vibrant green upholstery and plush cushions create a cozy and inviting seating area. Whether you're hosting a gathering or simply spending time with family, this green couch will be the perfect place to relax and unwind."
 
       )

]
