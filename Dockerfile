# Usa la imagen base de FileBrowser
FROM filebrowser/filebrowser

# Copia tu archivo de configuración y otros archivos, si es necesario
COPY ./settings.json /settings.json
COPY ./filebrowser.db /database.db
COPY ./stacks /srv

# Exponer el puerto por si deseas personalizarlo dentro de la imagen
EXPOSE 5040

# Comando por defecto al iniciar el contenedor (si no se usa docker-compose)
CMD ["filebrowser"]
