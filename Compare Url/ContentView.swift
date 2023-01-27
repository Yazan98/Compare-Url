//
//  ContentView.swift
//  Compare Url
//
//  Created by Yazan Tarifi on 26/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertEnabled = false
    @State private var urlInput: String = ""
    @State private var urlResult: String = ""
    @State private var errorMessage: String = ""
    
    @State private var firstUrlInput: String = ""
    @State private var secondUrlInput: String = ""
    
    @State private var diffList: [String] = []

    private let manager: CompareUrlManager = CompareUrlManager()
    
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("Url Encoder, Decoder")
                    Spacer()
                }
                .padding()
                
                HStack {
                    TextField("Enter The Url", text: $urlInput)
                        .lineLimit(1)
                    Button(action: {
                        if urlInput.isEmpty {
                            errorMessage = "Target Url Can't Be Empty"
                        } else {
                            urlResult = manager.encodeUrl(url: urlInput)
                            isAlertEnabled = true
                        }
                    }) {
                        Text("Encode").padding()
                    }
                    Button(action: {
                        if urlInput.isEmpty {
                            errorMessage = "Target Url Can't Be Empty"
                        } else {
                            urlResult = manager.decodeUrl(url: urlInput)
                            isAlertEnabled = true
                        }
                    }) {
                        Text("Decode").padding()
                    }
                }
                .padding()
                
                HStack {
                    Text("\(errorMessage)").foregroundColor(.red)
                    Spacer()
                }
                .padding()
            }
            
            
            Group {
                HStack {
                    Text("Url Compare")
                    Spacer()
                }
                .padding()
                
                HStack {
                    TextField("Enter First Url", text: $firstUrlInput)
                        .lineLimit(1)
                        .padding()
                    
                    TextField("Enter Second Url", text: $secondUrlInput)
                        .lineLimit(1)
                        .padding()
                    
                    Button(action: {
                        if firstUrlInput.isEmpty == false && secondUrlInput.isEmpty == false {
                            diffList = manager.compareUrl(firstUrl: firstUrlInput, secondUrl: secondUrlInput)
                        }
                    }) {
                        Text("Compare").padding()
                    }
                }
            }
            
            LazyVStack(alignment: .leading) {
                ForEach(diffList, id: \.self) { item in
                    Text(item)
                }
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .frame(minWidth: 1280, minHeight: 720)
        .alert(isPresented: $isAlertEnabled) {
            Alert(
                title: Text("Compare Url Result"),
                message: Text(urlResult),
                primaryButton: .destructive(Text("Copy")) {
                    let pasteboard = NSPasteboard.general
                    pasteboard.clearContents()
                    pasteboard.setString(urlResult, forType: .string)
                },
                secondaryButton: .cancel()
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
