import SwiftUI

struct ContentView: View {
    private var data: [Int] = Array(1...40)
    private let colors: [Color] = [.red, .blue,.green,.yellow]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    //
    var body: some View{
        NavigationView(){
            ScrollView {
                LazyVGrid(columns: adaptiveColumns,spacing: 20){
                    ForEach(data, id: \.self)  { number in
                        ZStack{
                            Rectangle()
                                .frame(width: 170,  height: 170)
                                .foregroundColor(colors[number%4])
                                .cornerRadius(30, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            Text("\(number)")
                                .foregroundColor(.white)
                                .font(.system(size: 80, weight: .medium, design: .rounded))
                            
                        }
                    }
                }
            }
            .navigationTitle("Grid Sample")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
