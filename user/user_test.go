package user

import (
	"os/user"
	"testing"
)

func Test(t *testing.T) {
	mockDoer := &mock.Doer{} //construct mock object by instantiating its struct

	testUser := &user.User{Doer: mockDoer}

	//set up expectation using.On method
	mockDoer.On("Do", 1, "abc")

	testUser.Use()
	mockDoer.AssertExpectations(t)
}
