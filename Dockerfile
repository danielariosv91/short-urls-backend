# imagen oficial de Go como base
FROM golang:1.21-alpine

# Establece un directorio de trabajo
WORKDIR /app

# Copiar los archivos de configuración y el código al contenedor
COPY go.mod go.sum ./
RUN go mod download

# Copiar resto del código
COPY . .

# Construir la aplicación
RUN go build -o main ./cmd/main.go

# Puerto donde se usará la app 
EXPOSE 8080

# Comando para ejecutar el binario
CMD ["./main"]