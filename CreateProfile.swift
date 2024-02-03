import SwiftUI

struct CreateProfile: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var age: String = ""
    @State private var tartanID: String = ""

    private let fieldHeight: CGFloat = 60
    private let horizontalPadding: CGFloat = 15

    var body: some View {
        VStack(alignment: .leading, spacing: 20) { // Adjust spacing as needed
            Spacer()
            
            Text("Sign up!")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.black)
                .frame(maxWidth: .infinity, alignment: .center)
                .offset(y: -25)
            
            Text("Create your profile on \nCarnegie Mellon's Campus")
                .frame(maxWidth: .infinity, alignment: .center)
                .offset(y: -40)
                .multilineTextAlignment(.center)
            
            // Custom TextField with underline
            Group {
                CustomTextField(placeholder: "First Name", text: $firstName)
                CustomTextField(placeholder: "Last Name", text: $lastName)
                CustomTextField(placeholder: "Age", text: $age, keyboardType: .numberPad)
                CustomTextField(placeholder: "Tartan ID", text: $tartanID)
            }
            .padding(.horizontal, horizontalPadding)
            
            // Sign Up Button
            Button(action: {
                // Sign-up logic goes here
            }) {
                Text("Sign Up")
                    .bold()
                    .frame(maxWidth: .infinity, minHeight: fieldHeight)
                    .background(Color.gray) // Adjust this color as needed
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal, horizontalPadding)
            }
            .padding(.top, 10)
            
            // Cancel Button
            Button(action: {
                // Cancel logic goes here
            }) {
                Text("Cancel")
                    .bold()
                    .frame(maxWidth: .infinity, minHeight: fieldHeight)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal, horizontalPadding)
            }
            .padding(.top, 0)
            .offset(y: -10)// Add some space between the Sign Up and Cancel buttons
            
            Spacer()
        }
        .padding(.horizontal, horizontalPadding)
    }
}

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack {
            TextField(placeholder, text: $text)
                .keyboardType(keyboardType)
                .padding(.bottom, 10) // Space for the underline
                
            Divider() // This acts as the underline
                .background(Color.black) // Adjust the color as needed
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfile()
    }
}
