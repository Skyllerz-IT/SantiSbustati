import SwiftUI
import SceneKit

struct ContentView: View {
    
    @State private var index = 0  // Track the currently displayed model index
    @State private var isScaled = false  // Track scaling for animation
    @State private var models = [
        Model(id: 0, name: "Sbusto", modelName: "CardModel.dae", details: "Lo sbusto sbustante")
    ]
    
    var body: some View {
        VStack {
            
            HStack {
                SceneView(
                    scene: setupScene(),  // Using a custom scene setup function
                    options: [.autoenablesDefaultLighting, .allowsCameraControl]
                )
                .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 2)
                .scaleEffect(isScaled ? 3.3 : 3.15)  // Apply scaling effect.
                .onAppear {
                    // Start the animation with a repeating scaling effect
                    withAnimation(Animation.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
                        isScaled.toggle()
                    }
                }
            }
        }
    }
    
    // Helper function to set up the scene with alternative scaling
    func setupScene() -> SCNScene? {
        guard let scene = SCNScene(named: models[index].modelName) else { return nil }
        
        // Scale each child node individually
        scene.rootNode.childNodes.forEach { node in
            node.scale = SCNVector3(3, 3, 3)  // Adjust this scaling factor as needed
        }
        
        return scene
    }
}

#Preview {
    ContentView()
}
