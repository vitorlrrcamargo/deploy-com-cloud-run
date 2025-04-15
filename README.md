# 🌤️ API de Clima por CEP - Go + Google Cloud Run

Este projeto é uma API desenvolvida em **Go** que retorna a temperatura de uma cidade com base em um CEP informado. A aplicação utiliza a [API ViaCEP](https://viacep.com.br/) para obter a cidade e a [WeatherAPI](https://www.weatherapi.com/) para retornar os dados de clima atual. O deploy está feito no **Google Cloud Run**.

---

## 🚀 Acesse a aplicação

Você pode testar a aplicação diretamente no ar através do link:

👉 [https://cloudrun-goexpert-lardup467q-uc.a.run.app/weather?cep=13024091](https://cloudrun-goexpert-lardup467q-uc.a.run.app/weather?cep=13024091)

---

## 🔧 Tecnologias Utilizadas

- [Go](https://golang.org/)
- [Docker](https://www.docker.com/)
- [Google Cloud Run](https://cloud.google.com/run)
- [ViaCEP API](https://viacep.com.br/)
- [WeatherAPI](https://www.weatherapi.com/)

---

## 📦 Como rodar localmente

### 1. Clonar o repositório

```bash
git clone https://github.com/seu-usuario/seu-repo.git
cd seu-repo
```

### 2. Rodar localmente (sem Docker)

```bash
go run main.go
```
Acesse em: http://localhost:8080/weather?cep=13024091

### 3. Rodar com Docker

Build e subir o container:
```bash
docker-compose up --build
```
Acesse em: http://localhost:8080/weather?cep=13024091

## 🧪 Testes
Os testes unitários estão localizados na pasta tests.

Para rodar os testes:
```bash
go test ./...
```

## 📁 Estrutura do Projeto

```bash
deploy-com-cloud-run/
├── handler/
│   └── weather.go
├── service/
│   ├── cep.go
│   └── weather.go
├── tests/
│   └── handler_test.go
├── Dockerfile
├── docker-compose.yml
├── go.mod
└── main.go
```

## 🌐 Endpoints
GET /weather?cep=XXXXXXXX
Retorna a temperatura da cidade referente ao CEP informado.

Exemplo:
GET /weather?cep=13024091
Resposta:
json
Copiar
Editar
{
  "temp_C": 24.5,
  "temp_F": 76.1,
  "temp_K": 297.5
}

## ⚠️ Observações
O projeto faz chamadas externas para APIs públicas, portanto está sujeito à disponibilidade e limites dessas APIs.

A chave da WeatherAPI está hardcoded no código apenas para fins de teste e aprendizado. Em produção, o ideal é utilizar variáveis de ambiente ou secret managers.

## 👨‍💻 Autor
Vitor Camargo

## ☁️ Deploy no Google Cloud Run
O deploy está feito na plataforma Google Cloud Run, garantindo escalabilidade automática e alta disponibilidade.

URL: https://cloudrun-goexpert-lardup467q-uc.a.run.app/weather?cep=13024091
