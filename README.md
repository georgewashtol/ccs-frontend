### Frontend

El frontend está construido con Angular. La estructura del proyecto y el flujo de despliegue están definidos en los siguientes archivos:

- `src/app/app.component.html`: Archivo principal del componente Angular.
- `src/app/app.module.ts`: Módulo principal de la aplicación Angular.
- `src/app/app.component.ts`: Componente principal de la aplicación Angular.
- `src/main.ts`: Archivo de inicio de la aplicación Angular.
- `Dockerfile`: Archivo Docker para construir la imagen del frontend.
- `.github/workflows/deploy.yml`: Archivo de GitHub Actions para el CI/CD.