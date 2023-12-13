//
//  SwiftCircleView.swift
//  NewTrafficLightApp
//
//  Created by Даниил Торопов on 13.12.2023.
//

import SwiftUI

struct SwiftCircleView: View {
	let opacity: Double
	let color: Color
	let width: CGFloat
	let shadowRadius: CGFloat
	
    var body: some View {
		
		Circle()
			.foregroundStyle(color)
			.frame(width: width)
			.opacity(opacity)
		
			.overlay(
				Circle()
					.stroke(Color.white, lineWidth: 4)
			)
			.shadow(color: color, radius: shadowRadius)
    }
}

//#Preview {
//	VStack {
//		SwiftCircleView(color: .red, width: 150)
//		SwiftCircleView(color: .yellow, width: 150)
//		SwiftCircleView(color: .green, width: 150)
//	}
//}
