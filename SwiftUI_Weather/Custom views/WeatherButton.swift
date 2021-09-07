//
//  WeatherButton.swift
//  SwiftUI_Weather
//
//  Created by Владислав Белов on 05.09.2021.
//
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(textColor)
            .background(backgroundColor)
            .font(.system(size: 20, weight: .medium, design: .default))
            .cornerRadius(15)
    }
}
