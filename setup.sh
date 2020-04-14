sudo apt install build-essential

# Setup ruby
sudo apt install ruby ruby-dev

# Setup basic latex
sudo apt -qq -y install cmake libpango1.0-dev bison flex libffi-dev libxml2-dev libgdk-pixbuf2.0-dev libcairo2-dev libpango1.0-dev fonts-lyx texlive-latex-base

# Setup pdftk
wget http://mirrors.edge.kernel.org/ubuntu/pool/universe/p/pdftk-java/pdftk-java_3.0.2-2_all.deb
sudo chmod +x pdftk-java_3.0.2-2_all.deb
sudo dpkg -i pdftk-java_3.0.2-2_all.deb
sudo apt install -f
sudo dpkg -i pdftk-java_3.0.2-2_all.deb

# Setup gems
sudo gem install asciidoctor-pdf --pre
sudo gem install asciidoctor-diagram
sudo gem install rouge
sudo gem install prawn
sudo gem install prawn-table
sudo gem install asciidoctor-mathematical --pre --no-ri --no-rdoc
