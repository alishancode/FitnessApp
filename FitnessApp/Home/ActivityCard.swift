//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Md Alishan Ali on 10/11/24.
//

import SwiftUI


struct Activity{
    let id:Int
    let title: String
    let subTitle:String
    let image:  String
    let tintColor: Color
    let amount: String
    
}

struct ActivityCard: View {
    @State var activity: Activity
    
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6).cornerRadius(15)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing: 8
                        
                    ){
                        Text(activity.title)
                        Text(activity.subTitle).font(.caption)
                    }
                    Spacer();
                    Image(systemName: activity.image).foregroundColor(activity.tintColor)
                }
                
                Text(activity.amount).font(.title).bold().padding()
            }
            .padding()
        }    }
}

#Preview {
    ActivityCard(activity:  Activity(id: 0, title: "Today Steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: Color.green, amount: "9,812"))
}
