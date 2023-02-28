module main

fn main() {
	println('Hello World!')
	name := 'Bob'
	age := 20
	large_number := i64(1000000000000000000)
	println(name)
	println(age)
	println(large_number)

	mut num := 20
	println(num)
	num = 10
	println(num)

	mut a := 0
	mut b := 1
	println('${a}, ${b}')
	a, b = b, a
	println('${a}, ${b}')

	mut aname := 10
	if true {
		aname := 20
	}
}
