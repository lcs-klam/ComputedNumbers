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
    @State var errorMessage: String = ""
    
    // MARK: Computed properties
    var sumSquareRoot: Double? {
        if let num1 = Int(number1), num1 >= 0,
           let num2 = Int(number2), num2 >= 0 {
            errorMessage = ""
            return sqrt(Double(num1 + num2))
        } else {
            errorMessage = "Please enter positive whole numbers."
            return nil
        }
        
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
                
                if let result = sumSquareRoot {
                    Text("\(result.formatted(.number.precision(.significantDigits(2))))")
                        .font(.system(size: 48))
                } else {
                    Text(errorMessage)
                        .font(.system(size: 10))
                }
            }
            
            TextField("Enter number 1", text: $number1)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            
            TextField("Enter number 2", text: $number2)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            
            Spacer()
        }
    }
}





#Preview {
    ContentView()
}
