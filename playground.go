package main

import "fmt"
import "strings"
import "github.com/abiosoft/ishell"

func main() {
    fmt.Printf("Hello, world.\n")

    shell := ishell.New()
    shell.Println("Playground shell! Pick your poison.")
    shell.AddCmd(&ishell.Cmd{
        Name: "greet",
        Help: "Greet user",
        Func: func(c *ishell.Context) {
            c.Println("Greetings", strings.Join(c.Args, " "))
        },
    })

    shell.Run()
}
