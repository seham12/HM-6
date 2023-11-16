

import SwiftUI

struct ContentView: View {
    @StateObject var vm = PrayerTimeModel()
    @State var timing: Timing?
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 16) { }
            //.padding(.horizontal, 16)
            // .padding(.vertical, 32)
                .frame(width: 350,height: 300)
                .background(.blue)
                .opacity(0.3)
                .cornerRadius(24)
                .overlay(
                    VStack{
                        Text("Player Time")
                            .font(.largeTitle)
                            .bold()
                            .padding(.top,400)
                        
                        Image("Image")
                            .resizable()
                            .frame(width: 300,height: 220)
                            .scaledToFit()
                            .opacity(0.4)
                            .padding(.bottom,350)
                        //Spacer()
                    }
                    
                )
            
            // Spacer()
            
            
            
            
            
            VStack(alignment:.leading, spacing:20) {
                //Text("Player Time")
                VStack(alignment: .center, spacing: 16) {  }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 32)
                    .frame(width: 311, alignment: .center)
                    .background(.blue)
                    .opacity(0.3)
                    .cornerRadius(24)
                    .overlay(
                        Text("Fajr: \(vm.getPrayerTimeForToday()?.Fajr ?? "") ")
                        
                    )
                VStack(alignment: .center, spacing: 16) {  }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 32)
                    .frame(width: 311, alignment: .center)
                    .background(.blue)
                    .opacity(0.3)
                    .cornerRadius(24)
                    .overlay(
                        Text("Duhor: \(vm.getPrayerTimeForToday()?.Dhuhr ?? "") ")
                    )
                
                
                
                
                VStack(alignment: .center, spacing: 16) {  }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 32)
                    .frame(width: 311, alignment: .center)
                    .background(.blue)
                    .opacity(0.3)
                    .cornerRadius(24)
                    .overlay(
                        Text("ASR: \(vm.getPrayerTimeForToday()?.Asr ?? "") ")
                    )
                VStack(alignment: .center, spacing: 16) {  }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 32)
                    .frame(width: 311, alignment: .center)
                    .background(.blue)
                    .opacity(0.3)
                    .cornerRadius(24)
                    .overlay(
                        Text("Magrib: \(vm.getPrayerTimeForToday()?.Maghrib ?? "") "))
                VStack(alignment: .center, spacing: 16) {  }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 32)
                    .frame(width: 311, alignment: .center)
                    .background(.blue)
                    .opacity(0.3)
                    .cornerRadius(24)
                    .overlay(
                        Text("Isha: \(vm.getPrayerTimeForToday()?.Isha ?? "") "))
                
                
            }
            
            
            .cornerRadius(16)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
            .padding()
            .onAppear(){
                vm.fetchPrayerTimes()
            }
            
            
        }
}}

#Preview {
    ContentView()
}
