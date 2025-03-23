# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "musicstreamsync" do
    version "1.0.3"
    sha256 "e2ad7c4112d26fd3d808fd5c983073e2ef9cef2a49b9b8cdfcb5d2e51d8b34a1"

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
  