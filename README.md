shortener/
├── cmd/                  # Punto de entrada de la aplicación
│   └── main.go           # Archivo principal para iniciar el servidor
├── configs/              # Configuración del proyecto
│   └── config.yaml       # Configuración de MongoDB, puerto del servidor, etc.
├── internal/             # Lógica interna de la aplicación (no se expone fuera del módulo)
│   ├── database/         # Conexión y operaciones relacionadas con la base de datos
│   │   ├── mongodb.go    # Configuración y conexión con MongoDB
│   │   └── models.go     # Definición de modelos para MongoDB
│   ├── shortener/        # Lógica específica del acortador de URLs
│   │   ├── service.go    # Lógica de negocio para acortar y expandir URLs
│   │   └── repository.go # Interacción con la base de datos (MongoDB)
│   └── api/              # Lógica de las rutas y controladores
│       ├── handlers.go   # Handlers para las rutas HTTP
│       └── routes.go     # Definición de las rutas HTTP
├── pkg/                  # Paquetes reutilizables (helpers, utilidades, etc.)
│   └── hash/             # Lógica para generar hashes o IDs cortos
│       └── hash.go       # Implementación del generador de IDs cortos
├── tests/                # Pruebas de la aplicación
│   ├── api_test.go       # Pruebas para los endpoints
│   └── shortener_test.go # Pruebas para la lógica de negocio
├── Dockerfile            # Archivo Docker para construir la imagen
├── docker-compose.yml    # Configuración de Docker Compose (para MongoDB, servidor, etc.)
├── go.mod                # Archivo de dependencias del módulo Go
├── go.sum                # Hashes de las dependencias
└── README.md             # Documentación del proyecto
