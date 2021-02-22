//
//  PopOver.swift
//  Popover
//
//  Created by Michele Manniello on 22/02/21.
//

import SwiftUI

struct PopOver: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 18){
            Button(action: {
                
            }, label: {
                HStack(spacing:15){
                    Image(systemName: "faceid")
                        .renderingMode(.original)
                        Text("Face ID")
                }
            })
            Divider()
            Button(action: {
                
            }, label: {
                HStack(spacing:15){
                    Image(systemName: "video")
                        .renderingMode(.original)
                        Text("Video")
                }
            })
            Divider()
            Button(action: {
                
            }, label: {
                HStack(spacing:15){
                    Image(systemName: "livephoto")
                        .renderingMode(.original)
                        Text("Live Photo")
                }
            })
        }
        .foregroundColor(.black)
        .frame(width: 150)
        .padding()
        .background(Color.white)
    }
}

struct PopOver_Previews: PreviewProvider {
    static var previews: some View {
        PopOver()
    }
}
