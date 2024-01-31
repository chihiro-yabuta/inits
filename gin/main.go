package main

import (
	"github.com/gin-gonic/gin"
	"github.com/gin-contrib/cors"
	"pj/get"
)

func main() {
	route := gin.Default()
	route.Use(cors.Default())

	g := new(get.Data)

	route.GET("/", g.Run)

	route.Run()
}