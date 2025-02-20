#!/bin/bash

echo "🛠️ Bem-vindo ao AutoFixer - Seu assistente de reparo para Linux!"

while true; do
    echo "📌 Escolha uma opção:"
    echo "1️⃣ Corrigir problemas de internet"
    echo "2️⃣ Liberar espaço em disco"
    echo "3️⃣ Reparar pacotes quebrados"
    echo "4️⃣ Atualizar sistema"
    echo "5️⃣ Sair"

    read -p "Digite o número da opção: " opcao

    case $opcao in
        1)
            echo "🌍 Reiniciando a conexão de rede..."
            sudo systemctl restart NetworkManager
            echo "✅ Rede reiniciada!"
            ;;
        2)
            echo "🗑️ Limpando arquivos desnecessários..."
            sudo apt autoremove -y && sudo apt autoclean
            echo "✅ Espaço liberado!"
            ;;
        3)
            echo "🔧 Corrigindo pacotes quebrados..."
            sudo dpkg --configure -a
            sudo apt --fix-broken install -y
            echo "✅ Pacotes reparados!"
            ;;
        4)
            echo "🔄 Atualizando o sistema..."
            sudo apt update && sudo apt upgrade -y
            echo "✅ Sistema atualizado!"
            ;;
        5)
            echo "👋 Saindo do AutoFixer. Até logo!"
            break
            ;;
        *)
            echo "❌ Opção inválida. Tente novamente!"
            ;;
    esac
done
