#!bin/bash
echo "\033[1;32mAntes de começar, crie uma nova aba no terminal e cole esse comando para evitar que o computador entre em sleep: \033[0m";
echo "";
echo "caffeinate -dm";
sleep 15;
echo "";
echo "\033[5;32mAUTO INSTALL MAC \033[0m";
echo "";
echo "";

# --------------- Pedir senha do Admin antes --------------- #
echo "\033[5;32mINSIRA SENHA DE ADMIN PARA INICIAR: \033[0m"
sudo -v

# --------------- Manter permissão de admin até o fim do script --------------- #
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

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
sleep 2;
brew tap teamookla/speedtest;
brew update;
brew install --cask anydesk;
brew install --cask adguard;
brew install --cask appcleaner;
brew install bat;
brew install --cask balenaetcher;
brew install cargo-make;
brew install --cask firefox;
brew install exa;
brew install git;
brew install gimp;
brew install --cask i1profiler;
brew install --cask iterm2;
brew install --cask maccy;
brew install npm;
brew install neovim;
brew install node;
brew install --cask notion;
brew install --cask libreoffice;
brew install rclone;
brew install rust;
brew install speedtest --force;
brew install --cask spotify;
brew install --cask syncovery;
brew install python;
brew install --cask teamviewer;
brew install --cask the-unarchiver;
brew install --cask transmission;
brew install --cask veracrypt;
brew install --cask visual-studio-code;
brew install --cask vlc;
brew install --cask vmware-fusion;
brew install yarn;
brew install wget;
brew install yt-dlp;
brew install ffmpeg;

# --------------- Baixar fonte para iTerm2 --------------- #
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

sudo wget -P ~/Downloads https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf;
open Downloads/MesloLGS\ NF\ Regular.ttf;

# Tempo para instalar fonte antes de começar as mudanças
sleep 20;

# --------------- Modificações no Sistema --------------- #

echo ""
echo "\033[5;32mAJUSTES DE SISTEMA \033[0m"
echo "" 
sleep 2;
# MINIMIZAR OS PROGRAMAS NA DOCK
defaults write com.apple.dock mineffect -string suck;

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

# MUDAR PARA LISTA DE USUARIO E SENHA LOGIN INICIAL
sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWFULLNAME -bool true;

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

# DESLIGAR AVISO DE UPGRADE MONTEREY
defaults write com.apple.systempreferences AttentionPrefBundleIDs 0;

# --------------- Restore de arquivos --------------- #

echo ""
echo "\033[5;32mRESTORE DE ARQUIVOS \033[0m"
echo "" 
        # restore de arquivos de preferencias
        sudo rsync -atrP srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.apple.dock.plist ~/Library/Preferences/;
        sudo rsync -atrP srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.hnc.Discord.plist ~/Library/Preferences/;
        sudo rsync -atrP srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.microsoft.VSCode.plist ~/Library/Preferences/;
        sudo rsync -atrP srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.spotify.client.plist ~/Library/Preferences/;
        sudo rsync -atrP srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.googlecode.iterm2.plist ~/Library/Preferences/;

        # restore de arquivos de Application Support
        sudo rsync -atrP srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Library/ApplicationSupport/Dock ~/Library/Application\ Support/;
        sudo rsync -atrP srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Library/ApplicationSupport/Spotify ~/Library/Application\ Support/;
        sudo rsync -atrP srvadmin@192.168.15.10:/home/srvadmin/bifrost/Backups/hvidinhas/Library/ApplicationSupport/iTerm2 ~/Library/Application\ Support/;
# --------------- Organizar programas e atualizar a Dock --------------- #
# RESET LAUCHPAD
defaults write com.apple.dock ResetLaunchPad -bool true;
# REINICIAR DOCK
Killall Dock;

# --------------- Criando links símbolicos --------------- #
sudo ln -s /Users/hvidinhas/Documents/Codes/BackupMac/backupmac.sh /usr/local/bin/backup;
sudo ln -s /Users/hvidinhas/Documents/Codes/Scripts/refresh.sh /usr/local/bin/refresh;
sudo chmod -v 0775 /usr/local/bin/backup;
sudo chmod -v 0775 /usr/local/bin/refresh; 

# --------------- Conclusão do script e reinicio do Mac --------------- #
sleep 2;
echo "";
echo "";
echo "\033[1;32mPROCESSO CONCLUÍDO \033[0m";
echo "";
echo "\033[5;31mREINICIANDO EM 30 segundos. \033[0m";
echo "":
# --------------- Reiniciar Mac --------------- #
sleep 30; sudo reboot
