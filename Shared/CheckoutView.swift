//
//  CheckoutView.swift
//  iDine
//
//  Created by Adrian Rose on 15.03.21.
//

import SwiftUI

struct CheckoutView: View {
    
    @State private var paymentType = "Cash"
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 15
    @State private var showingPaymentAlert = false
    
    @EnvironmentObject var order: Order
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    let tipAmounts = [10, 15, 20, 25, 0]
    
    var totalPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let total = Double(order.total)
        let tipValue = total / 100 * Double(tipAmount)
        return formatter.string(from: NSNumber(value: total + tipValue)) ?? "$0"
    }
    
    var body: some View {
        
        Form {
            
            Section(header: Text("How would you like to pay ?")) {
                Picker("How do you want to pay ?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
                
                Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
                
                if addLoyaltyDetails {
                    TextField("Enter your iDine ID", text: $loyaltyNumber)
                }
            
            }
            
            Section(header: Text("Add a tip?")
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding(.vertical)) {
                
                Picker("Percentage", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
            }
            
            Section(header: Text("Total: \(totalPrice)").font(.largeTitle) ) {
                Button("Confirm Order") {
                    // Place the Order
                    showingPaymentAlert.toggle()
                }
            }
        }
        .navigationTitle("Payment")
        .alert(isPresented: $showingPaymentAlert, content: {
            // more to come
            
            Alert(title: Text("Order Confirmed"), message: Text("Your total was \(totalPrice) - thank you!"), dismissButton: .default(Text("OK")))
            
        })
        
    }
    
    
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}
