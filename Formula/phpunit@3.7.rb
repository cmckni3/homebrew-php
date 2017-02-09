require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class PhpunitAT37 < AbstractPhpPhar
  init
  desc "(Legacy) Programmer-oriented testing framework for PHP"
  homepage "http://phpunit.de/manual/3.7/en/"
  url "https://phar.phpunit.de/phpunit-3.7.phar"
  sha256 "641be3df844106dc92e06aa1fb63c7aa0f8e51224946d1432c4c2b5e6bcba1a6"

  bottle do
    cellar :any_skip_relocation
  end

  def phar_file
    "phpunit-#{version}.phar"
  end

  test do
    shell_output("#{bin}/phpunitat37 --version").include?(version)
  end
end
