(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 12) "\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 44) "\02\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 76) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 108) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 140) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w\00")
 (data (i32.const 188) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $~lib/ASC_FEATURE_BULK_MEMORY i32 (i32.const 0))
 (global $~lib/rt/__stack_base i32 (i32.const 228))
 (global $~lib/rt/__stack_size i32 (i32.const 65536))
 (global $~lib/rt/__stackptr (mut i32) (i32.const 228))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/__stackify (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.store
  local.get $0
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  call $~lib/rt/__stack_restore
  local.get $2
 )
 (func $~lib/util/hash/hashStr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $5
  local.get $0
  local.get $5
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  i32.const -2128831035
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_u
    local.set $4
    local.get $4
    if
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
  end
  local.get $1
  local.set $6
  local.get $5
  call $~lib/rt/__stack_restore
  local.get $6
 )
 (func $std/hash/check (param $0 i32) (result i32)
  i32.const 1
 )
 (func $~lib/util/hash/hash32 (param $0 i32) (result i32)
  (local $1 i32)
  i32.const -2128831035
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/util/hash/hash64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const -2128831035
  local.set $3
  local.get $3
  local.get $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
 )
 (func $start:std/hash
  (local $0 i32)
  (local $1 f32)
  (local $2 f64)
  (local $3 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $3
  block $~lib/util/hash/HASH<~lib/string/String|null>|inlined.0 (result i32)
   i32.const 0
   local.get $3
   i32.const 0
   i32.add
   call $~lib/rt/__stackify
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String|null>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.0 (result i32)
   i32.const 32
   local.get $3
   i32.const 4
   i32.add
   call $~lib/rt/__stackify
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.1 (result i32)
   i32.const 64
   local.get $3
   i32.const 4
   i32.add
   call $~lib/rt/__stackify
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.2 (result i32)
   i32.const 96
   local.get $3
   i32.const 4
   i32.add
   call $~lib/rt/__stackify
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.3 (result i32)
   i32.const 128
   local.get $3
   i32.const 4
   i32.add
   call $~lib/rt/__stackify
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.0 (result i32)
   f32.const 0
   local.set $1
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i32)
   f32.const 1
   local.set $1
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.2 (result i32)
   f32.const 1.100000023841858
   local.set $1
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.3 (result i32)
   f32.const 0
   local.set $1
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.4 (result i32)
   f32.const inf
   local.set $1
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.5 (result i32)
   f32.const nan:0x400000
   local.set $1
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.5
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.0 (result i32)
   f64.const 0
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i32)
   f64.const 1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.2 (result i32)
   f64.const 1.1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.3 (result i32)
   f64.const 0
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.4 (result i32)
   f64.const inf
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.5 (result i32)
   f64.const nan:0x8000000000000
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 1
   drop
   i32.const 8
   i32.const 4
   i32.eq
   drop
   i32.const 8
   i32.const 8
   i32.eq
   drop
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.5
  end
  call $std/hash/check
  drop
  local.get $3
  call $~lib/rt/__stack_restore
 )
 (func $~start
  call $start:std/hash
 )
 (func $~lib/rt/__stack_prepare (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/__stackptr
  local.set $1
  local.get $1
  local.get $0
  i32.add
  local.set $2
  local.get $2
  global.get $~lib/rt/__stack_base
  global.get $~lib/rt/__stack_size
  i32.add
  i32.le_u
  i32.eqz
  if
   i32.const 160
   i32.const 208
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.set $~lib/rt/__stackptr
  i32.const 0
  drop
  loop $while-continue|0
   local.get $2
   i32.const 4
   i32.sub
   local.tee $2
   local.get $1
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 0
    i32.store
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/rt/__stack_restore (param $0 i32)
  local.get $0
  global.set $~lib/rt/__stackptr
 )
)
