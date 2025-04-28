import SwiftUI

struct Project: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let description: String
    var instructions: String
    var isCompleted: Bool = false
    var categoryName: String = ""

    mutating func markAsCompleted() {
        isCompleted = true
    }
}

struct Category: Identifiable, Hashable {
    let id = UUID()
    let name: String
    var projects: [Project]
}

func createSampleCategories() -> [Category] {
    var categories = [
        Category(name: "Gardening", projects: [
            Project(name: "Plant a Herb Garden", description: "Learn how to start your own herb garden.", instructions: """
                1. Choose your herbs.
                2. Prepare the soil by loosening it and removing weeds.
                3. Plant your herbs in containers or directly in the ground.
                4. Water regularly and ensure they receive plenty of sunlight.
            """),
            Project(name: "Start a Vegetable Garden", description: "Grow your own vegetables from scratch.", instructions: """
                1. Select your favorite vegetables and ensure they're suitable for your climate.
                2. Prepare your garden space by clearing weeds and tilling the soil.
                3. Plant seeds or seedlings.
                4. Water regularly, and keep an eye out for pests.
            """),
            Project(name: "Create a Flower Bed", description: "Learn how to plant a beautiful flower bed.", instructions: """
                1. Choose a variety of flowers based on your climate.
                2. Prepare the bed by removing weeds and adding nutrient-rich soil.
                3. Space the flowers evenly and plant them.
                4. Water and maintain the flower bed as the plants grow.
            """),
            Project(name: "Build a Compost Bin", description: "Start composting your garden waste.", instructions: """
                1. Choose materials for building your compost bin (wood or wire mesh).
                2. Assemble the compost bin structure.
                3. Add kitchen scraps and garden waste into the bin.
                4. Turn the compost regularly to speed up decomposition.
            """),
            Project(name: "Grow Indoor Plants", description: "Learn how to take care of indoor plants.", instructions: """
                1. Choose the right plants for indoor conditions (low light or humidity).
                2. Select appropriate pots and soil.
                3. Water when the soil feels dry and ensure the plants get enough light.
                4. Watch out for pests and dead leaves to maintain a healthy indoor garden.
            """)
        ]),
        Category(name: "DIY Projects", projects: [
            Project(name: "Build a Birdhouse", description: "Create a simple birdhouse using basic tools.", instructions: """
                1. Gather your materials (wood, nails, paint, etc.).
                2. Cut the wood into the necessary pieces for the roof, walls, and base.
                3. Assemble the pieces into a birdhouse shape.
                4. Paint or decorate it as desired, and hang it outside.
            """),
            Project(name: "Create a Wooden Shelf", description: "Learn to build a sturdy wooden shelf.", instructions: """
                1. Choose your wood and measure the shelf size.
                2. Cut the wood to size and sand the edges.
                3. Assemble the shelf by attaching the sides and the top.
                4. Mount the shelf on the wall.
            """),
            Project(name: "Build a Coffee Table", description: "Make a beautiful coffee table for your living room.", instructions: """
                1. Select the wood for the top and legs.
                2. Cut the pieces to the desired length.
                3. Assemble the frame and attach the legs.
                4. Sand and finish the table for a smooth look.
            """),
            Project(name: "Create a Picture Frame", description: "Learn how to make a custom picture frame.", instructions: """
                1. Choose the material for the frame (wood, metal, etc.).
                2. Cut the frame pieces to the correct dimensions for your picture.
                3. Assemble the pieces and secure the corners.
                4. Paint or decorate the frame, and add the backing and glass.
            """),
            Project(name: "Build a Garden Bench", description: "Create a comfortable bench for your garden.", instructions: """
                1. Select your wood and tools.
                2. Cut the pieces for the seat and legs.
                3. Assemble the bench by attaching the legs to the seat.
                4. Sand and finish the wood for protection against the elements.
            """)
        ]),
        Category(name: "Mechanical Skills", projects: [
            Project(name: "Basic Car Maintenance", description: "Learn how to maintain your car.", instructions: """
                1. Check the oil level and top it up if necessary.
                2. Change the oil filter and oil regularly.
                3. Inspect the brakes for wear and replace pads if needed.
                4. Replace the air filter to ensure the engine runs efficiently.
            """),
            Project(name: "Fix a Leaky Faucet", description: "Learn how to fix a leaky faucet in your home.", instructions: """
                1. Turn off the water supply to the faucet.
                2. Remove the faucet handle and valve assembly.
                3. Replace the washer or seal that is causing the leak.
                4. Reassemble the faucet and turn the water back on.
            """),
            Project(name: "Install a Ceiling Fan", description: "Install a ceiling fan in your home.", instructions: """
                1. Turn off the power and remove the old light fixture.
                2. Mount the ceiling fan bracket and assemble the fan.
                3. Connect the wiring for the fan to the electrical box.
                4. Test the fan and ensure it's working correctly.
            """),
            Project(name: "Repair a Flat Tire", description: "Learn how to fix a flat tire on your car.", instructions: """
                1. Lift the car using a jack and remove the flat tire.
                2. Install the spare tire and tighten the bolts.
                3. Lower the car back to the ground.
                4. Check the tire pressure and reattach the flat tire if necessary.
            """),
            Project(name: "Fix a Broken Door Handle", description: "Fix a broken door handle in your house.", instructions: """
                1. Remove the broken handle by unscrewing it.
                2. Install the new handle and secure it tightly.
                3. Test the handle to ensure it opens and closes properly.
            """)
        ]),
        Category(name: "Basic Cooking Skills", projects: [
            Project(name: "Cook a Simple Pasta Dish", description: "Learn to cook a simple and delicious pasta dish.", instructions: """
                1. Boil water in a pot and cook the pasta.
                2. Prepare the sauce with tomatoes, garlic, and olive oil.
                3. Toss the pasta with the sauce and serve.
            """),
            Project(name: "Make a Salad from Scratch", description: "Prepare a fresh salad with a variety of vegetables.", instructions: """
                1. Wash and chop the vegetables.
                2. Add dressing to the vegetables and toss together.
                3. Serve immediately or refrigerate for later use.
            """),
            Project(name: "Bake a Simple Cake", description: "Bake a delicious cake from scratch.", instructions: """
                1. Preheat the oven and prepare the baking pans.
                2. Mix the ingredients (flour, sugar, eggs, etc.).
                3. Pour the batter into the pans and bake.
                4. Let the cake cool before frosting and serving.
            """),
            Project(name: "Make Homemade Soup", description: "Learn to make a nutritious and tasty soup.", instructions: """
                1. Chop vegetables and prepare the ingredients.
                2. Boil the vegetables in water or broth.
                3. Blend or mash the soup to your desired consistency.
                4. Serve hot with optional garnishes.
            """),
            Project(name: "Grill a Steak", description: "Learn the basics of grilling a perfect steak.", instructions: """
                1. Season the steak with salt and pepper.
                2. Preheat the grill and cook the steak to your preferred level of doneness.
                3. Let the steak rest before serving.
            """)
        ]),
        Category(name: "Technology Skills", projects: [
            Project(name: "Create a Simple Website", description: "Learn how to build a basic website.", instructions: """
                1. Set up your development environment and text editor.
                2. Create an HTML structure for the webpage.
                3. Add CSS to style the webpage.
                4. Test and deploy the website to a web hosting service.
            """),
            Project(name: "Build a Simple App", description: "Create a basic mobile app using Swift.", instructions: """
                1. Set up an Xcode project for iOS.
                2. Design the user interface using SwiftUI.
                3. Add functionality to the app using Swift code.
                4. Test the app on a simulator or real device.
            """),
            Project(name: "Learn Basic Python", description: "Get started with Python programming.", instructions: """
                1. Install Python on your computer.
                2. Write your first Python program (print statements).
                3. Learn about variables, loops, and functions.
                4. Practice by solving simple coding exercises.
            """),
            Project(name: "Create a Personal Blog", description: "Learn how to create and maintain a blog.", instructions: """
                1. Choose a blogging platform (WordPress or HTML).
                2. Set up your domain and hosting.
                3. Write your first blog post and format it.
                4. Promote your blog through social media and search engines.
            """),
            Project(name: "Learn Basic Data Structures", description: "Understand the basics of data structures like arrays and lists.", instructions: """
                1. Learn how arrays and lists work in programming.
                2. Study stacks, queues, and linked lists.
                3. Practice solving problems using these data structures.
                4. Implement these structures in code.
            """)
        ]),
        Category(name: "Art & Creativity", projects: [
            Project(name: "Paint a Landscape", description: "Learn how to paint a simple landscape.", instructions: """
                1. Gather paints and brushes.
                2. Sketch the layout.
                3. Paint background first, then add detail.
                4. Let it dry and display.
            """),
            Project(name: "Create a Sculpture", description: "Learn to sculpt with clay.", instructions: """
                1. Choose your material (clay, wood, etc.).
                2. Begin molding your sculpture.
                3. Add finer details to shape.
                4. Allow to dry and display.
            """),
            Project(name: "Make a Pottery Vase", description: "Create a beautiful pottery vase.", instructions: """
                1. Roll the clay to an even thickness.
                2. Shape the vase on a pottery wheel.
                3. Smooth the edges and add designs.
                4. Fire the vase and add glaze.
            """),
            Project(name: "Design a T-shirt", description: "Create a custom design for a t-shirt.", instructions: """
                1. Choose your design theme.
                2. Draw or digitally create the design.
                3. Print the design onto transfer paper.
                4. Iron the transfer onto the t-shirt fabric.
            """),
            Project(name: "Create a Collage", description: "Make a collage from various materials.", instructions: """
                1. Gather images, papers, and other materials.
                2. Cut and arrange them creatively.
                3. Glue the pieces onto a canvas or board.
                4. Display your artwork.
            """)
        ])
    ]
    
    for i in 0..<categories.count {
        for j in 0..<categories[i].projects.count {
            categories[i].projects[j].categoryName = categories[i].name
        }
    }
    
    return categories
}

