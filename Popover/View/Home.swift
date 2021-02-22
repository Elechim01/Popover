//
//  Home.swift
//  Popover
//
//  Created by Michele Manniello on 22/02/21.
//

import SwiftUI

struct Home: View {
    @State var show = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack{
                HStack{
                    Text("PoPOver")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }.padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                .padding([.horizontal,.bottom])
                .background(Color.yellow)
                
                Spacer()
            }
            VStack(alignment: .center, spacing: 15){
                if self.show{
                    PopOver()
                        .background(Color.white)
                        .clipShape(ArrowShape())
                        .cornerRadius(15)
                        .offset(y:15)
                }
                Button(action:
                        {
                    withAnimation(.spring()){
                        self.show.toggle()
                    }
                }, label: {
                    Image(systemName: self.show ? "xmark" : "arrow.up")
                        .frame(width: 20, height: 22)
                        .padding()
                })
                .background(Color.white)
                    .clipShape(Circle())
            }
            .padding()
        }.edgesIgnoringSafeArea(.top)
        .background(Color.black.opacity(0.1).ignoresSafeArea(.all))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
