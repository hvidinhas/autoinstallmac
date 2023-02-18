#!bin/bash
echo ""
echo " █████╗ ██╗   ██╗████████╗ ██████╗     ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗         ███╗   ███╗ █████╗  ██████╗";
echo "██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║         ████╗ ████║██╔══██╗██╔════╝";
echo "███████║██║   ██║   ██║   ██║   ██║    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║         ██╔████╔██║███████║██║     ";
echo "██╔══██║██║   ██║   ██║   ██║   ██║    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║         ██║╚██╔╝██║██╔══██║██║     ";
echo "██║  ██║╚██████╔╝   ██║   ╚██████╔╝    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗    ██║ ╚═╝ ██║██║  ██║╚██████╗";
echo "╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝     ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝";
echo "                                                                                                                            ";
echo "\033[1;32mQual local você está?: \033[0m"
echo ""
echo "1 - Home Office"
echo "2 - Remoto"
echo ""
read opcao

# --------------- Pedir senha do Admin antes --------------- #
echo "Insira senha de admin para iniciar:"
sudo -v

# --------------- Manter permissão de admin até o fim do script --------------- #

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "";
echo "██╗  ██╗ ██████╗ ███╗   ███╗███████╗    ██████╗ ██████╗ ███████╗██╗    ██╗";
echo "██║  ██║██╔═══██╗████╗ ████║██╔════╝    ██╔══██╗██╔══██╗██╔════╝██║    ██║";
echo "███████║██║   ██║██╔████╔██║█████╗      ██████╔╝██████╔╝█████╗  ██║ █╗ ██║";
echo "██╔══██║██║   ██║██║╚██╔╝██║██╔══╝      ██╔══██╗██╔══██╗██╔══╝  ██║███╗██║";
echo "██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗    ██████╔╝██║  ██║███████╗╚███╔███╔╝";
echo "╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚══╝╚══╝ ";
echo "                                                                          ";

sleep 2;

# --------------- Instalação Homebrew --------------- #

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";



# --------------- Instalação via Homebrew --------------- #

brew tap teamookla/speedtest;
brew update;
brew install --cask anydesk;
brew install --cask appcleaner;
brew install --cask balenaetcher;
brew install bat;
brew install --cask caffeine;
brew install --cask copyclip;
brew install --cask discord;
brew install exa;
brew install --cask firefox;
brew install gite
brew install --cask inkscape;
brew install --cask i1profiler;
brew install --cask iterm2;
brew install --cask mos;
brew install --cask microsoft-edge;
brew install neovim;
brew install rclone;
brew install speedtest --force;
brew install --cask spotify;
brew install --cask syncovery;
brew install --cask teamviewer;
brew install --cask the-unarchiver;
brew install --cask transmission;
brew install --cask veracrypt;
brew install --cask virtualbox;
brew install --cask visual-studio-code;
brew install --cask vlc;
brew install --cask vmware-fusion;
brew install wget;
brew install --cask whatsapp;

# --------------- Baixar fonte para iTerm2 --------------- #

sudo wget -P ~/Downloads https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf;

open Downloads/MesloLGS\ NF\ Regular.ttf;

# --------------- Modificações no Sistema --------------- #

echo"";
echo " █████╗      ██╗██╗   ██╗███████╗████████╗███████╗    ███████╗██╗███████╗████████╗███████╗███╗   ███╗ █████╗ ";
echo "██╔══██╗     ██║██║   ██║██╔════╝╚══██╔══╝██╔════╝    ██╔════╝██║██╔════╝╚══██╔══╝██╔════╝████╗ ████║██╔══██╗";
echo "███████║     ██║██║   ██║███████╗   ██║   █████╗      ███████╗██║███████╗   ██║   █████╗  ██╔████╔██║███████║";
echo "██╔══██║██   ██║██║   ██║╚════██║   ██║   ██╔══╝      ╚════██║██║╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║██╔══██║";
echo "██║  ██║╚█████╔╝╚██████╔╝███████║   ██║   ███████╗    ███████║██║███████║   ██║   ███████╗██║ ╚═╝ ██║██║  ██║";
echo "╚═╝  ╚═╝ ╚════╝  ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝    ╚══════╝╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝";
echo "                                                                                                             ";

# Tempo para instalar fonte antes de começar as mudanças
sleep 30;


# MINIMIZAR OS PROGRAMAS NA DOCK
defaults write com.apple.dock mineffect -string suck;


# MODIFICAR O NOME DO COMPUTADOR
sudo scutil --set ComputerName "CARA DA TI" && \;
sudo scutil --set HostName "CARA DA TI" && \;
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "CARA DA TI";


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


