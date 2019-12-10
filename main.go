package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {

	// TEST VOLUME
	emptyFile, err := os.Create("logs/volume_test.txt")
	emptyFile.Close()
	if err != nil {
		log.Fatal(err)
	}

	// HTTP SERVER
	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":8080", nil)
}

// HelloServer "/" handler
func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "It actually works! O.o")
}
