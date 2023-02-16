//
//  ContentView.swift
//  MoonShot
//
//  Created by Ангелина Шаманова on 16.2.23..
//

import SwiftUI

struct ContentView: View {
    private let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    private let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showGrid: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                Group {
                    if showGrid {
                        MissionsGridView(astronauts: astronauts, missions: missions)
                    } else {
                        MissionsTableView(astronauts: astronauts, missions: missions)
                    }
                }
            }
            .navigationTitle("MoonShot")
            .toolbar {
                ToolbarItem {
                    Button {
                        withAnimation {
                            showGrid.toggle()
                        }
                    } label: {
                        Text(showGrid ? "Table" : "Grid")
                    }
                }
            }
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