# COPIA FONT PAR ITERM2
rsync -atrP /Volumes/Bifrost/Backups/Arquivos\ e\ Bookmarks/SourceCodePro+Powerline+Awesome+Regular.ttf ~/Library/Fonts/


# --------------- Restore de arquivos --------------- #
echo ""
echo "██████╗ ███████╗███████╗████████╗ ██████╗ ██████╗ ███████╗     █████╗ ██████╗  ██████╗ ██╗   ██╗██╗██╗   ██╗ ██████╗ ███████╗";
echo "██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝    ██╔══██╗██╔══██╗██╔═══██╗██║   ██║██║██║   ██║██╔═══██╗██╔════╝";
echo "██████╔╝█████╗  ███████╗   ██║   ██║   ██║██████╔╝█████╗      ███████║██████╔╝██║   ██║██║   ██║██║██║   ██║██║   ██║███████╗";
echo "██╔══██╗██╔══╝  ╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝      ██╔══██║██╔══██╗██║▄▄ ██║██║   ██║██║╚██╗ ██╔╝██║   ██║╚════██║";
echo "██║  ██║███████╗███████║   ██║   ╚██████╔╝██║  ██║███████╗    ██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████╔╝ ╚██████╔╝███████║";
echo "╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═╝ ╚══▀▀═╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═════╝ ╚══════╝";
echo "";

sleep 2;

case $opcao in
    1)
        if [[ $opcao == "1" ]]; then
	echo "\033[1;32mBackup Local: \033[0m"
	# --- Inserir opção de restore local#
	else
            echo "Opção inválida!"
	fi
        ;;
     2)
          if [[ $opcao="2" ]]; then
	echo "\033[1;32mBackup Remoto: \033[0m"
    	# --- Inserir opção de restore remoto#
	else
            echo "Opção inválida!"
        fi
        ;;
    *)
        echo "\033[1;31m OPÇÃO INVÁLIDA! Escolha entre HOME OFFICE ou EXTERNO. \033[0m"
        ;;
	esac


# restore arquivos de usuário
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Desktop/ ~/Desktop/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Documents/ ~/Documents/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Downloads/ ~/Downloads/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Movies/ ~/Movies/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Music/ ~/Music/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Pictures/ ~/Pictures/;

# Mantendo uma linha do modo antigo para refazer se necessário
#sudo rsync -atrP /Volumes/Bifrost/Backups/hvidinhas/Desktop/ /Users/hvidinhas/Desktop/;

# restore de arquivos de preferencias
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.apple.dock.plist ~/Library/Preferences/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.hnc.Discord.plist ~/Library/Preferences/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.microsoft.VSCode.plist ~/Library/Preferences/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.spotify.client.plist ~/Library/Preferences/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Library/Preferences/com.googlecode.iterm2.plist ~/Library/Preferences/;

# restore de arquivos de Application Support
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Library/ApplicationSupport/Dock ~/Library/Application\ Support/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Library/ApplicationSupport/Spotify ~/Library/Application\ Support/;
sudo rsync -atrP srvadmin@bifrostsrv:/home/srvadmin/bifrost/Backups/hvidinhas/Library/ApplicationSupport/iTerm2 ~/Library/Application\ Support/;


# --------------- Organizar programas e atualizar a Dock --------------- #

# RESET LAUCHPAD
defaults write com.apple.dock ResetLaunchPad -bool true;


# REINICIAR DOCK
Killall Dock;

# --------------- Criando links símbolicos --------------- #


sudo ln -s /Users/hvidinhas/Documents/Codes/BackupMac/backupmac.sh /usr/local/bin/backup;

sudo chown -v hvidinhas:staff /usr/local/bin/backup;

# --------------- Atualização de Sistema --------------- #

sudo softwareupdate -ia;

# --------------- Oh-My-ZSH --------------- #
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

echo ""
echo " ██████╗ ██████╗ ███╗   ██╗ ██████╗██╗     ██╗   ██╗██╗██████╗  ██████╗ ";
echo "██╔════╝██╔═══██╗████╗  ██║██╔════╝██║     ██║   ██║██║██╔══██╗██╔═══██╗";
echo "██║     ██║   ██║██╔██╗ ██║██║     ██║     ██║   ██║██║██║  ██║██║   ██║";
echo "██║     ██║   ██║██║╚██╗██║██║     ██║     ██║   ██║██║██║  ██║██║   ██║";
echo "╚██████╗╚██████╔╝██║ ╚████║╚██████╗███████╗╚██████╔╝██║██████╔╝╚██████╔╝";
echo " ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚═════╝ ╚═╝╚═════╝  ╚═════╝ ";
echo "                                                                        ";
echo ""
echo "REINICIANDO EM 2MIN"
echo ""

# --------------- Reiniciar Mac --------------- #
sleep 120; sudo reboot


