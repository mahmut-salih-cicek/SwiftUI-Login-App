//
//  RegisterView.swift
//  LoginApp
//
//  Created by xmod on 9.05.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email : String = ""
    @State var pass : String = ""
    @State var repass : String = ""
    @Environment(\.presentationMode) var presentation: Binding<PresentationMode>
    
    var body: some View {
        
        NavigationView{
            
            
            
        ZStack{
            Color("BgColor").edgesIgnoringSafeArea(.all)
        
            VStack{
        
                Button {
                    self.presentation.wrappedValue.dismiss()
                } label: {
                    Image("left-arrow")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 300))

        
                Text("Create an account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
            
          
                
            VStack{
                
                
                TextField("Email", text:$email)
                    .padding()
                    .frame(maxWidth:.infinity)
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.1), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                
                TextField("Password",text: $pass)
                    .padding()
                    .frame(maxWidth:.infinity)
                    .foregroundColor(.white)
                    .background(.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.1), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                
                TextField("Confirm password",text: $repass)
                    .padding()
                    .frame(maxWidth:.infinity)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.1), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
                ButtonView(Buttontitle: "Register", BgColor: "PrimaryColor", foregroundColor: .white)
                    .padding()
                
              
              
                    
            }.padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
              .padding()
            
                
                Spacer()
                Divider()
                    
                
            HStack{
                Text("Already have an account?")
                Text("Sign In")
                    .foregroundColor(.pink)
            }
                
            }
        }.navigationBarHidden(true)
        }.navigationBarHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
