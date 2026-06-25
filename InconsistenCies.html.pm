#lang pollen

◊h1{InconsistenCies of programming in C}

The C Programming Language was invented in a time when computers were still evolving rapidly and so there are a lot of inconsitencies and design decisions that were never thought out well its hard to predict the future. 

typedef int8_t   i8;
typedef int16_t  i16;
typedef int32_t  i32;
typedef int64_t  i64;
typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef float    f32;
typedef double   f64;

#define PI32  3.14159265359f
#define TAU32 6.28318530718f
#define INLINE static inline

compiler flags
-W3 -WX on MSVC (increase to W4 if you can)

-Wall in gcc