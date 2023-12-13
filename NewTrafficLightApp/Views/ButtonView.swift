//
//  ButtonView.swift
//  NewTrafficLightApp
//
//  Created by Даниил Торопов on 13.12.2023.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
		
		
		Button(action: {
			
		}) {
			Text("Start")
				.font(.title)
				.fontWeight(.bold)
				.frame(width: 200)
			
				.foregroundColor(Color.white)
				.padding()
				.background(Color.blue)
			
				.cornerRadius(20)
				.overlay(
					RoundedRectangle(cornerRadius: 20)
						.stroke(Color.white, lineWidth: 2)
				)
		}
    }
}

#Preview {
    ButtonView()
}
