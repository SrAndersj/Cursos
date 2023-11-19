# Comandos Git

## ¿Qué es el staging y los repositorios? Ciclo básico de trabajo en Git

### `git init`
- Descripción: se crea un área en memoria RAM que se llama staging, y se crea el repositorio que es la carpeta que se conoce con el `.git`.

### `git add .`
- Descripción: agrega las cosas al staging, cuando el archivo vive aquí espera a que lo envíe al repositorio con `git commit -m "mensaje"`, o lo remueva con `git rm`. A esto se le dice que el archivo está trackeado.

## ¿Qué es un Branch (rama) y cómo funciona un Merge en Git?

### `git merge`
- Descripción: con esto unimos los cambios de una rama a la versión actual.

## Introducción a las ramas o branches de Git

### `git commit -am`
- Descripción: esto automáticamente hace `git add .` pero solo a archivos que ya hemos hecho `git add .` previamente. Si hay un archivo completamente nuevo no funciona.

### `git checkout`
- Descripción: en palabras sencillas se mueve entre ramas. Va a la versión de cambio que está en el repositorio y lo trae a la carpeta.

### `git merge nombre_de_la_rama`
- Descripción: con esto nos echamos la bendición e intentamos unir el mierdero de dos ramas.

### `git remote add origin [URL]`
- Descripción: agregar el repositorio de GitHub para protocolo HTTPS.

### `git remote set-url origin [URL]`
- Descripción: cambiar a protocolo SSH.

### `git remote -v`
- Descripción: agregar el repositorio de GitHub.

### `git push origin nombre_de_la_rama`
- Descripción: subir cambios a la rama especificada.

### `git pull origin nombre_de_la_rama`
- Descripción: bajar cambios de la rama especificada.

### `git pull origin master --allow-unrelated-histories`
- Descripción: fuerza a combinar lo de GitHub y lo local.

### `git config -l`
- Descripción: mirar información de configuración.

### `git log --all --graph --decorate --oneline`
- Descripción: muestra un log gráfico de los commits.

### `git tag -a v0.1 -m "primera version" [commit]`
- Descripción: crear un tag.

### `git show-ref --tags`
- Descripción: mostrar los tags.

### `git push origin --tags`
- Descripción: subir tags a origen.

### `git branch`
- Descripción: listar ramas.

### `git branch nombreRamaACrear`
- Descripción: crear una rama nueva.

### `git clone [URL]`
- Descripción: clonar un repositorio.

### `git reset [commit]`
- Descripción: volver a un commit específico.

## Notas adicionales

- Para cambiar de HTTPS a SSH en la dirección que maneja Git para acceder a GitHub: `git remote set-url origin git@github.com:usuario/repositorio.git`.
