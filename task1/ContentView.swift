//
//  ContentView.swift
//  task1
//
//  Created by Rabi Jaiswal on 14/05/21.
//  Copyright © 2021 Rabi Jaiswal. All rights reserved.
//

import SwiftUI

struct ImageOverlay:View{
    var body: some View{
        ZStack{
            Text("30 % Off on Retail Today").font(.title).fontWeight(.heavy).multilineTextAlignment(.leading).padding().foregroundColor(.blue)
        }.background(Color.white).opacity(0.7).cornerRadius(12).padding()
        
    }
}

struct Classes: View {
        var body: some View{
            VStack{
                Text("Classes details").fontWeight(.heavy)
            }.navigationBarTitle("Classes")
        }
}

    struct Trampoline: View {
        var body: some View{
            VStack{
                Text("Trampoline details").fontWeight(.heavy)
            }.navigationBarTitle("Trampoline")
        }
}

    struct Yoga: View{
        var body: some View{
            VStack{
                Text("Yoga details").fontWeight(.heavy)
            }.navigationBarTitle("Yoga")
        }
}

    struct Aerobics: View {
        var body: some View{
            VStack{
                Text("Aerobics").fontWeight(.heavy)
            }.navigationBarTitle("Aerobics")
        }
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    //Spacer()
                    Image("logo").resizable().frame(width: 80, height: 80, alignment: .center)
                    Spacer()
                    
                    DropDown()
                    ScrollView(.horizontal,showsIndicators: true){
                        HStack{
                            Image("image1").resizable().cornerRadius(15).frame(width: 350, height: 250, alignment: .center).overlay(ImageOverlay(),alignment: .bottomLeading).padding()
                            
                            Image("image2").resizable().cornerRadius(15).frame(width: 350, height: 250, alignment: .center).overlay(ImageOverlay(),alignment: .bottomLeading).padding()
                            Spacer()
                            Divider()
                            
                            Image("image3").resizable().cornerRadius(15).frame(width: 350, height: 250, alignment: .center).overlay(ImageOverlay(),alignment: .bottomLeading).padding()
                            Spacer()
                            Divider()
                            
                            Image("image4").resizable().cornerRadius(15).frame(width: 350, height: 250, alignment: .center).overlay(ImageOverlay(),alignment: .bottomLeading).padding()
                            Spacer()
                            Divider()
                        }
                    }
                    HStack{
                        VStack{
                            Image("classes").resizable().frame(width: 180, height: 150).cornerRadius(20)
                            
                            NavigationLink(destination: Classes()){
                                Text("Classes").font(.headline).frame(width: 150, height: 50).foregroundColor(.black)
                        }
                            Spacer()
                            }.frame(width: 120, height: 180).padding().background(Color.init(UIColor.secondarySystemFill)).cornerRadius(20).padding()
                        
                        Spacer()
                        VStack{
                            Image("trampoline").resizable().frame(width: 180, height: 150).cornerRadius(20)
                            
                            NavigationLink(destination: Trampoline()){
                                Text("Trampoline").font(.headline).frame(width: 150, height: 50).foregroundColor(.black)
                            }
                            Spacer()
                            
                            }.frame(width: 120, height: 180).padding().background(Color.init(UIColor.secondarySystemFill)).cornerRadius(20).padding()
                        Spacer()
                }
                    HStack{
                        VStack{
                            Image("yoga").resizable().frame(width: 180, height: 150).cornerRadius(20)
                            
                            NavigationLink(destination: Yoga()){
                                Text("Yoga").font(.headline).frame(width: 150, height: 50).foregroundColor(.black)
                            }
                            Spacer()
                            }.frame(width:120, height:180).padding().background(Color.init(UIColor.secondarySystemFill)).cornerRadius(20).padding()
                        Spacer()
                        VStack{
                            Image("aerobics").resizable().frame(width: 180, height: 150).cornerRadius(20)
                            NavigationLink(destination:Aerobics()){
                                Text("Aerobics").font(.headline).frame(width: 150, height: 50).foregroundColor(.black)
                            }
                            Spacer()
                            }.frame(width:120,height:180).padding().background(Color.init(UIColor.secondarySystemFill)).cornerRadius(20).padding()
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

struct DropDown:View{
    @State var expand=false
    var body:some View{
        VStack{
            HStack{
                Text("Location").font(.headline)
                Image("down").resizable().frame(width: 15, height: 15)
            }.onTapGesture {
                self.expand.toggle()
            }
            if expand{
                Button(action:{}){
                    Text("Hyderabad")
                }.foregroundColor(.black)
                
                Button(action:{}){
                    Text("Delhi")
                }.foregroundColor(.black)
                
                Button(action:{}){
                    Text("Bangalore")
                }.foregroundColor(.black)
                
                Button(action:{}){
                    Text("Kolkata")
                }.foregroundColor(.black)
            }
        }.animation(.spring())
}
}
}
