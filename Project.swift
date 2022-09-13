import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "TuistTestPlan",
    options: .options(automaticSchemesOptions: .disabled),
    targets: [
        Target(
            name: "App",
            platform: .iOS,
            product: .app,
            bundleId: "tuist.test.plan",
            sources: "Sources/**"
        ),
        Target(
            name: "UnitTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "tuist.test.plan.unittests",
            sources: "Tests/**",
            dependencies: [.target(name: "App")]
        )
    ],
    schemes: [
        Scheme(
            name: "App",
            shared: true,
            buildAction: .buildAction(targets: ["App"]),
            testAction: .testPlans(["Tests/UnitTests/Default.xctestplan"]),
            runAction: .runAction(executable: "App")
        )
    ]
)
