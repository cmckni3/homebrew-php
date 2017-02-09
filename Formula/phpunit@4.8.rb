require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class PhpunitAT48 < AbstractPhpPhar
  init
  desc "(Legacy) Programmer-oriented testing framework for PHP"
  homepage "http://phpunit.de/manual/4.8/en/"
  url "https://phar.phpunit.de/phpunit-4.8.phar"
  sha256 "713295ba89db9e662bf2cf5cccdb5d0791bdd5a043706505d47be08d369eda3f"

  bottle do
    cellar :any_skip_relocation
  end

  def phar_file
    "phpunit-#{version}.phar"
  end

  test do
    shell_output("#{bin}/phpunitat48 --version").include?(version)
  end
end
