import SwiftUI

struct MainMessagesView: View {
    @State private var showingActionSheet = false
    @State private var showingAddNewGroupView = false
    
    private var customNav: some View {
        HStack(spacing: 16) {
            Image("examplepfp3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 34, height: 34)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text("Chisa Yan")
                    .font(.system(size: 24, weight: .bold))
                HStack {
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 14, height: 14)
                    Text("online")
                        .font(.system(size: 12))
                        .foregroundColor(Color(.lightGray))
                }
            }
            Spacer()
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                customNav
                
                ScrollView {
                    ForEach(0..<3, id: \.self) { num in
                        if num == 0 {
                            NavigationLink(destination: Chat()) {
                                chatRoomView(num: num, username: "Barbs", imageName: "profilepic")
                            }
                        }else if num == 1 {
                            chatRoomView(num: num, username: "Tai", imageName: "profile2")
                        }
                        else if num == 2 {
                            chatRoomView(num: num, username: "Alo", imageName: "profile3")
                        }
                    }.padding(.bottom, 50)
                }
            }
            .overlay(newMessageButton, alignment: .bottom)
            .navigationBarHidden(true)
            .sheet(isPresented: $showingAddNewGroupView) {
                AddNewGroupView()
            }
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(
                    title: Text("New Message"),
                    buttons: [
                        .default(Text("Find Username")) {
                            // finding username, not adding that, future development
                        },
                        .default(Text("Add Neighborhood Chat")) {
                            showingAddNewGroupView = true
                        },
                        .cancel()
                    ]
                )
            }
        }
    }
    
    private func chatRoomView(num: Int, username: String, imageName: String) -> some View {
        VStack {
            HStack(spacing: 16) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 32, height: 32)
                    //.padding(8)
                    .clipShape(Circle())
                    .overlay(RoundedRectangle(cornerRadius: 44)
                        .stroke(Color.black, lineWidth: 1)
                    )
                
                VStack(alignment: .leading) {
                    Text(username)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Messages sent to user")
                        .font(.system(size: 14))
                        .foregroundColor(Color(.lightGray))
                }
                Spacer()
                Text("22d")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Divider()
                .padding(.vertical, 8)
        }.padding(.horizontal)
    }
    
    private var newMessageButton: some View {
        Button {
            showingActionSheet = true
        } label: {
            HStack {
                Spacer()
                Text("+ New Message")
                    .font(.system(size: 16, weight: .bold))
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.vertical)
            .background(Color.blue)
            .cornerRadius(32)
            .padding(.horizontal)
            .shadow(radius: 15)
        }
    }
}

struct MainMessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MainMessagesView()
    }
}
