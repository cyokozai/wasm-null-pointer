package main

import "unsafe"

//export test_zero
func test_zero() int32 {
	base := uintptr(1)
	ptr := (*int32)(unsafe.Pointer(base - 1)

	*ptr = 2025
	return *ptr
}

func main() {}