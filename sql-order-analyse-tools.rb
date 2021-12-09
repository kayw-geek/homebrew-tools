# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SqlOrderAnalyseTools < Formula
  desc "A tool used to check the order of columns in SQL table structure."
  homepage "https://github.com/kayw-geek/sql-order-analyse-tools"
  url "https://github.com/kayw-geek/sql-order-analyse-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7b4b53b6d4b8b674c33b8afbf4b2b6a9c6360f89ec1d3bf9b49dba8b28d2871c"
  license ""

  # depends_on "cmake" => :build
  depends_on :php => "8.0"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test sql-order-analyse-tools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
