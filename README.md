# Microservices App
## Run
To run locally, create the `.env` file:
```bash
$> ln .env.global .env
```
Edit the necessary contents if you need (it should work without any change)

Make sure you have the certificates in the ssl folder and run:
```bash
$> docker compose up --build
```

Then use Bruno collections under the `docs/` subfolder to perform REST calls to test it.