let sampleCategories = createSampleCategories()

struct ProgressBar: View {
    var progress: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Capsule()
                    .frame(height: 8)
                    .foregroundColor(Color(UIColor.systemGray4))
                Capsule()
                    .frame(width: geometry.size.width * CGFloat(progress), height: 8)
                    .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.purple]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
            }
        }
        .frame(height: 8)
        .padding(.horizontal)
    }
}

struct ContentView: View {
    @State private var categories = sampleCategories
    @State private var selectedCategory: Category?
    @State private var showCompletedTasks = false

    var body: some View {
        NavigationView {
            VStack {
                if showCompletedTasks {
                    CompletedTasksView(categories: $categories)
                        .navigationTitle("Completed Tasks")
                        .navigationBarItems(leading: Button(action: {
                            self.showCompletedTasks = false
                            self.selectedCategory = nil
                        }) {
                            Text("Back")
                                .foregroundColor(.blue)
                        })
                } else if let selectedCategory = selectedCategory {
                    ProjectListView(category: selectedCategory, categories: $categories)
                        .navigationTitle("Projects in \(selectedCategory.name)")
                        .navigationBarItems(leading: Button(action: {
                            self.selectedCategory = nil
                        }) {
                            Text("Back")
                                .foregroundColor(.blue)
                        })
                } else {
                    CategoryListView(
                        categories: $categories,
                        selectedCategory: $selectedCategory,
                        showCompletedTasks: $showCompletedTasks
                    )
                }
            }
        }
    }
}

