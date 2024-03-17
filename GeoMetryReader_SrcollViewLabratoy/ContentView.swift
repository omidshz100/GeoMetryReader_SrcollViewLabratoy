//
//  ContentView.swift
//  GeoMetryReader_SrcollViewLabratoy
//
//  Created by Omid Shojaeian Zanjani on 17/03/24.
//
// init
import SwiftUI

struct ContentView: View {
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    var body: some View {
        VStack{
            ScrollView(.vertical){
                VStack{
                    ForEach(1...150,id: \.self){ item in
                        
                            GeometryReader{ proxy in
                                VStack{
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Text("Item #\(item)")
                                            .font(.largeTitle)
                                        Spacer()
                                    }
                                    HStack{
                                        Spacer()
                                        Text("MinY #\(proxy.frame(in: .global ).minY)")
                                            .font(.largeTitle)
                                        Spacer()
                                    }
                                    HStack{
                                        Spacer()
                                        Text("top #\(safeAreaInsets.top)")
                                            .font(.largeTitle)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                        .frame(height: 150)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                    }
                }
            }// scrollview
            .padding(.horizontal, 10)
            
        }
    }
}

#Preview {
    ContentView()
}
