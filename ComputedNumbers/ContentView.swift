//
//  ContentView.swift
//  ComputedNumbers
//
//  Created by Kevin Lam on 12/2/2025.
//
 
import SwiftUI
 
struct ContentView: View {
    
    // MARK: Stored properties
    @State var number1: String = ""
    @State var number2: String = ""

    
    // MARK: Computed properties
    var sumSquareRoot: Double {
        return sqrt(Double(number1 + number2))
    }
      

    
    
    var body: some View {
        VStack  {
            
            Spacer()
            
            HStack {
                Text("√(")
                    .font(.system(size: 48))
                
                Text("\(number1) + \(number2)")
                    .font(.system(size: 48))
                
                Text(") =")
                    .font(.system(size: 48))
                
                Text("\(sumSquareRoot.formatted(.number.precision(.significantDigits(2))))")
                    .font(.system(size: 48))
            }
            
            TextField("Enter number 1", text: $number1)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding()

            TextField("Enter number 2", text: $number2)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding()
            }
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
