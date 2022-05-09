//
//  PrimaryButtonView.swift
//  LoginApp
//
//  Created by xmod on 8.05.2022.
//

import SwiftUI

struct ButtonView: View {
    
    var Buttontitle = "Button"
    var BgColor = "BgColor"
    var foregroundColor : Color = Color(UIColor.white)
    
    var body: some View {
        
        VStack{
            Text(Buttontitle)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(foregroundColor)
                .frame(maxWidth:.infinity)
                .padding()
                .background(Color(BgColor))
                .cornerRadius(50)
            
        }

    }
}

struct PrimaryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView().previewLayout(.sizeThatFits)
    }
}
