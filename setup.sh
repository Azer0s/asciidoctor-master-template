sudo apt install build-essential

# Setup ruby
sudo apt install ruby

# Setup basic latex
sudo apt -y install cmake
sudo apt install libpango1.0-dev
sudo apt -qq -y install bison flex libffi-dev libxml2-dev libgdk-pixbuf2.0-dev libcairo2-dev libpango1.0-dev fonts-lyx
sudo apt install texlive-latex-base

# Setup pdftk
wget http://mirrors.edge.kernel.org/ubuntu/pool/universe/p/pdftk-java/pdftk-java_3.0.2-2_all.deb
sudo chmod +x pdftk-java_3.0.2-2_all.deb
sudo dpkg -i pdftk-java_3.0.2-2_all.deb
sudo apt install -f
sudo dpkg -i pdftk-java_3.0.2-2_all.deb

# Setup gems
bundle install
