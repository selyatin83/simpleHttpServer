package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	runHttpServer()
}

func runHttpServer() {
	http.HandleFunc("/", mainPage)

	log.Fatal(http.ListenAndServe(":8080", nil))
}

func mainPage(resp http.ResponseWriter, req *http.Request) {
	text := "main page"
	fmt.Fprintf(resp, text)
	fmt.Println(text)
}
