package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", Hello)
	http.ListenAndServe(":8080", nil)
}

func Hello(w http.ResponseWriter, r *http.Request) {
	name := os.Getenv("Name")
	age := os.Getenv("Age")
	fmt.Fprintf(w, "Hello, I'm %s. I'm %s", name, age)
}
