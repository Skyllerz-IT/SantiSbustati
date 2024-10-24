import SwiftUI

struct LoopingAnimationView: View {
    @State private var isScaled = false  // State variable to trigger the animation

    var body: some View {
        VStack {
            // Red rectangle (above the yellow one)
            Rectangle()
                .frame(width: 140, height: 30)
                .foregroundColor(.red)
                .scaleEffect(isScaled ? 2.0 : 1.5)  // Scale up and down
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 0.75).repeatForever(autoreverses: true)) {
                        isScaled.toggle()  // Start animation
                    }
                }

                .padding(.top, 20)

            // Yellow rectangle (below the red one)
            Rectangle()
                .frame(width: 140, height: 200)
                .foregroundColor(.yellow)
                .scaleEffect(isScaled ? 2.0 : 1.3)  // Scale up and down
        }
        .padding()  // Add padding around the entire VStack
    }
}

#Preview {
    LoopingAnimationView()
}
