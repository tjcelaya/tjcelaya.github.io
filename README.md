# tjcelaya.github.io

One hand-written `index.html`, no build step. Inline `<style>`, no JS.

Edit `index.html` (here on GitHub or locally) and push to `main`:

- **tjcelaya.github.io** — GitHub Pages serves `main` as-is.
- **tjcelaya.com** — `.github/workflows/deploy.yml` scp's `index.html` to the DigitalOcean droplet (`tjcelaya-www`, 24.199.102.45, nginx + certbot).

`./deploy.sh` does the droplet copy from a local checkout if you'd rather not wait on Actions.

Content source: `~/src/tjcelaya/employment/variants/platform.md`, which is also the Google Doc the page links to (`1dNyEZHgbP3wjypZnnaVRnJIU-fmHfXcsm-qcAm_WreI`). Edit the variant first, then mirror the change here and regenerate the Doc.
