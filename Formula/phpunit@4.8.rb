require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class PhpunitAT48 < AbstractPhpPhar
  init
  desc "(Legacy) Programmer-oriented testing framework for PHP"
  homepage "http://phpunit.de/manual/4.8/en/"
  url "https://phar.phpunit.de/phpunit-4.8.phar"
  sha256 "ab8bc3017a64cf75a2112f5e089a1d5b0c4cc2116556d60c1af5e3f584e85c5e"

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
