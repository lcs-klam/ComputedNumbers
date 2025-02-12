//
//  ContentView.swift
//  ComputedNumbers
//
//  Created by Kevin Lam on 12/2/2025.
//
 
import SwiftUI
 
struct ContentView: View {
    
    // MARK: Stored properties
    @State var number1: Int = 1
    @State var number2: Int = 1

    
    // MARK: Computed properties
    var sumSquareRoot: Double { return sqrt(Double((number1 + number2))) }
      

    
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
 
                Text("5")
                    .font(.system(size: 96))
 
                Text("2")
                    .font(.system(size: 44))
 
                Text("=")
                    .font(.system(size: 96))
 
                Text("25")
                    .font(.system(size: 96))
            }
                        
            Spacer()
        }
        .padding()
    }
}
 
#Preview {
    ContentView()
}
