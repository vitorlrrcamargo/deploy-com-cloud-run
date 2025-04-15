package main

import (
	"log"
	"net/http"

	"github.com/vitorlrrcamargo/deploy-com-cloud-run/handler"
)

func main() {
	http.HandleFunc("/weather", handler.GetWeatherByCEP)

	log.Println("Listening on port 8080...")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
