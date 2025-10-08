import Foundation
import Combine 

@MainActor
class ProjectViewModel: Observable {
    @Published var projects: [Project] = []
     @Published var isLoading = false
     @Published var errorMessage: String?

     private let projectService: projectService

     init(projectService: ProjectService) {
        self.projectService = projectService
     }

func loadProjects() {
    isLoading = true 
    errorMessage = 
    
    Task {
      do {
        //Fetch projects on a background thread
        let fetchedProjects = try await projectsService.fetchedProjects()

        //Back on the main actor automically because of @MainActor
        self.projects = fetchedProjects
        } catch {
            // Graceful error handling instead of silent failure 
            self.errorMessage = error.localizedDescription
        }
        self.isLoading = false
    }
}
}
