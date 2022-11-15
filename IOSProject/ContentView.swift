//
//  ContentView.swift
//  IOSProject
//
//  Created by tnguy231 on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    
    let days = ["TUE","WED","THU","FRI","SAT"]
    let temp = ["50°","55°","52°","59°","49°"]
    
    var body: some View {
        ZStack{
//            Color(.yellow)
//                .edgesIgnoringSafeArea(.all)
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Somewhere in the U.S")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.bottom)
            
                VStack(spacing: 20) {
                    Image("sun-1")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 180, height: 180)
                    
                    Text("54°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                        .padding()
                }
                
                HStack{
                    WeatherDayView(dayOfWeek: days[0], temp: temp[0])
                    WeatherDayView(dayOfWeek: days[1], temp: temp[1])
                    WeatherDayView(dayOfWeek: days[2], temp: temp[2])
                    WeatherDayView(dayOfWeek: days[3], temp: temp[3])
                    WeatherDayView(dayOfWeek: days[4], temp: temp[4])
                    
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color(.white))
                        .font(.system(size: 20, weight: .medium))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

struct WeatherDayView: View {
    var dayOfWeek : String
    var temp : String
    var body: some View{
        VStack{
            Text(dayOfWeek)
                .font(.system(size:20, weight: .light))
                .foregroundColor(.white)

            Image("sun-1")
                .renderingMode(.original)
                .resizable()
                .frame(width: 60, height: 60)
            
            Text(temp)
                .font(.system(size:18, weight: .light))
                .foregroundColor(.white)
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
