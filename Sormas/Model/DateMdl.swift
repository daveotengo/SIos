//
//  DateMdl.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import Foundation


struct DateMdl : Identifiable, Named {
    var id = UUID()
    var name : String
    var image : String
    var description : String

}

var dateMdlList=[
DateMdl(name: "Sun 4",
        image: "fn1",
        description: "Strong Leather couch with soft feel. This leather couch is designed to provide both comfort and durability. It is made from high-quality leather and features a soft and cozy feel, making it perfect for relaxing after a long day. The sleek design and neutral color of the couch make it a versatile addition to any living space. Whether you're watching TV, reading a book, or taking a nap, this leather couch will be your go-to spot."
       
       ),

DateMdl(name: "Mon 5",
        image: "fn2",
        description: "Nice couch with soft feel. This nice couch is designed to offer both style and comfort. Its plush cushions and soft fabric provide a cozy seating experience. The elegant design of the couch complements various interior styles, making it a versatile choice for any home. Whether you want to relax with a cup of coffee or take a quick nap, this nice couch will be your favorite spot in the house."
       
       ),

DateMdl(name: "Tue 6",
        image: "fn3",
        description: "Gray couch with soft feel. This gray couch is the epitome of comfort and style. Its plush cushions and neutral color create a relaxing and inviting atmosphere. Whether you're entertaining guests or simply unwinding after a long day, this gray couch will ensure you have a cozy place to rest."
       
       ),

DateMdl(name: "Wed 7",
        image: "fn4",
        description: "Beautiful couch with soft feel. This beautiful couch features a DateMdlless design that adds elegance to any living space. Its comfortable cushions and soft upholstery provide the perfect combination of style and relaxation. Whether you're hosting a gathering or enjoying a quiet evening at home, this beautiful couch will be the focal point of your living room."
      
       ),

DateMdl(name: "Thur 8",
        image: "fn5",
        description: "Outdoor couch with soft feel. This outdoor couch is designed to withstand the elements while still offering comfort and style. Its weather-resistant materials and durable construction make it ideal for outdoor use, whether on the patio, garden, or by the pool. Enjoy the fresh air and soak in the sun while lounging on this outdoor couch."
    
       ),

DateMdl(name: "Fri 9",
        image: "fn6",
        description: "Green couch with soft feel. This green couch adds a pop of color and charm to your living space. Its vibrant green upholstery and plush cushions create a cozy and inviting seating area. Whether you're hosting a gathering or simply spending DateMdl with family, this green couch will be the perfect place to relax and unwind."
 
       )

]
