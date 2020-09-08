package main

import (
	"fmt"
	"math/rand"
	"time"
)

type NumSum struct {
	rand RandomGenerator
}

func main() {
	s1 := rand.NewSource(time.Now().UnixNano())
	r1 := rand.New(s1)

	numSum := NumSum{
		rand: r1,
	}

	fmt.Println(numSum.AddRandom(3))
}

//mock the randomnumber generator to test the behavior of  addrandom method
//pain code 3+2 =5  and testify using package - mock random number generator and it should
