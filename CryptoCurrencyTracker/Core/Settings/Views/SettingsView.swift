//
//  SettingsView.swift
//  CryptoCurrencyTracker
//
//
//

import SwiftUI

struct SettingsView: View {
    
    
   let defaultURL = URL(string: "https://www.google.com")!
   let coingeckoURL = URL(string: "https://www.coingecko.com")!
    
   @Binding var showSettingsView: Bool
    
    var body: some View {

        NavigationView {
            List {
                coinGeckoSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        self.showSettingsView.toggle()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    })
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(showSettingsView: .constant(false))
    }
}

extension SettingsView {
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading){
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This App uses data from free API from CoinGecko! prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("visit coinGecko here", destination: coingeckoURL)
        }
    }
}
