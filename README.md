# Мужик Юрист — Roblox icon fix

Простой инструмент, который добавляет актуальные записи CDN Roblox в файл `hosts`, чтобы исправить проблему с загрузкой картинок, аватарок и иконок.

---

## Что делает

- Добавляет полный список рабочих поддоменов `rbxcdn.com` в самый низ файла hosts
- Делает красивую перегородку, чтобы было видно, где начинаются записи
- Работает на Windows, Linux и macOS
- Сам запрашивает права администратора (Windows)

---

## Файлы

| Файл | Описание |
|------|----------|
| `Add-RobloxHosts.bat` | Версия для Windows |
| `add-roblox-hosts.sh` | Версия для Linux / macOS |

---

## Как пользоваться

### Windows

1. Скачай файл `Add-RobloxHosts.bat`
2. Запусти его **двойным кликом**
3. Подтверди запрос UAC (права администратора)
4. После успешного добавления выполни в командной строке:

```cmd
ipconfig /flushdns
Linux / macOS
Bashsudo bash add-roblox-hosts.sh
После выполнения сбрось DNS-кэш:
Linux:
Bashsudo systemd-resolve --flush-caches
macOS:
Bashsudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

Важно
Эта модификация файла hosts может сломать Docker, WSL, некоторые VPN и антивирусы.

Используй на свой страх и риск.
Если что-то пойдёт не так — просто удали добавленный блок из файла hosts (он помечен как ROBLOX CDN FIX (добавлено Мужик Юрист)).

Автор
Мужик Юрист
