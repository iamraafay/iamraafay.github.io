import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Abdurraafay: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://www.abdurraafay.com")!
    var name = "Mohammad Abdurraafay"
    var description = "Sharing my interests in Swift, iOS, Apple & more"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

try Abdurraafay().publish(using: [
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .basic),
])
