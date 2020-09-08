package user

import "github.com/sgreben/gomock-vs-testify/examples/testify/doer"

type User struct {
	Doer doer.Doer
}

func (u *User) Use() {
	u.Doer.Do(1, "abc")
}

//calling the functiomn and passing parameters

//user of the interface we want to test
