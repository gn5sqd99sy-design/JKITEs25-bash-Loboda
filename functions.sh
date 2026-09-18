#!/bin/bash

# Autor: Roman Loboda
# Kuupäev: 18.09.2026
# Versioon: 1.0
# Kirjeldus: Funktsioonide teek süsteemiinfo kuvamiseks.

# Kuvab kasutajanime
naita_kasutaja() {
    echo "Kasutaja: $(whoami)"
}

# Kuvab kuupäeva ja kellaaega
naita_aeg() {
    echo "Kuupäev ja kellaaeg: $(date)"
}

# Kuvab kettaruumi kasutuse
naita_kettaruum() {
    echo "Kettaruumi kasutus:"
    df -h /
}

# Otsib kaustast .txt failid
otsi_txt_failid() {
    for fail in ./*.txt
    do
        if [ -f "$fail" ]; then
            echo "Leitud tekstifail: $(basename "$fail")"
        fi
    done
}

# Kontrollib, kas kasutaja on root
kontrolli_root() {
    if [ "$USER" = "root" ]; then
        echo "Kasutaja on root."
    else
        echo "Kasutaja ei ole root."
    fi
}
