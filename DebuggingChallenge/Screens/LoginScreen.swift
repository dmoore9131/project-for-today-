import SwiftUI
import Combine
/**
 # Task #3

 ## Task
 Your goal is to pass the login screen by locating and fixing a single bug.

 ## Success Criteria
 Once the issue is resolved, tapping **Login** should transition you to the second part of the challenge.

 ## Important Notes
 - Only one bug needs to be fixed to complete this task
 - Some files are marked as "DO NOT MODIFY" - these must remain unchanged
 - In certain files, only specific sections are marked as protected with clear comments
 - Modifying any protected code (either entire files or marked sections) will result in automatic task failure
 - Unmarked files and code sections may or may not contain issues requiring fixes
 - If you’re unable to fix the bug or simply prefer to move forward, you can bypass the login screen by setting `MainScreen` as the app’s root view to start directly at the second task.
 */
enum Screen {
    case login
    case home
}

//MARK: -App ViewModel
class AppViewModel: ObservableObject {
    @Published var  currentScreen: Screen = .login // Start on login

    func login(username: String = "", password: String = "", {
        // Single bug fix make sure we transition to home 
        // Username / Password 
        currentScreen = .home
    }
    )
}

//MARK: - Login View 
struct LoginView: View {
    @observedObject var viewmodel: AppViewModel
    @State private var username =""
    @State private var password =""

    var body: some View {
        VStack(Spacing:20) {
            Text("Login")
            .font(.largeTitle)
            .bold()

            TextField("Username", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)

            Button("Login") {
                viewmodel.login(username, password: password)
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
        }
        .padding(.horizontal)

        Spacer()
    }

// MARK -Preview 
struct Login_View_Preview: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: AppViewModel())
    }
