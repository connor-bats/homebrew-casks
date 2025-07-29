cask "tuxguitar" do
  version "1.5.6"
  sha256 "fa53ebd78fa507bbb2a654e17efb6913957cf5eb8cceeb6da3423c82ff6e18ff"

  url "https://github.com/helge17/tuxguitar/releases/download/#{version}/tuxguitar-#{version}-macosx-swt-cocoa-x86_64.app.tar.gz",
      verified: "github.com/helge17/tuxguitar/"
  name "TuxGuitar"
  desc "Multitrack guitar tablature editor and player"
  homepage "https://www.tuxguitar.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  app "tuxguitar-#{version}-macosx-swt-cocoa-x86_64.app"

  zap trash: "~/Library/Application Support/tuxguitar"
end
