# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "musicstreamsync" do
    version "1.0.6"
    sha256 "1a152de9c6f4f01e62e855058df54cf1229585e1703bd22748dbc694200f0e7d"

    url "https://github.com/igorcferreira/MusicStreamSync/releases/download/#{version}/MusicStreamSync.zip",
        verified: "github.com/igorcferreira/MusicStreamSync/"
    name "MusicStreamSync"
    desc "App that can be used to sync App Music plays into Last.FM"
    homepage "https://github.com/igorcferreira"

    # Documentation: https://docs.brew.sh/Brew-Livecheck
    livecheck do
        url :url
        strategy :github_latest
    end

    app "MusicStreamSync.app"

    # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
    zap trash: [
        "~/Library/Application Support/MusicStreamSync",
        "~/Library/Logs/MusicStreamSync",
    ]
end
  