//
//  ContentView.swift
//  NewTrafficLightApp
//
//  Created by Даниил Торопов on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
	@State private var redLight = true
	@State private var yellowLight = true
	@State private var greenLight = true
	@State private var isStart = true
	
	var body: some View {
		ZStack {
			Color.black
				.ignoresSafeArea()
			
			VStack {
				SwiftCircleView(
					opacity: redLight ? 1 : 0.5,
					color: .red, width: 100,
					shadowRadius: redLight ? 10 : 0)
				
				SwiftCircleView(
					opacity: yellowLight ? 1 : 0.5,
					color: .yellow, width: 100,
					shadowRadius: yellowLight ? 10 : 0)
				
				SwiftCircleView(
					opacity: greenLight ? 1 : 0.5,
					color: .green, width: 100,
					shadowRadius: greenLight ? 10 : 0)
				
				Spacer()
				
				Button(action: {
					if self.isStart {
						self.redLight = true
						self.yellowLight = false
						self.greenLight = false
						self.isStart = false
						
					} else if self.redLight {
						self.redLight = false
						self.yellowLight = true
						self.greenLight = false
						
					} else if self.yellowLight {
						self.redLight = false
						self.yellowLight = false
						self.greenLight = true
						
					} else if self.greenLight {
						self.redLight = true
						self.yellowLight = false
						self.greenLight = false
					}
				}) {
					
					Text(isStart ? "Start" : "Next" )
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
				.padding()
			}
			.padding()
		}
	}
}
#Preview {
	ContentView()
}
