//
//  WorkOutViewModel.swift
//  TarmacApp
//
//  Created by Maharjan on 04/09/2024.
//

import Foundation

class WorkOutViewModel : BaseViewModel {
    
    let items = [
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            WorkoutItem(duration: "60min", intensity: "64", energy: "542KJ", power: "NP 185W", title: "Pink Butterfly"),
            // Add more items as needed
        ]

    
}

struct WorkoutItem: Identifiable {
    let id = UUID()
    let duration: String
    let intensity: String
    let energy: String
    let power: String
    let title: String
}
