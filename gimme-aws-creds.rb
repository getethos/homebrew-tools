class GimmeAwsCreds < Formula
  include Language::Python::Virtualenv

  desc "Acquire AWS credentials using Okta"
  homepage "https://github.com/Nike-Inc/gimme-aws-creds"
  url "https://github.com/Nike-Inc/gimme-aws-creds/archive/v2.2.1.tar.gz"
  sha256 "ee4809b5cc91c6f63534125a90cab9e8feef2c6a7902d3bbac727cec8309527e"
  head "https://github.com/Nike-Inc/gimme-aws-creds.git"

  # example: https://raw.githubusercontent.com/Homebrew/linuxbrew-core/master/Formula/aws-google-auth.rb

  # bottle do
  #   cellar :any
  #   sha256 "44f635f9ed0028f17542e73f5318040a5848c74ccf54c5aefaef599046674991" => :catalina
  #   sha256 "7874bf9cf14dbec7ec8ba2cc1af8e22c72ff693212bcc7b7aa0b0d32a756fec2" => :mojave
  #   sha256 "fb7cf1b3aa3897922c22f78e14b3ee98a830ad8f71652740c50c9775511fb8d8" => :high_sierra
  #   sha256 "4151db65c6bb6e0cb721ecd451b04af50610a3b321f89959cd0defef111dc31d" => :x86_64_linux
  # end

  depends_on "freetype"
  depends_on "jpeg"
  depends_on "python"
  depends_on "pkg-config" => :build unless OS.mac?
  uses_from_macos "libffi"
  uses_from_macos "libxml2"
  uses_from_macos "libxslt"

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/fb/9e/2e236603b058daa6820193d4d95f4dcfbbbd0d3c709bec8c6ef1b1902501/soupsieve-1.9.1.tar.gz#sha256=b20eff5e564529711544066d7dc0f7661df41232ae263619dede5059799cdfca"
    sha256 "b20eff5e564529711544066d7dc0f7661df41232ae263619dede5059799cdfca"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/80/f2/f6aca7f1b209bb9a7ef069d68813b091c8c3620642b568dac4eb0e507748/beautifulsoup4-4.7.1.tar.gz#sha256=945065979fb8529dd2f37dbb58f00b661bdbcbebf954f93b32fdf5263ef35348"
    sha256 "945065979fb8529dd2f37dbb58f00b661bdbcbebf954f93b32fdf5263ef35348"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/81/1a/6b2971adc1bca55b9a53ed1efa372acff7e8b9913982a396f3fa046efaf8/Pillow-6.0.0.tar.gz#sha256=809c0a2ce9032cbcd7b5313f71af4bdc5c8c771cb86eb7559afd954cab82ebb5"
    sha256 "809c0a2ce9032cbcd7b5313f71af4bdc5c8c771cb86eb7559afd954cab82ebb5"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/05/fd/d62c2944d9df894b07eaa7430decc4c80977e644922a85fbdec337d6af82/docutils-0.14rc1.tar.gz#sha256=7ee93a6fbab0f46bdda4d94384de40a04bbbbb53dbd019ce0fbbbfed22f6589a"
    sha256 "7ee93a6fbab0f46bdda4d94384de40a04bbbbb53dbd019ce0fbbbfed22f6589a"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/2c/30/f0162d3d83e398c7a3b70c91eef61d409dea205fb4dc2b47d335f429de32/jmespath-0.9.4.tar.gz#sha256=bde2aef6f44302dfb30320115b17d030798de8c4110e28d5cf6cf91a7a31074c"
    sha256 "bde2aef6f44302dfb30320115b17d030798de8c4110e28d5cf6cf91a7a31074c"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz#sha256=d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ad/99/5b2e99737edeb28c71bcbec5b5dda19d0d9ef3ca3e92e3e925e7c0bb364c/python-dateutil-2.8.0.tar.gz#sha256=c89805f6f4d64db21ed966fda138f8a5ed7a4fdbc1a8ee329ce1b74e3c74da9e"
    sha256 "c89805f6f4d64db21ed966fda138f8a5ed7a4fdbc1a8ee329ce1b74e3c74da9e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/4c/13/2386233f7ee40aa8444b47f7463338f3cbdf00c316627558784e3f542f07/urllib3-1.25.3.tar.gz#sha256=dbe59173209418ae49d485b87d1681aefa36252ee85884c31346debd19463232"
    sha256 "dbe59173209418ae49d485b87d1681aefa36252ee85884c31346debd19463232"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/c6/13/28d1a23cd1468bb8ab057044385a80c259df04ad8ffd2d973ac11146b85c/botocore-1.12.155.tar.gz#sha256=e5f5ea3edd16d2846ca984fd57d31ad98526020fcea630f47bb00a11e61957b9"
    sha256 "e5f5ea3edd16d2846ca984fd57d31ad98526020fcea630f47bb00a11e61957b9"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/43/22/37b9aaf3969628a25b3b921612139ebc5b8dc26cabb9873c356e1ad2ce2e/s3transfer-0.2.0.tar.gz#sha256=f23d5cb7d862b104401d9021fc82e5fa0e0cf57b7660a1331425aab0c691d021"
    sha256 "f23d5cb7d862b104401d9021fc82e5fa0e0cf57b7660a1331425aab0c691d021"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/b4/a0/fd1efbb9e882426e7ba53ba3c73da63466bbee78b6936887b9951a1c415c/boto3-1.9.155.tar.gz#sha256=9c0233b879996f8232c35e903d07017ffad97b2dadd70758d9d28ef86aa9ed13"
    sha256 "9c0233b879996f8232c35e903d07017ffad97b2dadd70758d9d28ef86aa9ed13"
  end

  resource "configparser" do
    url "https://files.pythonhosted.org/packages/e2/1c/83fd53748d8245cb9a3399f705c251d3fc0ce7df04450aac1cfc49dd6a0f/configparser-3.7.4.tar.gz#sha256=da60d0014fd8c55eb48c1c5354352e363e2d30bbf7057e5e171a468390184c75"
    sha256 "da60d0014fd8c55eb48c1c5354352e363e2d30bbf7057e5e171a468390184c75"
  end

  resource "entrypoints" do
    url "https://files.pythonhosted.org/packages/b4/ef/063484f1f9ba3081e920ec9972c96664e2edb9fdc3d8669b0e3b8fc0ad7c/entrypoints-0.3.tar.gz#sha256=c70dd71abe5a8c85e55e12c19bd91ccfeec11a6e99044204511f9ed547d48451"
    sha256 "c70dd71abe5a8c85e55e12c19bd91ccfeec11a6e99044204511f9ed547d48451"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/69/91/5a9d1769ed7e25083649e87977686423aebed3516112557f4cafd73c9f95/keyring-19.0.2.tar.gz#sha256=1b74595f7439e4581a11d4f9a12790ac34addce64ca389c86272ff465f5e0b90"
    sha256 "1b74595f7439e4581a11d4f9a12790ac34addce64ca389c86272ff465f5e0b90"
  end

  resource "keyrings.alt" do
    url "https://files.pythonhosted.org/packages/62/a4/cfa759dc4a5113d653a1dfdbd61011e88fe7abb7a476c8ca10f37e2a789c/keyrings.alt-3.1.1.tar.gz#sha256=0bc7b75c7e710a3dd7bc4c3841c71467b24ccbce1b85efb2586bdf0c4713f751"
    sha256 "0bc7b75c7e710a3dd7bc4c3841c71467b24ccbce1b85efb2586bdf0c4713f751"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/7d/29/174d70f303016c58bd790c6c86e6e86a9d18239fac314d55a9b7be501943/lxml-4.3.3.tar.gz#sha256=4a03dd682f8e35a10234904e0b9508d705ff98cf962c5851ed052e9340df3d90"
    sha256 "4a03dd682f8e35a10234904e0b9508d705ff98cf962c5851ed052e9340df3d90"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/06/b8/d1ea38513c22e8c906275d135818fee16ad8495985956a9b7e2bb21942a1/certifi-2019.3.9.tar.gz#sha256=b26104d6835d1f5e49452a26eb2ff87fe7090b89dfcaee5ea2212697e1e1d7ae"
    sha256 "b26104d6835d1f5e49452a26eb2ff87fe7090b89dfcaee5ea2212697e1e1d7ae"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz#sha256=84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz#sha256=c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
    sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/01/62/ddcf76d1d19885e8579acb1b1df26a852b03472c0e46d2b959a714c90608/requests-2.22.0.tar.gz#sha256=11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4"
    sha256 "11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/c2/fd/202954b3f0eb896c53b7b6f07390851b1fd2ca84aa95880d7ae4f434c4ac/tabulate-0.8.3.tar.gz#sha256=8af07a39377cee1103a5c8b3330a421c2d99b9141e9cc5ddd2e3263fea416943"
    sha256 "8af07a39377cee1103a5c8b3330a421c2d99b9141e9cc5ddd2e3263fea416943"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/df/d5/3e3ff673e8f3096921b3f1b79ce04b832e0100b4741573154b72b756a681/pytz-2019.1.tar.gz#sha256=d747dd3d23d77ef44c6a3526e274af6efeb0a6f1afd5a69ba4d5be4098c8e141"
    sha256 "d747dd3d23d77ef44c6a3526e274af6efeb0a6f1afd5a69ba4d5be4098c8e141"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/cb/89/e3687d3ed99bc882793f82634e9824e62499fdfdc4b1ae39e211c5b05017/tzlocal-1.5.1.tar.gz#sha256=4ebeb848845ac898da6519b9b31879cf13b6626f7184c496037b818e238f2c4e"
    sha256 "4ebeb848845ac898da6519b9b31879cf13b6626f7184c496037b818e238f2c4e"
  end

  unless OS.mac?
    resource "pycparser" do
      url "https://files.pythonhosted.org/packages/68/9e/49196946aee219aead1290e00d1e7fdeab8567783e83e1b9ab5585e6206a/pycparser-2.19.tar.gz#sha256=a988718abfad80b6b157acce7bf130a30876d27603738ac39f140993246b25b3"
      sha256 "a988718abfad80b6b157acce7bf130a30876d27603738ac39f140993246b25b3"
    end

    resource "cffi" do
      url "https://files.pythonhosted.org/packages/2d/bf/960e5a422db3ac1a5e612cb35ca436c3fc985ed4b7ed13a1b4879006f450/cffi-1.13.2.tar.gz#sha256=599a1e8ff057ac530c9ad1778293c665cb81a791421f46922d80a86473c13346"
      sha256 "599a1e8ff057ac530c9ad1778293c665cb81a791421f46922d80a86473c13346"
    end

    resource "cryptography" do
      url "https://files.pythonhosted.org/packages/be/60/da377e1bed002716fb2d5d1d1cab720f298cb33ecff7bf7adea72788e4e4/cryptography-2.8.tar.gz#sha256=3cda1f0ed8747339bbdf71b9f38ca74c7b592f24f65cdb3ab3765e4b02871651"
      sha256 "3cda1f0ed8747339bbdf71b9f38ca74c7b592f24f65cdb3ab3765e4b02871651"
    end

    resource "jeepney" do
      url "https://files.pythonhosted.org/packages/3a/b6/28c665d48e48b5b7e6a26853d6b4595c4031de7798a6c4985b14492ebd14/jeepney-0.4.1.tar.gz#sha256=13806f91a96e9b2623fd2a81b950d763ee471454aafd9eb6d75dbe7afce428fb"
      sha256 "13806f91a96e9b2623fd2a81b950d763ee471454aafd9eb6d75dbe7afce428fb"
    end

    resource "secretstorage" do
      url "https://files.pythonhosted.org/packages/a6/89/df343dbc2957a317127e7ff2983230dc5336273be34f2e1911519d85aeb5/SecretStorage-3.1.1.tar.gz#sha256=20c797ae48a4419f66f8d28fc221623f11fc45b6828f96bdb1ad9990acb59f92"
      sha256 "20c797ae48a4419f66f8d28fc221623f11fc45b6828f96bdb1ad9990acb59f92"
    end

    resource "fido2" do
      url "https://files.pythonhosted.org/packages/53/35/cc293d0157ff7a9836ba36e45bd99a4a98883fd3f2dc451e463510764f6c/fido2-0.7.0.tar.gz"
      sha256 "47b02852780849bb4bb698b9727d61970ee77a83eb25715fe7c6235ebd648d87"
    end
  
    resource "okta" do
      url "https://files.pythonhosted.org/packages/e8/2a/1c1bae7ed0b429cfe04caaff4ec06383669b651b315328b15f87ab67d347/okta-0.0.4.tar.gz"
      sha256 "53e792c68d3684ff4140b4cb1c02af3821090368f8110fde54c0bdb638449332"
    end
  end

  def install
    if OS.mac?
      # Fix "ld: file not found: /usr/lib/system/libsystem_darwin.dylib" for lxml
      ENV["SDKROOT"] = MacOS.sdk_path if MacOS.version == :sierra
    end

    venv = virtualenv_create(libexec, "python3")

    resource("entrypoints").stage do
      # Without removing this file, `pip` will ignore the `setup.py` file and
      # attempt to download the [`flit`](https://github.com/takluyver/flit)
      # build system.
      rm_f "pyproject.toml"

      venv.pip_install Pathname.pwd
    end

    resource("Pillow").stage do
      inreplace "setup.py" do |s|
        if OS.mac?
          sdkprefix = MacOS.sdk_path_if_needed ? MacOS.sdk_path : ""
        end
        s.gsub! "openjpeg.h", "probably_not_a_header_called_this_eh.h"
        if OS.mac?
          s.gsub! "ZLIB_ROOT = None", "ZLIB_ROOT = ('#{sdkprefix}/usr/lib', '#{sdkprefix}/usr/include')"
        else
          s.gsub! "ZLIB_ROOT = None", "ZLIB_ROOT = ('#{Formula["zlib"].opt_prefix}/lib', '#{Formula["zlib"].opt_prefix}/include')"
        end
        s.gsub! "JPEG_ROOT = None", "JPEG_ROOT = ('#{Formula["jpeg"].opt_prefix}/lib', '#{Formula["jpeg"].opt_prefix}/include')"
        s.gsub! "FREETYPE_ROOT = None", "FREETYPE_ROOT = ('#{Formula["freetype"].opt_prefix}/lib', '#{Formula["freetype"].opt_prefix}/include')"
      end

      # avoid triggering "helpful" distutils code that doesn't recognize Xcode 7 .tbd stubs
      ENV.append "CFLAGS", "-I#{MacOS.sdk_path}/System/Library/Frameworks/Tk.framework/Versions/8.5/Headers" if OS.mac? && !MacOS::CLT.installed?
      venv.pip_install Pathname.pwd
    end

    res = resources.map(&:name).to_set - ["entrypoints", "Pillow"]

    res.each do |r|
      venv.pip_install resource(r)
    end

    venv.pip_install_and_link buildpath
  end

  # test do
  #   assert_match /Invalid username or password/, shell_output("echo 'foobar' | #{bin}/aws-google-auth -u foo -I C01111111 -S 111111111111 2>&1", 1)
  # end
end
