# Usa la imagen base de FileBrowser
FROM filebrowser/filebrowser

# Copia tu archivo de configuración y otros archivos necesarios
COPY ./settings.json /settings.json
COPY ./filebrowser.db /database.db

# Copia el directorio de archivos a /srv (ajusta la ruta según corresponda)
COPY ./stacks /srv

# Exponer el puerto 5040, que es el puerto por defecto de FileBrowser
EXPOSE 5040

# Comando por defecto para iniciar FileBrowser
CMD ["filebrowser", "-r", "/srv", "-d", "/database.db", "-l", "/var/log/filebrowser.log"]
