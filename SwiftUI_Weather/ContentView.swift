//
//  ContentView.swift
//  SwiftUI_Weather
//
//  Created by Владислав Белов on 03.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
       
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack(spacing: 8){
                CityTextView(cityName: "Cupertino, CA")
                    
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 81)
             
                .padding(.bottom, 60)
                   
             
                HStack(spacing: 30){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "WEN", imageName: "cloud.heavyrain.fill", temperature: 66)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.rain.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.rain.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sun.max.fill", temperature: 90)
                }
                
                Spacer()
               
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change day time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
              
             
            }
        
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        HStack(spacing: 100){
            VStack(spacing: 10){
                
                Text(dayOfWeek)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .padding(5)
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("\(temperature)°")
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
            }
        }
    }
}

struct BackgroundView: View {
    
   @Binding var isNight: Bool
    
    var body: some View {

        LinearGradient(gradient: Gradient(
                        colors: [isNight ? .black : .blue,
                                 isNight ? .gray : Color("LightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack{
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
              Text("\(temperature)°")
                .font(.system(size: 70, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
        }
    }
}


