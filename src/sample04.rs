#![no_main]
#[no_mangle]
pub unsafe extern "C" fn test_zero() -> i32 {
  let ptr = 1 as *mut i32;
  *ptr = 2025;
  *ptr
}