# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "musicstreamsync" do
    version "1.0.9"
    sha256 "62acbef052c9eb157ac720411c80420dfcdd320416820b3b581e74ed3d8ca119"

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
  