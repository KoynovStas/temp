# Set atomic_fetch_xxx functions for ARMv6 ARMv7


## Description
The new standard C11 has support for atomic operations. The compiler GCC atomic operations (C11) are supported from 4.9.x version.
The project implemented atomic operations such as **atomic_fetch_xxx** (xxx is add, sub, and, or, xor) and **atomic_exchange** for type **int**. This allows you to use them for old projects with the old GCC.

##### This implementation supports the following architectures:  **ARMv6, ARMv6J, ARMv6K, ARMv6Z, ARMv6ZK, ARMv7, ARMv7A, ARMv7R**

***
<br/>
## Warning
This implementation does not contain memory barriers (DMB - command for ARM). Therefore, there can be used to implement the synchronization primitives.
If you are using GCC 4.9.0 or higher, use standard atomic operations according of STD C11.


## Usage

You need to include **atomic_arm.h** file in your **.c** file.

```c
#include "atomic_arm.h"    //use our atomic functions

//Then we can use the atomic functions.
```
