package get

import (
	"github.com/gin-gonic/gin"
)

func (d *Data) Run(c *gin.Context) {
	d.value = "world"
	c.JSON(200, gin.H{ "hello": d.value })
}