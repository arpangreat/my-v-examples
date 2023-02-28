module main

fn main() {
	name := 'Bob'
	assert name.len == 3 // will print 3
	assert name[0] == u8(66) // indexing gives a byte, u8(66) == `B`
	assert name[1..3] == 'ob' // slicing gives a string 'ob'

	// escape codes
	windows_newline := '\r\n' // escape special characters like in C
	assert windows_newline.len == 2

	// arbitrary bytes can be directly specified using `\x##` notation where `#` is
	// a hex digit aardvark_str := '\x61ardvark' assert aardvark_str == 'aardvark'
	assert '\xc0'[0] == u8(0xc0)

	// or using octal escape `\###` notation where `#` is an octal digit
	aardvark_str2 := '\141ardvark'
	assert aardvark_str2 == 'aardvark'

	// Unicode can be specified directly as `\u####` where # is a hex digit
	// and will be converted internally to its UTF-8 representation
	star_str := '\u2605' // ★
	assert star_str == '★'
	assert star_str == '\xe2\x98\x85' // UTF-8 can be specified this way too.println('Hello World!')

	s := 'hello 🌎' // emoji takes 4 bytes
	assert s.len == 10
	println(s)

	arr := s.bytes() // convert `string` to `[]u8`
	assert arr.len == 10

	s2 := arr.bytestr() // convert `[]byte` to `string`
	assert s2 == s
}
