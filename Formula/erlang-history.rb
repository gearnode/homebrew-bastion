class ErlangHistory < Formula
  desc "Hacks to add shell history to Erlang's shell"
  homepage "https://github.com/ferd/erlang-history"
  url "https://github.com/ferd/erlang-history/archive/master.zip"
  version "5.2"
  sha256 "b184b52ccdc8200fccc18a21f94e429f8b372adfbc7846c7e9598ceaa099288e"
  head "https://github.com/ferd/erlang-history.git"

  depends_on "erlang" => :run

  def install
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test erlang-history`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
