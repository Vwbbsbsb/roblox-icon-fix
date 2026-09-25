#!/bin/bash

echo ""
echo "============================================="
echo "   МУЖИК ЮРИСТ — Roblox Hosts Patcher"
echo "============================================="
echo ""

HOSTS="/etc/hosts"

# Проверка прав root
if [ "$EUID" -ne 0 ]; then
    echo "[ОШИБКА] Запусти скрипт с sudo:"
    echo "sudo bash $0"
    exit 1
fi

# Проверяем, не добавлен ли уже блок
if grep -q "ROBLOX CDN FIX (добавлено Мужик Юрист)" "$HOSTS"; then
    echo "Блок Roblox уже есть в hosts. Ничего не добавляю."
    exit 0
fi

echo "Добавляю записи в самый низ hosts..."
echo ""

cat << 'EOF' >> "$HOSTS"

# ============================================================
# ========== ROBLOX CDN FIX (добавлено Мужик Юрист) ==========
# ============================================================
# ВНИМАНИЕ: Это может сломать Docker, VPN и другие программы,
# которые используют hosts.
# ============================================================

18.65.39.105 tr.rbxcdn.com
18.64.211.78 tr.rbxcdn.com
18.64.211.88 tr.rbxcdn.com
18.64.211.103 tr.rbxcdn.com
18.64.211.77 tr.rbxcdn.com
18.65.39.105 t0.rbxcdn.com
18.65.39.105 t1.rbxcdn.com
18.65.39.105 t2.rbxcdn.com
18.65.39.105 t3.rbxcdn.com
18.65.39.105 t4.rbxcdn.com
18.65.39.105 t5.rbxcdn.com
18.65.39.105 t6.rbxcdn.com
18.65.39.105 t7.rbxcdn.com
18.64.211.78 t0.rbxcdn.com
18.64.211.78 t1.rbxcdn.com
18.64.211.78 t2.rbxcdn.com
18.64.211.78 t3.rbxcdn.com
18.64.211.78 t4.rbxcdn.com
18.64.211.78 t5.rbxcdn.com
18.64.211.78 t6.rbxcdn.com
18.64.211.78 t7.rbxcdn.com
18.64.211.88 t0.rbxcdn.com
18.64.211.88 t1.rbxcdn.com
18.64.211.88 t2.rbxcdn.com
18.64.211.88 t3.rbxcdn.com
18.64.211.88 t4.rbxcdn.com
18.64.211.88 t5.rbxcdn.com
18.64.211.88 t6.rbxcdn.com
18.64.211.88 t7.rbxcdn.com
18.65.39.105 c0.rbxcdn.com
18.65.39.105 c1.rbxcdn.com
18.65.39.105 c2.rbxcdn.com
18.65.39.105 c3.rbxcdn.com
18.65.39.105 c4.rbxcdn.com
18.65.39.105 c5.rbxcdn.com
18.65.39.105 c6.rbxcdn.com
18.65.39.105 c7.rbxcdn.com
18.64.211.78 c0.rbxcdn.com
18.64.211.78 c1.rbxcdn.com
18.64.211.78 c2.rbxcdn.com
18.64.211.78 c3.rbxcdn.com
18.64.211.78 c4.rbxcdn.com
18.64.211.78 c5.rbxcdn.com
18.64.211.78 c6.rbxcdn.com
18.64.211.78 c7.rbxcdn.com
18.64.211.88 c0.rbxcdn.com
18.64.211.88 c1.rbxcdn.com
18.64.211.88 c2.rbxcdn.com
18.64.211.88 c3.rbxcdn.com
18.64.211.88 c4.rbxcdn.com
18.64.211.88 c5.rbxcdn.com
18.64.211.88 c6.rbxcdn.com
18.64.211.88 c7.rbxcdn.com
18.65.39.105 images.rbxcdn.com
18.65.39.105 static.rbxcdn.com
18.65.39.105 js.rbxcdn.com
18.65.39.105 css.rbxcdn.com
18.65.39.105 apis.rbxcdn.com
18.65.39.105 setup.rbxcdn.com
18.64.211.78 images.rbxcdn.com
18.64.211.78 static.rbxcdn.com
18.64.211.78 js.rbxcdn.com
18.64.211.78 css.rbxcdn.com
18.64.211.78 apis.rbxcdn.com
18.64.211.78 setup.rbxcdn.com
18.64.211.88 images.rbxcdn.com
18.64.211.88 static.rbxcdn.com
18.64.211.88 js.rbxcdn.com
18.64.211.88 css.rbxcdn.com
18.64.211.88 apis.rbxcdn.com
18.64.211.88 setup.rbxcdn.com
18.65.39.105 www.rbxcdn.com
18.65.39.105 rbxcdn.com
18.64.211.78 www.rbxcdn.com
18.64.211.78 rbxcdn.com
18.64.211.88 www.rbxcdn.com
18.64.211.88 rbxcdn.com
18.65.39.105 sc0aws.rbxcdn.com
18.64.211.78 sc0aws.rbxcdn.com
18.64.211.88 sc0aws.rbxcdn.com
18.65.39.105 sc0gcp.rbxcdn.com
18.64.211.78 sc0gcp.rbxcdn.com
18.64.211.88 sc0gcp.rbxcdn.com
18.65.39.105 www-assets.rbxcdn.com
18.64.211.78 www-assets.rbxcdn.com
18.64.211.88 www-assets.rbxcdn.com
18.65.39.105 hls-segments.rbxcdn.com
18.64.211.78 hls-segments.rbxcdn.com
18.64.211.88 hls-segments.rbxcdn.com
18.65.39.105 c0aws.rbxcdn.com
18.64.211.78 c0aws.rbxcdn.com
18.64.211.88 c0aws.rbxcdn.com
18.65.39.105 fts.rbxcdn.com
18.64.211.78 fts.rbxcdn.com
18.64.211.88 fts.rbxcdn.com
18.65.39.105 cdn.rbxcdn.com
18.64.211.78 cdn.rbxcdn.com
18.64.211.88 cdn.rbxcdn.com
18.65.39.105 www-assets-preview.rbxcdn.com
18.64.211.78 www-assets-preview.rbxcdn.com
18.64.211.88 www-assets-preview.rbxcdn.com
18.65.39.105 sc0.rbxcdn.com
18.65.39.105 sc1.rbxcdn.com
18.65.39.105 sc2.rbxcdn.com
18.65.39.105 sc3.rbxcdn.com
18.65.39.105 sc4.rbxcdn.com
18.65.39.105 sc5.rbxcdn.com
18.65.39.105 sc6.rbxcdn.com
18.65.39.105 sc7.rbxcdn.com
18.64.211.78 sc0.rbxcdn.com
18.64.211.78 sc1.rbxcdn.com
18.64.211.78 sc2.rbxcdn.com
18.64.211.78 sc3.rbxcdn.com
18.64.211.78 sc4.rbxcdn.com
18.64.211.78 sc5.rbxcdn.com
18.64.211.78 sc6.rbxcdn.com
18.64.211.78 sc7.rbxcdn.com
18.64.211.88 sc0.rbxcdn.com
18.64.211.88 sc1.rbxcdn.com
18.64.211.88 sc2.rbxcdn.com
18.64.211.88 sc3.rbxcdn.com
18.64.211.88 sc4.rbxcdn.com
18.64.211.88 sc5.rbxcdn.com
18.64.211.88 sc6.rbxcdn.com
18.64.211.88 sc7.rbxcdn.com
18.65.39.105 setup-cfly.rbxcdn.com
18.65.39.105 setup-ll.rbxcdn.com
18.65.39.105 setup-hw.rbxcdn.com
18.65.39.105 setup-ak.rbxcdn.com
18.64.211.78 setup-cfly.rbxcdn.com
18.64.211.78 setup-ll.rbxcdn.com
18.64.211.78 setup-hw.rbxcdn.com
18.64.211.78 setup-ak.rbxcdn.com
18.64.211.88 setup-cfly.rbxcdn.com
18.64.211.88 setup-ll.rbxcdn.com
18.64.211.88 setup-hw.rbxcdn.com
18.64.211.88 setup-ak.rbxcdn.com
EOF

echo "[УСПЕХ] Записи добавлены в самый низ hosts!"
echo ""
echo "Теперь выполни команду:"
echo "sudo systemd-resolve --flush-caches   # или sudo dscacheutil -flushcache (macOS)"
echo ""
echo "Мужик Юрист закончил работу."