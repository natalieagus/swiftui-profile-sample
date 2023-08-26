//
//  ContentView.swift
//  profile
//
//  Created by Natalie Agus on 25/8/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            Color("Gray").ignoresSafeArea()
            
            ScrollView{
                VStack{
                    ZStack{
                        Image("circle").resizable().renderingMode(.template).foregroundColor(.white).frame(width:200, height:200)
                        Image("circle").resizable().renderingMode(.template).foregroundColor(.white).frame(width:185, height:185)
                        Image(systemName: "circle.fill").resizable().aspectRatio(contentMode: .fit).frame(width:160, height:160).foregroundColor(Color("Background"))
                        Image("memoji").resizable().aspectRatio(contentMode: .fit).frame(width:100, height: 100).shadow(color: .red, radius: 20)
                    }
                    HStack{
                        AnimateColorText(text:"Natalie", from: UIColor.systemRed, to: UIColor.systemBlue)

                        Image(systemName: "checkmark.seal.fill").font(.system(size:25)).foregroundColor(Color("Accent"))
                    }

                    Text("@natalieagus").font(.system(size: 15)).fontWeight(.light).foregroundColor(.gray).padding(.bottom, 50)
                    
                    HStack{
                        Text("5").font(.title).foregroundColor(.white).fontWeight(.bold).frame(width:100)
                     
                        Text("8").font(.title).foregroundColor(.white).fontWeight(.bold).frame(width:100)
                        
                        Text("107").font(.title).foregroundColor(.white).fontWeight(.bold).frame(width:100)
                    }
                    HStack{
                        Text("Years Teaching Experience").font(.subheadline).foregroundColor(.white).fontWeight(.light).frame(width:100).multilineTextAlignment(.center)
                     
                        Text("CS Courses Taught").font(.subheadline).foregroundColor(.white).fontWeight(.light).frame(width:100).multilineTextAlignment(.center)
                        
                        Text("Github Repositories").font(.subheadline).foregroundColor(.white).fontWeight(.light).frame(width:100).multilineTextAlignment(.center)
                    }.padding(.bottom, 30)
                    VStack(alignment: .leading){
                        Text("Follow Me").font(.title3).fontWeight(.bold).foregroundColor(.white).padding(.bottom, 1)
                        
                        HStack{
                            Image(systemName: "link").foregroundColor(.white)
                            Text("[github.com/natalieagus](https://github.com/natalieagus)").font(.subheadline)
                        }
                    }.frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 50).padding(.bottom, 50)
                    
                    VStack(spacing:15){
                        HStack(spacing:15){
                            CardFlipView(width:160, height:170, imageName: "phone", content: "📞\n+65 6303 6600", coverColor: 0x22A699)
                            CardFlipView(width:160, height:170, imageName: "mail", content: "📩\nnatalie_agus@sutd.edu.sg", coverColor: 0xF2BE22)
                        }
                        HStack(spacing:15){
                            CardFlipView(width:160, height:170, imageName: "home", content: "🏡\n8 Somapah Road\nS487372", coverColor: 0xF29727)
                            CardFlipView(width:160, height:170, imageName: "birthday", content: "🎂\n25 Dec 1988", coverColor: 0xF24C3D)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
