//
//  Create2.swift
//  food
//
//  Created by Amol Mendonca on 03/02/24.
//

import SwiftUI

struct Create2: View {
    var body: some View {
        VStack {
            // 34sp · Large Title
            Text("Create a New Account")
              .kerning(0.4)
              .multilineTextAlignment(.center)
              .foregroundColor(.gray)
              .frame(width: 343, alignment: .top)
            .frame(width: 343, alignment: .top)
            .offset(y: -200)
            
            HStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 343, height: 46)
                    .background(.white.opacity(0.4))
                    .background(.black)
                    .cornerRadius(8)
                
            }
            
            HStack {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 343, height: 46)
                  .background(.white.opacity(0.4))
                  .background(.black)
                  .cornerRadius(8)
            }
        }
        .frame(width: 375, height: 812)
        
        
    }
}

#Preview {
    Create2()
}
