//
//  DrawingView.swift
//  Drawing Application
//
//  Created by Lavonde Dunigan on 12/16/25.
//
import SwiftUI
import PencilKit // UIKIT

struct CanvasView: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView
    @Binding var toolPicker: PKToolPicker
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.delegate = context.coordinator
        
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
}
    class Coordinator: NSObject, PKCanvasViewDelegate {
        

    
// SwiftUI
struct DrawingView: View {
    @State private var canvasView = PKCanvasView()
    @State private var toolPicker = PKToolPicker()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                CanvasView(
                    canvasView: $canvasView,
                    toolPicker: $toolPicker
                )
            }
        }
    }
}

#Preview {
    DrawingView()
}
    

