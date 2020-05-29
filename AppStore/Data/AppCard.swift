import Foundation

struct AppCard: Equatable {
    static func == (lhs: AppCard, rhs: AppCard) -> Bool {
        return (
            lhs.feature == rhs.feature &&
            lhs.title == rhs.title &&
            lhs.subTitle == rhs.subTitle &&
            lhs.image == rhs.image
        )
    }
    
    let feature: String
    let title: String
    let subTitle: String
    let image: String
    let appInfo: AppInfo
}

struct AppLine: Equatable {
    static func == (lhs: AppLine, rhs: AppLine) -> Bool {
        return (
            lhs.title == rhs.title &&
            lhs.subTitle == rhs.subTitle &&
            lhs.image == rhs.image &&
            lhs.downloaded == rhs.downloaded
        )
    }
    
    let title: String
    let subTitle: String
    let image: String
    let downloaded: Bool
}

struct AppCards {
    static let appCards = [
        AppCard(feature: "Major Update", title: "PUBG MOBILE - Mad Miramar", subTitle: "Season 13 adds cool new toys", image: "pubg", appInfo: AppInfo(name: "PUBG")),
        AppCard(feature: "Play with friends", title: "Mario Kart Tour", subTitle: "Multiplayer Madness", image: "mario_kart", appInfo: AppInfo(name: "MARIO KART")),
        AppCard(feature: "What we're playing", title: "Tetris®", subTitle: "Classic comeback", image: "tetris", appInfo: AppInfo(name: "TETRIS")),
        AppCard(feature: "Major Update", title: "The Sims™ Mobile", subTitle: "Now build multistory homes", image: "sims", appInfo: AppInfo(name: "THE SIMS")),
        AppCard(feature: "Editors' Choice", title: "Clash Royale", subTitle: "Epic Real-Time Card Battles!", image: "clash_royal", appInfo: AppInfo(name: "CLASH ROYALE")),
        AppCard(feature: "Welcome to season 6", title: "Call of Duty®: Mobile", subTitle: "Battle Royale, Sniper, 5v5", image: "cod", appInfo: AppInfo(name: "COD")),
        AppCard(feature: "Fortnite Chapter 2", title: "Fortnite", subTitle: "Battle Royale & Party Hub", image: "fortnite", appInfo: AppInfo(name: "FORTNITE")),
        AppCard(feature: "Major Update", title: "Fruit Ninja®", subTitle: "Slice up a juice storm!", image: "fruit_ninja", appInfo: AppInfo(name: "FRUIT NINJA")),
        AppCard(feature: "Gen 9", title: "Pokémon GO", subTitle: "Discover Pokémon worldwide", image: "pkgo", appInfo: AppInfo(name: "POKEMON GO")),
        AppCard(feature: "Autobattler", title: "TFT: Teamfight Tactics", subTitle: "League of Legends Strategy", image: "tft", appInfo: AppInfo(name: "TFT")),
    ]
    
    static let threeAppCards = [
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 1", subTitle: "Sandstorm Incoming at Miramar! 1", image: "icon", downloaded: false),
            AppLine(title: "PUBG MOBILE - Mad Miramar 2", subTitle: "Sandstorm Incoming at Miramar! 2", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 3", subTitle: "Sandstorm Incoming at Miramar! 3", image: "icon", downloaded: true)
        ],
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 4", subTitle: "Sandstorm Incoming at Miramar! 4", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 5", subTitle: "Sandstorm Incoming at Miramar! 5", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 6", subTitle: "Sandstorm Incoming at Miramar! 6", image: "icon", downloaded: true)
        ],
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 7", subTitle: "Sandstorm Incoming at Miramar! 7", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 8", subTitle: "Sandstorm Incoming at Miramar! 8", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 9", subTitle: "Sandstorm Incoming at Miramar! 9", image: "icon", downloaded: true)
        ],
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 10", subTitle: "Sandstorm Incoming at Miramar! 10", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 11", subTitle: "Sandstorm Incoming at Miramar! 11", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 12", subTitle: "Sandstorm Incoming at Miramar! 12", image: "icon", downloaded: true)
        ],
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 13", subTitle: "Sandstorm Incoming at Miramar! 13", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 14", subTitle: "Sandstorm Incoming at Miramar! 14", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 15", subTitle: "Sandstorm Incoming at Miramar! 15", image: "icon", downloaded: true)
        ],
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 16", subTitle: "Sandstorm Incoming at Miramar! 16", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 17", subTitle: "Sandstorm Incoming at Miramar! 17", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 18", subTitle: "Sandstorm Incoming at Miramar! 18", image: "icon", downloaded: true)
        ],
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 19", subTitle: "Sandstorm Incoming at Miramar! 19", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 20", subTitle: "Sandstorm Incoming at Miramar! 20", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 21", subTitle: "Sandstorm Incoming at Miramar! 21", image: "icon", downloaded: true)
        ],
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 22", subTitle: "Sandstorm Incoming at Miramar! 22", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 23", subTitle: "Sandstorm Incoming at Miramar! 23", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 24", subTitle: "Sandstorm Incoming at Miramar! 24", image: "icon", downloaded: true)
        ],
        [
            AppLine(title: "PUBG MOBILE - Mad Miramar 25", subTitle: "Sandstorm Incoming at Miramar! 25", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 26", subTitle: "Sandstorm Incoming at Miramar! 26", image: "icon", downloaded: true),
            AppLine(title: "PUBG MOBILE - Mad Miramar 27", subTitle: "Sandstorm Incoming at Miramar! 27", image: "icon", downloaded: true)
        ],
    ]
}
