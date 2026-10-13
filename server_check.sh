#!/bin/bash

# Serveri seisundi kontroll
# Autor: Roman Loboda

echo "================================="
echo " SERVERI SEISUNDI KONTROLL"
echo "================================="
echo "Kuupaev: $(date)"
echo "Server: $(hostname)"
echo

echo "1. Apache2 teenuse kontroll:"
if systemctl is-active --quiet apache2; then
    echo "Apache2: TOOTAB"
else
    echo "Apache2: EI TOOTA"
fi
echo

echo "2. MariaDB teenuse kontroll:"
if systemctl is-active --quiet mariadb; then
    echo "MariaDB: TOOTAB"
else
    echo "MariaDB: EI TOOTA"
fi
echo

echo "3. Kettaruumi kasutus:"
df -h /
echo

echo "4. Serveri tootamisaeg:"
uptime -p
echo

echo "5. Veebiserveri kontroll:"
if curl -fsS -o /dev/null http://localhost; then
    echo "Veebiserver: KATTESAADAV"
else
    echo "Veebiserver: EI OLE KATTESAADAV"
fi

echo
echo "================================="
echo " Kontroll lopetatud"
echo "================================="
