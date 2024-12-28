# Usa la imagen oficial de FileBrowser
FROM filebrowser/filebrowser:latest

# Exponer el puerto 8080 (opcional si lo manejas desde docker-compose)
EXPOSE 8080

# Comando por defecto para iniciar FileBrowser
CMD ["filebrowser", "-r", "/srv", "-d", "/config/database.db", "-l", "/var/log/filebrowser.log"]
