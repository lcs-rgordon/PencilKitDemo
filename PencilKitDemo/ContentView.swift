//
//  ContentView.swift
//  PencilKitDemo
//
//  Created by Russell Gordon on 2024-05-30.
//

import SwiftUI

import SwiftUI
import PencilKit

struct ContentView: View {
    
    @State var canvas = PKCanvasView()
    @State var drawing = true
    @State var color: Color = .red
    @State var type: PKInkingTool.InkType = .pen
    
    var body: some View {
        
        NavigationStack {
            
            CanvasView(canvas: $canvas, drawing: $drawing, type: $type, color: $color)
                .font(Font.system(size: 35.0))
            
                .foregroundStyle(Color.purple)
                .toolbar {
                    Button(action: {
                        drawing.toggle()
                    }) {
                        Image(systemName: "pencil")
                            .font(.headline)
                            .foregroundStyle(drawing ? Color.blue: Color.gray)
                    }
                    Button(action: {
                        drawing.toggle()
                    }) {
                        Image(systemName: "eraser")
                            .font(.headline)
                            .foregroundStyle(drawing ? Color.gray: Color.blue)
                    }
                }
                .navigationTitle("Pencil Demo")
        }
    }
}

#Preview {
    ContentView()
}
