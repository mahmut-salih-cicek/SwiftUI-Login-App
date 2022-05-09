//
//  SignInView.swift
//  LoginApp
//
//  Created by xmod on 8.05.2022.
//

import SwiftUI

struct SignInView: View {
    
    @State var email : String = ""
    @State var pass  : String = ""
    
    @Environment(\.presentationMode) var presentation : Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color("BgColor").edgesIgnoringSafeArea(.all)

            VStack{
                
                Button {
                    self.presentation.wrappedValue.dismiss()
                } label: {
                    Image("left-arrow")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 300))
                }

                Spacer()
                Text("Sign In")
                    .font(.largeTitle)
                    .fontWeight(.bold)
           
            VStack{
                
                
                
                HStack{
                    Image("apple")
                    Text("Sign In With Apple")
                }
                .padding()
                .frame(maxWidth:.infinity)
                .background(.white)
                .cornerRadius(50)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                
               
                
                HStack{
                    Image("google")
                    Text("Sign In With Google")
                }
                .padding()
                .frame(maxWidth:.infinity)
                .background(.white)
                .cornerRadius(50)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                
                
                Text("or get a link emailed to you")
                    .foregroundColor(Color.black.opacity(0.4))
                    .padding()
                
                
                TextField("Email address", text: $email )
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50.0)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                    
                
                
                TextField("Password", text: $email )
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50.0)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
              
                
                
                ButtonView(Buttontitle: "Login", BgColor: "PrimaryColor", foregroundColor: Color(UIColor.white))
                    .padding()
                
               
                
                
            }.padding()
            
                Spacer()
                Divider()
                VStack{
                    Text("You are completely safe.")
                    Text("Read our Terms & Conditions.")
                        .foregroundColor(.pink)
                }
           
            }
           
            
        }.navigationBarHidden(true)
        
    }
    
};

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