struct CategoryListView: View {
    @Binding var categories: [Category]
    @Binding var selectedCategory: Category?
    @Binding var showCompletedTasks: Bool
    @State private var isVisible = false

    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                VStack(spacing: 20) {
                    VStack(spacing: 16) {
                        Text("Skill Builder")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.black)
                        Image(systemName: "lightbulb.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.yellow)
                    }
                    VStack(alignment: .center, spacing: 16) {
                        Text("Welcome to your learning journey!")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                        Text("Build practical skills through guided, hands-on projects. Pick a category below to get started!")
                            .font(.body)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        HStack(spacing: 24) {
                            FeatureItem(icon: "checkmark.circle.fill", color: .green, text: "Track Progress")
                            FeatureItem(icon: "list.clipboard", color: .blue, text: "Clear Steps")
                            FeatureItem(icon: "star.fill", color: .yellow, text: "Build Skills")
                        }
                        .padding(.top, 8)
                    }
                }
                .padding(24)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(16)
                .shadow(radius: 5)
                .padding(.horizontal)
                
                Button(action: {
                    showCompletedTasks = true
                }) {
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                        Text("View Completed Tasks")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.green, Color.blue]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(12)
                    .shadow(radius: 3)
                }
                .padding(.horizontal)
                
                Text("EXPLORE CATEGORIES")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .padding(.top, 8)

                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(categories, id: \.self) { category in
                        Button(action: {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                selectedCategory = category
                            }
                        }) {
                            VStack(spacing: 10) {
                                Image(systemName: iconName(for: category.name))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 40)
                                    .foregroundColor(.white)
                                Text(displayName(for: category.name))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: .infinity, minHeight: 100)
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(12)
                            .shadow(radius: 3)
                            .scaleEffect(selectedCategory == category ? 1.05 : 1.0)
                            .opacity(isVisible ? 1.0 : 0.0)
                            .offset(y: isVisible ? 0 : 20)
                        }
                        .animation(.easeInOut(duration: 0.2), value: selectedCategory)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 40)
                .onAppear {
                    withAnimation(.easeIn(duration: 0.5)) {
                        isVisible = true
                    }
                }
            }
            .padding(.top, 16)
        }
    }
    
    func iconName(for category: String) -> String {
        switch category {
        case "Gardening": return "leaf.fill"
        case "DIY Projects": return "hammer.fill"
        case "Mechanical Skills": return "wrench.fill"
        case "Basic Cooking Skills": return "fork.knife"
        case "Technology Skills": return "desktopcomputer"
        case "Art & Creativity": return "paintpalette.fill"
        default: return "square.grid.2x2"
        }
    }
    
    func displayName(for category: String) -> String {
        if category == "Basic Cooking Skills" {
            return "Cooking Skills"
        }
        return category
    }
}

