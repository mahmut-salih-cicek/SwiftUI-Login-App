//
//  ContentView.swift
//  LoginApp
//
//  Created by xmod on 8.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       
        NavigationView{
            
            ZStack{
                Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack{
                
                Spacer()
                Image("onboard")
                
                Spacer()
                
                
                NavigationLink {
                    RegisterView()
                } label: {
                    ButtonView(Buttontitle: "Create an account", BgColor: "PrimaryColor")
                        .shadow(color: Color.black.opacity(0.2), radius: 80, x: 0.0, y: 16)
                        .padding(8)
                }.navigationBarHidden(true)
                
                
                NavigationLink {
                    SignInView()
                } label: {
                    ButtonView(Buttontitle: "Sign In", BgColor: "white", foregroundColor: Color(UIColor.systemPink))
                        .shadow(color: Color.black.opacity(0.2), radius: 80, x: 0.0, y: 16)
                        
                        
                }.navigationBarHidden(true)
                
                
                Spacer()
                
                HStack{
                    Text("New around here?")
                    Text("Sign In")
                        .foregroundColor(.pink)
                }
                
                
                Divider()
                
                
                
            }.padding()
         
            
            }.navigationBarHidden(true)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
