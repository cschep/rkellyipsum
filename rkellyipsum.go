package main

import (
	"flag"
	"fmt"
	"math/rand"
	"strings"
	"time"
)

func main() {
	lines := flag.Int("lines", 30, "number of lines to output")
	flag.Parse()

	data, err := Asset("all-songs.txt")
	if err != nil {
		panic("Couldn't load the songs :(")
	}

	m := strings.Split(string(data), "\n")

	rand.Seed(int64(time.Now().Nanosecond()))

	for l := *lines; l > 0; l-- {
		a := m[rand.Intn(len(m))]
		fmt.Println(a)
	}
}
