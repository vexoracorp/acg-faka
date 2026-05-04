# acg-faka Docker 실행 방법

이 구성은 `vexoracorp/acg-faka` 저장소 루트에 그대로 추가해서 사용합니다.
Apache + PHP 8.2 + MySQL 8.0 구성이고, 기존 `.htaccess`를 사용하도록 `mod_rewrite`와 `AllowOverride All`을 켜둔 상태입니다.

## 1. 저장소 클론

```bash
git clone https://github.com/vexoracorp/acg-faka.git
cd acg-faka
```

## 2. 이 Docker 파일들 추가

다음 파일/폴더를 저장소 루트에 추가합니다.

```txt
docker-compose.yml
docker/
  apache/
    000-default.conf
  php/
    Dockerfile
    php.ini
.dockerignore
```

## 3. 실행

```bash
docker compose up -d --build
```

## 4. 설치 페이지 접속

```txt
http://localhost:8080
```

## 5. 설치 시 DB 정보

설치 화면에서 DB 정보를 입력할 때 `localhost`가 아니라 Docker Compose 서비스명인 `db`를 사용합니다.

```txt
DB Host: db
DB Port: 3306
DB Name: acg_faka
DB User: acg_faka
DB Password: acg_faka_password_change_me
```

관리자 주소:

```txt
http://localhost:8080/admin
```

## 참고

- Apache를 사용하므로 저장소 루트의 `.htaccess`가 그대로 동작합니다.
- MySQL 데이터는 Docker volume `db_data`에 저장됩니다.
- 운영 서버에서는 `docker-compose.yml`의 DB 비밀번호를 반드시 변경하세요.
