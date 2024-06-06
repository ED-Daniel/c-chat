#!/bin/bash

# Установка флагов для ошибок и трассировки
set -e

# Путь к исходникам сервера и клиента
SERVER_SRC="server/server.c"
CLIENT_SRC="client/client.c"

# Путь к скомпилированным файлам
SERVER_BIN="server/server.exe"
CLIENT_BIN="client/client.exe"

# Компиляция сервера
echo "Compiling server..."
gcc $SERVER_SRC -o $SERVER_BIN -lpthread

# Компиляция клиента
echo "Compiling client..."
gcc $CLIENT_SRC -o $CLIENT_BIN -lpthread

echo "Compilation completed. Server and client executables created."
