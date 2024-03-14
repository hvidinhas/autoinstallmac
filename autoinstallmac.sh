#!bin/bash
echo "\033[5;32mAUTO INSTALL MAC \033[0m";
echo "";
echo "";

echo "Abra uma outra aba e digite o comando";
echo "";
echo "caffeinate -d";

sleep 5;

# --------------- Pedir senha do Admin antes --------------- #
echo "\033[5;32mINSIRA SENHA DE ADMIN PARA INICIAR: \033[0m"
sudo -v

# --------------- Manter permissão de admin até o fim do script --------------- #
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# --------------- Cópia da pasta documentos --------------- #
echo "\033[5;32mCOPIANDO PASTA DOCUMENTS \033[0m"
scp -pr srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Documents ~/

# --------------- Instalação Homebrew --------------- #
echo ""
echo "\033[5;32mHOME BREW \033[0m"
echo ""
sleep 2;
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";

# --------------- Instalação via Homebrew --------------- #
echo ""
echo "\033[5;32mINSTALL APPS HOME BREW \033[0m"
echo ""
sleep 1;
brew tap teamookla/speedtest;
brew update;
brew install --cask adobe-creative-cloud;
brew install --cask appcleaner;
brew install bat;
brew install --cask balenaetcher;
brew install cargo-make;
brew install --cask google-chrome;
brew install git;
brew install --cask iterm2;
brew install --cask maccy;
brew install npm;
brew install neovim;
brew install node;
brew install rclone;
brew install rust;
brew install --cask rectangle;
brew install speedtest --force;
brew install --cask syncovery;
brew install python;
brew install --cask qbittorrent;
brew install --cask teamviewer;
brew install --cask the-unarchiver;
brew install --cask veracrypt;
brew install --cask vlc;
brew install --cask vmware-fusion;
brew install yarn;
brew install wget;
brew install --cask whatsapp;
brew install --cask zed;

# ------ Instalação da versão específica do i1Profiler ------ #

sudo installer -pkg ~/Documents/Instaladores/i1Profiler_v3.7.1.pkg -target /Applications

# ----------------- Modificações no Sistema ---------------- #

echo ""
echo "\033[5;32mAJUSTES DE SISTEMA \033[0m"
echo ""
sleep 2;

# MODIFICAR O NOME DO COMPUTADOR
sudo scutil --set ComputerName "CARA DA TI";

# LIGAR TAP TO CLICK TRACKPAD
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true;
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true;
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1;
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1;

# HABILITAR APP EXPOSÉ TRACKPAD
defaults write com.apple.dock mcx-expose-disabled -bool FALSE;

# HABILITAR SECONDARY CLICK NO MOUSE
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton;

# HABILITAR PORCENTAGEM BATERIA
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool true;

# DESABILITAR CORRECAO AUTOMATICA DE TEXTO
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false;

# DESABILITAR CAPITALIZACAO AUTOMATICA
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false;

# DESABITLIZAR PONTO FINAL DIGITANDO DOIS ESPACOS SEGUIDOS
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false;

# COLOCAR O DISPLAY EM SLEEP APOS 2 MINUTOS
sudo pmset -a displaysleep 2;

# FIREWALL LIGADO
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on;

# FINDER - ICONES DE SERVIDORES E DRIVERS EXTERNOS
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true;
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true;
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true;

# PESQUISA SPOTLIGHT NA PASTA CORRENTE
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf";

# DESLIGAR VERFICACAO DE IMAGEM DMG
defaults write com.apple.frameworks.diskimages skip-verify -bool true;
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true;
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true;

# MOSTRAR CAMINHO NA JANELA DO FINDER
defaults write com.apple.finder ShowPathbar -bool true;

# DESABILITAR AVISO DE REMOCAO DE ARQUIVO DO ICLOUD
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false;

# ABRIR O TEXTEDIT JA COM UM ARQUIVO NOVO
defaults write com.apple.TextEdit NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false;


# --------------- Criando links símbolicos --------------- #
sudo ln -s ~/Documents/Codes/Backup-Mac/backupmac.sh /usr/local/bin/backup;
sudo ln -s ~/Documents/Codes/Scripts/refresh.sh /usr/local/bin/refresh;
sudo ln -s ~/Documents/Codes/Scripts/legenda.sh /usr/local/bin/legenda;
sudo ln -s ~/Documents/Codes/Scripts/limpezaCanon.sh /usr/local/bin/limpaSD;
sudo chmod -v 0775 /usr/local/bin/backup;
sudo chmod -v 0775 /usr/local/bin/refresh;
sudo chmod -v 0775 /usr/local/bin/legenda;
sudo chmod -v 0775 /usr/local/bin/limpaSD;

# ------------- Copiando preferencias ---------------------- #
cp -rf ~/Documents/Arquivos/Application\ Support/ ~/Library/Application\ Support;
cp -rf ~/Documents/Arquivos/Preferences/ ~/Library/Preferences;

# --------------- Instalando Oh My ZSH --------------- #
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

# --------------- Instalando zsh-autosuggestions --------------- #
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions;

# --------------- Instalando Powerlevel10k --------------- #
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k;

# --------------- Copiando arquivo .zshrc para raiz --------------- #
cp -f ~/Documents/Arquivos/.zshrc ~;

# --------------- Instalando EXA via cargo --------------- #
cargo install exa;

# --------------- Copiando arquivo exa para PATH --------------- #
sudo cp -f ~/Documents/Arquivos/exa /etc/paths.d

# --------------- Baixando MesloLGS --------------- #
wget -P ~/Downloads https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf;
open ~/Downloads/MesloLGS\ NF\ Regular.ttf;

# --------------- Conclusão do script e reinicio do Mac --------------- #
sleep 15;
echo "";
echo "\033[5;32mPROCESSO CONCLUÍDO \033[0m";
echo "";
echo "\033[5;32mREINICIANDO EM 15 segundos. \033[0m";
echo "":
# --------------- Reiniciar Mac --------------- #
sleep 15; sudo reboot
