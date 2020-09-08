package random

type RandomGenerator interface {
	Intn(n int) int
}

type NumSum struct {
	rand RandomGenerator
}

//functional programming - AddRandomAndCurrentTemperature(3, mandyForecast.Now())
func (n NumSum) AddRandom(number int) int {
	return number + n.rand.Intn(200)
}
