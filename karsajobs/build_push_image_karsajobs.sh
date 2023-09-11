# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t karsajobs:latest .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format github packages.
docker tag karsajobs:latest ghcr.io/faqihyugos/karsajobs:latest

# Login ke Docker Hub/ github packages
echo $PASSWORD_PACKAGES | docker login ghcr.io --username Faqihyugos --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/faqihyugos/karsajobs:latest
