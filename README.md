# Academics Made Easy — Jekyll (GitHub Pages)

Este esqueleto está listo para subirse al repo **satgrays.github.io**.

## Publicación en GitHub
1. Crea el repo **satgrays.github.io** (público).
2. Sube estos archivos a la rama `main`.
3. En **Settings → Pages**:
   - Source: *Deploy from a branch*
   - Branch: `main` y carpeta `/ (root)`

En 1–2 min tu sitio estará en https://satgrays.github.io/

## Vista local (opcional)
Si quieres previsualizar localmente (no obligatorio para publicar en GitHub):

1. Instala Ruby y Bundler.
2. Ejecuta:

```bash
bundle init
echo 'gem "github-pages", group: :jekyll_plugins' >> Gemfile
bundle install
bundle exec jekyll serve
```

Tu sitio abrirá en http://localhost:4000
