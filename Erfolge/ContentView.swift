//
//  ContentView.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 22.02.24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var Erfoge: [Erfolg]
    @Environment(\.modelContext) private var modelContext
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                //    DatePicker("Heute ist der", selection: Erfolg.date, displayedComponents: [.date])
                //    .padding()
                //    List(erfolge) { erfolg in
                //                    ErfolgView(erfolg: erfolg)
                //              }
                //             Button("Neuer Erfolg") {
                //               let erfolg = Erfolg(frage: "", antwort: "")
                //              modelContext.insert(erfolg)
            }
        }
        //}
        .navigationTitle("Tägliche Erfolge")
        //HStack {
            // Text ("Speichern")
            //   Button("Speichern") {
            
            //     let antworten = Fragen(inhalt: notiz)
            //     modelContext.insert(antworten)
            //     notiz = ""
       // }
    }
    //    .padding(.horizontal)
    //    }
    //     }
    //    }
    
    struct ErfolgView: View {
        
        @Bindable var erfolg: Erfolg
        
        var body: some View {
            VStack {
                //   TextField( "Frage", text: $erfolg.frage)
                //   TextField( "Antwort", text: $erfolg.antwort)
            }
        }
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Erfolg.self, inMemory: true)
}
