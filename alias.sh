#!/bin/bash

# Kullanıcıdan alias adını al
read -p "Lütfen alias adını girin: " alias_name

# Kullanıcıdan alias komutunu al
read -p "Lütfen alias komutunu girin: " alias_command

# Alias'ı .bashrc dosyasına yönetici haklarıyla ekle
echo "alias $alias_name='$alias_command'" | sudo tee -a ~/.bashrc > /dev/null

# Bilgilendirme mesajını dikkat çekici hale getirme
echo -e "\n\033[1;32m###########################################"
echo -e "#   Alias başarıyla eklendi: $alias_name='$alias_command'   #"
echo -e "###########################################\033[0m"
echo -e "\033[1;33m⚠️  Komutun Geçerli Olabilmesi İçin Terminalinizi Kapatın ve Tekrar Açıp Eklediğiniz Kodun Adını Yazın. ⚠️\033[0m\n"

