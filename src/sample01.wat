(module
  (memory (export "memory") 1)

  (func (export "test_zero") (result i32)
    (i32.store (i32.const 0) (i32.const 2025)) ;; Write 2025 to memory address 0
    (i32.load (i32.const 0))                   ;; Read from memory address 0 and push onto the stack
  )
)