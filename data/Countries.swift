//
//  Countries.swift
//  TP2_Groupe_10
//
//  Created by mbdse on 20/03/2021.
//  Copyright © 2021 com.mbds.madagascar. All rights reserved.
//

import Foundation
let countries = [
    Country(isoCode: "at", name: "Austria", continent: "Europe"),
    Country(isoCode: "be", name: "Belgium", continent: "Europe"),
    Country(isoCode: "de", name: "Germany", continent: "Europe"),
    Country(isoCode: "el", name: "Greece", continent: "Europe"),
    Country(isoCode: "fr", name: "France", continent: "Europe"),
    
    Country(isoCode: "jp", name: "Japan", continent: "Asie"),
    Country(isoCode: "mg", name: "Madagascar", continent: "Afrique"),
    Country(isoCode: "id", name: "Indonesia", continent: "Asie"),
    Country(isoCode: "es", name: "Espagne", continent: "Europe"),
    Country(isoCode: "in", name: "Inde", continent: "Asie"),
]
func getCountryPerContinent()->[String:[Country]]{
    var continents:[String:[Country]]=[:]
    
    for country in countries {
        if !continents.keys.contains(country.continent) {
            continents[country.continent]=[country]
        } else {
            continents[country.continent]?.append(country)
        }
    }
    
    return continents
}
