# Шаблон для кросс компиляции под арм

## Настройка окружения
1. Скачиваем gcc и sysroot `https://releases.linaro.org/components/toolchain/binaries/`
2. Распаковываем в удобное место
3. В Path добавляем путь к \<распакованный gcc>/bin
4. Добавляем переменные среды `SYSROOT_ARM32` для 32-х битной архитектуры, или `SYSROOT_ARM64` для 64-х битной, в которых указываем путь к распакованному sysroot.
5. Открываем данный проект в Vscode или в любом другом редакторе.