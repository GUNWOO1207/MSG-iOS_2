//
//  CircleImage.swift
//  my_first_App
//
//  Created by GSM02 on 2022/06/29.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Overlay Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
