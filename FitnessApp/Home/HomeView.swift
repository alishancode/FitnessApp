//
//  HomeView.swift
//  FitnessApp
//
//  Created by Md Alishan Ali on 09/11/24.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123;
    @State var active: Int = 123
    @State var stand: Int = 8
    
    
    var mockAcitivity = [
        Activity(id: 0, title: "Today Steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: Color.green, amount: "9,812"),
        Activity(id: 1, title: "Today Steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: Color.red, amount: "9,812"),
        Activity(id: 2, title: "Today Steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: Color.blue, amount: "9,812"),
        Activity(id: 3, title: "Today Steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: Color.purple, amount: "9,812"),
    ]
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading){
                Text("Welcome").font(.largeTitle).padding()
                
                HStack{
                    Spacer()
                    VStack{
                        VStack(alignment: .leading, spacing: 8){
                            
                            Text("Calories").font(.callout).bold().foregroundColor(.red)
                            Text("123 Kcal").bold()
                            
                        }.padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8){
                            
                            Text("Active").font(.callout).bold().foregroundColor(.red)
                            Text("52 mins").bold()
                            
                        }.padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8){
                            
                            Text("Stand").font(.callout).bold().foregroundColor(.red)
                            Text("8 hours").bold()
                            
                        }

                        
                    }
                    Spacer()
                    
                    ZStack{
                        ProgressCircleView(progress: $calories, goal: 600, color: .red)
                        
                        ProgressCircleView(progress: $active, goal: 60, color: .green).padding(.all,20)

                        
                        ProgressCircleView(progress: $stand, goal: 12, color: .blue).padding(.all,40)
                        

                    }.padding(.horizontal)
                    Spacer();

                }.padding()
                
                HStack{
                    Text("Fitness Activity").font(.title2)
                    Spacer();
                    Button{
                        print("Show more!")
                    }label: {
                        Text("Show more").padding(.all,10).foregroundColor(.white).background(.blue).cornerRadius(20)
                    }
                }.padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing:20), count:2)) {
                    
                    ForEach(mockAcitivity, id:\.id){
                        activity in ActivityCard(activity: activity)
                    }
                    
                }.padding(.horizontal)
                
            }

            
        }
    }
}

#Preview {
    HomeView()
}
