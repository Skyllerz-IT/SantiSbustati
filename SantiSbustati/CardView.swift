import SwiftUI

struct CardView: View {
    @State var Saints: Stats = Stats(name: "Pasquale", city: "Vittoriosi", hp: 0, atk: 0, def: 0, spd: 0 )

    var body: some View {
        VStack {
            Text("San \(Saints.name)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(.top, 30.0)
            
            Image("Placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(40)
                .frame(width: 240, height: 240)
                .padding(.horizontal, 40)
            
            Text(Saints.city)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()

            HStack {
                Image(systemName: "heart.circle")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(String(Saints.hp))  // Convert hp to String
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
            VStack {
                HStack {
                    Image(systemName: "arrow.2.circlepath.circle")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text(String(Saints.atk))
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Image(systemName: "arrow.2.circlepath.circle")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text(String(Saints.def))
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Image(systemName: "arrow.2.circlepath.circle")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text(String(Saints.spd))
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                }
            }
        }
        .background {
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.gray)
            RoundedRectangle(cornerRadius: 40)
                .strokeBorder(.black, lineWidth: 10)
        }
        .padding()
    }
}

#Preview {
    CardView()
}
