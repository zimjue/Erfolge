//
//  Item.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 22.02.24.
//

import Foundation
import SwiftData

 
@Model
final class Erfolg {
    var date: Date
    @Relationship(deleteRule: .cascade) var fragen: [Frage]
    
    init(date: Date) {
        self.date = date
        self.fragen = []
        fragen.append(Frage(frage: "Was habe ich heute gelernt?", antwort: ""))
        fragen.append(Frage(frage: "Worin habe ich mich heute verbessert?", antwort: ""))
        fragen.append(Frage(frage: "Worüber habe ich mich heute gefreut?", antwort: ""))
        fragen.append(Frage(frage: "Ich bin heute ein Glückskind, weil...," , antwort: ""))
        fragen.append(Frage(frage: "Meine heutigen Erfolge", antwort: ""))
        fragen.append(Frage(frage: "WDafür bin ich heute Dankbar", antwort: ""))
        fragen.append(Frage(frage: "Das war mein heutiger Go-Moment", antwort: ""))
                                                                             
                    }
}


@Model
class Frage {
    var frage: String
    var antwort: String
    
    init(frage: String, antwort: String) {
        self.frage = frage
        self.antwort = antwort
    }
}
