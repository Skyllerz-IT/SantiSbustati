//import SwiftUI
//
//struct LoopingAnimationView: View {
//    @State private var isScaled = false  // State variable to trigger the animation
//    @State private var isRotating = false
//    var body: some View {
//        VStack {
//            Image(systemName: "star.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.yellow)
//                .scaleEffect(isScaled ? 2.0 : 1.75)  // Scale up and down
//                .onAppear {
//                    // Repeat animation forever with autoreverses to go back to original state
//                    withAnimation(Animation.easeInOut(duration: 0.75).repeatForever(autoreverses: true)) {
//                        isScaled.toggle()  // Toggle the state to start the animation
//    
//                    }
//                }
//        }
//    }
//}
//
//#Preview {
//    LoopingAnimationView()
//}
