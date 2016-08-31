package main

import (
	"obuy_openapi/router"
)

func init() {

}

func main() {
	port := ":8888"
	router.InitRouter(port)
}
