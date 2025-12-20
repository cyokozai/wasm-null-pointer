(module $main
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $runtime.proc_exit (type 0)))
  (import "wasi_snapshot_preview1" "random_get" (func $__imported_wasi_snapshot_preview1_random_get (type 2)))
  (func $chacha20_rng (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const -64
    i32.add
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 56
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i32.const 24
    i32.add
    i32.const 65620
    i64.load align=1
    i64.store
    local.get 1
    i32.const 32
    i32.add
    i32.const 65628
    i64.load align=1
    i64.store
    local.get 1
    i32.const 40
    i32.add
    i32.const 65636
    i64.load align=1
    i64.store
    local.get 1
    i64.const 0
    i64.store offset=48
    local.get 1
    i32.const 65544
    i64.load
    i64.store offset=8
    local.get 1
    i32.const 65536
    i64.load
    i64.store
    local.get 1
    i32.const 65612
    i64.load align=1
    i64.store offset=16
    local.get 0
    local.get 1
    call $chacha20_update
    i32.const 65636
    local.get 0
    i32.const 24
    i32.add
    i64.load align=1
    i64.store align=1
    i32.const 65628
    local.get 0
    i32.const 16
    i32.add
    i64.load align=1
    i64.store align=1
    i32.const 65620
    local.get 0
    i32.const 8
    i32.add
    i64.load align=1
    i64.store align=1
    i32.const 65612
    local.get 0
    i64.load align=1
    i64.store align=1
    loop  ;; label = @1
      local.get 2
      i32.const 512
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.add
        local.get 1
        call $chacha20_update
        local.get 2
        i32.const -64
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const -64
    i32.sub
    global.set $__stack_pointer)
  (func $chacha20_update (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const -64
    i32.add
    local.tee 20
    local.get 1
    i32.const 64
    memory.copy
    local.get 1
    i32.load offset=44
    local.set 7
    local.get 1
    i32.load offset=60
    local.set 8
    local.get 1
    i32.load offset=12
    local.set 14
    local.get 1
    i32.load offset=28
    local.set 2
    local.get 1
    i32.load offset=40
    local.set 5
    local.get 1
    i32.load offset=56
    local.set 15
    local.get 1
    i32.load offset=8
    local.set 10
    local.get 1
    i32.load offset=24
    local.set 3
    local.get 1
    i32.load offset=36
    local.set 11
    local.get 1
    i32.load offset=52
    local.set 16
    local.get 1
    i32.load offset=4
    local.set 17
    local.get 1
    i32.load offset=20
    local.set 4
    local.get 1
    i32.load offset=32
    local.set 12
    local.get 1
    i32.load offset=48
    local.set 13
    local.get 1
    i32.load
    local.set 9
    local.get 1
    i32.load offset=16
    local.set 6
    loop  ;; label = @1
      local.get 18
      i32.const 19
      i32.gt_u
      i32.eqz
      if  ;; label = @2
        local.get 6
        local.get 12
        local.get 6
        local.get 9
        i32.add
        local.tee 6
        local.get 13
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 12
        i32.add
        local.tee 13
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 9
        local.get 6
        i32.add
        local.tee 19
        local.get 12
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 21
        local.get 13
        i32.add
        local.tee 12
        local.get 9
        i32.xor
        i32.const 7
        i32.rotl
        local.tee 6
        local.get 2
        local.get 7
        local.get 2
        local.get 14
        i32.add
        local.tee 2
        local.get 8
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 7
        i32.add
        local.tee 8
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 13
        local.get 2
        i32.add
        local.tee 2
        i32.add
        local.tee 14
        local.get 3
        local.get 5
        local.get 3
        local.get 10
        i32.add
        local.tee 3
        local.get 15
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 5
        i32.add
        local.tee 9
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 22
        local.get 3
        i32.add
        local.tee 3
        local.get 5
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 5
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 15
        local.get 4
        local.get 4
        local.get 17
        i32.add
        local.tee 4
        local.get 16
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 10
        local.get 11
        i32.add
        local.tee 11
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 23
        local.get 4
        i32.add
        local.tee 4
        local.get 10
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 10
        local.get 11
        i32.add
        local.tee 24
        i32.add
        local.tee 11
        local.get 6
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 6
        local.get 14
        i32.add
        local.tee 14
        local.get 15
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 15
        local.get 11
        i32.add
        local.tee 11
        local.get 6
        i32.xor
        i32.const 7
        i32.rotl
        local.set 6
        local.get 12
        local.get 10
        local.get 3
        local.get 8
        local.get 2
        local.get 7
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 8
        i32.add
        local.tee 3
        local.get 13
        i32.xor
        i32.const 7
        i32.rotl
        local.tee 2
        i32.add
        local.tee 7
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 16
        i32.add
        local.tee 17
        local.get 2
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 2
        local.get 7
        i32.add
        local.tee 10
        local.get 16
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 16
        local.get 17
        i32.add
        local.tee 12
        local.get 2
        i32.xor
        i32.const 7
        i32.rotl
        local.set 2
        local.get 3
        local.get 21
        local.get 4
        local.get 5
        local.get 9
        i32.add
        local.tee 4
        local.get 22
        i32.xor
        i32.const 7
        i32.rotl
        local.tee 3
        i32.add
        local.tee 7
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 5
        i32.add
        local.tee 9
        local.get 3
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 3
        local.get 7
        i32.add
        local.tee 17
        local.get 5
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 13
        local.get 9
        i32.add
        local.tee 7
        local.get 3
        i32.xor
        i32.const 7
        i32.rotl
        local.set 3
        local.get 4
        local.get 8
        local.get 23
        local.get 24
        i32.xor
        i32.const 7
        i32.rotl
        local.tee 4
        local.get 19
        i32.add
        local.tee 8
        i32.xor
        i32.const 16
        i32.rotl
        local.tee 5
        i32.add
        local.tee 19
        local.get 4
        i32.xor
        i32.const 12
        i32.rotl
        local.tee 4
        local.get 8
        i32.add
        local.tee 9
        local.get 5
        i32.xor
        i32.const 8
        i32.rotl
        local.tee 8
        local.get 19
        i32.add
        local.tee 5
        local.get 4
        i32.xor
        i32.const 7
        i32.rotl
        local.set 4
        local.get 18
        i32.const 2
        i32.add
        local.set 18
        br 1 (;@1;)
      end
    end
    local.get 1
    local.get 13
    i32.store offset=48
    local.get 1
    local.get 9
    i32.store
    local.get 1
    local.get 6
    i32.store offset=16
    local.get 1
    local.get 12
    i32.store offset=32
    local.get 1
    local.get 4
    i32.store offset=20
    local.get 1
    local.get 16
    i32.store offset=52
    local.get 1
    local.get 17
    i32.store offset=4
    local.get 1
    local.get 11
    i32.store offset=36
    local.get 1
    local.get 3
    i32.store offset=24
    local.get 1
    local.get 15
    i32.store offset=56
    local.get 1
    local.get 10
    i32.store offset=8
    local.get 1
    local.get 5
    i32.store offset=40
    local.get 1
    local.get 2
    i32.store offset=28
    local.get 1
    local.get 8
    i32.store offset=60
    local.get 1
    local.get 14
    i32.store offset=12
    local.get 1
    local.get 7
    i32.store offset=44
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 2
      i32.const 64
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 20
        i32.add
        local.tee 3
        local.get 3
        i32.load
        local.get 1
        local.get 2
        i32.add
        i32.load
        i32.add
        i32.store
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 20
    i32.const 64
    memory.copy
    local.get 1
    local.get 1
    i32.load offset=48
    i32.const 1
    i32.add
    i32.store offset=48)
  (func $arc4random (type 5) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 4
      i32.load
      local.set 8
      local.get 4
      i32.load offset=4
      local.set 6
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 6
        global.set $__stack_pointer
        local.get 6
        i32.const 12
        i32.add
        local.set 8
      end
      local.get 0
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 8
        local.set 9
        i32.const 4
        local.set 3
        global.get 1
        i32.const 2
        i32.eq
        if  ;; label = @3
          global.get 2
          global.get 2
          i32.load
          i32.const 8
          i32.sub
          i32.store
          global.get 2
          i32.load
          local.tee 0
          i32.load
          local.set 9
          local.get 0
          i32.load offset=4
          local.set 3
        end
        block  ;; label = @3
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if  ;; label = @5
              global.get 2
              global.get 2
              i32.load
              i32.const 4
              i32.sub
              i32.store
              global.get 2
              i32.load
              i32.load
              local.set 1
            end
            global.get 1
            i32.const 1
            global.get 1
            if (result i32)  ;; label = @5
              i32.const 0
            else
              i32.const 65604
              i32.load
            end
            select
            if  ;; label = @5
              local.get 1
              i32.const 0
              global.get 1
              select
              i32.eqz
              if  ;; label = @6
                i32.const 0
                local.set 1
                i32.const 32
                local.set 5
                i32.const 65612
                local.set 4
                global.get 1
                i32.const 2
                i32.eq
                if  ;; label = @7
                  global.get 2
                  global.get 2
                  i32.load
                  i32.const 12
                  i32.sub
                  i32.store
                  global.get 2
                  i32.load
                  local.tee 0
                  i32.load
                  local.set 4
                  local.get 0
                  i32.load offset=8
                  local.set 1
                  local.get 0
                  i32.load offset=4
                  local.set 5
                end
                block  ;; label = @7
                  block (result i32)  ;; label = @8
                    global.get 1
                    i32.const 2
                    i32.eq
                    if  ;; label = @9
                      global.get 2
                      global.get 2
                      i32.load
                      i32.const 4
                      i32.sub
                      i32.store
                      global.get 2
                      i32.load
                      i32.load
                      local.set 2
                    end
                    block  ;; label = @9
                      global.get 1
                      if (result i32)  ;; label = @10
                        i32.const 0
                      else
                        i32.const 29
                        local.set 1
                        local.get 5
                        i32.const 256
                        i32.gt_u
                      end
                      global.get 1
                      i32.eqz
                      i32.and
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 0
                      global.get 1
                      select
                      i32.eqz
                      if  ;; label = @10
                        block (result i32)  ;; label = @11
                          local.get 4
                          local.set 2
                          local.get 5
                          local.set 0
                          global.get 1
                          i32.const 2
                          i32.eq
                          if  ;; label = @12
                            global.get 2
                            global.get 2
                            i32.load
                            i32.const 8
                            i32.sub
                            i32.store
                            global.get 2
                            i32.load
                            local.tee 0
                            i32.load
                            local.set 2
                            local.get 0
                            i32.load offset=4
                            local.set 0
                          end
                          block (result i32)  ;; label = @12
                            global.get 1
                            i32.const 2
                            i32.eq
                            if (result i32)  ;; label = @13
                              global.get 2
                              global.get 2
                              i32.load
                              i32.const 4
                              i32.sub
                              i32.store
                              global.get 2
                              i32.load
                              i32.load
                            else
                              i32.const 0
                            end
                            i32.const 0
                            global.get 1
                            select
                            if (result i32)  ;; label = @13
                              local.get 2
                            else
                              local.get 2
                              local.get 0
                              call $__imported_wasi_snapshot_preview1_random_get
                              i32.const 0
                              global.get 1
                              i32.const 1
                              i32.eq
                              br_if 1 (;@12;)
                              drop
                            end
                            i32.const 65535
                            i32.and
                            global.get 1
                            i32.eqz
                            br_if 1 (;@11;)
                            drop
                            unreachable
                          end
                          local.set 7
                          global.get 2
                          i32.load
                          local.get 7
                          i32.store
                          global.get 2
                          global.get 2
                          i32.load
                          i32.const 4
                          i32.add
                          i32.store
                          global.get 2
                          i32.load
                          local.tee 7
                          local.get 2
                          i32.store
                          local.get 7
                          local.get 0
                          i32.store offset=4
                          global.get 2
                          global.get 2
                          i32.load
                          i32.const 8
                          i32.add
                          i32.store
                          i32.const 0
                        end
                        i32.const 0
                        global.get 1
                        i32.const 1
                        i32.eq
                        br_if 2 (;@8;)
                        drop
                        local.set 1
                      end
                      global.get 1
                      i32.eqz
                      if  ;; label = @10
                        local.get 1
                        br_if 1 (;@9;)
                        br 3 (;@7;)
                      end
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      i32.const 66156
                      local.get 1
                      i32.store
                      br 2 (;@7;)
                    end
                    unreachable
                  end
                  local.set 0
                  global.get 2
                  i32.load
                  local.get 0
                  i32.store
                  global.get 2
                  global.get 2
                  i32.load
                  i32.const 4
                  i32.add
                  i32.store
                  global.get 2
                  i32.load
                  local.tee 0
                  local.get 4
                  i32.store
                  local.get 0
                  local.get 5
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.store offset=8
                  global.get 2
                  global.get 2
                  i32.load
                  i32.const 12
                  i32.add
                  i32.store
                end
                i32.const 0
                global.get 1
                i32.const 1
                i32.eq
                br_if 2 (;@4;)
                drop
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                i32.const 65604
                i64.const 2199023255553
                i64.store align=4
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              i32.const 0
              local.set 1
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 65608
                  i32.load
                  local.tee 5
                  i32.const 512
                  i32.eq
                  if  ;; label = @8
                    loop  ;; label = @9
                      local.get 3
                      i32.const 512
                      i32.ge_u
                      if  ;; label = @10
                        local.get 1
                        local.get 9
                        i32.add
                        call $chacha20_rng
                        local.get 3
                        i32.const 512
                        i32.sub
                        local.set 3
                        local.get 1
                        i32.const 512
                        i32.add
                        local.set 1
                        br 1 (;@9;)
                      end
                    end
                    local.get 3
                    i32.eqz
                    br_if 1 (;@7;)
                    i32.const 65644
                    call $chacha20_rng
                    i32.const 65608
                    i32.const 0
                    i32.store
                    i32.const 0
                    local.set 5
                  end
                  i32.const 512
                  local.get 5
                  i32.sub
                  local.tee 4
                  local.get 3
                  i32.gt_u
                  local.set 0
                  local.get 3
                  local.get 4
                  local.get 0
                  select
                  local.tee 2
                  i32.eqz
                  local.tee 0
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    local.get 9
                    i32.add
                    local.get 5
                    i32.const 65644
                    i32.add
                    local.get 2
                    memory.copy
                  end
                  i32.const 65608
                  i32.load
                  local.set 4
                  local.get 0
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    i32.const 65644
                    i32.add
                    i32.const 0
                    local.get 2
                    memory.fill
                  end
                  i32.const 65608
                  local.get 2
                  local.get 4
                  i32.add
                  i32.store
                  local.get 1
                  local.get 2
                  i32.add
                  local.set 1
                  local.get 3
                  local.get 2
                  i32.sub
                  local.set 3
                  br 1 (;@6;)
                end
              end
            end
            br 1 (;@3;)
          end
          local.set 0
          global.get 2
          i32.load
          local.get 0
          i32.store
          global.get 2
          global.get 2
          i32.load
          i32.const 4
          i32.add
          i32.store
          global.get 2
          i32.load
          local.tee 0
          local.get 9
          i32.store
          local.get 0
          local.get 3
          i32.store offset=4
          global.get 2
          global.get 2
          i32.load
          i32.const 8
          i32.add
          i32.store
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 6
        i32.load offset=12
        local.get 6
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      unreachable
    end
    local.set 0
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 0
    local.get 8
    i32.store
    local.get 0
    local.get 6
    i32.store offset=4
    global.get 2
    global.get 2
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0)
  (func $internal/task.start (type 0) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 28
    i32.add
    i64.const 0
    i64.store align=4
    local.get 2
    i32.const 36
    i32.add
    i64.const 0
    i64.store align=4
    local.get 2
    i64.const 0
    i64.store offset=20 align=4
    local.get 2
    i32.const 7
    i32.store offset=12
    i32.const 66212
    i32.load
    local.set 3
    i32.const 66212
    local.get 2
    i32.const 8
    i32.add
    i32.store
    local.get 2
    local.get 3
    i32.store offset=8
    i32.const 56
    i32.const 324829
    call $runtime.alloc
    local.tee 1
    i32.const 0
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=20
    local.get 2
    local.get 1
    i32.store offset=16
    i32.const 65536
    i32.const 0
    call $runtime.alloc
    local.tee 0
    i32.const -1204030091
    i32.store
    local.get 1
    local.get 0
    i32.store offset=36
    local.get 1
    local.get 0
    i32.const 65536
    i32.add
    i32.store offset=32
    local.get 1
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=28
    i32.const 66224
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.store
    end
    local.get 1
    i32.const 0
    i32.store
    i32.const 66224
    local.get 1
    i32.store
    i32.const 66220
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 66220
      local.get 1
      i32.store
    end
    i32.const 66212
    local.get 3
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $runtime.alloc (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 25
    i32.store offset=4
    local.get 3
    i32.const 12
    i32.add
    i32.const 0
    i32.const 96
    memory.fill
    local.get 3
    i32.const 66212
    i32.load
    local.tee 12
    i32.store
    i32.const 66212
    local.get 3
    i32.store
    block  ;; label = @1
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 66208
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.const -31
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 66192
        i32.const 66192
        i64.load
        local.get 0
        i64.extend_i32_u
        i64.add
        i64.store
        i32.const 66200
        i32.const 66200
        i64.load
        i64.const 1
        i64.add
        i64.store
        local.get 0
        i32.const 31
        i32.add
        local.tee 0
        i32.const -16
        i32.and
        local.set 11
        local.get 0
        i32.const 4
        i32.shr_u
        local.set 10
        loop  ;; label = @3
          i32.const 66180
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              local.get 0
              i32.store offset=8
              local.get 3
              local.get 0
              i32.load
              local.tee 4
              i32.store offset=12
              local.get 4
              i32.eqz
              if  ;; label = @6
                local.get 3
                i32.const 0
                i32.store offset=24
                br 2 (;@4;)
              end
              local.get 3
              local.get 4
              i32.store offset=16
              local.get 0
              i32.load
              local.set 2
              local.get 10
              local.get 4
              i32.load
              i32.gt_u
              if  ;; label = @6
                local.get 3
                local.get 2
                i32.store offset=20
                local.get 2
                i32.const 4
                i32.add
                local.set 0
                local.get 2
                br_if 1 (;@5;)
                br 4 (;@2;)
              end
            end
            local.get 3
            local.get 2
            i32.store offset=24
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load
            local.set 5
            local.get 3
            local.get 2
            i32.load offset=8
            local.tee 4
            i32.store offset=28
            block  ;; label = @5
              local.get 4
              if  ;; label = @6
                local.get 3
                local.get 4
                i32.load
                local.tee 0
                i32.store offset=32
                local.get 2
                local.get 0
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 3
              local.get 2
              i32.load offset=4
              local.tee 4
              i32.store offset=44
              local.get 0
              local.get 4
              i32.store
              local.get 2
              local.set 4
            end
            local.get 3
            local.get 4
            i32.store offset=36
            local.get 3
            local.get 4
            i32.store offset=40
            local.get 5
            local.get 10
            i32.gt_u
            if  ;; label = @5
              local.get 4
              local.get 11
              i32.add
              local.get 5
              local.get 10
              i32.sub
              call $runtime.insertFreeRange
            end
            local.get 3
            local.get 4
            i32.store offset=48
            local.get 3
            local.get 4
            i32.store offset=52
            i32.const 66172
            i32.load
            local.tee 5
            local.get 4
            i32.const 66384
            i32.sub
            local.tee 0
            i32.const 6
            i32.shr_u
            i32.add
            local.tee 2
            local.get 2
            i32.load8_u
            i32.const 1
            local.get 0
            i32.const 4
            i32.shr_u
            local.tee 0
            i32.const 3
            i32.and
            i32.shl
            i32.or
            i32.store8
            local.get 10
            i32.const 1
            i32.sub
            local.set 2
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            loop  ;; label = @5
              local.get 2
              if  ;; label = @6
                local.get 5
                local.get 0
                i32.const 2
                i32.shr_u
                i32.add
                local.tee 6
                local.get 6
                i32.load8_u
                i32.const 16
                local.get 0
                i32.const 3
                i32.and
                i32.shl
                i32.or
                i32.store8
                local.get 2
                i32.const 1
                i32.sub
                local.set 2
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                br 1 (;@5;)
              end
            end
            local.get 4
            local.get 1
            i32.store offset=4
            local.get 4
            i32.const 16
            i32.add
            local.set 0
            local.get 11
            i32.const 16
            i32.sub
            local.tee 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.const 0
            local.get 1
            memory.fill
            br 3 (;@1;)
          end
          local.get 3
          i64.const 0
          i64.store offset=48
          local.get 5
          i32.const 1
          i32.and
          if  ;; label = @4
            i32.const 1
            local.set 5
            call $runtime.growHeap
            i32.const 1
            i32.and
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 66212
          i32.load
          drop
          local.get 3
          i32.const 66160
          i32.load
          local.tee 0
          i32.store offset=60
          local.get 3
          local.get 0
          i32.store offset=56
          local.get 0
          if (result i32)  ;; label = @4
            i32.const 66168
            i32.load
          else
            global.get $__stack_pointer
          end
          local.tee 0
          i32.const 65536
          local.get 0
          i32.sub
          call $runtime.scanConservative
          i32.const 65536
          i32.const 848
          call $runtime.scanConservative
          loop  ;; label = @4
            i32.const 66176
            i32.load
            local.set 2
            block  ;; label = @5
              loop  ;; label = @6
                local.get 3
                local.get 2
                local.tee 0
                i32.store offset=64
                local.get 3
                local.get 0
                i32.store offset=72
                local.get 0
                i32.eqz
                br_if 1 (;@5;)
                i32.const 66176
                local.get 0
                i32.load
                local.tee 2
                i32.store
                local.get 3
                local.get 2
                i32.store offset=68
                local.get 0
                i32.load offset=4
                i32.const -63
                i32.and
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
              end
              local.get 0
              i32.const 16
              i32.add
              local.set 4
              i32.const 66172
              i32.load
              local.tee 7
              local.get 0
              i32.const 66384
              i32.sub
              local.tee 2
              i32.const 6
              i32.shr_u
              i32.add
              i32.load8_u
              local.get 2
              i32.const 4
              i32.shr_u
              local.tee 2
              i32.const 3
              i32.and
              i32.shr_u
              i32.const 1
              i32.and
              i32.const 16
              i32.or
              i32.const 17
              i32.eq
              if  ;; label = @6
                local.get 2
                i32.const 1
                i32.add
                local.set 2
              end
              local.get 2
              i32.const 4
              i32.shl
              i32.const 66384
              i32.add
              local.set 5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  local.get 7
                  i32.store offset=76
                  local.get 5
                  local.tee 6
                  local.get 7
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 3
                  i32.and
                  local.set 8
                  local.get 2
                  i32.const 2
                  i32.shr_u
                  local.set 9
                  local.get 5
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 2
                  local.get 7
                  local.get 9
                  i32.add
                  i32.load8_u
                  local.get 8
                  i32.shr_u
                  i32.const 17
                  i32.and
                  i32.const 16
                  i32.eq
                  br_if 1 (;@6;)
                end
              end
              local.get 6
              local.get 0
              i32.sub
              i32.const 16
              i32.sub
              local.set 5
              local.get 0
              i32.load offset=4
              local.tee 0
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 5
                call $runtime.scanConservative
                br 2 (;@4;)
              end
              local.get 0
              i32.const 1
              i32.and
              if  ;; label = @6
                local.get 0
                i32.const 6
                i32.shr_u
                local.set 2
                local.get 0
                i32.const 1
                i32.shl
                i32.const 124
                i32.and
                local.set 0
                loop  ;; label = @7
                  local.get 0
                  local.get 5
                  i32.gt_u
                  br_if 3 (;@4;)
                  local.get 4
                  local.get 2
                  call $runtime.scanWithMask
                  local.get 5
                  local.get 0
                  i32.sub
                  local.set 5
                  local.get 0
                  local.get 4
                  i32.add
                  local.set 4
                  br 0 (;@7;)
                end
                unreachable
              end
              local.get 3
              local.get 0
              i32.store offset=80
              local.get 3
              local.get 0
              i32.store offset=84
              local.get 0
              i32.const 4
              i32.add
              local.tee 7
              i32.eqz
              local.get 0
              i32.load
              local.tee 0
              i32.const 7
              i32.add
              local.tee 2
              i32.const 7
              i32.gt_u
              i32.and
              br_if 3 (;@2;)
              local.get 0
              i32.const 2
              i32.shl
              local.set 9
              local.get 2
              i32.const 3
              i32.shr_u
              local.set 8
              loop  ;; label = @6
                local.get 5
                local.get 9
                i32.lt_u
                br_if 2 (;@4;)
                local.get 8
                local.set 0
                local.get 7
                local.set 2
                local.get 4
                local.set 6
                loop  ;; label = @7
                  local.get 0
                  if  ;; label = @8
                    local.get 6
                    local.get 2
                    i32.load8_u
                    call $runtime.scanWithMask
                    local.get 0
                    i32.const 1
                    i32.sub
                    local.set 0
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 2
                    local.get 6
                    i32.const 32
                    i32.add
                    local.set 6
                    br 1 (;@7;)
                  end
                end
                local.get 5
                local.get 9
                i32.sub
                local.set 5
                local.get 4
                local.get 9
                i32.add
                local.set 4
                br 0 (;@6;)
              end
              unreachable
            end
          end
          i32.const 0
          local.set 4
          local.get 3
          i32.const 66172
          i32.load
          local.tee 0
          i32.store offset=88
          i32.const 66184
          i32.load
          i32.const 3
          i32.add
          i32.const 2
          i32.shr_u
          local.set 2
          loop  ;; label = @4
            local.get 3
            local.get 0
            i32.store offset=96
            local.get 3
            local.get 0
            i32.store offset=100
            local.get 3
            local.get 0
            i32.store offset=92
            local.get 2
            if  ;; label = @5
              local.get 0
              local.get 4
              local.get 0
              i32.load8_u
              local.tee 5
              i32.const 4
              i32.shr_u
              local.tee 6
              local.get 5
              i32.const 15
              i32.and
              local.tee 7
              i32.const -1
              i32.xor
              i32.and
              local.tee 8
              i32.add
              local.get 7
              local.get 6
              i32.const -1
              i32.xor
              i32.and
              i32.const 1
              i32.shl
              i32.add
              local.tee 4
              local.get 8
              i32.and
              i32.const 4
              i32.shl
              local.get 5
              local.get 6
              i32.and
              i32.or
              i32.store8
              local.get 4
              i32.const 240
              i32.and
              i32.const 4
              i32.shr_u
              local.set 4
              local.get 2
              i32.const 1
              i32.sub
              local.set 2
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              br 1 (;@4;)
            end
          end
          call $runtime.buildFreeRanges
          local.get 3
          i32.const 66172
          i32.load
          local.tee 2
          i32.store offset=104
          i32.const 1
          local.set 5
          local.get 2
          i32.const 66384
          i32.sub
          i32.const 3
          i32.div_u
          i32.ge_u
          br_if 0 (;@3;)
          call $runtime.growHeap
          drop
          br 0 (;@3;)
        end
        unreachable
      end
      unreachable
    end
    i32.const 66212
    local.get 12
    i32.store
    local.get 3
    i32.const 112
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $runtime.memequal (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 3
    block (result i32)  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 2
        local.get 3
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 1
        local.get 3
        i32.add
        local.set 4
        local.get 0
        local.get 3
        i32.add
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        i32.load8_u
        local.get 4
        i32.load8_u
        i32.eq
        br_if 0 (;@2;)
      end
      local.get 3
      i32.const 1
      i32.sub
    end
    local.get 2
    i32.ge_u)
  (func $runtime.hash32 (type 1) (param i32 i32 i32 i32) (result i32)
    local.get 2
    i32.const -2128831035
    i32.mul
    local.set 2
    loop  ;; label = @1
      local.get 1
      if  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        local.get 2
        local.get 0
        i32.load8_u
        i32.xor
        i32.const 16777619
        i32.mul
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    local.get 2)
  (func $malloc (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 20
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 2
      i32.load offset=8
      local.set 4
      local.get 2
      i32.load offset=12
      local.set 5
      local.get 2
      i32.load offset=16
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 3
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 1
        global.set $__stack_pointer
        local.get 1
        i32.const 2
        i32.store offset=20
        i32.const 66212
        i32.load
        local.set 2
        i32.const 66212
        local.get 1
        i32.const 16
        i32.add
        i32.store
        local.get 1
        local.get 2
        i32.store offset=16
        local.get 0
        i32.eqz
        local.set 5
        i32.const 0
        local.set 4
      end
      block  ;; label = @2
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 5
          br_if 1 (;@2;)
          local.get 1
          local.get 0
          i32.const 0
          call $runtime.alloc
          local.tee 4
          i32.store offset=24
          local.get 1
          local.get 4
          i32.store offset=28
          local.get 1
          local.get 0
          i32.store offset=8
          local.get 1
          local.get 4
          i32.store offset=12
          local.get 1
          i32.const 8
          i32.add
          local.set 5
          local.get 1
          i32.const 12
          i32.add
          local.set 0
        end
        local.get 3
        i32.const 0
        global.get 1
        select
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 5
          call $runtime.hashmapBinarySet
          i32.const 0
          global.get 1
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          drop
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66212
        local.get 2
        i32.store
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 4
        return
      end
      unreachable
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 4
    i32.store offset=8
    local.get 3
    local.get 5
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=16
    global.get 2
    global.get 2
    i32.load
    i32.const 20
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBinarySet (type 4) (param i32 i32)
    (local i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 2
      i32.load offset=8
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 3
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 65568
        i32.load
        i32.const 65560
        i32.load
        local.get 0
        call $runtime.hash32
        local.set 2
      end
      local.get 3
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        i32.const 65556
        local.get 0
        local.get 1
        local.get 2
        call $runtime.hashmapSet
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      return
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store)
  (func $free (type 0) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 4
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 5
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 2
        global.set $__stack_pointer
        local.get 0
        i32.eqz
        local.set 1
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            br_if 1 (;@3;)
            local.get 2
            local.get 0
            i32.store offset=8
            local.get 2
            i32.const 4
            i32.add
            local.set 4
            local.get 2
            i32.const 8
            i32.add
            local.set 1
          end
          local.get 5
          i32.const 0
          global.get 1
          select
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.get 4
            call $runtime.hashmapBinaryGet
            i32.const 0
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
            local.set 1
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const 1
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            local.get 0
            i32.store offset=12
            local.get 2
            i32.const 12
            i32.add
            local.set 0
          end
          local.get 5
          i32.const 1
          i32.eq
          i32.const 1
          global.get 1
          select
          if  ;; label = @4
            local.get 0
            call $runtime.hashmapBinaryDelete
            i32.const 1
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 2
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      return
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    local.get 4
    i32.store offset=12
    global.get 2
    global.get 2
    i32.load
    i32.const 16
    i32.add
    i32.store)
  (func $runtime.hashmapBinaryGet (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 3
      i32.load
      local.set 0
      local.get 3
      i32.load offset=4
      local.set 1
      local.get 3
      i32.load offset=8
      local.set 3
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 2
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 65568
        i32.load
        i32.const 65560
        i32.load
        local.get 0
        call $runtime.hash32
        local.set 3
      end
      local.get 2
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        i32.const 65556
        local.get 0
        local.get 1
        local.get 3
        call $runtime.hashmapGet
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        return
      end
      unreachable
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 3
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBinaryDelete (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 48
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 1
      i32.load offset=8
      local.set 4
      local.get 1
      i32.load offset=12
      local.set 5
      local.get 1
      i32.load offset=16
      local.set 7
      local.get 1
      i32.load offset=24
      local.set 6
      local.get 1
      i32.load offset=28
      local.set 8
      local.get 1
      i32.load offset=32
      local.set 9
      local.get 1
      i32.load offset=36
      local.set 10
      local.get 1
      i32.load offset=40
      local.set 11
      local.get 1
      i32.load offset=44
      local.set 12
      local.get 1
      i32.load offset=20
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 13
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 3
        global.set $__stack_pointer
        local.get 3
        i32.const 24
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i64.const 0
        i64.store offset=16
        local.get 3
        i32.const 6
        i32.store offset=4
        i32.const 66212
        i32.load
        local.set 8
        i32.const 66212
        local.get 3
        i32.store
        local.get 3
        local.get 8
        i32.store
        i32.const 1
        local.get 0
        i32.const 65568
        i32.load
        i32.const 65560
        i32.load
        local.get 4
        call $runtime.hash32
        local.tee 4
        i32.const 24
        i32.shr_u
        local.get 4
        i32.const 16777216
        i32.lt_u
        local.tee 7
        select
        local.set 9
        i32.const 65556
        local.get 4
        call $runtime.hashmapBucketAddrForHash
        local.set 5
      end
      block  ;; label = @2
        loop  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 3
            local.get 5
            i32.store offset=8
            local.get 3
            local.get 5
            i32.store offset=12
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
            local.get 5
            i32.const 12
            i32.add
            local.set 10
            i32.const 0
            local.set 4
          end
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 4
                  i32.const 8
                  i32.eq
                  local.tee 7
                  br_if 1 (;@6;)
                  local.get 3
                  local.get 10
                  i32.const 65568
                  i32.load
                  local.tee 1
                  local.get 4
                  i32.mul
                  i32.add
                  local.tee 7
                  i32.store offset=16
                  local.get 9
                  local.get 4
                  local.get 5
                  i32.add
                  local.tee 11
                  i32.load8_u
                  i32.ne
                  local.set 6
                end
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 6
                    br_if 1 (;@7;)
                    local.get 3
                    i32.const 65580
                    i32.load
                    local.tee 12
                    i32.store offset=20
                    local.get 3
                    i32.const 65584
                    i32.load
                    local.tee 6
                    i32.store offset=24
                    local.get 6
                    i32.eqz
                    br_if 4 (;@4;)
                  end
                  local.get 13
                  i32.const 0
                  global.get 1
                  select
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    local.get 7
                    local.get 1
                    local.get 12
                    local.get 6
                    call_indirect (type 1)
                    i32.const 0
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 7 (;@1;)
                    drop
                    local.set 1
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    i32.const 1
                    i32.and
                    i32.eqz
                    local.tee 1
                    br_if 1 (;@7;)
                    local.get 11
                    i32.const 0
                    i32.store8
                    i32.const 65568
                    i32.load
                    local.tee 0
                    if  ;; label = @9
                      local.get 7
                      i32.const 0
                      local.get 0
                      memory.fill
                    end
                    i32.const 65572
                    i32.load
                    local.tee 0
                    if  ;; label = @9
                      local.get 5
                      i32.const 65568
                      i32.load
                      i32.const 3
                      i32.shl
                      i32.add
                      local.get 0
                      local.get 4
                      i32.mul
                      i32.add
                      i32.const 12
                      i32.add
                      i32.const 0
                      local.get 0
                      memory.fill
                    end
                    i32.const 65564
                    i32.const 65564
                    i32.load
                    i32.const 1
                    i32.sub
                    i32.store
                    br 6 (;@2;)
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  br 2 (;@5;)
                end
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 5
              i32.load offset=8
              local.set 5
              br 2 (;@3;)
            end
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66212
        local.get 8
        i32.store
        local.get 3
        i32.const 32
        i32.add
        global.set $__stack_pointer
      end
      return
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 2
    local.get 4
    i32.store offset=8
    local.get 2
    local.get 5
    i32.store offset=12
    local.get 2
    local.get 7
    i32.store offset=16
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 6
    i32.store offset=24
    local.get 2
    local.get 8
    i32.store offset=28
    local.get 2
    local.get 9
    i32.store offset=32
    local.get 2
    local.get 10
    i32.store offset=36
    local.get 2
    local.get 11
    i32.store offset=40
    local.get 2
    local.get 12
    i32.store offset=44
    global.get 2
    global.get 2
    i32.load
    i32.const 48
    i32.add
    i32.store)
  (func $runtime.resume$1$gowrapper (type 0) (param i32)
    unreachable)
  (func $runtime.scheduler (type 3)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 28
    i32.add
    i64.const 0
    i64.store align=4
    local.get 1
    i32.const 36
    i32.add
    i64.const 0
    i64.store align=4
    local.get 1
    i64.const 0
    i64.store offset=20 align=4
    local.get 1
    i32.const 7
    i32.store offset=12
    i32.const 66212
    i32.load
    local.set 5
    i32.const 66212
    local.get 1
    i32.const 8
    i32.add
    local.tee 2
    i32.store
    local.get 1
    local.get 5
    i32.store offset=8
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 66216
          i32.load8_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 66220
          i32.load
          local.tee 0
          i32.store offset=28
          local.get 1
          local.get 0
          i32.store offset=16
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 66220
          local.get 0
          i32.load
          local.tee 3
          i32.store
          local.get 1
          local.get 3
          i32.store offset=20
          local.get 1
          i32.const 66224
          i32.load
          local.tee 3
          i32.store offset=24
          local.get 0
          local.get 3
          i32.eq
          if  ;; label = @4
            i32.const 66224
            i32.const 0
            i32.store
          end
          local.get 0
          i32.const 0
          i32.store
          local.get 1
          i32.const 66160
          i32.load
          local.tee 3
          i32.store offset=32
          local.get 3
          i32.eqz
          if  ;; label = @4
            i32.const 66168
            global.get $__stack_pointer
            i32.store
            i32.const 66212
            i32.load
            local.set 2
          end
          i32.const 66160
          local.get 0
          i32.store
          i32.const 66212
          local.get 0
          i32.load offset=16
          i32.store
          local.get 0
          local.get 2
          i32.store offset=16
          local.get 0
          i32.const 20
          i32.add
          local.set 2
          local.get 0
          i32.load8_u offset=40
          if  ;; label = @4
            global.get $__stack_pointer
            local.get 2
            i32.load offset=12
            global.set $__stack_pointer
            local.get 2
            i32.load offset=4
            local.get 2
            i32.load
            i32.const 65600
            i32.const 1
            i32.store8
            local.get 2
            i32.const 8
            i32.add
            call $asyncify_start_rewind
            call_indirect (type 0)
            call $asyncify_stop_unwind
            global.set $__stack_pointer
            br 2 (;@2;)
          end
          global.get $__stack_pointer
          local.get 2
          i32.load offset=12
          global.set $__stack_pointer
          local.get 2
          i32.load offset=4
          local.get 2
          i32.load
          call_indirect (type 0)
          call $asyncify_stop_unwind
          global.set $__stack_pointer
          local.get 0
          i32.const 1
          i32.store8 offset=40
          br 1 (;@2;)
        end
        i32.const 66212
        local.get 5
        i32.store
        local.get 1
        i32.const 48
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 0
      i32.load offset=16
      local.set 2
      local.get 0
      i32.const 66212
      i32.load
      i32.store offset=16
      i32.const 66160
      local.get 3
      i32.store
      i32.const 66212
      local.get 2
      i32.store
      local.get 0
      i32.load offset=28
      local.set 3
      local.get 1
      local.get 0
      i32.load offset=32
      local.tee 0
      i32.store offset=40
      local.get 1
      local.get 3
      i32.store offset=36
      local.get 0
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
    end
    unreachable)
  (func $runtime.calculateHeapAddresses (type 3)
    (local i32)
    i32.const 66172
    i32.const 66164
    i32.load
    local.tee 0
    local.get 0
    i32.const 66320
    i32.sub
    i32.const 65
    i32.div_u
    i32.sub
    local.tee 0
    i32.store
    i32.const 66184
    local.get 0
    i32.const 66384
    i32.sub
    i32.const 4
    i32.shr_u
    i32.store)
  (func $runtime.buildFreeRanges (type 5) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i64.const 1
    i64.store offset=4 align=4
    i32.const 66180
    i32.const 0
    i32.store
    i32.const 66212
    i32.load
    local.set 7
    i32.const 66212
    local.get 5
    i32.store
    local.get 5
    local.get 7
    i32.store
    i32.const 66184
    i32.load
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.const 1
      i32.sub
      local.set 1
      local.get 0
      i32.const 1
      i32.add
      local.set 2
      local.get 0
      i32.const 4
      i32.shl
      i32.const 66384
      i32.add
      local.set 3
      i32.const 66172
      i32.load
      local.set 8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          local.set 9
          local.get 1
          local.set 0
          local.get 2
          i32.const 1
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const 2
          i32.sub
          local.set 4
          local.get 0
          i32.const 1
          i32.sub
          local.set 1
          local.get 3
          i32.const 16
          i32.sub
          local.set 3
          local.get 2
          i32.const 1
          i32.sub
          local.set 2
          local.get 8
          local.get 4
          i32.const 2
          i32.shr_u
          i32.add
          i32.load8_u
          local.get 4
          i32.const 3
          i32.and
          i32.shr_u
          i32.const 17
          i32.and
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            local.get 9
            local.set 4
            local.get 2
            local.get 3
            local.tee 1
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            local.set 10
            local.get 0
            i32.const 2
            i32.shr_u
            local.set 11
            local.get 0
            i32.const 1
            i32.sub
            local.set 0
            local.get 1
            i32.const 1
            i32.add
            local.set 3
            local.get 4
            i32.const 16
            i32.sub
            local.set 9
            local.get 8
            local.get 11
            i32.add
            i32.load8_u
            local.get 10
            i32.shr_u
            i32.const 17
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
        end
        local.get 5
        local.get 4
        i32.store offset=8
        local.get 4
        local.get 1
        call $runtime.insertFreeRange
        local.get 2
        local.get 1
        i32.sub
        local.set 0
        local.get 1
        local.get 6
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    i32.const 66212
    local.get 7
    i32.store
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 6
    i32.const 4
    i32.shl)
  (func $runtime.run$1$gowrapper (type 0) (param i32)
    (local i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 1
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        memory.size
        local.set 0
        i32.const 66216
        i32.const 1
        i32.store8
        i32.const 66164
        local.get 0
        i32.const 16
        i32.shl
        i32.store
      end
      local.get 1
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if (result i32)  ;; label = @5
              global.get 2
              global.get 2
              i32.load
              i32.const 4
              i32.sub
              i32.store
              global.get 2
              i32.load
              i32.load
            else
              i32.const 0
            end
            i32.const 0
            global.get 1
            select
            i32.eqz
            if  ;; label = @5
              i32.const 0
              local.set 0
              i32.const 0
              local.set 1
              global.get 1
              i32.const 2
              i32.eq
              if  ;; label = @6
                global.get 2
                global.get 2
                i32.load
                i32.const 12
                i32.sub
                i32.store
                global.get 2
                i32.load
                local.tee 3
                i32.load
                local.set 0
                local.get 3
                i32.load offset=4
                local.set 1
                local.get 3
                i32.load offset=8
                local.set 3
              end
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  global.get 1
                  i32.const 2
                  i32.eq
                  if  ;; label = @8
                    global.get 2
                    global.get 2
                    i32.load
                    i32.const 4
                    i32.sub
                    i32.store
                    global.get 2
                    i32.load
                    i32.load
                    local.set 4
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    global.get $__stack_pointer
                    i32.const 32
                    i32.sub
                    local.tee 0
                    global.set $__stack_pointer
                    local.get 0
                    i32.const 0
                    i32.store offset=24
                    local.get 0
                    i32.const 3
                    i32.store offset=12
                    i32.const 66212
                    i32.load
                    local.set 3
                    i32.const 66212
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.store
                    local.get 0
                    local.get 3
                    i32.store offset=8
                    local.get 0
                    i32.const 66160
                    i32.load
                    local.tee 1
                    i32.store offset=16
                    local.get 1
                    i32.eqz
                    local.set 2
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 2
                      br_if 1 (;@8;)
                      local.get 0
                      local.get 1
                      i32.load offset=36
                      local.tee 2
                      i32.store offset=20
                      local.get 2
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 2
                      i32.load
                      i32.const -1204030091
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 0
                      local.get 1
                      i32.store offset=24
                      local.get 1
                      i32.const 28
                      i32.add
                      local.set 1
                    end
                    local.get 4
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      i32.const 65600
                      i32.load8_u
                      if  ;; label = @10
                        call $asyncify_stop_unwind
                        i32.const 65600
                        i32.const 0
                        i32.store8
                      else
                        local.get 1
                        global.get $__stack_pointer
                        i32.store offset=4
                        local.get 1
                        call $asyncify_start_unwind
                      end
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 2 (;@7;)
                      drop
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      i32.const 66212
                      local.get 3
                      i32.store
                      local.get 0
                      i32.const 32
                      i32.add
                      global.set $__stack_pointer
                      br 3 (;@6;)
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    unreachable
                  end
                  br 1 (;@6;)
                end
                local.set 2
                global.get 2
                i32.load
                local.get 2
                i32.store
                global.get 2
                global.get 2
                i32.load
                i32.const 4
                i32.add
                i32.store
                global.get 2
                i32.load
                local.tee 2
                local.get 0
                i32.store
                local.get 2
                local.get 1
                i32.store offset=4
                local.get 2
                local.get 3
                i32.store offset=8
                global.get 2
                global.get 2
                i32.load
                i32.const 12
                i32.add
                i32.store
              end
              i32.const 0
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              unreachable
            end
            br 1 (;@3;)
          end
          local.set 0
          global.get 2
          i32.load
          local.get 0
          i32.store
          global.get 2
          global.get 2
          i32.load
          i32.const 4
          i32.add
          i32.store
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      return
    end
    local.set 0
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store)
  (func $runtime.insertFreeRange (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    i32.const 66212
    i32.load
    local.set 5
    i32.const 66180
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.load
              local.tee 6
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.load
              local.set 2
              local.get 1
              local.get 6
              i32.load
              i32.gt_u
              if  ;; label = @6
                local.get 2
                i32.const 4
                i32.add
                local.set 3
                local.get 2
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
            end
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load
            local.get 1
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            local.set 4
          end
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 0
          i32.store offset=8
          local.get 0
          local.get 4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.store
          local.get 3
          local.get 0
          i32.store
          br 1 (;@2;)
        end
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.load offset=8
        i32.store
        local.get 2
        local.get 0
        i32.store offset=8
      end
      i32.const 66212
      local.get 5
      i32.store
      return
    end
    unreachable)
  (func $runtime.growHeap (type 5) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 3
    i32.store offset=12
    i32.const 66212
    i32.load
    local.set 3
    i32.const 66212
    local.get 0
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 3
    i32.store offset=8
    memory.size
    memory.grow
    i32.const -1
    i32.ne
    local.tee 4
    if  ;; label = @1
      memory.size
      local.set 1
      i32.const 66164
      i32.load
      i32.const 66164
      local.get 1
      i32.const 16
      i32.shl
      i32.store
      local.get 0
      i32.const 66172
      i32.load
      local.tee 1
      i32.store offset=16
      local.get 0
      local.get 1
      i32.store offset=20
      call $runtime.calculateHeapAddresses
      local.get 0
      i32.const 66172
      i32.load
      local.tee 5
      i32.store offset=24
      local.get 1
      i32.sub
      local.tee 2
      if  ;; label = @2
        local.get 5
        local.get 1
        local.get 2
        memory.copy
      end
      call $runtime.buildFreeRanges
      drop
    end
    i32.const 66212
    local.get 3
    i32.store
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $runtime.scanConservative (type 4) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 2
    i32.store offset=4
    i32.const 66212
    i32.load
    local.set 3
    i32.const 66212
    local.get 2
    i32.store
    local.get 2
    local.get 3
    i32.store
    loop  ;; label = @1
      local.get 1
      i32.const 4
      i32.lt_u
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.store offset=8
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 0
        i32.load
        call $runtime.markRoot
        local.get 1
        i32.const 4
        i32.sub
        local.set 1
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    i32.const 66212
    local.get 3
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $runtime.scanWithMask (type 4) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 2
    i32.store offset=4
    i32.const 66212
    i32.load
    local.set 3
    i32.const 66212
    local.get 2
    i32.store
    local.get 2
    local.get 3
    i32.store
    loop  ;; label = @1
      local.get 1
      if  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        if  ;; label = @3
          local.get 2
          local.get 0
          i32.store offset=8
          local.get 2
          local.get 0
          i32.store offset=12
          local.get 0
          i32.load
          call $runtime.markRoot
        end
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.shr_u
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 66212
    local.get 3
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $runtime.markRoot (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 66212
    i32.load
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.const 66384
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 66172
      i32.load
      local.tee 1
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 66384
      i32.sub
      local.tee 0
      i32.const 6
      i32.shr_u
      i32.add
      i32.load8_u
      local.get 0
      i32.const 4
      i32.shr_u
      local.tee 0
      i32.const 3
      i32.and
      i32.shr_u
      i32.const 17
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i32.const 2
          i32.shr_u
          i32.add
          local.tee 5
          i32.load8_u
          local.tee 2
          i32.const 240
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const -1
            i32.xor
            i32.const -4
            i32.or
            local.set 3
            br 1 (;@3;)
          end
          i32.const -1
          local.set 3
          block  ;; label = @4
            local.get 2
            local.get 0
            i32.const 3
            i32.and
            local.tee 6
            i32.shr_u
            i32.const 17
            i32.and
            i32.const 16
            i32.sub
            br_table 1 (;@3;) 3 (;@1;) 0 (;@4;)
          end
          local.get 5
          i32.const 17
          local.get 6
          i32.shl
          local.get 2
          i32.or
          i32.store8
          local.get 0
          i32.const 4
          i32.shl
          i32.const 66384
          i32.add
          local.tee 0
          if  ;; label = @4
            local.get 0
            i32.const 66176
            i32.load
            i32.store
            i32.const 66176
            local.get 0
            i32.store
            br 3 (;@1;)
          end
          unreachable
        end
        local.get 0
        local.get 3
        i32.add
        local.set 0
        br 0 (;@2;)
      end
      unreachable
    end
    i32.const 66212
    local.get 4
    i32.store)
  (func $runtime.hashmapGet (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 56
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 1
      i32.load offset=16
      local.set 5
      local.get 1
      i32.load offset=20
      local.set 7
      local.get 1
      i32.load offset=24
      local.set 6
      local.get 1
      i32.load offset=28
      local.set 8
      local.get 1
      i32.load offset=32
      local.set 9
      local.get 1
      i32.load offset=36
      local.set 10
      local.get 1
      i32.load offset=40
      local.set 11
      local.get 1
      i32.load offset=44
      local.set 12
      local.get 1
      i32.load offset=48
      local.set 13
      local.get 1
      i32.load offset=52
      local.set 14
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 15
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 48
        i32.sub
        local.tee 5
        global.set $__stack_pointer
        local.get 5
        i32.const 32
        i32.add
        i64.const 0
        i64.store
        local.get 5
        i32.const 40
        i32.add
        i32.const 0
        i32.store
        local.get 5
        i64.const 0
        i64.store offset=24
        local.get 5
        i32.const 7
        i32.store offset=12
        i32.const 66212
        i32.load
        local.set 9
        i32.const 66212
        local.get 5
        i32.const 8
        i32.add
        i32.store
        local.get 5
        local.get 9
        i32.store offset=8
        local.get 5
        local.get 0
        local.get 3
        call $runtime.hashmapBucketAddrForHash
        local.tee 7
        i32.store offset=16
        i32.const 1
        local.get 3
        i32.const 24
        i32.shr_u
        local.tee 6
        local.get 3
        i32.const 16777216
        i32.lt_u
        local.tee 3
        select
        local.set 10
      end
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 5
                local.get 7
                i32.store offset=20
                local.get 7
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.const 12
                i32.add
                local.set 11
                i32.const 0
                local.set 3
              end
              loop  ;; label = @6
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 8
                    i32.eq
                    local.tee 6
                    br_if 1 (;@7;)
                    local.get 5
                    local.get 11
                    local.get 0
                    i32.load offset=12
                    local.tee 6
                    local.get 3
                    i32.mul
                    i32.add
                    local.tee 12
                    i32.store offset=24
                    local.get 5
                    local.get 11
                    local.get 6
                    i32.const 3
                    i32.shl
                    i32.add
                    local.get 0
                    i32.load offset=16
                    local.get 3
                    i32.mul
                    i32.add
                    local.tee 13
                    i32.store offset=28
                    local.get 10
                    local.get 3
                    local.get 7
                    i32.add
                    i32.load8_u
                    i32.ne
                    local.set 8
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 8
                      br_if 1 (;@8;)
                      local.get 5
                      local.get 0
                      i32.load offset=24
                      local.tee 14
                      i32.store offset=32
                      local.get 5
                      local.get 0
                      i32.load offset=28
                      local.tee 8
                      i32.store offset=36
                      local.get 8
                      i32.eqz
                      br_if 6 (;@3;)
                    end
                    local.get 15
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      local.get 1
                      local.get 12
                      local.get 6
                      local.get 14
                      local.get 8
                      call_indirect (type 1)
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 6
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 6
                      br_if 1 (;@8;)
                      local.get 0
                      i32.load offset=16
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 2
                      local.get 13
                      local.get 0
                      memory.copy
                      br 7 (;@2;)
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    br 2 (;@6;)
                  end
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 5
                local.get 7
                i32.load offset=8
                local.tee 7
                i32.store offset=40
                br 2 (;@4;)
              end
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            i32.const 0
            local.get 0
            memory.fill
            br 2 (;@2;)
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 66212
        local.get 9
        i32.store
        local.get 5
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 7
        i32.const 0
        i32.ne
        return
      end
      unreachable
    end
    local.set 4
    global.get 2
    i32.load
    local.get 4
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 4
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 2
    i32.store offset=8
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 5
    i32.store offset=16
    local.get 4
    local.get 7
    i32.store offset=20
    local.get 4
    local.get 6
    i32.store offset=24
    local.get 4
    local.get 8
    i32.store offset=28
    local.get 4
    local.get 9
    i32.store offset=32
    local.get 4
    local.get 10
    i32.store offset=36
    local.get 4
    local.get 11
    i32.store offset=40
    local.get 4
    local.get 12
    i32.store offset=44
    local.get 4
    local.get 13
    i32.store offset=48
    local.get 4
    local.get 14
    i32.store offset=52
    global.get 2
    global.get 2
    i32.load
    i32.const 56
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBucketAddrForHash (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=12
    i32.add
    i32.const 3
    i32.shl
    i32.const 12
    i32.add
    i32.const -1
    i32.const -1
    local.get 0
    i32.load8_u offset=20
    local.tee 0
    i32.shl
    i32.const -1
    i32.xor
    local.get 0
    i32.const 31
    i32.gt_u
    select
    local.get 1
    i32.and
    i32.mul
    i32.add)
  (func $runtime.hashmapSet (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 80
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 1
      i32.load offset=16
      local.set 4
      local.get 1
      i32.load offset=20
      local.set 9
      local.get 1
      i32.load offset=24
      local.set 6
      local.get 1
      i32.load offset=28
      local.set 7
      local.get 1
      i32.load offset=32
      local.set 5
      local.get 1
      i32.load offset=36
      local.set 11
      local.get 1
      i32.load offset=40
      local.set 12
      local.get 1
      i32.load offset=44
      local.set 13
      local.get 1
      i32.load offset=48
      local.set 10
      local.get 1
      i32.load offset=52
      local.set 14
      local.get 1
      i32.load offset=56
      local.set 15
      local.get 1
      i32.load offset=60
      local.set 16
      local.get 1
      i32.load offset=64
      local.set 17
      local.get 1
      i32.load offset=68
      local.set 19
      local.get 1
      i32.load offset=72
      local.set 20
      local.get 1
      i32.load offset=76
      local.set 21
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 18
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 272
        i32.sub
        local.tee 4
        global.set $__stack_pointer
        local.get 4
        i32.const 63
        i32.store offset=12
        local.get 4
        i32.const 16
        i32.add
        i32.const 0
        i32.const 252
        memory.fill
        local.get 4
        i32.const 66212
        i32.load
        local.tee 21
        i32.store offset=8
        i32.const 66212
        local.get 4
        i32.const 8
        i32.add
        i32.store
        local.get 0
        i32.eqz
        local.set 5
      end
      block  ;; label = @2
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 5
          br_if 1 (;@2;)
          local.get 0
          i32.load8_u offset=20
          local.tee 9
          i32.const 29
          i32.gt_u
          local.set 5
        end
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 5
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=8
            local.tee 15
            i32.const 6
            local.get 9
            i32.shl
            i32.le_u
            local.tee 5
            br_if 1 (;@3;)
            i32.const 40
            i32.const 61525
            call $runtime.alloc
            local.tee 7
            local.get 0
            i32.load
            local.tee 3
            i32.store
            local.get 7
            local.get 0
            i64.load offset=4 align=4
            i64.store offset=4 align=4
            local.get 7
            local.get 0
            i64.load offset=12 align=4
            i64.store offset=12 align=4
            local.get 7
            local.get 0
            i32.load8_u offset=20
            i32.store8 offset=20
            local.get 7
            local.get 0
            i32.load offset=24
            local.tee 6
            i32.store offset=24
            local.get 7
            local.get 0
            i32.load offset=28
            local.tee 11
            i32.store offset=28
            local.get 7
            local.get 0
            i32.load offset=32
            local.tee 5
            i32.store offset=32
            local.get 7
            local.get 0
            i32.load offset=36
            local.tee 13
            i32.store offset=36
            local.get 4
            local.get 7
            i32.store offset=16
            local.get 4
            local.get 13
            i32.store offset=36
            local.get 4
            local.get 5
            i32.store offset=32
            local.get 4
            local.get 11
            i32.store offset=28
            local.get 4
            local.get 6
            i32.store offset=24
            local.get 4
            local.get 3
            i32.store offset=20
            local.get 7
            i32.const 0
            i32.store offset=8
            call $runtime.fastrand
            local.set 3
            local.get 7
            local.get 9
            i32.const 1
            i32.add
            local.tee 5
            i32.store8 offset=20
            local.get 7
            local.get 3
            i32.store offset=4
            local.get 7
            local.get 0
            i32.load offset=12
            local.get 0
            i32.load offset=16
            i32.add
            i32.const 3
            i32.shl
            i32.const 12
            i32.add
            local.get 5
            i32.shl
            i32.const 0
            call $runtime.alloc
            local.tee 3
            i32.store
            local.get 4
            local.get 3
            i32.store offset=40
            local.get 4
            local.get 0
            i32.load offset=12
            i32.const 0
            call $runtime.alloc
            local.tee 12
            i32.store offset=44
            local.get 4
            local.get 0
            i32.load offset=16
            i32.const 0
            call $runtime.alloc
            local.tee 19
            i32.store offset=48
            i32.const 0
            local.set 17
            i32.const 0
            local.set 9
            i32.const 0
            local.set 14
            i32.const 0
            local.set 15
            i32.const 0
            local.set 16
            i32.const 0
            local.set 20
            i32.const 0
            local.set 5
            i32.const 0
            local.set 3
          end
          loop  ;; label = @4
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 4
              local.get 5
              i32.store offset=52
              local.get 5
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 0
                i32.load
                local.tee 5
                i32.store offset=60
                local.get 4
                local.get 5
                i32.store offset=56
                local.get 0
                i32.load8_u offset=20
                local.set 3
                call $runtime.fastrand
                local.set 14
                call $runtime.fastrand
                local.set 6
                local.get 4
                local.get 5
                local.get 14
                i32.const 1
                local.get 3
                i32.shl
                i32.const 0
                local.get 3
                i32.const 31
                i32.le_u
                select
                local.tee 20
                i32.const 1
                i32.sub
                i32.and
                local.tee 14
                local.get 0
                i32.load offset=12
                local.get 0
                i32.load offset=16
                i32.add
                i32.const 3
                i32.shl
                i32.const 12
                i32.add
                i32.mul
                i32.add
                local.tee 3
                i32.store offset=64
                local.get 6
                i32.const 7
                i32.and
                local.tee 9
                local.set 15
                local.get 14
                local.set 16
              end
              local.get 4
              local.get 5
              i32.store offset=80
              local.get 4
              local.get 5
              i32.store offset=100
            end
            block  ;; label = @5
              loop  ;; label = @6
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 4
                  local.get 3
                  i32.store offset=68
                  local.get 17
                  local.get 14
                  local.get 16
                  i32.eq
                  local.tee 13
                  local.get 9
                  i32.const 255
                  i32.and
                  local.tee 6
                  local.get 15
                  i32.const 255
                  i32.and
                  i32.eq
                  i32.and
                  i32.and
                  br_if 2 (;@5;)
                  local.get 6
                  i32.const 8
                  i32.ge_u
                  if  ;; label = @8
                    local.get 3
                    i32.eqz
                    br_if 6 (;@2;)
                    local.get 4
                    local.get 3
                    i32.load offset=8
                    local.tee 3
                    i32.store offset=72
                    i32.const 0
                    local.set 9
                  end
                  local.get 4
                  local.get 3
                  i32.store offset=92
                  local.get 4
                  local.get 3
                  i32.store offset=108
                  local.get 4
                  local.get 3
                  i32.store offset=88
                  local.get 4
                  local.get 3
                  i32.store offset=76
                  local.get 3
                  i32.eqz
                  if  ;; label = @8
                    local.get 20
                    local.get 14
                    i32.const 1
                    i32.add
                    local.tee 3
                    i32.le_u
                    local.set 6
                    local.get 4
                    local.get 5
                    local.get 0
                    i32.load offset=12
                    local.get 0
                    i32.load offset=16
                    i32.add
                    i32.const 3
                    i32.shl
                    i32.const 12
                    i32.add
                    local.tee 10
                    i32.const 0
                    local.get 3
                    local.get 6
                    select
                    local.tee 14
                    i32.mul
                    i32.add
                    local.tee 3
                    i32.store offset=84
                    local.get 6
                    local.get 17
                    i32.or
                    local.set 17
                    br 2 (;@6;)
                  end
                  local.get 9
                  i32.const 255
                  i32.and
                  local.tee 11
                  local.get 3
                  i32.add
                  i32.load8_u
                  local.tee 10
                  i32.eqz
                  if  ;; label = @8
                    local.get 9
                    i32.const 1
                    i32.add
                    local.set 9
                    br 2 (;@6;)
                  end
                  local.get 4
                  local.get 11
                  local.get 0
                  i32.load offset=12
                  local.tee 6
                  i32.mul
                  local.get 3
                  i32.add
                  i32.const 12
                  i32.add
                  local.tee 10
                  i32.store offset=96
                  local.get 6
                  if  ;; label = @8
                    local.get 12
                    local.get 10
                    local.get 6
                    memory.copy
                  end
                  local.get 4
                  local.get 0
                  i32.load
                  local.tee 13
                  i32.store offset=104
                  local.get 5
                  local.get 13
                  i32.ne
                  local.set 10
                end
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 10
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      i32.const 3
                      i32.shl
                      local.get 3
                      i32.add
                      local.set 13
                      local.get 4
                      local.get 13
                      local.get 11
                      local.get 0
                      i32.load offset=16
                      local.tee 6
                      i32.mul
                      i32.add
                      i32.const 12
                      i32.add
                      local.tee 11
                      i32.store offset=112
                      local.get 6
                      i32.eqz
                      local.tee 10
                      i32.eqz
                      if  ;; label = @10
                        local.get 19
                        local.get 11
                        local.get 6
                        memory.copy
                      end
                      local.get 9
                      i32.const 1
                      i32.add
                      local.set 9
                      br 2 (;@7;)
                    end
                    local.get 4
                    local.get 0
                    i32.load offset=32
                    local.tee 13
                    i32.store offset=116
                    local.get 4
                    local.get 0
                    i32.load offset=36
                    local.tee 11
                    i32.store offset=120
                    local.get 11
                    i32.eqz
                    br_if 6 (;@2;)
                    local.get 9
                    i32.const 1
                    i32.add
                    local.set 9
                    local.get 0
                    i32.load offset=4
                    local.set 10
                  end
                  local.get 18
                  i32.const 0
                  global.get 1
                  select
                  i32.eqz
                  if  ;; label = @8
                    local.get 12
                    local.get 6
                    local.get 10
                    local.get 13
                    local.get 11
                    call_indirect (type 1)
                    i32.const 0
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 7 (;@1;)
                    drop
                    local.set 10
                  end
                  local.get 18
                  i32.const 1
                  i32.eq
                  i32.const 1
                  global.get 1
                  select
                  if  ;; label = @8
                    local.get 0
                    local.get 12
                    local.get 19
                    local.get 10
                    call $runtime.hashmapGet
                    i32.const 1
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 7 (;@1;)
                    drop
                    local.set 10
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 10
                    i32.const 1
                    i32.and
                    i32.eqz
                    local.tee 10
                    br_if 2 (;@6;)
                  end
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 7
                i32.load offset=32
                local.tee 11
                i32.store offset=124
                local.get 4
                local.get 7
                i32.load offset=36
                local.tee 6
                i32.store offset=128
                local.get 6
                i32.eqz
                br_if 4 (;@2;)
                local.get 7
                i32.load offset=12
                local.set 13
                local.get 7
                i32.load offset=4
                local.set 10
              end
              local.get 18
              i32.const 2
              i32.eq
              i32.const 1
              global.get 1
              select
              if  ;; label = @6
                local.get 12
                local.get 13
                local.get 10
                local.get 11
                local.get 6
                call_indirect (type 1)
                i32.const 2
                global.get 1
                i32.const 1
                i32.eq
                br_if 5 (;@1;)
                drop
                local.set 10
              end
              local.get 18
              i32.const 3
              i32.eq
              i32.const 1
              global.get 1
              select
              if  ;; label = @6
                local.get 7
                local.get 12
                local.get 19
                local.get 10
                call $runtime.hashmapSet
                i32.const 3
                global.get 1
                i32.const 1
                i32.eq
                br_if 5 (;@1;)
                drop
              end
              global.get 1
              i32.eqz
              br_if 1 (;@4;)
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 4
            local.get 7
            i32.load
            local.tee 6
            i32.store offset=152
            local.get 4
            local.get 7
            i32.load offset=24
            local.tee 11
            i32.store offset=156
            local.get 4
            local.get 6
            i32.store offset=132
            local.get 4
            local.get 7
            i32.load offset=28
            local.tee 12
            i32.store offset=160
            local.get 4
            local.get 11
            i32.store offset=136
            local.get 4
            local.get 7
            i32.load offset=32
            local.tee 9
            i32.store offset=164
            local.get 4
            local.get 12
            i32.store offset=140
            local.get 4
            local.get 7
            i32.load offset=36
            local.tee 3
            i32.store offset=168
            local.get 4
            local.get 9
            i32.store offset=144
            local.get 7
            i64.load offset=4 align=4
            local.set 22
            local.get 7
            i64.load offset=12 align=4
            local.set 23
            local.get 7
            i32.load8_u offset=20
            local.set 13
            local.get 0
            local.get 3
            i32.store offset=36
            local.get 0
            local.get 9
            i32.store offset=32
            local.get 0
            local.get 12
            i32.store offset=28
            local.get 0
            local.get 11
            i32.store offset=24
            local.get 0
            local.get 13
            i32.store8 offset=20
            local.get 0
            local.get 23
            i64.store offset=12 align=4
            local.get 0
            local.get 22
            i64.store offset=4 align=4
            local.get 0
            local.get 6
            i32.store
            local.get 4
            local.get 3
            i32.store offset=148
            local.get 4
            local.get 9
            i32.store offset=172
            local.get 4
            local.get 3
            i32.store offset=176
            local.get 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.load offset=12
            local.set 15
            local.get 0
            i32.load offset=4
            local.set 5
          end
          local.get 18
          i32.const 4
          i32.eq
          i32.const 1
          global.get 1
          select
          if  ;; label = @4
            local.get 1
            local.get 15
            local.get 5
            local.get 9
            local.get 3
            call_indirect (type 1)
            i32.const 4
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
            local.set 3
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 4
          local.get 0
          local.get 3
          call $runtime.hashmapBucketAddrForHash
          local.tee 12
          i32.store offset=180
          i32.const 1
          local.get 3
          i32.const 24
          i32.shr_u
          local.tee 5
          local.get 3
          i32.const 16777216
          i32.lt_u
          select
          local.set 7
          i32.const 0
          local.set 9
          i32.const 0
          local.set 11
          i32.const 0
          local.set 6
          i32.const 0
          local.set 3
        end
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 3
                i32.store offset=196
                local.get 4
                local.get 12
                local.tee 5
                i32.store offset=200
                local.get 4
                local.get 9
                i32.store offset=192
                local.get 4
                local.get 11
                i32.store offset=188
                local.get 4
                local.get 6
                i32.store offset=184
                local.get 5
                i32.eqz
                br_if 1 (;@5;)
                local.get 5
                i32.const 12
                i32.add
                local.set 15
                i32.const 0
                local.set 3
              end
              loop  ;; label = @6
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    local.get 11
                    i32.store offset=208
                    local.get 4
                    local.get 9
                    i32.store offset=212
                    local.get 4
                    local.get 6
                    i32.store offset=204
                    local.get 3
                    i32.const 8
                    i32.eq
                    local.tee 16
                    br_if 1 (;@7;)
                    local.get 4
                    local.get 0
                    i32.load offset=12
                    local.tee 14
                    local.get 3
                    i32.mul
                    local.get 15
                    i32.add
                    local.tee 17
                    i32.store offset=216
                    local.get 4
                    local.get 14
                    i32.const 3
                    i32.shl
                    local.get 15
                    i32.add
                    local.get 0
                    i32.load offset=16
                    local.get 3
                    i32.mul
                    i32.add
                    local.tee 16
                    i32.store offset=220
                    local.get 4
                    local.get 9
                    local.get 17
                    local.get 9
                    local.get 3
                    local.get 5
                    i32.add
                    local.tee 12
                    i32.load8_u
                    i32.or
                    local.tee 13
                    select
                    local.tee 9
                    i32.store offset=232
                    local.get 4
                    local.get 6
                    local.get 12
                    local.get 13
                    select
                    local.tee 6
                    i32.store offset=224
                    local.get 4
                    local.get 11
                    local.get 16
                    local.get 13
                    select
                    local.tee 11
                    i32.store offset=228
                    local.get 7
                    local.get 12
                    i32.load8_u
                    i32.ne
                    local.set 12
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 12
                      br_if 1 (;@8;)
                      local.get 4
                      local.get 0
                      i32.load offset=24
                      local.tee 13
                      i32.store offset=236
                      local.get 4
                      local.get 0
                      i32.load offset=28
                      local.tee 12
                      i32.store offset=240
                      local.get 12
                      i32.eqz
                      br_if 7 (;@2;)
                    end
                    local.get 18
                    i32.const 5
                    i32.eq
                    i32.const 1
                    global.get 1
                    select
                    if  ;; label = @9
                      local.get 1
                      local.get 17
                      local.get 14
                      local.get 13
                      local.get 12
                      call_indirect (type 1)
                      i32.const 5
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 14
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 14
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 14
                      br_if 1 (;@8;)
                      local.get 0
                      i32.load offset=16
                      local.tee 0
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 16
                      local.get 2
                      local.get 0
                      memory.copy
                      br 6 (;@3;)
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    br 2 (;@6;)
                  end
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 5
                i32.load offset=8
                local.tee 12
                i32.store offset=244
                local.get 5
                local.set 3
                br 2 (;@4;)
              end
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 9
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.load offset=12
              local.get 0
              i32.load offset=16
              i32.add
              i32.const 3
              i32.shl
              i32.const 12
              i32.add
              i32.const 0
              call $runtime.alloc
              local.set 10
              local.get 0
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
              i32.store offset=8
              local.get 10
              i32.const 12
              i32.add
              local.set 5
              local.get 0
              i32.load offset=12
              local.tee 14
              if  ;; label = @6
                local.get 5
                local.get 1
                local.get 14
                memory.copy
              end
              local.get 0
              i32.load offset=16
              local.tee 0
              if  ;; label = @6
                local.get 5
                local.get 14
                i32.const 3
                i32.shl
                i32.add
                local.get 2
                local.get 0
                memory.copy
              end
              local.get 10
              local.get 7
              i32.store8
              local.get 3
              i32.eqz
              br_if 3 (;@2;)
              local.get 3
              local.get 10
              i32.store offset=8
              br 2 (;@3;)
            end
            local.get 0
            local.get 0
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            local.get 0
            i32.load offset=12
            local.tee 3
            if  ;; label = @5
              local.get 9
              local.get 1
              local.get 3
              memory.copy
            end
            local.get 0
            i32.load offset=16
            local.tee 0
            if  ;; label = @5
              local.get 11
              local.get 2
              local.get 0
              memory.copy
            end
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
            local.get 6
            local.get 7
            i32.store8
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          i32.const 66212
          local.get 21
          i32.store
          local.get 4
          i32.const 272
          i32.add
          global.set $__stack_pointer
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      return
    end
    local.set 8
    global.get 2
    i32.load
    local.get 8
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 8
    local.get 0
    i32.store
    local.get 8
    local.get 1
    i32.store offset=4
    local.get 8
    local.get 2
    i32.store offset=8
    local.get 8
    local.get 3
    i32.store offset=12
    local.get 8
    local.get 4
    i32.store offset=16
    local.get 8
    local.get 9
    i32.store offset=20
    local.get 8
    local.get 6
    i32.store offset=24
    local.get 8
    local.get 7
    i32.store offset=28
    local.get 8
    local.get 5
    i32.store offset=32
    local.get 8
    local.get 11
    i32.store offset=36
    local.get 8
    local.get 12
    i32.store offset=40
    local.get 8
    local.get 13
    i32.store offset=44
    local.get 8
    local.get 10
    i32.store offset=48
    local.get 8
    local.get 14
    i32.store offset=52
    local.get 8
    local.get 15
    i32.store offset=56
    local.get 8
    local.get 16
    i32.store offset=60
    local.get 8
    local.get 17
    i32.store offset=64
    local.get 8
    local.get 19
    i32.store offset=68
    local.get 8
    local.get 20
    i32.store offset=72
    local.get 8
    local.get 21
    i32.store offset=76
    global.get 2
    global.get 2
    i32.load
    i32.const 80
    i32.add
    i32.store)
  (func $runtime.fastrand (type 5) (result i32)
    (local i32)
    i32.const 65552
    i32.const 65552
    i32.load
    local.tee 0
    i32.const 7
    i32.shl
    local.get 0
    i32.xor
    local.tee 0
    i32.const 1
    i32.shr_u
    local.get 0
    i32.xor
    local.tee 0
    i32.const 9
    i32.shl
    local.get 0
    i32.xor
    local.tee 0
    i32.store
    local.get 0)
  (func $malloc.command_export (type 6) (param i32) (result i32)
    (local i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get 2
      i32.load
      i32.load
      local.set 0
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        call $malloc
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        return
      end
      unreachable
    end
    local.set 1
    global.get 2
    i32.load
    local.get 1
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0)
  (func $free.command_export (type 0) (param i32)
    (local i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get 2
      i32.load
      i32.load
      local.set 0
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        call $free
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      return
    end
    local.set 1
    global.get 2
    i32.load
    local.get 1
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store)
  (func $calloc.command_export (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.set 2
          global.get 1
          i32.const 2
          i32.eq
          if  ;; label = @4
            global.get 2
            global.get 2
            i32.load
            i32.const 12
            i32.sub
            i32.store
            global.get 2
            i32.load
            local.tee 4
            i32.load
            local.set 2
            local.get 4
            i32.load offset=4
            local.set 5
            local.get 4
            i32.load offset=8
            local.set 4
          end
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if  ;; label = @5
              global.get 2
              global.get 2
              i32.load
              i32.const 4
              i32.sub
              i32.store
              global.get 2
              i32.load
              i32.load
              local.set 3
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              global.get $__stack_pointer
              i32.const 16
              i32.sub
              local.tee 5
              global.set $__stack_pointer
              i32.const 66212
              i32.load
              local.set 4
              i32.const 66212
              local.get 5
              i32.store
              local.get 1
              local.get 2
              i32.mul
              local.set 2
            end
            local.get 3
            i32.const 0
            global.get 1
            select
            i32.eqz
            if  ;; label = @5
              local.get 2
              call $malloc
              i32.const 0
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
              local.set 2
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              i32.const 66212
              local.get 4
              i32.store
              local.get 5
              i32.const 16
              i32.add
              global.set $__stack_pointer
              local.get 2
              br 2 (;@3;)
            end
            unreachable
          end
          local.set 3
          global.get 2
          i32.load
          local.get 3
          i32.store
          global.get 2
          global.get 2
          i32.load
          i32.const 4
          i32.add
          i32.store
          global.get 2
          i32.load
          local.tee 3
          local.get 2
          i32.store
          local.get 3
          local.get 5
          i32.store offset=4
          local.get 3
          local.get 4
          i32.store offset=8
          global.get 2
          global.get 2
          i32.load
          i32.const 12
          i32.add
          i32.store
          i32.const 0
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        return
      end
      unreachable
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    global.get 2
    global.get 2
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0)
  (func $realloc.command_export (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.set 3
          local.get 1
          local.set 5
          global.get 1
          i32.const 2
          i32.eq
          if  ;; label = @4
            global.get 2
            global.get 2
            i32.load
            i32.const 24
            i32.sub
            i32.store
            global.get 2
            i32.load
            local.tee 5
            i32.load
            local.set 3
            local.get 5
            i32.load offset=8
            local.set 2
            local.get 5
            i32.load offset=12
            local.set 4
            local.get 5
            i32.load offset=16
            local.set 6
            local.get 5
            i32.load offset=20
            local.set 9
            local.get 5
            i32.load offset=4
            local.set 5
          end
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if  ;; label = @5
              global.get 2
              global.get 2
              i32.load
              i32.const 4
              i32.sub
              i32.store
              global.get 2
              i32.load
              i32.load
              local.set 8
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              global.get $__stack_pointer
              i32.const 32
              i32.sub
              local.tee 2
              global.set $__stack_pointer
              local.get 2
              i32.const 4
              i32.store offset=12
              i32.const 66212
              i32.load
              local.set 9
              i32.const 66212
              local.get 2
              i32.const 8
              i32.add
              local.tee 4
              i32.store
              local.get 2
              local.get 9
              i32.store offset=8
              i32.const 0
              local.set 6
            end
            block  ;; label = @5
              block  ;; label = @6
                global.get 1
                i32.const 1
                local.get 5
                select
                if  ;; label = @7
                  local.get 8
                  i32.const 0
                  global.get 1
                  select
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    call $free
                    i32.const 0
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    drop
                  end
                  global.get 1
                  i32.eqz
                  br_if 1 (;@6;)
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 2
                  local.get 5
                  i32.const 0
                  call $runtime.alloc
                  local.tee 6
                  i32.store offset=24
                  local.get 2
                  local.get 6
                  i32.store offset=28
                  local.get 2
                  local.get 6
                  i32.store offset=20
                  local.get 2
                  local.get 6
                  i32.store offset=16
                  local.get 3
                  i32.eqz
                  local.set 4
                end
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    br_if 1 (;@7;)
                    local.get 2
                    local.get 3
                    i32.store offset=4
                    local.get 2
                    i32.const 4
                    i32.add
                    local.set 4
                  end
                  local.get 8
                  i32.const 1
                  i32.eq
                  i32.const 1
                  global.get 1
                  select
                  if  ;; label = @8
                    local.get 4
                    local.get 2
                    call $runtime.hashmapBinaryGet
                    i32.const 1
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    drop
                    local.set 4
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 3 (;@5;)
                    local.get 5
                    local.get 2
                    i32.load
                    local.tee 4
                    i32.or
                    i32.const 0
                    i32.lt_s
                    br_if 3 (;@5;)
                    local.get 4
                    local.get 5
                    local.get 4
                    local.get 5
                    i32.lt_u
                    select
                    local.tee 4
                    if  ;; label = @9
                      local.get 6
                      local.get 3
                      local.get 4
                      memory.copy
                    end
                    local.get 2
                    local.get 3
                    i32.store offset=4
                    local.get 2
                    i32.const 4
                    i32.add
                    local.set 3
                  end
                  local.get 8
                  i32.const 2
                  i32.eq
                  i32.const 1
                  global.get 1
                  select
                  if  ;; label = @8
                    local.get 3
                    call $runtime.hashmapBinaryDelete
                    i32.const 2
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    drop
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 2
                  local.get 5
                  i32.store
                  local.get 2
                  local.get 6
                  i32.store offset=4
                  local.get 2
                  i32.const 4
                  i32.add
                  local.set 3
                end
                local.get 8
                i32.const 3
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 3
                  local.get 2
                  call $runtime.hashmapBinarySet
                  i32.const 3
                  global.get 1
                  i32.const 1
                  i32.eq
                  br_if 3 (;@4;)
                  drop
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                i32.const 66212
                local.get 9
                i32.store
                local.get 2
                i32.const 32
                i32.add
                global.set $__stack_pointer
                local.get 6
                br 3 (;@3;)
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              unreachable
            end
            unreachable
          end
          local.set 7
          global.get 2
          i32.load
          local.get 7
          i32.store
          global.get 2
          global.get 2
          i32.load
          i32.const 4
          i32.add
          i32.store
          global.get 2
          i32.load
          local.tee 7
          local.get 3
          i32.store
          local.get 7
          local.get 5
          i32.store offset=4
          local.get 7
          local.get 2
          i32.store offset=8
          local.get 7
          local.get 4
          i32.store offset=12
          local.get 7
          local.get 6
          i32.store offset=16
          local.get 7
          local.get 9
          i32.store offset=20
          global.get 2
          global.get 2
          i32.load
          i32.const 24
          i32.add
          i32.store
          i32.const 0
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        return
      end
      unreachable
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    global.get 2
    global.get 2
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0)
  (func $resume.command_export (type 3)
    i32.const 1
    call $internal/task.start
    call $runtime.scheduler)
  (func $go_scheduler.command_export (type 3)
    call $runtime.scheduler)
  (func $_start.command_export (type 3)
    (local i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        global.get 1
        i32.const 2
        i32.eq
        if  ;; label = @3
          global.get 2
          global.get 2
          i32.load
          i32.const 12
          i32.sub
          i32.store
          global.get 2
          i32.load
          local.tee 2
          i32.load
          local.set 0
          local.get 2
          i32.load offset=8
          local.set 3
          local.get 2
          i32.load offset=4
          local.set 1
        end
        block  ;; label = @3
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if  ;; label = @5
              global.get 2
              global.get 2
              i32.load
              i32.const 4
              i32.sub
              i32.store
              global.get 2
              i32.load
              i32.load
              local.set 4
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              global.get $__stack_pointer
              i32.const 16
              i32.sub
              local.tee 1
              global.set $__stack_pointer
              local.get 1
              i32.const 0
              i32.store offset=12
              local.get 1
              i64.const 2
              i64.store offset=4 align=4
              i32.const 66212
              i32.load
              local.set 3
              i32.const 66212
              local.get 1
              i32.store
              local.get 1
              local.get 3
              i32.store
              i32.const 66164
              memory.size
              i32.const 16
              i32.shl
              local.tee 0
              i32.store
            end
            local.get 4
            i32.const 0
            global.get 1
            select
            i32.eqz
            if  ;; label = @5
              call $arc4random
              i32.const 0
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
              local.set 0
            end
            local.get 4
            i32.const 1
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              call $arc4random
              drop
              i32.const 1
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              i32.const 65552
              local.get 0
              i32.const 1
              i32.or
              i32.store
              call $runtime.calculateHeapAddresses
              local.get 1
              i32.const 66172
              i32.load
              local.tee 0
              i32.store offset=12
              local.get 1
              local.get 0
              i32.store offset=8
              i32.const 66164
              i32.load
              local.get 0
              i32.sub
              local.tee 2
              if  ;; label = @6
                local.get 0
                i32.const 0
                local.get 2
                memory.fill
              end
              call $runtime.buildFreeRanges
              drop
              i32.const 2
              call $internal/task.start
              call $runtime.scheduler
              i32.const 66216
              i32.load8_u
              i32.eqz
              local.set 0
            end
            global.get 1
            i32.const 1
            local.get 0
            select
            i32.const 0
            local.get 4
            i32.const 2
            i32.eq
            i32.const 1
            global.get 1
            select
            select
            if  ;; label = @5
              i32.const 0
              call $runtime.proc_exit
              i32.const 2
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              i32.const 66212
              local.get 3
              i32.store
              local.get 1
              i32.const 16
              i32.add
              global.set $__stack_pointer
            end
            br 1 (;@3;)
          end
          local.set 2
          global.get 2
          i32.load
          local.get 2
          i32.store
          global.get 2
          global.get 2
          i32.load
          i32.const 4
          i32.add
          i32.store
          global.get 2
          i32.load
          local.tee 2
          local.get 0
          i32.store
          local.get 2
          local.get 1
          i32.store offset=4
          local.get 2
          local.get 3
          i32.store offset=8
          global.get 2
          global.get 2
          i32.load
          i32.const 12
          i32.add
          i32.store
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      return
    end
    local.set 0
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store)
  (func $asyncify_start_unwind (type 0) (param i32)
    i32.const 1
    global.set 1
    local.get 0
    global.set 2
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_stop_unwind (type 3)
    i32.const 0
    global.set 1
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_start_rewind (type 0) (param i32)
    i32.const 2
    global.set 1
    local.get 0
    global.set 2
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_get_state (type 5) (result i32)
    global.get 1)
  (table (;0;) 5 5 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 65536))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "malloc" (func $malloc.command_export))
  (export "free" (func $free.command_export))
  (export "calloc" (func $calloc.command_export))
  (export "realloc" (func $realloc.command_export))
  (export "resume" (func $resume.command_export))
  (export "go_scheduler" (func $go_scheduler.command_export))
  (export "_start" (func $_start.command_export))
  (export "asyncify_start_unwind" (func $asyncify_start_unwind))
  (export "asyncify_stop_unwind" (func $asyncify_stop_unwind))
  (export "asyncify_start_rewind" (func $asyncify_start_rewind))
  (export "asyncify_stop_rewind" (func $asyncify_stop_unwind))
  (export "asyncify_get_state" (func $asyncify_get_state))
  (elem (;0;) (i32.const 1) func $runtime.resume$1$gowrapper $runtime.run$1$gowrapper $runtime.memequal $runtime.hash32)
  (data $.rodata (i32.const 65536) "expand 32-byte k")
  (data $.data (i32.const 65552) "\c1\82\01\00\b4\02\01\00\c1\82\01\00\00\00\00\00\04\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04"))
