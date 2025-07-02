# YAMLResume Dockerized

This repo contains my resume in [YAMLResume](https://yamlresume.dev/) format, along with a Docker-based build system using `make`.

## 🗂️ Files

- `resume.yaml` — The source resume in YAML format.
- `tmp/` — Temporary build directory (git-ignored).
- `Makefile` — Automates building and cleaning resume artifacts.

## 🛠️ Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Make](https://www.gnu.org/software/make/)

## 🚀 Usage

### Build the resume

```bash
make
```

This will:

1. Copy `resume.yaml` into a temporary `tmp/` directory.
2. Run `yamlresume build resume.yaml` using the official Docker image.

### Clean build artifacts

```bash
make clean
```

This will remove the generated `tmp/` directory.

## 📦 Notes

- Final PDF and intermediate files (`.tex`, `.aux`, etc.) are stored in `tmp/` and ignored via `.gitignore`.
- PDF is always rebuilt fresh from `resume.yaml`.
