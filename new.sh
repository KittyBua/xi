#!/bin/bash

# Variablen definieren
REPO_DIR="CPE-Box-cb0401"
REPO_URL="https://github.com/Kreal-exe/CPE-Box-cb0401.git"
BINARY_NAME="./start.sh"

echo "🔄 Prüfe Repository..."

# 1. Prüfen, ob der Ordner existiert
if [ ! -d "$REPO_DIR" ]; then
    echo "📥 Repository existiert nicht. Klone neu..."
    git clone "$REPO_URL"
    cd "$REPO_DIR" || exit
else
    echo "🔼 Repository existiert. Aktualisiere..."
    cd "$REPO_DIR" || exit
    git pull
fi

# 2. Ausführungsrechte für die Binary sicherstellen
if [ -f "$BINARY_NAME" ]; then
    chmod +x "$BINARY_NAME"
    echo "🚀 Starte $BINARY_NAME..."
    ./"$BINARY_NAME"
else
    echo "❌ Fehler: Die Binärdatei '$BINARY_NAME' wurde nicht gefunden!"
    exit 1
fi
