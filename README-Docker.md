# Docker 실행

```bash
docker compose up -d --build
docker compose exec app composer install
```

권한 문제가 있으면:

```bash
docker compose exec app sh -lc 'chmod -R 777 runtime kernel/Install 2>/dev/null || true'
```

접속:

```txt
http://localhost:8080
```

설치 화면 DB 정보:

```txt
DB Host: db
DB Port: 3306
DB Name: acg_faka
DB User: acg_faka
DB Password: acg_faka_password_change_me
```

로그 확인:

```bash
docker compose logs -f app
```