struct FeatureItem: View {
    let icon: String
    let color: Color
    let text: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(color)
            Text(text)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.primary)
        }
    }
}

struct ProjectListView: View {
    var category: Category
    @Binding var categories: [Category]
    @State private var expandedProjectID: UUID?
    
    private var categoryProgress: Double {
        if let currentCategory = categories.first(where: { $0.id == category.id }) {
            let total = currentCategory.projects.count
            guard total > 0 else { return 0 }
            let done = currentCategory.projects.filter { $0.isCompleted }.count
            return Double(done) / Double(total)
        }
        return 0
    }
    
    private func toggleProjectCompletion(projectID: UUID) {
        if let categoryIndex = categories.firstIndex(where: { $0.id == category.id }) {
            if let projectIndex = categories[categoryIndex].projects.firstIndex(where: { $0.id == projectID }) {
                categories[categoryIndex].projects[projectIndex].isCompleted.toggle()
            }
        }
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text(category.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(12)
                .shadow(radius: 3)
                .padding(.horizontal)
                .padding(.top)

                VStack(spacing: 16) {
                    ForEach(categories.first(where: { $0.id == category.id })?.projects ?? []) { project in
                        DisclosureGroup(
                            isExpanded: Binding(
                                get: { expandedProjectID == project.id },
                                set: { expanded in
                                    expandedProjectID = expanded ? project.id : nil
                                }
                            )
                        ) {
                            VStack(alignment: .leading, spacing: 12) {
                                Text(project.instructions)
                                    .font(.body)
                                    .padding()
                                    .background(Color(UIColor.secondarySystemBackground))
                                    .cornerRadius(8)
                                Button(action: {
                                    toggleProjectCompletion(projectID: project.id)
                                }) {
                                    HStack {
                                        Image(systemName: project.isCompleted ? "checkmark.circle.fill" : "circle")
                                        Text(project.isCompleted ? "Completed" : "Mark as Completed")
                                    }
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 16)
                                    .background(project.isCompleted ? Color.green.opacity(0.2) : Color.blue.opacity(0.2))
                                    .cornerRadius(8)
                                }
                                .foregroundColor(project.isCompleted ? .green : .blue)
                                .padding(.top, 4)
                            }
                            .padding(.top, 4)
                        } label: {
                            HStack {
                                Text(project.name)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                                if project.isCompleted {
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(.green)
                                }
                            }
                            .padding()
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.blue, Color.purple]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .cornerRadius(12)
                        }
                        .padding(.horizontal)
                    }

                    VStack(spacing: 4) {
                        HStack {
                            Text("Category Progress")
                                .font(.caption)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(Int(categoryProgress * 100))%")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        }
                        ProgressBar(progress: categoryProgress)
                        let completedCount = categories.first(where: { $0.id == category.id })?.projects.filter(\.isCompleted).count ?? 0
                        let totalCount = categories.first(where: { $0.id == category.id })?.projects.count ?? 0
                        Text("\(completedCount) of \(totalCount) completed")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.top, 4)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 40)
                }
            }
        }
        .background(Color(UIColor.systemGroupedBackground).ignoresSafeArea())
    }
}

