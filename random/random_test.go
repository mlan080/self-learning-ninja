package random

import (
	"testing"
)

func Test_numsum_AddRandom(t *testing.T) {
	tests := []struct {
		name string
		arg  int
		want int
	}{
		name: "success",
		args: 3,
		want: 9,
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			addrandom := AddRandom()
			if got := addrandom.AddRandom(tt.arg); got != tt.want {
				t.Errorf("error")
			}
		})
	}
}
