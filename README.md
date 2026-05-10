# Pengembangan 11ty dengan Docker
![11ty](https://img.shields.io/badge/11ty-v2.0-brightgreen)
![Docker](https://img.shields.io/badge/Docker-Container-blue)

**Generator situs statis Eleventy (11ty)** dengan **Docker container** → **Tanpa install Node.js di komputer host**!

## ✨ **Fitur**

| ✅ **Zero install  | Tidak perlu Node.js/npm di host |
| ----------------- | ------------------------------- |
| ✅ **Non-root user | User `ivan` (UID 2000)          |
| ✅ **Hot reload    | Edit → Auto refresh             |
| ✅ **0.0.0.0 bind  | `localhost:8080` bisa diakses   |
| ✅ **Persistent    | Cache npm + node_modules        |
| ✅ **VSCode ready  | Dev Containers support          |

## 🚀 **Mulai Cepat**

```bash
# Clone/Buat project git clone <repo> situs-11ty-ku 
cd situs-11ty-ku 

# Jalankan (pertama kali) 
docker compose up --build -d 

# Buka situs open 
http://localhost:8080 
# atau browser: http://localhost:8080 

# Lihat log 
docker compose logs -f
```

## 🖥️ **Cara Kerja Pengembangan**

```bash
# Terminal 1: Server + log 
docker compose up -d docker compose logs -f 

# Terminal 2: Bash (opsional) 
docker compose exec eleventy bash 
# Edit file di host → Auto reload!`
```