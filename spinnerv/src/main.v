module main

import spinners { Spinner }
import time

fn main() {
	mut sp := Spinner{}
	sp.start('please wait ...')?
	time.sleep(1000 * time.millisecond)

	sp.stop()
	println("done")
}
