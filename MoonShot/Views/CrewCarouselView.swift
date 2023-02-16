//
//  CrewCarouselView.swift
//  MoonShot
//
//  Created by Ангелина Шаманова on 16.2.23..
//

import SwiftUI

struct CrewCarouselView: View {
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .strokeBorder(.white, lineWidth: 1)
                                )

                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Text(crewMember.role)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(.lightBackground)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct CrewCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CrewCarouselView(crew: [CrewMember]())
    }
}
