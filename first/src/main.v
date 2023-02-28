module main

import os

fn main() {
	println('Hello World!')
	println(add(1, 2))
	println(sub(1, 2))
	println(os.args)

	a, b := foo()
	println(a)
	println(b)
	c, _ := foo()
	println(c)
}

fn add(x int, y int) int {
	return x + y
}

fn sub(x int, y int) int {
	return x - y
}

fn foo() (int, int) {
	return 2, 3
}
