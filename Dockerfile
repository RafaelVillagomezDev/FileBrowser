# Usa la imagen oficial de FileBrowser
FROM filebrowser/filebrowser:latest

# Establecer el usuario y el grupo (opcional, pero recomendado si usas UID y GID específicos)
# USER 1000:1000

# Copia tu archivo de configuración y otros archivos necesarios
COPY ./.filebrowser.json /.filebrowser.json
COPY ./filebrowser.db /database.db

# Copia el directorio de archivos a /srv (ajusta la ruta según corresponda)
COPY ./stacks /srv

# Exponer el puerto 8080 (puerto estándar de FileBrowser)
EXPOSE 8080
<<<<<<< HEAD

# Comando por defecto para iniciar FileBrowser
CMD ["filebrowser", "-r", "/srv", "-d", "/database.db", "-l", "/var/log/filebrowser.log"]

=======

# Comando por defecto para iniciar FileBrowser
CMD ["filebrowser", "-r", "/srv", "-d", "/database.db", "-l", "/var/log/filebrowser.log"]
>>>>>>> cb3415415124dc97ea2bdc77082e633e73c08d5f
