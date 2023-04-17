#!/bin/bash

# Mendefinisikan array untuk menyimpan nama file
declare -a files

# Loop untuk membaca file di dalam direktori saat ini
for file in *
do
  # Cek apakah file tersebut memiliki ekstensi .txt
  if [[ $file == *.txt ]]
  then
    # Memasukkan nama file ke dalam array files
    files+=("$file")
  fi
done

# Loop untuk mengolah isi file
for file in "${files[@]}"
do
  # Membaca setiap baris di dalam file
  while read line
  do
    # Cek apakah baris tersebut mengandung kata "important"
    if [[ $line == *"important"* ]]
    then
      # Jika iya, maka print nama file dan baris yang mengandung kata tersebut
      echo "$file: $line"
    fi
  done < "$file"
done
