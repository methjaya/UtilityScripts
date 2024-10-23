package utilities

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"strings"
	"sync"
)

// String Utilities

// ReverseString reverses the given string.
func ReverseString(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

// ToUpperCase converts a string to uppercase.
func ToUpperCase(s string) string {
	return strings.ToUpper(s)
}

// Error Handling Utilities

// CheckError logs a fatal error if one occurs.
func CheckError(err error) {
	if err != nil {
		log.Fatalf("An error occurred: %v", err)
	}
}

// File I/O Utilities

// ReadFile reads the content of a file and returns it as a string.
func ReadFile(filePath string) string {
	data, err := ioutil.ReadFile(filePath)
	CheckError(err)
	return string(data)
}

// WriteFile writes a string to a file.
func WriteFile(filePath string, content string) {
	err := ioutil.WriteFile(filePath, []byte(content), 0644)
	CheckError(err)
}

// HTTP Utilities

// GetRequest sends a GET request to a given URL and returns the response body.
func GetRequest(url string) string {
	resp, err := http.Get(url)
	CheckError(err)
	defer resp.Body.Close()

	body, err := ioutil.ReadAll(resp.Body)
	CheckError(err)
	return string(body)
}

// Concurrent Utilities

// RunInParallel runs the provided functions concurrently and waits for them to complete.
func RunInParallel(functions []func()) {
	var wg sync.WaitGroup

	for _, fn := range functions {
		wg.Add(1)
		go func(f func()) {
			defer wg.Done()
			f()
		}(fn)
	}

	wg.Wait()
}

// Example usage

func ExampleUsage() {
	// String utility
	str := "hello"
	fmt.Println("Reversed string:", ReverseString(str))

	// File utility
	content := "This is a sample text."
	WriteFile("sample.txt", content)
	fmt.Println("File content:", ReadFile("sample.txt"))

	// HTTP utility
	response := GetRequest("https://jsonplaceholder.typicode.com/todos/1")
	fmt.Println("HTTP Response:", response)

	// Concurrent utility
	RunInParallel([]func(){
		func() { fmt.Println("Task 1") },
		func() { fmt.Println("Task 2") },
	})
}

func main() {
	ExampleUsage()
}