struct CompletedTasksView: View {
    @Binding var categories: [Category]
    
    private var completedProjects: [Project] {
        var projects: [Project] = []
        for category in categories {
            let completed = category.projects.filter { $0.isCompleted }
            projects.append(contentsOf: completed)
        }
        return projects
    }
    
    private var completedProjectsByCategory: [String: [Project]] {
        var grouped: [String: [Project]] = [:]
        for category in categories {
            let completed = category.projects.filter { $0.isCompleted }
            if !completed.isEmpty {
                grouped[category.name] = completed
            }
        }
        return grouped
    }
    
    private var overallProgress: Double {
        let totalProjects = categories.flatMap { $0.projects }.count
        let completedCount = completedProjects.count
        return totalProjects > 0 ? Double(completedCount) / Double(totalProjects) : 0
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(spacing: 12) {
                    Image(systemName: "trophy.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.yellow)
                    Text("Your Achievements")
                        .font(.system(size: 28, weight: .bold))
                    VStack(spacing: 4) {
                        HStack {
                            Text("Overall Progress")
                                .font(.caption)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(Int(overallProgress * 100))%")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        }
                        ProgressBar(progress: overallProgress)
                        Text("\(completedProjects.count) projects completed")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.top, 4)
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                }
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(12)
                .shadow(radius: 3)
                .padding(.horizontal)
                .padding(.top, 16)
                
                if completedProjects.isEmpty {
                    VStack(spacing: 16) {
                        Image(systemName: "checkmark.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.gray)
                        Text("No completed projects yet")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text("Complete projects to see them listed here.")
                            .font(.body)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .padding(40)
                } else {
                    ForEach(Array(completedProjectsByCategory.keys.sorted()), id: \.self) { category in
                        VStack(alignment: .leading, spacing: 12) {
                            Text(category)
                                .font(.headline)
                                .padding(.horizontal)
                            ForEach(completedProjectsByCategory[category] ?? [], id: \.id) { project in
                                HStack {
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(.green)
                                    VStack(alignment: .leading, spacing: 2) {
                                        Text(project.name)
                                            .font(.subheadline)
                                            .fontWeight(.medium)
                                        Text(project.description)
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .padding()
                                .background(Color(UIColor.secondarySystemBackground))
                                .cornerRadius(8)
                                .padding(.horizontal)
                            }
                        }
                        .padding(.bottom, 12)
                    }
                }
            }
            .padding(.bottom, 40)
        }
        .background(Color(UIColor.systemGroupedBackground).ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}
