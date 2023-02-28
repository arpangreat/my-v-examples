/*
bool

string

i8    i16  int  i64      i128 (soon)
u8    u16  u32  u64      u128 (soon)

rune // represents a Unicode code point

f32 f64

isize, usize // platform-dependent, the size is how many bytes it takes to reference any location in memory

voidptr // this one is mostly used for [C interoperability](#v-and-c)

any // similar to C's void* and Go's interface{}
*/

/*
i8 → i16 → int → i64
               ↘     ↘
                 f32 → f64
               ↗     ↗
u8 → u16 → u32 → u64 ⬎
   ↘     ↘     ↘      ptr
i8 → i16 → int → i64 ⬏
*/

module main

fn main() {
	println('Hello World!')
	u := u16(12)
	v := 13 + u // v is of type `u16` - no promotion
	x := f32(45.6)
	y := x + 3.14 // x is of type `f32` - no promotion
	a := 75 // a is of type `int` - default for int literal
	b := 14.7 // b is of type `f64` - default for float literal
	c := u + a // c is of type `int` - automatic promotion of `u`'s value
	d := b + x // d is of type `f64` - automatic promotion of `x`'s value
}
