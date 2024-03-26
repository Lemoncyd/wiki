
========================================================================

** ELF Header Information

    File Name: ./Objects/smart_nrf.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x1fff1841
    Flags: EF_ARM_HASENTRY + EF_ARM_ABI_FLOAT_SOFT (0x05000202)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Soft float procedure-call standard

    Built with
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 2
    Section header entries: 18

    Program header offset: 293740 (0x00047b6c)
    Section header offset: 293804 (0x00047bac)

    Section header string table index: 17

========================================================================

** Program header #0

    Type          : PT_LOAD (1)
    File Offset   : 22856 (0x5948)
    Virtual Addr  : 0x1fff0000
    Physical Addr : 0x1fff0000
    Size in file  : 1036 bytes (0x40c)
    Size in memory: 2048 bytes (0x800)
    Flags         : PF_W + PF_R (0x6)
    Alignment     : 4


====================================

** Program header #1

    Type          : PT_LOAD (1)
    File Offset   : 52 (0x34)
    Virtual Addr  : 0x1fff1838
    Physical Addr : 0x1fff1838
    Size in file  : 22804 bytes (0x5914)
    Size in memory: 27944 bytes (0x6d28)
    Flags         : PF_X + PF_W + PF_R + PF_ARM_ENTRY (0x80000007)
    Alignment     : 8


========================================================================

** Section #1

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_EXECINSTR (0x00000006)
    Addr        : 0x1fff1838
    File Offset : 52 (0x34)
    Size        : 22536 bytes (0x5808)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    $d.realdata
    RESET
    __Vectors
        0x1fff1838:    1fff8560    `...    DCD    536839520
        0x1fff183c:    1fff188d    ....    DCD    536811661
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x1fff1840:    4803        .H      LDR      r0,__lit__00000000 ; [0x1fff1850] = 0x1fff8560
        0x1fff1842:    4685        .F      MOV      sp,r0
    .ARM.Collect$$$$00000004
    _main_scatterload
        0x1fff1844:    f000f82c    ..,.    BL       __scatterload ; 0x1fff18a0
    .ARM.Collect$$$$00000008
    .ARM.Collect$$$$0000000A
    .ARM.Collect$$$$0000000B
    __main_after_scatterload
    _main_clock
    _main_cpp_init
    _main_init
        0x1fff1848:    4800        .H      LDR      r0,[pc,#0] ; [0x1fff184c] = 0x1fff5361
        0x1fff184a:    4700        .G      BX       r0
    $d
        0x1fff184c:    1fff5361    aS..    DCD    536826721
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x1fff1850:    1fff8560    `...    DCD    536839520
    $t
    .emb_text
    hard_fault
        0x1fff1854:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff1880] = 0x1fff0800
        0x1fff1856:    3848        H8      SUBS     r0,r0,#0x48
        0x1fff1858:    4669        iF      MOV      r1,sp
        0x1fff185a:    6001        .`      STR      r1,[r0,#0]
        0x1fff185c:    3004        .0      ADDS     r0,#4
        0x1fff185e:    c0f0        ..      STM      r0!,{r4-r7}
        0x1fff1860:    4644        DF      MOV      r4,r8
        0x1fff1862:    464d        MF      MOV      r5,r9
        0x1fff1864:    4656        VF      MOV      r6,r10
        0x1fff1866:    465f        _F      MOV      r7,r11
        0x1fff1868:    c0f0        ..      STM      r0!,{r4-r7}
        0x1fff186a:    bc30        0.      POP      {r4,r5}
        0x1fff186c:    bcf0        ..      POP      {r4-r7}
        0x1fff186e:    c0f0        ..      STM      r0!,{r4-r7}
        0x1fff1870:    bcf0        ..      POP      {r4-r7}
        0x1fff1872:    c0f0        ..      STM      r0!,{r4-r7}
        0x1fff1874:    3844        D8      SUBS     r0,r0,#0x44
        0x1fff1876:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff1884] = 0x1fff2ecd
        0x1fff1878:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff1888] = 0x1fff1830
        0x1fff187a:    4695        .F      MOV      sp,r2
        0x1fff187c:    4708        .G      BX       r1
    $d
        0x1fff187e:    0000        ..      DCW    0
        0x1fff1880:    1fff0800    ....    DCD    536807424
        0x1fff1884:    1fff2ecd    ....    DCD    536817357
        0x1fff1888:    1fff1830    0...    DCD    536811568
    $t
    .text
    Reset_Handler
        0x1fff188c:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff1898] = 0x1fff2c7d
        0x1fff188e:    4780        .G      BLX      r0
        0x1fff1890:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff189c] = 0x1fff1841
        0x1fff1892:    4700        .G      BX       r0
        0x1fff1894:    e7fe        ..      B        0x1fff1894 ; Reset_Handler + 8
    $d
        0x1fff1896:    0000        ..      DCW    0
        0x1fff1898:    1fff2c7d    },..    DCD    536816765
        0x1fff189c:    1fff1841    A...    DCD    536811585
    $t
    .text
    __scatterload
    __scatterload_rt2
        0x1fff18a0:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff18bc] = 0x1fff7004
        0x1fff18a2:    2501        .%      MOVS     r5,#1
        0x1fff18a4:    4e06        .N      LDR      r6,[pc,#24] ; [0x1fff18c0] = 0x1fff7034
        0x1fff18a6:    e005        ..      B        0x1fff18b4 ; __scatterload + 20
        0x1fff18a8:    68e3        .h      LDR      r3,[r4,#0xc]
        0x1fff18aa:    cc07        ..      LDM      r4!,{r0-r2}
        0x1fff18ac:    432b        +C      ORRS     r3,r3,r5
        0x1fff18ae:    3c0c        .<      SUBS     r4,r4,#0xc
        0x1fff18b0:    4798        .G      BLX      r3
        0x1fff18b2:    3410        .4      ADDS     r4,r4,#0x10
        0x1fff18b4:    42b4        .B      CMP      r4,r6
        0x1fff18b6:    d3f7        ..      BCC      0x1fff18a8 ; __scatterload + 8
        0x1fff18b8:    f7ffffc6    ....    BL       __main_after_scatterload ; 0x1fff1848
    $d
        0x1fff18bc:    1fff7004    .p..    DCD    536834052
        0x1fff18c0:    1fff7034    4p..    DCD    536834100
    $t
    .text
    __decompress
    __decompress0
        0x1fff18c4:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff18c6:    188c        ..      ADDS     r4,r1,r2
        0x1fff18c8:    7802        .x      LDRB     r2,[r0,#0]
        0x1fff18ca:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18cc:    0713        ..      LSLS     r3,r2,#28
        0x1fff18ce:    0f1b        ..      LSRS     r3,r3,#28
        0x1fff18d0:    d101        ..      BNE      0x1fff18d6 ; __decompress + 18
        0x1fff18d2:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff18d4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18d6:    0912        ..      LSRS     r2,r2,#4
        0x1fff18d8:    d106        ..      BNE      0x1fff18e8 ; __decompress + 36
        0x1fff18da:    7802        .x      LDRB     r2,[r0,#0]
        0x1fff18dc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18de:    e003        ..      B        0x1fff18e8 ; __decompress + 36
        0x1fff18e0:    7805        .x      LDRB     r5,[r0,#0]
        0x1fff18e2:    700d        .p      STRB     r5,[r1,#0]
        0x1fff18e4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18e6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff18e8:    1e5b        [.      SUBS     r3,r3,#1
        0x1fff18ea:    d1f9        ..      BNE      0x1fff18e0 ; __decompress + 28
        0x1fff18ec:    e001        ..      B        0x1fff18f2 ; __decompress + 46
        0x1fff18ee:    700b        .p      STRB     r3,[r1,#0]
        0x1fff18f0:    1c49        I.      ADDS     r1,r1,#1
        0x1fff18f2:    1e52        R.      SUBS     r2,r2,#1
        0x1fff18f4:    d1fb        ..      BNE      0x1fff18ee ; __decompress + 42
        0x1fff18f6:    42a1        .B      CMP      r1,r4
        0x1fff18f8:    d3e6        ..      BCC      0x1fff18c8 ; __decompress + 4
        0x1fff18fa:    2000        .       MOVS     r0,#0
        0x1fff18fc:    bd30        0.      POP      {r4,r5,pc}
        0x1fff18fe:    0000        ..      MOVS     r0,r0
    $Ven$TT$L$$drv_disable_irq
        0x1fff1900:    b403        ..      PUSH     {r0,r1}
        0x1fff1902:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1908] = 0xa975
        0x1fff1904:    9001        ..      STR      r0,[sp,#4]
        0x1fff1906:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1908:    0000a975    u...    DCD    43381
    $t
    $Ven$TT$L$$LL_Disconnect0
        0x1fff190c:    b403        ..      PUSH     {r0,r1}
        0x1fff190e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1914] = 0x3ec9
        0x1fff1910:    9001        ..      STR      r0,[sp,#4]
        0x1fff1912:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1914:    00003ec9    .>..    DCD    16073
    $t
    $Ven$TT$L$$drv_enable_irq
        0x1fff1918:    b403        ..      PUSH     {r0,r1}
        0x1fff191a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1920] = 0xa99d
        0x1fff191c:    9001        ..      STR      r0,[sp,#4]
        0x1fff191e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1920:    0000a99d    ....    DCD    43421
    $t
    $Ven$TT$L$$LL_SetDataLengh0
        0x1fff1924:    b403        ..      PUSH     {r0,r1}
        0x1fff1926:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff192c] = 0x6e11
        0x1fff1928:    9001        ..      STR      r0,[sp,#4]
        0x1fff192a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff192c:    00006e11    .n..    DCD    28177
    $t
    $Ven$TT$L$$llEnqueueDataQ
        0x1fff1930:    b403        ..      PUSH     {r0,r1}
        0x1fff1932:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1938] = 0xb98b
        0x1fff1934:    9001        ..      STR      r0,[sp,#4]
        0x1fff1936:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1938:    0000b98b    ....    DCD    47499
    $t
    $Ven$TT$L$$llProcessTxData
        0x1fff193c:    b403        ..      PUSH     {r0,r1}
        0x1fff193e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1944] = 0xd4d1
        0x1fff1940:    9001        ..      STR      r0,[sp,#4]
        0x1fff1942:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1944:    0000d4d1    ....    DCD    54481
    $t
    $Ven$TT$L$$config_RTC
        0x1fff1948:    b403        ..      PUSH     {r0,r1}
        0x1fff194a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1950] = 0xa6f9
        0x1fff194c:    9001        ..      STR      r0,[sp,#4]
        0x1fff194e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1950:    0000a6f9    ....    DCD    42745
    $t
    $Ven$TT$L$$enter_sleep_off_mode
        0x1fff1954:    b403        ..      PUSH     {r0,r1}
        0x1fff1956:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff195c] = 0xafa1
        0x1fff1958:    9001        ..      STR      r0,[sp,#4]
        0x1fff195a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff195c:    0000afa1    ....    DCD    44961
    $t
    $Ven$TT$L$$LL_CreateConnCancel0
        0x1fff1960:    b403        ..      PUSH     {r0,r1}
        0x1fff1962:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1968] = 0x3ca9
        0x1fff1964:    9001        ..      STR      r0,[sp,#4]
        0x1fff1966:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1968:    00003ca9    .<..    DCD    15529
    $t
    $Ven$TT$L$$enableSleep
        0x1fff196c:    b403        ..      PUSH     {r0,r1}
        0x1fff196e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1974] = 0xaead
        0x1fff1970:    9001        ..      STR      r0,[sp,#4]
        0x1fff1972:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1974:    0000aead    ....    DCD    44717
    $t
    $Ven$TT$L$$setSleepMode
        0x1fff1978:    b403        ..      PUSH     {r0,r1}
        0x1fff197a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1980] = 0x16b45
        0x1fff197c:    9001        ..      STR      r0,[sp,#4]
        0x1fff197e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1980:    00016b45    Ek..    DCD    92997
    $t
    $Ven$TT$L$$LL_ENC_AES128_Encrypt0
        0x1fff1984:    b403        ..      PUSH     {r0,r1}
        0x1fff1986:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff198c] = 0x3fdd
        0x1fff1988:    9001        ..      STR      r0,[sp,#4]
        0x1fff198a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff198c:    00003fdd    .?..    DCD    16349
    $t
    $Ven$TT$L$$LL_ENC_LoadKey
        0x1fff1990:    b403        ..      PUSH     {r0,r1}
        0x1fff1992:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1998] = 0x4489
        0x1fff1994:    9001        ..      STR      r0,[sp,#4]
        0x1fff1996:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1998:    00004489    .D..    DCD    17545
    $t
    $Ven$TT$L$$LL_ENC_GenerateNonce
        0x1fff199c:    b403        ..      PUSH     {r0,r1}
        0x1fff199e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19a4] = 0x4421
        0x1fff19a0:    9001        ..      STR      r0,[sp,#4]
        0x1fff19a2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19a4:    00004421    !D..    DCD    17441
    $t
    $Ven$TT$L$$__aeabi_uread4
        0x1fff19a8:    b403        ..      PUSH     {r0,r1}
        0x1fff19aa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19b0] = 0xf75
        0x1fff19ac:    9001        ..      STR      r0,[sp,#4]
        0x1fff19ae:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19b0:    00000f75    u...    DCD    3957
    $t
    $Ven$TT$L$$read_current_fine_time
        0x1fff19b4:    b403        ..      PUSH     {r0,r1}
        0x1fff19b6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19bc] = 0x15cc9
        0x1fff19b8:    9001        ..      STR      r0,[sp,#4]
        0x1fff19ba:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19bc:    00015cc9    .\..    DCD    89289
    $t
    $Ven$TT$L$$ll_debug_output
        0x1fff19c0:    b403        ..      PUSH     {r0,r1}
        0x1fff19c2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19c8] = 0x10719
        0x1fff19c4:    9001        ..      STR      r0,[sp,#4]
        0x1fff19c6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19c8:    00010719    ....    DCD    67353
    $t
    $Ven$TT$L$$ll_hw_get_irq_status
        0x1fff19cc:    b403        ..      PUSH     {r0,r1}
        0x1fff19ce:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19d4] = 0x10bbd
        0x1fff19d0:    9001        ..      STR      r0,[sp,#4]
        0x1fff19d2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19d4:    00010bbd    ....    DCD    68541
    $t
    $Ven$TT$L$$ll_hw_get_tr_mode
        0x1fff19d8:    b403        ..      PUSH     {r0,r1}
        0x1fff19da:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19e0] = 0x10cdd
        0x1fff19dc:    9001        ..      STR      r0,[sp,#4]
        0x1fff19de:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19e0:    00010cdd    ....    DCD    68829
    $t
    $Ven$TT$L$$ll_hw_clr_irq
        0x1fff19e4:    b403        ..      PUSH     {r0,r1}
        0x1fff19e6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19ec] = 0x10add
        0x1fff19e8:    9001        ..      STR      r0,[sp,#4]
        0x1fff19ea:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19ec:    00010add    ....    DCD    68317
    $t
    $Ven$TT$L$$ll_processExtAdvIRQ
        0x1fff19f0:    b403        ..      PUSH     {r0,r1}
        0x1fff19f2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff19f8] = 0x13401
        0x1fff19f4:    9001        ..      STR      r0,[sp,#4]
        0x1fff19f6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff19f8:    00013401    .4..    DCD    78849
    $t
    $Ven$TT$L$$ll_processExtScanIRQ
        0x1fff19fc:    b403        ..      PUSH     {r0,r1}
        0x1fff19fe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a04] = 0x13409
        0x1fff1a00:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a02:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a04:    00013409    .4..    DCD    78857
    $t
    $Ven$TT$L$$ll_processExtInitIRQ
        0x1fff1a08:    b403        ..      PUSH     {r0,r1}
        0x1fff1a0a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a10] = 0x13405
        0x1fff1a0c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a0e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a10:    00013405    .4..    DCD    78853
    $t
    $Ven$TT$L$$ll_processPrdAdvIRQ
        0x1fff1a14:    b403        ..      PUSH     {r0,r1}
        0x1fff1a16:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a1c] = 0x135f5
        0x1fff1a18:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a1a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a1c:    000135f5    .5..    DCD    79349
    $t
    $Ven$TT$L$$ll_processPrdScanIRQ
        0x1fff1a20:    b403        ..      PUSH     {r0,r1}
        0x1fff1a22:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a28] = 0x135f9
        0x1fff1a24:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a26:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a28:    000135f9    .5..    DCD    79353
    $t
    $Ven$TT$L$$ll_processBasicIRQ
        0x1fff1a2c:    b403        ..      PUSH     {r0,r1}
        0x1fff1a2e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a34] = 0x117e9
        0x1fff1a30:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a32:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a34:    000117e9    ....    DCD    71657
    $t
    $Ven$TT$L$$ll_schedule_next_event
        0x1fff1a38:    b403        ..      PUSH     {r0,r1}
        0x1fff1a3a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a40] = 0x13761
        0x1fff1a3c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a3e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a40:    00013761    a7..    DCD    79713
    $t
    $Ven$TT$L$$llSecAdvAllow
        0x1fff1a44:    b403        ..      PUSH     {r0,r1}
        0x1fff1a46:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a4c] = 0xd701
        0x1fff1a48:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a4a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a4c:    0000d701    ....    DCD    55041
    $t
    $Ven$TT$L$$llSetupSecAdvEvt
        0x1fff1a50:    b403        ..      PUSH     {r0,r1}
        0x1fff1a52:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a58] = 0xf66d
        0x1fff1a54:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a56:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a58:    0000f66d    m...    DCD    63085
    $t
    $Ven$TT$L$$ll_hw_set_rx_timeout
        0x1fff1a5c:    b403        ..      PUSH     {r0,r1}
        0x1fff1a5e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a64] = 0x11279
        0x1fff1a60:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a62:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a64:    00011279    y...    DCD    70265
    $t
    $Ven$TT$L$$llSetupSecScan
        0x1fff1a68:    b403        ..      PUSH     {r0,r1}
        0x1fff1a6a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a70] = 0xf94d
        0x1fff1a6c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a6e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a70:    0000f94d    M...    DCD    63821
    $t
    $Ven$TT$L$$llSetupSecInit
        0x1fff1a74:    b403        ..      PUSH     {r0,r1}
        0x1fff1a76:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a7c] = 0xf7c1
        0x1fff1a78:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a7a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a7c:    0000f7c1    ....    DCD    63425
    $t
    $Ven$TT$L$$LL_DisconnectCback
        0x1fff1a80:    b403        ..      PUSH     {r0,r1}
        0x1fff1a82:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a88] = 0x3f41
        0x1fff1a84:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a86:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a88:    00003f41    A?..    DCD    16193
    $t
    $Ven$TT$L$$LL_ProcessEvent0
        0x1fff1a8c:    b403        ..      PUSH     {r0,r1}
        0x1fff1a8e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1a94] = 0x5a09
        0x1fff1a90:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a92:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1a94:    00005a09    .Z..    DCD    23049
    $t
    $Ven$TT$L$$LL_Reset0
        0x1fff1a98:    b403        ..      PUSH     {r0,r1}
        0x1fff1a9a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1aa0] = 0x6609
        0x1fff1a9c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1a9e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1aa0:    00006609    .f..    DCD    26121
    $t
    $Ven$TT$L$$LL_set_default_conn_params0
        0x1fff1aa4:    b403        ..      PUSH     {r0,r1}
        0x1fff1aa6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1aac] = 0x828d
        0x1fff1aa8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1aaa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1aac:    0000828d    ....    DCD    33421
    $t
    $Ven$TT$L$$ll_hw_read_rfifo
        0x1fff1ab0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ab2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ab8] = 0x10e6d
        0x1fff1ab4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ab6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ab8:    00010e6d    m...    DCD    69229
    $t
    $Ven$TT$L$$osal_memcmp
        0x1fff1abc:    b403        ..      PUSH     {r0,r1}
        0x1fff1abe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ac4] = 0x14ccd
        0x1fff1ac0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ac2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ac4:    00014ccd    .L..    DCD    85197
    $t
    $Ven$TT$L$$osal_memset
        0x1fff1ac8:    b403        ..      PUSH     {r0,r1}
        0x1fff1aca:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ad0] = 0x14d15
        0x1fff1acc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ace:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ad0:    00014d15    .M..    DCD    85269
    $t
    $Ven$TT$L$$ll_hw_set_crc_fmt
        0x1fff1ad4:    b403        ..      PUSH     {r0,r1}
        0x1fff1ad6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1adc] = 0x1112d
        0x1fff1ad8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ada:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1adc:    0001112d    -...    DCD    69933
    $t
    $Ven$TT$L$$gpio_read
        0x1fff1ae0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ae2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ae8] = 0xb291
        0x1fff1ae4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ae6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ae8:    0000b291    ....    DCD    45713
    $t
    $Ven$TT$L$$osal_set_event
        0x1fff1aec:    b403        ..      PUSH     {r0,r1}
        0x1fff1aee:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1af4] = 0x1520d
        0x1fff1af0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1af2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1af4:    0001520d    .R..    DCD    86541
    $t
    $Ven$TT$L$$osal_start_timerEx
        0x1fff1af8:    b403        ..      PUSH     {r0,r1}
        0x1fff1afa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b00] = 0x1528b
        0x1fff1afc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1afe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b00:    0001528b    .R..    DCD    86667
    $t
    $Ven$TT$L$$gpio_write
        0x1fff1b04:    b403        ..      PUSH     {r0,r1}
        0x1fff1b06:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b0c] = 0xb319
        0x1fff1b08:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b0a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b0c:    0000b319    ....    DCD    45849
    $t
    $Ven$TT$L$$efuse_read
        0x1fff1b10:    b403        ..      PUSH     {r0,r1}
        0x1fff1b12:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b18] = 0xace1
        0x1fff1b14:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b16:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b18:    0000ace1    ....    DCD    44257
    $t
    $Ven$TT$L$$rom_uart_init
        0x1fff1b1c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b1e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b24] = 0xb379
        0x1fff1b20:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b22:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b24:    0000b379    y...    DCD    45945
    $t
    $Ven$TT$L$$log_printf
        0x1fff1b28:    b403        ..      PUSH     {r0,r1}
        0x1fff1b2a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b30] = 0x13ae5
        0x1fff1b2c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b2e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b30:    00013ae5    .:..    DCD    80613
    $t
    $Ven$TT$L$$rtc_get_counter
        0x1fff1b34:    b403        ..      PUSH     {r0,r1}
        0x1fff1b36:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b3c] = 0x16b15
        0x1fff1b38:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b3a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b3c:    00016b15    .k..    DCD    92949
    $t
    $Ven$TT$L$$osal_init_system
        0x1fff1b40:    b403        ..      PUSH     {r0,r1}
        0x1fff1b42:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b48] = 0x14aed
        0x1fff1b44:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b46:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b48:    00014aed    .J..    DCD    84717
    $t
    $Ven$TT$L$$osal_pwrmgr_device
        0x1fff1b4c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b4e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b54] = 0x14fa5
        0x1fff1b50:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b52:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b54:    00014fa5    .O..    DCD    85925
    $t
    $Ven$TT$L$$osal_start_system
        0x1fff1b58:    b403        ..      PUSH     {r0,r1}
        0x1fff1b5a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b60] = 0x15285
        0x1fff1b5c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b5e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b60:    00015285    .R..    DCD    86661
    $t
    $Ven$TT$L$$WaitRTCCount
        0x1fff1b64:    b403        ..      PUSH     {r0,r1}
        0x1fff1b66:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b6c] = 0x8901
        0x1fff1b68:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b6a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b6c:    00008901    ....    DCD    35073
    $t
    $Ven$TT$L$$set_sleep_flag
        0x1fff1b70:    b403        ..      PUSH     {r0,r1}
        0x1fff1b72:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b78] = 0x16c01
        0x1fff1b74:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b76:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b78:    00016c01    .l..    DCD    93185
    $t
    $Ven$TT$L$$read_LL_remainder_time
        0x1fff1b7c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b7e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b84] = 0x15cbd
        0x1fff1b80:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b82:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b84:    00015cbd    .\..    DCD    89277
    $t
    $Ven$TT$L$$ll_hw_set_rx_timeout_1st
        0x1fff1b88:    b403        ..      PUSH     {r0,r1}
        0x1fff1b8a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b90] = 0x11285
        0x1fff1b8c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b8e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b90:    00011285    ....    DCD    70277
    $t
    $Ven$TT$L$$enterSleepProcess0
        0x1fff1b94:    b403        ..      PUSH     {r0,r1}
        0x1fff1b96:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b9c] = 0xaed1
        0x1fff1b98:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b9a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b9c:    0000aed1    ....    DCD    44753
    $t
    $Ven$TT$L$$LL_ENC_AES128_Encrypt
        0x1fff1ba0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ba2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ba8] = 0x3fc5
        0x1fff1ba4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ba6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ba8:    00003fc5    .?..    DCD    16325
    $t
    $Ven$TT$L$$__aeabi_memclr4
        0x1fff1bac:    b403        ..      PUSH     {r0,r1}
        0x1fff1bae:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bb4] = 0xeb3
        0x1fff1bb0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bb2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bb4:    00000eb3    ....    DCD    3763
    $t
    $Ven$TT$L$$__aeabi_memcpy4
        0x1fff1bb8:    b403        ..      PUSH     {r0,r1}
        0x1fff1bba:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bc0] = 0xe81
        0x1fff1bbc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bbe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bc0:    00000e81    ....    DCD    3713
    $t
    $Ven$TT$L$$disableSleep
        0x1fff1bc4:    b403        ..      PUSH     {r0,r1}
        0x1fff1bc6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bcc] = 0xa921
        0x1fff1bc8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bca:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bcc:    0000a921    !...    DCD    43297
    $t
    $Ven$TT$L$$osal_mem_set_heap
        0x1fff1bd0:    b403        ..      PUSH     {r0,r1}
        0x1fff1bd2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bd8] = 0x14cb5
        0x1fff1bd4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bd6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bd8:    00014cb5    .L..    DCD    85173
    $t
    $Ven$TT$L$$spif_config
        0x1fff1bdc:    b403        ..      PUSH     {r0,r1}
        0x1fff1bde:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1be4] = 0x16dc5
        0x1fff1be0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1be2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1be4:    00016dc5    .m..    DCD    93637
    $t
    $Ven$TT$L$$spif_read_id
        0x1fff1be8:    b403        ..      PUSH     {r0,r1}
        0x1fff1bea:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bf0] = 0x17209
        0x1fff1bec:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bee:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bf0:    00017209    .r..    DCD    94729
    $t
    $Ven$TT$L$$llProcessTxData0
        0x1fff1bf4:    b403        ..      PUSH     {r0,r1}
        0x1fff1bf6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bfc] = 0xd4e9
        0x1fff1bf8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bfa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bfc:    0000d4e9    ....    DCD    54505
    $t
    $Ven$TT$L$$llReleaseConnId0
        0x1fff1c00:    b403        ..      PUSH     {r0,r1}
        0x1fff1c02:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c08] = 0xd579
        0x1fff1c04:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c06:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c08:    0000d579    y...    DCD    54649
    $t
    $Ven$TT$L$$llSlaveEvt_TaskEndOk0
        0x1fff1c0c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c0e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c14] = 0xffad
        0x1fff1c10:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c12:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c14:    0000ffad    ....    DCD    65453
    $t
    $Ven$TT$L$$getTxBufferFree
        0x1fff1c18:    b403        ..      PUSH     {r0,r1}
        0x1fff1c1a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c20] = 0xb05d
        0x1fff1c1c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c1e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c20:    0000b05d    ]...    DCD    45149
    $t
    $Ven$TT$L$$get_tx_write_ptr
        0x1fff1c24:    b403        ..      PUSH     {r0,r1}
        0x1fff1c26:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c2c] = 0xb0e1
        0x1fff1c28:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c2a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c2c:    0000b0e1    ....    DCD    45281
    $t
    $Ven$TT$L$$LL_ENC_Encrypt
        0x1fff1c30:    b403        ..      PUSH     {r0,r1}
        0x1fff1c32:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c38] = 0x4261
        0x1fff1c34:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c36:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c38:    00004261    aB..    DCD    16993
    $t
    $Ven$TT$L$$__aeabi_memcpy
        0x1fff1c3c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c3e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c44] = 0xe81
        0x1fff1c40:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c42:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c44:    00000e81    ....    DCD    3713
    $t
    $Ven$TT$L$$update_tx_write_ptr
        0x1fff1c48:    b403        ..      PUSH     {r0,r1}
        0x1fff1c4a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c50] = 0x17685
        0x1fff1c4c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c4e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c50:    00017685    .v..    DCD    95877
    $t
    $Ven$TT$L$$ll_hw_write_tfifo
        0x1fff1c54:    b403        ..      PUSH     {r0,r1}
        0x1fff1c56:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c5c] = 0x115c1
        0x1fff1c58:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c5a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c5c:    000115c1    ....    DCD    71105
    $t
    $Ven$TT$L$$ll_hw_get_tfifo_wrptr
        0x1fff1c60:    b403        ..      PUSH     {r0,r1}
        0x1fff1c62:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c68] = 0x10ccd
        0x1fff1c64:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c66:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c68:    00010ccd    ....    DCD    68813
    $t
    $Ven$TT$L$$getTxBufferSize
        0x1fff1c6c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c6e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c74] = 0xb071
        0x1fff1c70:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c72:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c74:    0000b071    q...    DCD    45169
    $t
    $Ven$TT$L$$get_tx_read_ptr
        0x1fff1c78:    b403        ..      PUSH     {r0,r1}
        0x1fff1c7a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c80] = 0xb0d9
        0x1fff1c7c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c7e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c80:    0000b0d9    ....    DCD    45273
    $t
    $Ven$TT$L$$update_tx_read_ptr
        0x1fff1c84:    b403        ..      PUSH     {r0,r1}
        0x1fff1c86:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c8c] = 0x17659
        0x1fff1c88:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c8a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c8c:    00017659    Yv..    DCD    95833
    $t
    $Ven$TT$L$$llEnqueueCtrlPkt
        0x1fff1c90:    b403        ..      PUSH     {r0,r1}
        0x1fff1c92:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c98] = 0xb953
        0x1fff1c94:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c96:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c98:    0000b953    S...    DCD    47443
    $t
    $Ven$TT$L$$ll_hw_set_loop_timeout
        0x1fff1c9c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c9e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ca4] = 0x1118d
        0x1fff1ca0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ca2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ca4:    0001118d    ....    DCD    70029
    $t
    $Ven$TT$L$$get_rx_write_ptr
        0x1fff1ca8:    b403        ..      PUSH     {r0,r1}
        0x1fff1caa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cb0] = 0xb0b9
        0x1fff1cac:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cae:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cb0:    0000b0b9    ....    DCD    45241
    $t
    $Ven$TT$L$$getRxBufferFree
        0x1fff1cb4:    b403        ..      PUSH     {r0,r1}
        0x1fff1cb6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cbc] = 0xb01d
        0x1fff1cb8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cba:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cbc:    0000b01d    ....    DCD    45085
    $t
    $Ven$TT$L$$set_max_length
        0x1fff1cc0:    b403        ..      PUSH     {r0,r1}
        0x1fff1cc2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cc8] = 0x16bed
        0x1fff1cc4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cc6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cc8:    00016bed    .k..    DCD    93165
    $t
    $Ven$TT$L$$ll_hw_read_tfifo_packet
        0x1fff1ccc:    b403        ..      PUSH     {r0,r1}
        0x1fff1cce:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cd4] = 0x10fad
        0x1fff1cd0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cd2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cd4:    00010fad    ....    DCD    69549
    $t
    $Ven$TT$L$$osal_mem_alloc
        0x1fff1cd8:    b403        ..      PUSH     {r0,r1}
        0x1fff1cda:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ce0] = 0x14b3d
        0x1fff1cdc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cde:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ce0:    00014b3d    =K..    DCD    84797
    $t
    $Ven$TT$L$$ll_read_rxfifo0
        0x1fff1ce4:    b403        ..      PUSH     {r0,r1}
        0x1fff1ce6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cec] = 0x136cd
        0x1fff1ce8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cea:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cec:    000136cd    .6..    DCD    79565
    $t
    $Ven$TT$L$$drv_irq_init
        0x1fff1cf0:    b403        ..      PUSH     {r0,r1}
        0x1fff1cf2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cf8] = 0xa9c9
        0x1fff1cf4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cf6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cf8:    0000a9c9    ....    DCD    43465
    $t
    $Ven$TT$L$$__aeabi_uidivmod
        0x1fff1cfc:    b403        ..      PUSH     {r0,r1}
        0x1fff1cfe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d04] = 0xe09
        0x1fff1d00:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d02:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d04:    00000e09    ....    DCD    3593
    $t
    $Ven$TT$L$$osal_pwrmgr_powerconserve0
        0x1fff1d08:    b403        ..      PUSH     {r0,r1}
        0x1fff1d0a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d10] = 0x14fd9
        0x1fff1d0c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d0e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d10:    00014fd9    .O..    DCD    85977
    $t
    $Ven$TT$L$$osal_memcpy
        0x1fff1d14:    b403        ..      PUSH     {r0,r1}
        0x1fff1d16:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d1c] = 0x14ce9
        0x1fff1d18:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d1a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d1c:    00014ce9    .L..    DCD    85225
    $t
    $Ven$TT$L$$ll_hw_ign_rfifo
        0x1fff1d20:    b403        ..      PUSH     {r0,r1}
        0x1fff1d22:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d28] = 0x10df9
        0x1fff1d24:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d26:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d28:    00010df9    ....    DCD    69113
    $t
    $Ven$TT$L$$ll_hw_set_srx
        0x1fff1d2c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d2e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d34] = 0x112a5
        0x1fff1d30:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d32:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d34:    000112a5    ....    DCD    70309
    $t
    $Ven$TT$L$$ll_hw_set_trx_settle
        0x1fff1d38:    b403        ..      PUSH     {r0,r1}
        0x1fff1d3a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d40] = 0x113dd
        0x1fff1d3c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d3e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d40:    000113dd    ....    DCD    70621
    $t
    $Ven$TT$L$$ll_hw_set_stx
        0x1fff1d44:    b403        ..      PUSH     {r0,r1}
        0x1fff1d46:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d4c] = 0x112b9
        0x1fff1d48:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d4a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d4c:    000112b9    ....    DCD    70329
    $t
    $Ven$TT$L$$ll_hw_set_trx
        0x1fff1d50:    b403        ..      PUSH     {r0,r1}
        0x1fff1d52:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d58] = 0x113c9
        0x1fff1d54:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d56:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d58:    000113c9    ....    DCD    70601
    $t
    $Ven$TT$L$$ll_hw_set_tx_rx_release
        0x1fff1d5c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d5e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d64] = 0x11405
        0x1fff1d60:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d62:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d64:    00011405    ....    DCD    70661
    $t
    $Ven$TT$L$$ll_hw_set_rx_tx_interval
        0x1fff1d68:    b403        ..      PUSH     {r0,r1}
        0x1fff1d6a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d70] = 0x11291
        0x1fff1d6c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d6e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d70:    00011291    ....    DCD    70289
    $t
    $Ven$TT$L$$ll_hw_set_tx_rx_interval
        0x1fff1d74:    b403        ..      PUSH     {r0,r1}
        0x1fff1d76:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d7c] = 0x113f1
        0x1fff1d78:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d7a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d7c:    000113f1    ....    DCD    70641
    $t
    $Ven$TT$L$$ll_hw_rst_tfifo
        0x1fff1d80:    b403        ..      PUSH     {r0,r1}
        0x1fff1d82:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d88] = 0x110e9
        0x1fff1d84:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d86:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d88:    000110e9    ....    DCD    69865
    $t
    $Ven$TT$L$$ll_hw_rst_rfifo
        0x1fff1d8c:    b403        ..      PUSH     {r0,r1}
        0x1fff1d8e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d94] = 0x110b1
        0x1fff1d90:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d92:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d94:    000110b1    ....    DCD    69809
    $t
    $Ven$TT$L$$osal_stop_timerEx
        0x1fff1d98:    b403        ..      PUSH     {r0,r1}
        0x1fff1d9a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1da0] = 0x152b3
        0x1fff1d9c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d9e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1da0:    000152b3    .R..    DCD    86707
    $t
    $Ven$TT$L$$ll_hw_tx2rx_timing_config
        0x1fff1da4:    b403        ..      PUSH     {r0,r1}
        0x1fff1da6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dac] = 0x11489
        0x1fff1da8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1daa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dac:    00011489    ....    DCD    70793
    $t
    $Ven$TT$L$$__ARM_common_switch8
        0x1fff1db0:    b403        ..      PUSH     {r0,r1}
        0x1fff1db2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1db8] = 0x8961
        0x1fff1db4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1db6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1db8:    00008961    a...    DCD    35169
    $t
    $Ven$TT$L$$clk_get_pclk
        0x1fff1dbc:    b403        ..      PUSH     {r0,r1}
        0x1fff1dbe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dc4] = 0xa5d1
        0x1fff1dc0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dc2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dc4:    0000a5d1    ....    DCD    42449
    $t
    $Ven$TT$L$$osalTimeUpdate
        0x1fff1dc8:    b403        ..      PUSH     {r0,r1}
        0x1fff1dca:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1dd0] = 0x144d5
        0x1fff1dcc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dce:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1dd0:    000144d5    .D..    DCD    83157
    $t
    $Ven$TT$L$$set_timer
        0x1fff1dd4:    b403        ..      PUSH     {r0,r1}
        0x1fff1dd6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ddc] = 0x16c2d
        0x1fff1dd8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dda:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ddc:    00016c2d    -l..    DCD    93229
    $t
    $Ven$TT$L$$app_wakeup_process
        0x1fff1de0:    b403        ..      PUSH     {r0,r1}
        0x1fff1de2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1de8] = 0x9779
        0x1fff1de4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1de6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1de8:    00009779    y...    DCD    38777
    $t
    $Ven$TT$L$$ll_hw_set_empty_head
        0x1fff1dec:    b403        ..      PUSH     {r0,r1}
        0x1fff1dee:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1df4] = 0x11169
        0x1fff1df0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1df2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1df4:    00011169    i...    DCD    69993
    $t
    $Ven$TT$L$$ll_hw_set_timing
        0x1fff1df8:    b403        ..      PUSH     {r0,r1}
        0x1fff1dfa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1e00] = 0x112e5
        0x1fff1dfc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1dfe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1e00:    000112e5    ....    DCD    70373
    $t
    _func_xip_code_.LL_Disconnect1
    LL_Disconnect1
        0x1fff1e04:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff1e06:    460c        .F      MOV      r4,r1
        0x1fff1e08:    4605        .F      MOV      r5,r0
        0x1fff1e0a:    f7fffd79    ..y.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff1e0e:    4621        !F      MOV      r1,r4
        0x1fff1e10:    4628        (F      MOV      r0,r5
        0x1fff1e12:    f7fffd7b    ..{.    BL       $Ven$TT$L$$LL_Disconnect0 ; 0x1fff190c
        0x1fff1e16:    4604        .F      MOV      r4,r0
        0x1fff1e18:    f7fffd7e    ..~.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff1e1c:    4620         F      MOV      r0,r4
        0x1fff1e1e:    bd70        p.      POP      {r4-r6,pc}
    _func_xip_code_.LL_SetDataLengh1
    LL_SetDataLengh1
        0x1fff1e20:    b510        ..      PUSH     {r4,lr}
        0x1fff1e22:    29fb        .)      CMP      r1,#0xfb
        0x1fff1e24:    d808        ..      BHI      0x1fff1e38 ; LL_SetDataLengh1 + 24
        0x1fff1e26:    4b08        .K      LDR      r3,[pc,#32] ; [0x1fff1e48] = 0x848
        0x1fff1e28:    429a        .B      CMP      r2,r3
        0x1fff1e2a:    d805        ..      BHI      0x1fff1e38 ; LL_SetDataLengh1 + 24
        0x1fff1e2c:    291b        .)      CMP      r1,#0x1b
        0x1fff1e2e:    d303        ..      BCC      0x1fff1e38 ; LL_SetDataLengh1 + 24
        0x1fff1e30:    23ff        .#      MOVS     r3,#0xff
        0x1fff1e32:    3349        I3      ADDS     r3,r3,#0x49
        0x1fff1e34:    429a        .B      CMP      r2,r3
        0x1fff1e36:    d201        ..      BCS      0x1fff1e3c ; LL_SetDataLengh1 + 28
        0x1fff1e38:    2030        0       MOVS     r0,#0x30
        0x1fff1e3a:    bd10        ..      POP      {r4,pc}
        0x1fff1e3c:    4b03        .K      LDR      r3,[pc,#12] ; [0x1fff1e4c] = 0x1fff1084
        0x1fff1e3e:    8219        ..      STRH     r1,[r3,#0x10]
        0x1fff1e40:    825a        Z.      STRH     r2,[r3,#0x12]
        0x1fff1e42:    f7fffd6f    ..o.    BL       $Ven$TT$L$$LL_SetDataLengh0 ; 0x1fff1924
        0x1fff1e46:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff1e48:    00000848    H...    DCD    2120
        0x1fff1e4c:    1fff1084    ....    DCD    536809604
    $t
    _func_xip_code_.LL_TxData1
    LL_TxData1
        0x1fff1e50:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff1e52:    460d        .F      MOV      r5,r1
        0x1fff1e54:    21a1        .!      MOVS     r1,#0xa1
        0x1fff1e56:    0089        ..      LSLS     r1,r1,#2
        0x1fff1e58:    4348        HC      MULS     r0,r1,r0
        0x1fff1e5a:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff1ee8] = 0x1fff0934
        0x1fff1e5c:    b081        ..      SUB      sp,sp,#4
        0x1fff1e5e:    6809        .h      LDR      r1,[r1,#0]
        0x1fff1e60:    461e        .F      MOV      r6,r3
        0x1fff1e62:    1844        D.      ADDS     r4,r0,r1
        0x1fff1e64:    2d00        .-      CMP      r5,#0
        0x1fff1e66:    d009        ..      BEQ      0x1fff1e7c ; LL_TxData1 + 44
        0x1fff1e68:    20ff        .       MOVS     r0,#0xff
        0x1fff1e6a:    30d9        .0      ADDS     r0,r0,#0xd9
        0x1fff1e6c:    5b01        .[      LDRH     r1,[r0,r4]
        0x1fff1e6e:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff1e70:    4281        .B      CMP      r1,r0
        0x1fff1e72:    d303        ..      BCC      0x1fff1e7c ; LL_TxData1 + 44
        0x1fff1e74:    2e00        ..      CMP      r6,#0
        0x1fff1e76:    d004        ..      BEQ      0x1fff1e82 ; LL_TxData1 + 50
        0x1fff1e78:    2e01        ..      CMP      r6,#1
        0x1fff1e7a:    d002        ..      BEQ      0x1fff1e82 ; LL_TxData1 + 50
        0x1fff1e7c:    2012        .       MOVS     r0,#0x12
        0x1fff1e7e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff1e80:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1e82:    78e0        .x      LDRB     r0,[r4,#3]
        0x1fff1e84:    2800        .(      CMP      r0,#0
        0x1fff1e86:    d00a        ..      BEQ      0x1fff1e9e ; LL_TxData1 + 78
        0x1fff1e88:    2005        .       MOVS     r0,#5
        0x1fff1e8a:    01c0        ..      LSLS     r0,r0,#7
        0x1fff1e8c:    1827        '.      ADDS     r7,r4,r0
        0x1fff1e8e:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff1eec] = 0x1fff0915
        0x1fff1e90:    78f9        .x      LDRB     r1,[r7,#3]
        0x1fff1e92:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff1e94:    1c80        ..      ADDS     r0,r0,#2
        0x1fff1e96:    4281        .B      CMP      r1,r0
        0x1fff1e98:    d303        ..      BCC      0x1fff1ea2 ; LL_TxData1 + 82
        0x1fff1e9a:    2007        .       MOVS     r0,#7
        0x1fff1e9c:    e7ef        ..      B        0x1fff1e7e ; LL_TxData1 + 46
        0x1fff1e9e:    2002        .       MOVS     r0,#2
        0x1fff1ea0:    e7ed        ..      B        0x1fff1e7e ; LL_TxData1 + 46
        0x1fff1ea2:    f7fffd2d    ..-.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff1ea6:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff1ea8:    1ea9        ..      SUBS     r1,r5,#2
        0x1fff1eaa:    1c40        @.      ADDS     r0,r0,#1
        0x1fff1eac:    70f8        .p      STRB     r0,[r7,#3]
        0x1fff1eae:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff1eb0:    7008        .p      STRB     r0,[r1,#0]
        0x1fff1eb2:    2e00        ..      CMP      r6,#0
        0x1fff1eb4:    d010        ..      BEQ      0x1fff1ed8 ; LL_TxData1 + 136
        0x1fff1eb6:    2001        .       MOVS     r0,#1
        0x1fff1eb8:    7048        Hp      STRB     r0,[r1,#1]
        0x1fff1eba:    4620         F      MOV      r0,r4
        0x1fff1ebc:    307c        |0      ADDS     r0,r0,#0x7c
        0x1fff1ebe:    1f09        ..      SUBS     r1,r1,#4
        0x1fff1ec0:    f7fffd36    ..6.    BL       $Ven$TT$L$$llEnqueueDataQ ; 0x1fff1930
        0x1fff1ec4:    f7fffd28    ..(.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff1ec8:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff1ef0] = 0x1fff091c
        0x1fff1eca:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff1ecc:    2808        .(      CMP      r0,#8
        0x1fff1ece:    d005        ..      BEQ      0x1fff1edc ; LL_TxData1 + 140
        0x1fff1ed0:    2807        .(      CMP      r0,#7
        0x1fff1ed2:    d003        ..      BEQ      0x1fff1edc ; LL_TxData1 + 140
        0x1fff1ed4:    2000        .       MOVS     r0,#0
        0x1fff1ed6:    e7d2        ..      B        0x1fff1e7e ; LL_TxData1 + 46
        0x1fff1ed8:    2002        .       MOVS     r0,#2
        0x1fff1eda:    e7ed        ..      B        0x1fff1eb8 ; LL_TxData1 + 104
        0x1fff1edc:    2100        .!      MOVS     r1,#0
        0x1fff1ede:    4620         F      MOV      r0,r4
        0x1fff1ee0:    f7fffd2c    ..,.    BL       $Ven$TT$L$$llProcessTxData ; 0x1fff193c
        0x1fff1ee4:    e7f6        ..      B        0x1fff1ed4 ; LL_TxData1 + 132
    $d
        0x1fff1ee6:    0000        ..      DCW    0
        0x1fff1ee8:    1fff0934    4...    DCD    536807732
        0x1fff1eec:    1fff0915    ....    DCD    536807701
        0x1fff1ef0:    1fff091c    ....    DCD    536807708
    $t
    _section_sram_code_
    irq_rx_handler
        0x1fff1ef4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff1ef6:    4a34        4J      LDR      r2,[pc,#208] ; [0x1fff1fc8] = 0x40004000
        0x1fff1ef8:    b08a        ..      SUB      sp,sp,#0x28
        0x1fff1efa:    2801        .(      CMP      r0,#1
        0x1fff1efc:    d100        ..      BNE      0x1fff1f00 ; irq_rx_handler + 12
        0x1fff1efe:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff1fcc] = 0x40009000
        0x1fff1f00:    0143        C.      LSLS     r3,r0,#5
        0x1fff1f02:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff1fd0] = 0x1fff7bd0
        0x1fff1f04:    466d        mF      MOV      r5,sp
        0x1fff1f06:    181c        ..      ADDS     r4,r3,r0
        0x1fff1f08:    7e20         ~      LDRB     r0,[r4,#0x18]
        0x1fff1f0a:    2800        .(      CMP      r0,#0
        0x1fff1f0c:    d00a        ..      BEQ      0x1fff1f24 ; irq_rx_handler + 48
        0x1fff1f0e:    2084        .       MOVS     r0,#0x84
        0x1fff1f10:    5880        .X      LDR      r0,[r0,r2]
        0x1fff1f12:    b2c3        ..      UXTB     r3,r0
        0x1fff1f14:    2000        .       MOVS     r0,#0
        0x1fff1f16:    e002        ..      B        0x1fff1f1e ; irq_rx_handler + 42
        0x1fff1f18:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff1f1a:    542e        .T      STRB     r6,[r5,r0]
        0x1fff1f1c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff1f1e:    4298        .B      CMP      r0,r3
        0x1fff1f20:    dbfa        ..      BLT      0x1fff1f18 ; irq_rx_handler + 36
        0x1fff1f22:    e003        ..      B        0x1fff1f2c ; irq_rx_handler + 56
        0x1fff1f24:    7d10        .}      LDRB     r0,[r2,#0x14]
        0x1fff1f26:    2301        .#      MOVS     r3,#1
        0x1fff1f28:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff1f2a:    7028        (p      STRB     r0,[r5,#0]
        0x1fff1f2c:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x1fff1f2e:    2a00        .*      CMP      r2,#0
        0x1fff1f30:    d004        ..      BEQ      0x1fff1f3c ; irq_rx_handler + 72
        0x1fff1f32:    7529        )u      STRB     r1,[r5,#0x14]
        0x1fff1f34:    9506        ..      STR      r5,[sp,#0x18]
        0x1fff1f36:    772b        +w      STRB     r3,[r5,#0x1c]
        0x1fff1f38:    a805        ..      ADD      r0,sp,#0x14
        0x1fff1f3a:    4790        .G      BLX      r2
        0x1fff1f3c:    b00a        ..      ADD      sp,sp,#0x28
        0x1fff1f3e:    bd70        p.      POP      {r4-r6,pc}
    irq_tx_empty_handler
        0x1fff1f40:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff1f42:    4604        .F      MOV      r4,r0
        0x1fff1f44:    0142        B.      LSLS     r2,r0,#5
        0x1fff1f46:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff1fd0] = 0x1fff7bd0
        0x1fff1f48:    4d1f        .M      LDR      r5,[pc,#124] ; [0x1fff1fc8] = 0x40004000
        0x1fff1f4a:    1813        ..      ADDS     r3,r2,r0
        0x1fff1f4c:    5c80        .\      LDRB     r0,[r0,r2]
        0x1fff1f4e:    1d19        ..      ADDS     r1,r3,#4
        0x1fff1f50:    2800        .(      CMP      r0,#0
        0x1fff1f52:    d029        ).      BEQ      0x1fff1fa8 ; irq_tx_empty_handler + 104
        0x1fff1f54:    7e18        .~      LDRB     r0,[r3,#0x18]
        0x1fff1f56:    2800        .(      CMP      r0,#0
        0x1fff1f58:    d026        &.      BEQ      0x1fff1fa8 ; irq_tx_empty_handler + 104
        0x1fff1f5a:    7e98        .~      LDRB     r0,[r3,#0x1a]
        0x1fff1f5c:    2800        .(      CMP      r0,#0
        0x1fff1f5e:    d023        #.      BEQ      0x1fff1fa8 ; irq_tx_empty_handler + 104
        0x1fff1f60:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff1f62:    2802        .(      CMP      r0,#2
        0x1fff1f64:    d120         .      BNE      0x1fff1fa8 ; irq_tx_empty_handler + 104
        0x1fff1f66:    8888        ..      LDRH     r0,[r1,#4]
        0x1fff1f68:    884a        J.      LDRH     r2,[r1,#2]
        0x1fff1f6a:    688e        .h      LDR      r6,[r1,#8]
        0x1fff1f6c:    1a80        ..      SUBS     r0,r0,r2
        0x1fff1f6e:    b282        ..      UXTH     r2,r0
        0x1fff1f70:    2a10        .*      CMP      r2,#0x10
        0x1fff1f72:    d901        ..      BLS      0x1fff1f78 ; irq_tx_empty_handler + 56
        0x1fff1f74:    2210        ."      MOVS     r2,#0x10
        0x1fff1f76:    e001        ..      B        0x1fff1f7c ; irq_tx_empty_handler + 60
        0x1fff1f78:    2a00        .*      CMP      r2,#0
        0x1fff1f7a:    d002        ..      BEQ      0x1fff1f82 ; irq_tx_empty_handler + 66
        0x1fff1f7c:    2c01        .,      CMP      r4,#1
        0x1fff1f7e:    d016        ..      BEQ      0x1fff1fae ; irq_tx_empty_handler + 110
        0x1fff1f80:    e01c        ..      B        0x1fff1fbc ; irq_tx_empty_handler + 124
        0x1fff1f82:    2001        .       MOVS     r0,#1
        0x1fff1f84:    7008        .p      STRB     r0,[r1,#0]
        0x1fff1f86:    2000        .       MOVS     r0,#0
        0x1fff1f88:    8048        H.      STRH     r0,[r1,#2]
        0x1fff1f8a:    8088        ..      STRH     r0,[r1,#4]
        0x1fff1f8c:    69d9        .i      LDR      r1,[r3,#0x1c]
        0x1fff1f8e:    2900        .)      CMP      r1,#0
        0x1fff1f90:    d005        ..      BEQ      0x1fff1f9e ; irq_tx_empty_handler + 94
        0x1fff1f92:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff1fd4] = 0x1fff6e70
        0x1fff1f94:    466d        mF      MOV      r5,sp
        0x1fff1f96:    cb0d        ..      LDM      r3,{r0,r2,r3}
        0x1fff1f98:    c50d        ..      STM      r5!,{r0,r2,r3}
        0x1fff1f9a:    4668        hF      MOV      r0,sp
        0x1fff1f9c:    4788        .G      BLX      r1
        0x1fff1f9e:    2c00        .,      CMP      r4,#0
        0x1fff1fa0:    d003        ..      BEQ      0x1fff1faa ; irq_tx_empty_handler + 106
        0x1fff1fa2:    2019        .       MOVS     r0,#0x19
        0x1fff1fa4:    f002f944    ..D.    BL       hal_pwrmgr_unlock ; 0x1fff4230
        0x1fff1fa8:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff1faa:    2008        .       MOVS     r0,#8
        0x1fff1fac:    e7fa        ..      B        0x1fff1fa4 ; irq_tx_empty_handler + 100
        0x1fff1fae:    4d07        .M      LDR      r5,[pc,#28] ; [0x1fff1fcc] = 0x40009000
        0x1fff1fb0:    e004        ..      B        0x1fff1fbc ; irq_tx_empty_handler + 124
        0x1fff1fb2:    8848        H.      LDRH     r0,[r1,#2]
        0x1fff1fb4:    1c43        C.      ADDS     r3,r0,#1
        0x1fff1fb6:    804b        K.      STRH     r3,[r1,#2]
        0x1fff1fb8:    5c30        0\      LDRB     r0,[r6,r0]
        0x1fff1fba:    7028        (p      STRB     r0,[r5,#0]
        0x1fff1fbc:    4610        .F      MOV      r0,r2
        0x1fff1fbe:    1e52        R.      SUBS     r2,r2,#1
        0x1fff1fc0:    b292        ..      UXTH     r2,r2
        0x1fff1fc2:    2800        .(      CMP      r0,#0
        0x1fff1fc4:    d1f5        ..      BNE      0x1fff1fb2 ; irq_tx_empty_handler + 114
        0x1fff1fc6:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff1fc8:    40004000    .@.@    DCD    1073758208
        0x1fff1fcc:    40009000    ...@    DCD    1073778688
        0x1fff1fd0:    1fff7bd0    .{..    DCD    536837072
        0x1fff1fd4:    1fff6e70    pn..    DCD    536833648
    $t
    _section_sram_code_
    hal_pwrmgr_enter_sleep_rtc_reset
        0x1fff1fd8:    4604        .F      MOV      r4,r0
        0x1fff1fda:    f7fffc91    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff1fde:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff2008] = 0x4000f000
        0x1fff1fe0:    69c8        .i      LDR      r0,[r1,#0x1c]
        0x1fff1fe2:    2240        @"      MOVS     r2,#0x40
        0x1fff1fe4:    4390        .C      BICS     r0,r0,r2
        0x1fff1fe6:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff1fe8:    4620         F      MOV      r0,r4
        0x1fff1fea:    f7fffcad    ....    BL       $Ven$TT$L$$config_RTC ; 0x1fff1948
        0x1fff1fee:    f002f877    ..w.    BL       hal_pwrmgr_RAM_retention_clr ; 0x1fff40e0
        0x1fff1ff2:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff2008] = 0x4000f000
        0x1fff1ff4:    2100        .!      MOVS     r1,#0
        0x1fff1ff6:    30c0        .0      ADDS     r0,r0,#0xc0
        0x1fff1ff8:    6041        A`      STR      r1,[r0,#4]
        0x1fff1ffa:    2104        .!      MOVS     r1,#4
        0x1fff1ffc:    6001        .`      STR      r1,[r0,#0]
        0x1fff1ffe:    2001        .       MOVS     r0,#1
        0x1fff2000:    f7fffca8    ....    BL       $Ven$TT$L$$enter_sleep_off_mode ; 0x1fff1954
        0x1fff2004:    e7fe        ..      B        0x1fff2004 ; hal_pwrmgr_enter_sleep_rtc_reset + 44
    $d
        0x1fff2006:    0000        ..      DCW    0
        0x1fff2008:    4000f000    ...@    DCD    1073803264
    $t
    _section_xip_code_
    LL_CreateConnCancel1
        0x1fff200c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff200e:    f7fffc77    ..w.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff2012:    4c90        .L      LDR      r4,[pc,#576] ; [0x1fff2254] = 0x1fff0998
        0x1fff2014:    2000        .       MOVS     r0,#0
        0x1fff2016:    6825        %h      LDR      r5,[r4,#0]
        0x1fff2018:    6020         `      STR      r0,[r4,#0]
        0x1fff201a:    f7fffca1    ....    BL       $Ven$TT$L$$LL_CreateConnCancel0 ; 0x1fff1960
        0x1fff201e:    4606        .F      MOV      r6,r0
        0x1fff2020:    6025        %`      STR      r5,[r4,#0]
        0x1fff2022:    f7fffc79    ..y.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff2026:    4630        0F      MOV      r0,r6
        0x1fff2028:    bd70        p.      POP      {r4-r6,pc}
    global_config_maxscanrsplen
        0x1fff202a:    498b        .I      LDR      r1,[pc,#556] ; [0x1fff2258] = 0x1fff70d8
        0x1fff202c:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff202e:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff2030:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff2032:    6588        .e      STR      r0,[r1,#0x58]
        0x1fff2034:    4770        pG      BX       lr
    init_config
        0x1fff2036:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff2038:    f001f866    ..f.    BL       _rom_efuse_version_init ; 0x1fff3108
        0x1fff203c:    4d86        .M      LDR      r5,[pc,#536] ; [0x1fff2258] = 0x1fff70d8
        0x1fff203e:    4a87        .J      LDR      r2,[pc,#540] ; [0x1fff225c] = 0x1fff0a4a
        0x1fff2040:    7268        hr      STRB     r0,[r5,#9]
        0x1fff2042:    7811        .x      LDRB     r1,[r2,#0]
        0x1fff2044:    2902        .)      CMP      r1,#2
        0x1fff2046:    d903        ..      BLS      0x1fff2050 ; init_config + 26
        0x1fff2048:    2800        .(      CMP      r0,#0
        0x1fff204a:    d101        ..      BNE      0x1fff2050 ; init_config + 26
        0x1fff204c:    2001        .       MOVS     r0,#1
        0x1fff204e:    7010        .p      STRB     r0,[r2,#0]
        0x1fff2050:    4983        .I      LDR      r1,[pc,#524] ; [0x1fff2260] = 0x1fff0400
        0x1fff2052:    2000        .       MOVS     r0,#0
        0x1fff2054:    4604        .F      MOV      r4,r0
        0x1fff2056:    60e9        .`      STR      r1,[r5,#0xc]
        0x1fff2058:    0083        ..      LSLS     r3,r0,#2
        0x1fff205a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff205c:    50cc        .P      STR      r4,[r1,r3]
        0x1fff205e:    28ff        .(      CMP      r0,#0xff
        0x1fff2060:    ddfa        ..      BLE      0x1fff2058 ; init_config + 34
        0x1fff2062:    68e8        .h      LDR      r0,[r5,#0xc]
        0x1fff2064:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff2264] = 0x1fff8560
        0x1fff2066:    2388        .#      MOVS     r3,#0x88
        0x1fff2068:    5019        .P      STR      r1,[r3,r0]
        0x1fff206a:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff2268] = 0x46e
        0x1fff206c:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff206e:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff226c] = 0x1fff7040
        0x1fff2070:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff2072:    2900        .)      CMP      r1,#0
        0x1fff2074:    d002        ..      BEQ      0x1fff207c ; init_config + 70
        0x1fff2076:    497c        |I      LDR      r1,[pc,#496] ; [0x1fff2268] = 0x46e
        0x1fff2078:    3111        .1      ADDS     r1,r1,#0x11
        0x1fff207a:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff207c:    210a        .!      MOVS     r1,#0xa
        0x1fff207e:    6501        .e      STR      r1,[r0,#0x50]
        0x1fff2080:    7811        .x      LDRB     r1,[r2,#0]
        0x1fff2082:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff2084:    497a        zI      LDR      r1,[pc,#488] ; [0x1fff2270] = 0x73a
        0x1fff2086:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff2088:    f001fb8c    ....    BL       global_config_hclk_related ; 0x1fff37a4
        0x1fff208c:    68e9        .h      LDR      r1,[r5,#0xc]
        0x1fff208e:    4879        yH      LDR      r0,[pc,#484] ; [0x1fff2274] = 0x1c9c380
        0x1fff2090:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff2092:    2019        .       MOVS     r0,#0x19
        0x1fff2094:    0180        ..      LSLS     r0,r0,#6
        0x1fff2096:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff2098:    4608        .F      MOV      r0,r1
        0x1fff209a:    2237        7"      MOVS     r2,#0x37
        0x1fff209c:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff209e:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff20a0:    2308        .#      MOVS     r3,#8
        0x1fff20a2:    2236        6"      MOVS     r2,#0x36
        0x1fff20a4:    640b        .d      STR      r3,[r1,#0x40]
        0x1fff20a6:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff20a8:    221e        ."      MOVS     r2,#0x1e
        0x1fff20aa:    644a        Jd      STR      r2,[r1,#0x44]
        0x1fff20ac:    2236        6"      MOVS     r2,#0x36
        0x1fff20ae:    6042        B`      STR      r2,[r0,#4]
        0x1fff20b0:    2232        2"      MOVS     r2,#0x32
        0x1fff20b2:    6002        .`      STR      r2,[r0,#0]
        0x1fff20b4:    223b        ;"      MOVS     r2,#0x3b
        0x1fff20b6:    6403        .d      STR      r3,[r0,#0x40]
        0x1fff20b8:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff20ba:    2228        ("      MOVS     r2,#0x28
        0x1fff20bc:    6442        Bd      STR      r2,[r0,#0x44]
        0x1fff20be:    2241        A"      MOVS     r2,#0x41
        0x1fff20c0:    64c2        .d      STR      r2,[r0,#0x4c]
        0x1fff20c2:    2239        9"      MOVS     r2,#0x39
        0x1fff20c4:    6482        .d      STR      r2,[r0,#0x48]
        0x1fff20c6:    2232        2"      MOVS     r2,#0x32
        0x1fff20c8:    6543        Ce      STR      r3,[r0,#0x54]
        0x1fff20ca:    6502        .e      STR      r2,[r0,#0x50]
        0x1fff20cc:    2228        ("      MOVS     r2,#0x28
        0x1fff20ce:    6582        .e      STR      r2,[r0,#0x58]
        0x1fff20d0:    2202        ."      MOVS     r2,#2
        0x1fff20d2:    6602        .f      STR      r2,[r0,#0x60]
        0x1fff20d4:    2242        B"      MOVS     r2,#0x42
        0x1fff20d6:    65c2        .e      STR      r2,[r0,#0x5c]
        0x1fff20d8:    221e        ."      MOVS     r2,#0x1e
        0x1fff20da:    6683        .f      STR      r3,[r0,#0x68]
        0x1fff20dc:    6642        Bf      STR      r2,[r0,#0x64]
        0x1fff20de:    2228        ("      MOVS     r2,#0x28
        0x1fff20e0:    66c2        .f      STR      r2,[r0,#0x6c]
        0x1fff20e2:    2220         "      MOVS     r2,#0x20
        0x1fff20e4:    6742        Bg      STR      r2,[r0,#0x74]
        0x1fff20e6:    2242        B"      MOVS     r2,#0x42
        0x1fff20e8:    6702        .g      STR      r2,[r0,#0x70]
        0x1fff20ea:    225a        Z"      MOVS     r2,#0x5a
        0x1fff20ec:    6143        Ca      STR      r3,[r0,#0x14]
        0x1fff20ee:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff20f0:    223c        <"      MOVS     r2,#0x3c
        0x1fff20f2:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff20f4:    2219        ."      MOVS     r2,#0x19
        0x1fff20f6:    0192        ..      LSLS     r2,r2,#6
        0x1fff20f8:    600a        .`      STR      r2,[r1,#0]
        0x1fff20fa:    4a5f        _J      LDR      r2,[pc,#380] ; [0x1fff2278] = 0x29a
        0x1fff20fc:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff20fe:    22ff        ."      MOVS     r2,#0xff
        0x1fff2100:    322d        -2      ADDS     r2,r2,#0x2d
        0x1fff2102:    608a        .`      STR      r2,[r1,#8]
        0x1fff2104:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff2106:    22ff        ."      MOVS     r2,#0xff
        0x1fff2108:    32f5        .2      ADDS     r2,r2,#0xf5
        0x1fff210a:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff210c:    4a5b        [J      LDR      r2,[pc,#364] ; [0x1fff227c] = 0xc350
        0x1fff210e:    648a        .d      STR      r2,[r1,#0x48]
        0x1fff2110:    227d        }"      MOVS     r2,#0x7d
        0x1fff2112:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2114:    4e5a        ZN      LDR      r6,[pc,#360] ; [0x1fff2280] = 0xa28
        0x1fff2116:    67c2        .g      STR      r2,[r0,#0x7c]
        0x1fff2118:    64ce        .d      STR      r6,[r1,#0x4c]
        0x1fff211a:    624a        Jb      STR      r2,[r1,#0x24]
        0x1fff211c:    4a59        YJ      LDR      r2,[pc,#356] ; [0x1fff2284] = 0x186a
        0x1fff211e:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff2120:    2232        2"      MOVS     r2,#0x32
        0x1fff2122:    65ca        .e      STR      r2,[r1,#0x5c]
        0x1fff2124:    2206        ."      MOVS     r2,#6
        0x1fff2126:    654a        Je      STR      r2,[r1,#0x54]
        0x1fff2128:    658a        .e      STR      r2,[r1,#0x58]
        0x1fff212a:    1dca        ..      ADDS     r2,r1,#7
        0x1fff212c:    32f9        .2      ADDS     r2,r2,#0xf9
        0x1fff212e:    2502        .%      MOVS     r5,#2
        0x1fff2130:    6013        .`      STR      r3,[r2,#0]
        0x1fff2132:    664d        Mf      STR      r5,[r1,#0x64]
        0x1fff2134:    254b        K%      MOVS     r5,#0x4b
        0x1fff2136:    00ed        ..      LSLS     r5,r5,#3
        0x1fff2138:    668d        .f      STR      r5,[r1,#0x68]
        0x1fff213a:    2509        .%      MOVS     r5,#9
        0x1fff213c:    66cd        .f      STR      r5,[r1,#0x6c]
        0x1fff213e:    4d52        RM      LDR      r5,[pc,#328] ; [0x1fff2288] = 0x4e20
        0x1fff2140:    670d        .g      STR      r5,[r1,#0x70]
        0x1fff2142:    678c        .g      STR      r4,[r1,#0x78]
        0x1fff2144:    674b        Kg      STR      r3,[r1,#0x74]
        0x1fff2146:    10ab        ..      ASRS     r3,r5,#2
        0x1fff2148:    67cb        .g      STR      r3,[r1,#0x7c]
        0x1fff214a:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff228c] = 0x1fff09f0
        0x1fff214c:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff214e:    603e        >`      STR      r6,[r7,#0]
        0x1fff2150:    4e4a        JN      LDR      r6,[pc,#296] ; [0x1fff227c] = 0xc350
        0x1fff2152:    6286        .b      STR      r6,[r0,#0x28]
        0x1fff2154:    267d        }&      MOVS     r6,#0x7d
        0x1fff2156:    00f6        ..      LSLS     r6,r6,#3
        0x1fff2158:    6786        .g      STR      r6,[r0,#0x78]
        0x1fff215a:    2664        d&      MOVS     r6,#0x64
        0x1fff215c:    6246        Fb      STR      r6,[r0,#0x24]
        0x1fff215e:    2605        .&      MOVS     r6,#5
        0x1fff2160:    62c6        .b      STR      r6,[r0,#0x2c]
        0x1fff2162:    2602        .&      MOVS     r6,#2
        0x1fff2164:    6306        .c      STR      r6,[r0,#0x30]
        0x1fff2166:    26c8        .&      MOVS     r6,#0xc8
        0x1fff2168:    6346        Fc      STR      r6,[r0,#0x34]
        0x1fff216a:    6384        .c      STR      r4,[r0,#0x38]
        0x1fff216c:    2038        8       MOVS     r0,#0x38
        0x1fff216e:    6050        P`      STR      r0,[r2,#4]
        0x1fff2170:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff2290] = 0x11004000
        0x1fff2172:    6410        .d      STR      r0,[r2,#0x40]
        0x1fff2174:    204b        K       MOVS     r0,#0x4b
        0x1fff2176:    0180        ..      LSLS     r0,r0,#6
        0x1fff2178:    6190        .a      STR      r0,[r2,#0x18]
        0x1fff217a:    00b0        ..      LSLS     r0,r6,#2
        0x1fff217c:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff217e:    1058        X.      ASRS     r0,r3,#1
        0x1fff2180:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff2182:    207d        }       MOVS     r0,#0x7d
        0x1fff2184:    0100        ..      LSLS     r0,r0,#4
        0x1fff2186:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff2188:    66d4        .f      STR      r4,[r2,#0x6c]
        0x1fff218a:    6595        .e      STR      r5,[r2,#0x58]
        0x1fff218c:    6613        .f      STR      r3,[r2,#0x60]
        0x1fff218e:    6453        Sd      STR      r3,[r2,#0x44]
        0x1fff2190:    65d5        .e      STR      r5,[r2,#0x5c]
        0x1fff2192:    6714        .g      STR      r4,[r2,#0x70]
        0x1fff2194:    6753        Sg      STR      r3,[r2,#0x74]
        0x1fff2196:    201e        .       MOVS     r0,#0x1e
        0x1fff2198:    6690        .f      STR      r0,[r2,#0x68]
        0x1fff219a:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff2294] = 0x5dc
        0x1fff219c:    6790        .g      STR      r0,[r2,#0x78]
        0x1fff219e:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff2298] = 0xf4240
        0x1fff21a0:    005b        [.      LSLS     r3,r3,#1
        0x1fff21a2:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff21a4:    67d0        .g      STR      r0,[r2,#0x7c]
        0x1fff21a6:    600b        .`      STR      r3,[r1,#0]
        0x1fff21a8:    608b        .`      STR      r3,[r1,#8]
        0x1fff21aa:    6048        H`      STR      r0,[r1,#4]
        0x1fff21ac:    20ff        .       MOVS     r0,#0xff
        0x1fff21ae:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff21b0:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff21b2:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff21b4:    204b        K       MOVS     r0,#0x4b
        0x1fff21b6:    00c0        ..      LSLS     r0,r0,#3
        0x1fff21b8:    6310        .c      STR      r0,[r2,#0x30]
        0x1fff21ba:    650e        .e      STR      r6,[r1,#0x50]
        0x1fff21bc:    4838        8H      LDR      r0,[pc,#224] ; [0x1fff22a0] = 0x1fff0100
        0x1fff21be:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff229c] = 0x1fff4b31
        0x1fff21c0:    4a27        'J      LDR      r2,[pc,#156] ; [0x1fff2260] = 0x1fff0400
        0x1fff21c2:    6081        .`      STR      r1,[r0,#8]
        0x1fff21c4:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff22a4] = 0x1fff2605
        0x1fff21c6:    3a80        .:      SUBS     r2,r2,#0x80
        0x1fff21c8:    6111        .a      STR      r1,[r2,#0x10]
        0x1fff21ca:    4935        5I      LDR      r1,[pc,#212] ; [0x1fff22a0] = 0x1fff0100
        0x1fff21cc:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22a8] = 0x1fff6105
        0x1fff21ce:    3180        .1      ADDS     r1,r1,#0x80
        0x1fff21d0:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff21d2:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22ac] = 0x1fff63d9
        0x1fff21d4:    62ca        .b      STR      r2,[r1,#0x2c]
        0x1fff21d6:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22b0] = 0x1fff2311
        0x1fff21d8:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff21da:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22b4] = 0x1fff24a5
        0x1fff21dc:    62c2        .b      STR      r2,[r0,#0x2c]
        0x1fff21de:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22b8] = 0x1fff232d
        0x1fff21e0:    6302        .c      STR      r2,[r0,#0x30]
        0x1fff21e2:    4a2f        /J      LDR      r2,[pc,#188] ; [0x1fff22a0] = 0x1fff0100
        0x1fff21e4:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff22bc] = 0x1fff36d5
        0x1fff21e6:    3a40        @:      SUBS     r2,r2,#0x40
        0x1fff21e8:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff21ea:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff22c0] = 0x1fff3495
        0x1fff21ec:    63d0        .c      STR      r0,[r2,#0x3c]
        0x1fff21ee:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff22c4] = 0x1fff6ce1
        0x1fff21f0:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff21f2:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff22c8] = 0x1fff6acd
        0x1fff21f4:    6390        .c      STR      r0,[r2,#0x38]
        0x1fff21f6:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff22a0] = 0x1fff0100
        0x1fff21f8:    4834        4H      LDR      r0,[pc,#208] ; [0x1fff22cc] = 0x1fff45a9
        0x1fff21fa:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff21fc:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff21fe:    4935        5I      LDR      r1,[pc,#212] ; [0x1fff22d4] = 0x1fff0200
        0x1fff2200:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff22d0] = 0x1fff1e21
        0x1fff2202:    6088        .`      STR      r0,[r1,#8]
        0x1fff2204:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff22a0] = 0x1fff0100
        0x1fff2206:    4934        4I      LDR      r1,[pc,#208] ; [0x1fff22d8] = 0x1fff4665
        0x1fff2208:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff220a:    6041        A`      STR      r1,[r0,#4]
        0x1fff220c:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff22dc] = 0x1fff48b5
        0x1fff220e:    4a24        $J      LDR      r2,[pc,#144] ; [0x1fff22a0] = 0x1fff0100
        0x1fff2210:    6341        Ac      STR      r1,[r0,#0x34]
        0x1fff2212:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff22e0] = 0x1fff282d
        0x1fff2214:    3ac0        .:      SUBS     r2,r2,#0xc0
        0x1fff2216:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff2218:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff22e8] = 0x1fff0000
        0x1fff221a:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff22e4] = 0x1fff1e05
        0x1fff221c:    4c20         L      LDR      r4,[pc,#128] ; [0x1fff22a0] = 0x1fff0100
        0x1fff221e:    63cb        .c      STR      r3,[r1,#0x3c]
        0x1fff2220:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff22ec] = 0x1fff55ed
        0x1fff2222:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff2224:    6323        #c      STR      r3,[r4,#0x30]
        0x1fff2226:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff22f0] = 0x1fff4779
        0x1fff2228:    6293        .b      STR      r3,[r2,#0x28]
        0x1fff222a:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff22f4] = 0x1fff4e0d
        0x1fff222c:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff222e:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff22f8] = 0x1fff47b1
        0x1fff2230:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff2232:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff22fc] = 0x1fff2815
        0x1fff2234:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff2236:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2300] = 0x1fff46b9
        0x1fff2238:    60e2        .`      STR      r2,[r4,#0xc]
        0x1fff223a:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2304] = 0x1fff1e51
        0x1fff223c:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff223e:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2308] = 0x1fff27c1
        0x1fff2240:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff2242:    4932        2I      LDR      r1,[pc,#200] ; [0x1fff230c] = 0x1fff5075
        0x1fff2244:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff2246:    f7fffb91    ....    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff224a:    2001        .       MOVS     r0,#1
        0x1fff224c:    f7fffb94    ....    BL       $Ven$TT$L$$setSleepMode ; 0x1fff1978
        0x1fff2250:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff2252:    0000        ..      DCW    0
        0x1fff2254:    1fff0998    ....    DCD    536807832
        0x1fff2258:    1fff70d8    .p..    DCD    536834264
        0x1fff225c:    1fff0a4a    J...    DCD    536808010
        0x1fff2260:    1fff0400    ....    DCD    536806400
        0x1fff2264:    1fff8560    `...    DCD    536839520
        0x1fff2268:    0000046e    n...    DCD    1134
        0x1fff226c:    1fff7040    @p..    DCD    536834112
        0x1fff2270:    0000073a    :...    DCD    1850
        0x1fff2274:    01c9c380    ....    DCD    30000000
        0x1fff2278:    0000029a    ....    DCD    666
        0x1fff227c:    0000c350    P...    DCD    50000
        0x1fff2280:    00000a28    (...    DCD    2600
        0x1fff2284:    0000186a    j...    DCD    6250
        0x1fff2288:    00004e20     N..    DCD    20000
        0x1fff228c:    1fff09f0    ....    DCD    536807920
        0x1fff2290:    11004000    .@..    DCD    285229056
        0x1fff2294:    000005dc    ....    DCD    1500
        0x1fff2298:    000f4240    @B..    DCD    1000000
        0x1fff229c:    1fff4b31    1K..    DCD    536824625
        0x1fff22a0:    1fff0100    ....    DCD    536805632
        0x1fff22a4:    1fff2605    .&..    DCD    536815109
        0x1fff22a8:    1fff6105    .a..    DCD    536830213
        0x1fff22ac:    1fff63d9    .c..    DCD    536830937
        0x1fff22b0:    1fff2311    .#..    DCD    536814353
        0x1fff22b4:    1fff24a5    .$..    DCD    536814757
        0x1fff22b8:    1fff232d    -#..    DCD    536814381
        0x1fff22bc:    1fff36d5    .6..    DCD    536819413
        0x1fff22c0:    1fff3495    .4..    DCD    536818837
        0x1fff22c4:    1fff6ce1    .l..    DCD    536833249
        0x1fff22c8:    1fff6acd    .j..    DCD    536832717
        0x1fff22cc:    1fff45a9    .E..    DCD    536823209
        0x1fff22d0:    1fff1e21    !...    DCD    536813089
        0x1fff22d4:    1fff0200    ....    DCD    536805888
        0x1fff22d8:    1fff4665    eF..    DCD    536823397
        0x1fff22dc:    1fff48b5    .H..    DCD    536823989
        0x1fff22e0:    1fff282d    -(..    DCD    536815661
        0x1fff22e4:    1fff1e05    ....    DCD    536813061
        0x1fff22e8:    1fff0000    ....    DCD    536805376
        0x1fff22ec:    1fff55ed    .U..    DCD    536827373
        0x1fff22f0:    1fff4779    yG..    DCD    536823673
        0x1fff22f4:    1fff4e0d    .N..    DCD    536825357
        0x1fff22f8:    1fff47b1    .G..    DCD    536823729
        0x1fff22fc:    1fff2815    .(..    DCD    536815637
        0x1fff2300:    1fff46b9    .F..    DCD    536823481
        0x1fff2304:    1fff1e51    Q...    DCD    536813137
        0x1fff2308:    1fff27c1    .'..    DCD    536815553
        0x1fff230c:    1fff5075    uP..    DCD    536825973
    $t
    i.LL_ENC_AES128_Encrypt1
    LL_ENC_AES128_Encrypt1
        0x1fff2310:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2312:    2401        .$      MOVS     r4,#1
        0x1fff2314:    07a4        ..      LSLS     r4,r4,#30
        0x1fff2316:    68a3        .h      LDR      r3,[r4,#8]
        0x1fff2318:    2510        .%      MOVS     r5,#0x10
        0x1fff231a:    432b        +C      ORRS     r3,r3,r5
        0x1fff231c:    60a3        .`      STR      r3,[r4,#8]
        0x1fff231e:    f7fffb31    ..1.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt0 ; 0x1fff1984
        0x1fff2322:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff2324:    43a8        .C      BICS     r0,r0,r5
        0x1fff2326:    60a0        .`      STR      r0,[r4,#8]
        0x1fff2328:    bd70        p.      POP      {r4-r6,pc}
        0x1fff232a:    0000        ..      MOVS     r0,r0
    i.LL_ENC_Decrypt1
    LL_ENC_Decrypt1
        0x1fff232c:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff232e:    4606        .F      MOV      r6,r0
        0x1fff2330:    2001        .       MOVS     r0,#1
        0x1fff2332:    0780        ..      LSLS     r0,r0,#30
        0x1fff2334:    6881        .h      LDR      r1,[r0,#8]
        0x1fff2336:    b081        ..      SUB      sp,sp,#4
        0x1fff2338:    461d        .F      MOV      r5,r3
        0x1fff233a:    2210        ."      MOVS     r2,#0x10
        0x1fff233c:    4311        .C      ORRS     r1,r1,r2
        0x1fff233e:    6081        .`      STR      r1,[r0,#8]
        0x1fff2340:    4f55        UO      LDR      r7,[pc,#340] ; [0x1fff2498] = 0x40040000
        0x1fff2342:    2000        .       MOVS     r0,#0
        0x1fff2344:    6038        8`      STR      r0,[r7,#0]
        0x1fff2346:    4630        0F      MOV      r0,r6
        0x1fff2348:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff234a:    f7fffb21    ..!.    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff1990
        0x1fff234e:    209d        .       MOVS     r0,#0x9d
        0x1fff2350:    0080        ..      LSLS     r0,r0,#2
        0x1fff2352:    4634        4F      MOV      r4,r6
        0x1fff2354:    5980        .Y      LDR      r0,[r0,r6]
        0x1fff2356:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff2358:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff235a:    3601        .6      ADDS     r6,#1
        0x1fff235c:    2800        .(      CMP      r0,#0
        0x1fff235e:    6830        0h      LDR      r0,[r6,#0]
        0x1fff2360:    4622        "F      MOV      r2,r4
        0x1fff2362:    d02c        ,.      BEQ      0x1fff23be ; LL_ENC_Decrypt1 + 146
        0x1fff2364:    2101        .!      MOVS     r1,#1
        0x1fff2366:    f7fffb19    ....    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff199c
        0x1fff236a:    4f4b        KO      LDR      r7,[pc,#300] ; [0x1fff2498] = 0x40040000
        0x1fff236c:    7820         x      LDRB     r0,[r4,#0]
        0x1fff236e:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff2370:    1c64        d.      ADDS     r4,r4,#1
        0x1fff2372:    4620         F      MOV      r0,r4
        0x1fff2374:    f7fffb18    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2378:    ba00        ..      REV      r0,r0
        0x1fff237a:    0a00        ..      LSRS     r0,r0,#8
        0x1fff237c:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff237e:    0200        ..      LSLS     r0,r0,#8
        0x1fff2380:    4308        .C      ORRS     r0,r0,r1
        0x1fff2382:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff2384:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2386:    4620         F      MOV      r0,r4
        0x1fff2388:    f7fffb0e    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff238c:    ba00        ..      REV      r0,r0
        0x1fff238e:    0a00        ..      LSRS     r0,r0,#8
        0x1fff2390:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2392:    0200        ..      LSLS     r0,r0,#8
        0x1fff2394:    4308        .C      ORRS     r0,r0,r1
        0x1fff2396:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff2398:    1d24        $.      ADDS     r4,r4,#4
        0x1fff239a:    4620         F      MOV      r0,r4
        0x1fff239c:    f7fffb04    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23a0:    ba00        ..      REV      r0,r0
        0x1fff23a2:    0a00        ..      LSRS     r0,r0,#8
        0x1fff23a4:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff23a6:    0200        ..      LSLS     r0,r0,#8
        0x1fff23a8:    4308        .C      ORRS     r0,r0,r1
        0x1fff23aa:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff23ac:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff23ae:    9902        ..      LDR      r1,[sp,#8]
        0x1fff23b0:    0200        ..      LSLS     r0,r0,#8
        0x1fff23b2:    4308        .C      ORRS     r0,r0,r1
        0x1fff23b4:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff23b6:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff23b8:    2400        .$      MOVS     r4,#0
        0x1fff23ba:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff23bc:    e00e        ..      B        0x1fff23dc ; LL_ENC_Decrypt1 + 176
        0x1fff23be:    2100        .!      MOVS     r1,#0
        0x1fff23c0:    e7d1        ..      B        0x1fff2366 ; LL_ENC_Decrypt1 + 58
        0x1fff23c2:    1928        (.      ADDS     r0,r5,r4
        0x1fff23c4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff23c6:    f7fffaef    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23ca:    0201        ..      LSLS     r1,r0,#8
        0x1fff23cc:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff23ce:    4301        .C      ORRS     r1,r1,r0
        0x1fff23d0:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff249c] = 0x40040100
        0x1fff23d2:    1820         .      ADDS     r0,r4,r0
        0x1fff23d4:    6001        .`      STR      r1,[r0,#0]
        0x1fff23d6:    1d24        $.      ADDS     r4,r4,#4
        0x1fff23d8:    b2a4        ..      UXTH     r4,r4
        0x1fff23da:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff23dc:    2f04        ./      CMP      r7,#4
        0x1fff23de:    daf0        ..      BGE      0x1fff23c2 ; LL_ENC_Decrypt1 + 150
        0x1fff23e0:    2f03        ./      CMP      r7,#3
        0x1fff23e2:    d004        ..      BEQ      0x1fff23ee ; LL_ENC_Decrypt1 + 194
        0x1fff23e4:    2f02        ./      CMP      r7,#2
        0x1fff23e6:    d008        ..      BEQ      0x1fff23fa ; LL_ENC_Decrypt1 + 206
        0x1fff23e8:    2f01        ./      CMP      r7,#1
        0x1fff23ea:    d00c        ..      BEQ      0x1fff2406 ; LL_ENC_Decrypt1 + 218
        0x1fff23ec:    e011        ..      B        0x1fff2412 ; LL_ENC_Decrypt1 + 230
        0x1fff23ee:    1928        (.      ADDS     r0,r5,r4
        0x1fff23f0:    f7fffada    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23f4:    0201        ..      LSLS     r1,r0,#8
        0x1fff23f6:    0a09        ..      LSRS     r1,r1,#8
        0x1fff23f8:    e006        ..      B        0x1fff2408 ; LL_ENC_Decrypt1 + 220
        0x1fff23fa:    1929        ).      ADDS     r1,r5,r4
        0x1fff23fc:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff23fe:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff2400:    0201        ..      LSLS     r1,r0,#8
        0x1fff2402:    4311        .C      ORRS     r1,r1,r2
        0x1fff2404:    e000        ..      B        0x1fff2408 ; LL_ENC_Decrypt1 + 220
        0x1fff2406:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff2408:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff249c] = 0x40040100
        0x1fff240a:    1820         .      ADDS     r0,r4,r0
        0x1fff240c:    6001        .`      STR      r1,[r0,#0]
        0x1fff240e:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2410:    b2a4        ..      UXTH     r4,r4
        0x1fff2412:    2100        .!      MOVS     r1,#0
        0x1fff2414:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff249c] = 0x40040100
        0x1fff2416:    e002        ..      B        0x1fff241e ; LL_ENC_Decrypt1 + 242
        0x1fff2418:    19e0        ..      ADDS     r0,r4,r7
        0x1fff241a:    6001        .`      STR      r1,[r0,#0]
        0x1fff241c:    1d24        $.      ADDS     r4,r4,#4
        0x1fff241e:    2cff        .,      CMP      r4,#0xff
        0x1fff2420:    ddfa        ..      BLE      0x1fff2418 ; LL_ENC_Decrypt1 + 236
        0x1fff2422:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff2498] = 0x40040000
        0x1fff2424:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff24a0] = 0xf08
        0x1fff2426:    6042        B`      STR      r2,[r0,#4]
        0x1fff2428:    220f        ."      MOVS     r2,#0xf
        0x1fff242a:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff242c:    2201        ."      MOVS     r2,#1
        0x1fff242e:    6002        .`      STR      r2,[r0,#0]
        0x1fff2430:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff2432:    2a00        .*      CMP      r2,#0
        0x1fff2434:    d0fc        ..      BEQ      0x1fff2430 ; LL_ENC_Decrypt1 + 260
        0x1fff2436:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff2438:    0793        ..      LSLS     r3,r2,#30
        0x1fff243a:    d401        ..      BMI      0x1fff2440 ; LL_ENC_Decrypt1 + 276
        0x1fff243c:    0752        R.      LSLS     r2,r2,#29
        0x1fff243e:    d408        ..      BMI      0x1fff2452 ; LL_ENC_Decrypt1 + 294
        0x1fff2440:    2001        .       MOVS     r0,#1
        0x1fff2442:    0780        ..      LSLS     r0,r0,#30
        0x1fff2444:    6882        .h      LDR      r2,[r0,#8]
        0x1fff2446:    2110        .!      MOVS     r1,#0x10
        0x1fff2448:    438a        .C      BICS     r2,r2,r1
        0x1fff244a:    6082        .`      STR      r2,[r0,#8]
        0x1fff244c:    2000        .       MOVS     r0,#0
        0x1fff244e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2450:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff2452:    6001        .`      STR      r1,[r0,#0]
        0x1fff2454:    2000        .       MOVS     r0,#0
        0x1fff2456:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff2458:    e011        ..      B        0x1fff247e ; LL_ENC_Decrypt1 + 338
        0x1fff245a:    19c1        ..      ADDS     r1,r0,r7
        0x1fff245c:    6809        .h      LDR      r1,[r1,#0]
        0x1fff245e:    5429        )T      STRB     r1,[r5,r0]
        0x1fff2460:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2462:    b280        ..      UXTH     r0,r0
        0x1fff2464:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff2466:    542b        +T      STRB     r3,[r5,r0]
        0x1fff2468:    1c40        @.      ADDS     r0,r0,#1
        0x1fff246a:    0c0b        ..      LSRS     r3,r1,#16
        0x1fff246c:    b280        ..      UXTH     r0,r0
        0x1fff246e:    542b        +T      STRB     r3,[r5,r0]
        0x1fff2470:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2472:    b280        ..      UXTH     r0,r0
        0x1fff2474:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2476:    5429        )T      STRB     r1,[r5,r0]
        0x1fff2478:    1c40        @.      ADDS     r0,r0,#1
        0x1fff247a:    b280        ..      UXTH     r0,r0
        0x1fff247c:    1f12        ..      SUBS     r2,r2,#4
        0x1fff247e:    2a00        .*      CMP      r2,#0
        0x1fff2480:    dceb        ..      BGT      0x1fff245a ; LL_ENC_Decrypt1 + 302
        0x1fff2482:    6830        0h      LDR      r0,[r6,#0]
        0x1fff2484:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2486:    6030        0`      STR      r0,[r6,#0]
        0x1fff2488:    2001        .       MOVS     r0,#1
        0x1fff248a:    0780        ..      LSLS     r0,r0,#30
        0x1fff248c:    6882        .h      LDR      r2,[r0,#8]
        0x1fff248e:    2110        .!      MOVS     r1,#0x10
        0x1fff2490:    438a        .C      BICS     r2,r2,r1
        0x1fff2492:    6082        .`      STR      r2,[r0,#8]
        0x1fff2494:    2001        .       MOVS     r0,#1
        0x1fff2496:    e7da        ..      B        0x1fff244e ; LL_ENC_Decrypt1 + 290
    $d
        0x1fff2498:    40040000    ...@    DCD    1074003968
        0x1fff249c:    40040100    ...@    DCD    1074004224
        0x1fff24a0:    00000f08    ....    DCD    3848
    $t
    i.LL_ENC_Encrypt1
    LL_ENC_Encrypt1
        0x1fff24a4:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff24a6:    4605        .F      MOV      r5,r0
        0x1fff24a8:    2001        .       MOVS     r0,#1
        0x1fff24aa:    0780        ..      LSLS     r0,r0,#30
        0x1fff24ac:    6881        .h      LDR      r1,[r0,#8]
        0x1fff24ae:    b081        ..      SUB      sp,sp,#4
        0x1fff24b0:    461e        .F      MOV      r6,r3
        0x1fff24b2:    2210        ."      MOVS     r2,#0x10
        0x1fff24b4:    4311        .C      ORRS     r1,r1,r2
        0x1fff24b6:    6081        .`      STR      r1,[r0,#8]
        0x1fff24b8:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff25fc] = 0x40040000
        0x1fff24ba:    2000        .       MOVS     r0,#0
        0x1fff24bc:    6038        8`      STR      r0,[r7,#0]
        0x1fff24be:    4628        (F      MOV      r0,r5
        0x1fff24c0:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff24c2:    f7fffa65    ..e.    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff1990
        0x1fff24c6:    209d        .       MOVS     r0,#0x9d
        0x1fff24c8:    0080        ..      LSLS     r0,r0,#2
        0x1fff24ca:    462c        ,F      MOV      r4,r5
        0x1fff24cc:    5940        @Y      LDR      r0,[r0,r5]
        0x1fff24ce:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff24d0:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff24d2:    2800        .(      CMP      r0,#0
        0x1fff24d4:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff24d6:    4622        "F      MOV      r2,r4
        0x1fff24d8:    d02b        +.      BEQ      0x1fff2532 ; LL_ENC_Encrypt1 + 142
        0x1fff24da:    2100        .!      MOVS     r1,#0
        0x1fff24dc:    f7fffa5e    ..^.    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff199c
        0x1fff24e0:    4f46        FO      LDR      r7,[pc,#280] ; [0x1fff25fc] = 0x40040000
        0x1fff24e2:    7820         x      LDRB     r0,[r4,#0]
        0x1fff24e4:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff24e6:    1c64        d.      ADDS     r4,r4,#1
        0x1fff24e8:    4620         F      MOV      r0,r4
        0x1fff24ea:    f7fffa5d    ..].    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff24ee:    ba00        ..      REV      r0,r0
        0x1fff24f0:    0a00        ..      LSRS     r0,r0,#8
        0x1fff24f2:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff24f4:    0200        ..      LSLS     r0,r0,#8
        0x1fff24f6:    4308        .C      ORRS     r0,r0,r1
        0x1fff24f8:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff24fa:    1d24        $.      ADDS     r4,r4,#4
        0x1fff24fc:    4620         F      MOV      r0,r4
        0x1fff24fe:    f7fffa53    ..S.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2502:    ba00        ..      REV      r0,r0
        0x1fff2504:    0a00        ..      LSRS     r0,r0,#8
        0x1fff2506:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2508:    0200        ..      LSLS     r0,r0,#8
        0x1fff250a:    4308        .C      ORRS     r0,r0,r1
        0x1fff250c:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff250e:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2510:    4620         F      MOV      r0,r4
        0x1fff2512:    f7fffa49    ..I.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2516:    ba00        ..      REV      r0,r0
        0x1fff2518:    0a00        ..      LSRS     r0,r0,#8
        0x1fff251a:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff251c:    0200        ..      LSLS     r0,r0,#8
        0x1fff251e:    4308        .C      ORRS     r0,r0,r1
        0x1fff2520:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff2522:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff2524:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2526:    0200        ..      LSLS     r0,r0,#8
        0x1fff2528:    4308        .C      ORRS     r0,r0,r1
        0x1fff252a:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff252c:    2400        .$      MOVS     r4,#0
        0x1fff252e:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff2530:    e00e        ..      B        0x1fff2550 ; LL_ENC_Encrypt1 + 172
        0x1fff2532:    2101        .!      MOVS     r1,#1
        0x1fff2534:    e7d2        ..      B        0x1fff24dc ; LL_ENC_Encrypt1 + 56
        0x1fff2536:    1930        0.      ADDS     r0,r6,r4
        0x1fff2538:    1c40        @.      ADDS     r0,r0,#1
        0x1fff253a:    f7fffa35    ..5.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff253e:    0201        ..      LSLS     r1,r0,#8
        0x1fff2540:    5d30        0]      LDRB     r0,[r6,r4]
        0x1fff2542:    4301        .C      ORRS     r1,r1,r0
        0x1fff2544:    482e        .H      LDR      r0,[pc,#184] ; [0x1fff2600] = 0x40040100
        0x1fff2546:    1820         .      ADDS     r0,r4,r0
        0x1fff2548:    6001        .`      STR      r1,[r0,#0]
        0x1fff254a:    1d24        $.      ADDS     r4,r4,#4
        0x1fff254c:    b2a4        ..      UXTH     r4,r4
        0x1fff254e:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff2550:    2f04        ./      CMP      r7,#4
        0x1fff2552:    daf0        ..      BGE      0x1fff2536 ; LL_ENC_Encrypt1 + 146
        0x1fff2554:    2f03        ./      CMP      r7,#3
        0x1fff2556:    d004        ..      BEQ      0x1fff2562 ; LL_ENC_Encrypt1 + 190
        0x1fff2558:    2f02        ./      CMP      r7,#2
        0x1fff255a:    d008        ..      BEQ      0x1fff256e ; LL_ENC_Encrypt1 + 202
        0x1fff255c:    2f01        ./      CMP      r7,#1
        0x1fff255e:    d00f        ..      BEQ      0x1fff2580 ; LL_ENC_Encrypt1 + 220
        0x1fff2560:    e014        ..      B        0x1fff258c ; LL_ENC_Encrypt1 + 232
        0x1fff2562:    1930        0.      ADDS     r0,r6,r4
        0x1fff2564:    f7fffa20    .. .    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2568:    0201        ..      LSLS     r1,r0,#8
        0x1fff256a:    0a09        ..      LSRS     r1,r1,#8
        0x1fff256c:    e009        ..      B        0x1fff2582 ; LL_ENC_Encrypt1 + 222
        0x1fff256e:    1931        1.      ADDS     r1,r6,r4
        0x1fff2570:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff2572:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff2574:    0200        ..      LSLS     r0,r0,#8
        0x1fff2576:    4308        .C      ORRS     r0,r0,r1
        0x1fff2578:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff2600] = 0x40040100
        0x1fff257a:    1861        a.      ADDS     r1,r4,r1
        0x1fff257c:    6008        .`      STR      r0,[r1,#0]
        0x1fff257e:    e003        ..      B        0x1fff2588 ; LL_ENC_Encrypt1 + 228
        0x1fff2580:    5d31        1]      LDRB     r1,[r6,r4]
        0x1fff2582:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff2600] = 0x40040100
        0x1fff2584:    1820         .      ADDS     r0,r4,r0
        0x1fff2586:    6001        .`      STR      r1,[r0,#0]
        0x1fff2588:    1d24        $.      ADDS     r4,r4,#4
        0x1fff258a:    b2a4        ..      UXTH     r4,r4
        0x1fff258c:    2100        .!      MOVS     r1,#0
        0x1fff258e:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff2600] = 0x40040100
        0x1fff2590:    e002        ..      B        0x1fff2598 ; LL_ENC_Encrypt1 + 244
        0x1fff2592:    18e0        ..      ADDS     r0,r4,r3
        0x1fff2594:    6001        .`      STR      r1,[r0,#0]
        0x1fff2596:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2598:    2cff        .,      CMP      r4,#0xff
        0x1fff259a:    ddfa        ..      BLE      0x1fff2592 ; LL_ENC_Encrypt1 + 238
        0x1fff259c:    220f        ."      MOVS     r2,#0xf
        0x1fff259e:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff25fc] = 0x40040000
        0x1fff25a0:    0212        ..      LSLS     r2,r2,#8
        0x1fff25a2:    6042        B`      STR      r2,[r0,#4]
        0x1fff25a4:    220f        ."      MOVS     r2,#0xf
        0x1fff25a6:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff25a8:    2201        ."      MOVS     r2,#1
        0x1fff25aa:    6002        .`      STR      r2,[r0,#0]
        0x1fff25ac:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff25ae:    2a00        .*      CMP      r2,#0
        0x1fff25b0:    d0fc        ..      BEQ      0x1fff25ac ; LL_ENC_Encrypt1 + 264
        0x1fff25b2:    6001        .`      STR      r1,[r0,#0]
        0x1fff25b4:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff25b6:    2000        .       MOVS     r0,#0
        0x1fff25b8:    1d12        ..      ADDS     r2,r2,#4
        0x1fff25ba:    e011        ..      B        0x1fff25e0 ; LL_ENC_Encrypt1 + 316
        0x1fff25bc:    18c1        ..      ADDS     r1,r0,r3
        0x1fff25be:    6809        .h      LDR      r1,[r1,#0]
        0x1fff25c0:    5431        1T      STRB     r1,[r6,r0]
        0x1fff25c2:    1c40        @.      ADDS     r0,r0,#1
        0x1fff25c4:    b280        ..      UXTH     r0,r0
        0x1fff25c6:    0a0c        ..      LSRS     r4,r1,#8
        0x1fff25c8:    5434        4T      STRB     r4,[r6,r0]
        0x1fff25ca:    1c40        @.      ADDS     r0,r0,#1
        0x1fff25cc:    0c0c        ..      LSRS     r4,r1,#16
        0x1fff25ce:    b280        ..      UXTH     r0,r0
        0x1fff25d0:    5434        4T      STRB     r4,[r6,r0]
        0x1fff25d2:    1c40        @.      ADDS     r0,r0,#1
        0x1fff25d4:    b280        ..      UXTH     r0,r0
        0x1fff25d6:    0e09        ..      LSRS     r1,r1,#24
        0x1fff25d8:    5431        1T      STRB     r1,[r6,r0]
        0x1fff25da:    1c40        @.      ADDS     r0,r0,#1
        0x1fff25dc:    b280        ..      UXTH     r0,r0
        0x1fff25de:    1f12        ..      SUBS     r2,r2,#4
        0x1fff25e0:    2a00        .*      CMP      r2,#0
        0x1fff25e2:    dceb        ..      BGT      0x1fff25bc ; LL_ENC_Encrypt1 + 280
        0x1fff25e4:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff25e6:    1c40        @.      ADDS     r0,r0,#1
        0x1fff25e8:    67e8        .g      STR      r0,[r5,#0x7c]
        0x1fff25ea:    2001        .       MOVS     r0,#1
        0x1fff25ec:    0780        ..      LSLS     r0,r0,#30
        0x1fff25ee:    6882        .h      LDR      r2,[r0,#8]
        0x1fff25f0:    2110        .!      MOVS     r1,#0x10
        0x1fff25f2:    438a        .C      BICS     r2,r2,r1
        0x1fff25f4:    6082        .`      STR      r2,[r0,#8]
        0x1fff25f6:    b005        ..      ADD      sp,sp,#0x14
        0x1fff25f8:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff25fa:    0000        ..      DCW    0
        0x1fff25fc:    40040000    ...@    DCD    1074003968
        0x1fff2600:    40040100    ...@    DCD    1074004224
    $t
    i.LL_IRQHandler1
    LL_IRQHandler1
        0x1fff2604:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff2606:    f7fff9d5    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff260a:    4964        dI      LDR      r1,[pc,#400] ; [0x1fff279c] = 0x1fff099c
        0x1fff260c:    6008        .`      STR      r0,[r1,#0]
        0x1fff260e:    2004        .       MOVS     r0,#4
        0x1fff2610:    f7fff9d6    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff2614:    f7fff9da    ....    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff19cc
        0x1fff2618:    4605        .F      MOV      r5,r0
        0x1fff261a:    07c0        ..      LSLS     r0,r0,#31
        0x1fff261c:    d015        ..      BEQ      0x1fff264a ; LL_IRQHandler1 + 70
        0x1fff261e:    4960        `I      LDR      r1,[pc,#384] ; [0x1fff27a0] = 0x1fff0998
        0x1fff2620:    2000        .       MOVS     r0,#0
        0x1fff2622:    6008        .`      STR      r0,[r1,#0]
        0x1fff2624:    485f        _H      LDR      r0,[pc,#380] ; [0x1fff27a4] = 0x1fff0990
        0x1fff2626:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff2628:    2801        .(      CMP      r0,#1
        0x1fff262a:    d011        ..      BEQ      0x1fff2650 ; LL_IRQHandler1 + 76
        0x1fff262c:    2803        .(      CMP      r0,#3
        0x1fff262e:    d013        ..      BEQ      0x1fff2658 ; LL_IRQHandler1 + 84
        0x1fff2630:    2804        .(      CMP      r0,#4
        0x1fff2632:    d015        ..      BEQ      0x1fff2660 ; LL_IRQHandler1 + 92
        0x1fff2634:    2802        .(      CMP      r0,#2
        0x1fff2636:    d017        ..      BEQ      0x1fff2668 ; LL_IRQHandler1 + 100
        0x1fff2638:    2805        .(      CMP      r0,#5
        0x1fff263a:    d019        ..      BEQ      0x1fff2670 ; LL_IRQHandler1 + 108
        0x1fff263c:    f7fff9cc    ....    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff2640:    4f59        YO      LDR      r7,[pc,#356] ; [0x1fff27a8] = 0x1fff091c
        0x1fff2642:    4604        .F      MOV      r4,r0
        0x1fff2644:    2801        .(      CMP      r0,#1
        0x1fff2646:    d01a        ..      BEQ      0x1fff267e ; LL_IRQHandler1 + 122
        0x1fff2648:    e01e        ..      B        0x1fff2688 ; LL_IRQHandler1 + 132
        0x1fff264a:    f7fff9cb    ....    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff264e:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2650:    4628        (F      MOV      r0,r5
        0x1fff2652:    f7fff9cd    ....    BL       $Ven$TT$L$$ll_processExtAdvIRQ ; 0x1fff19f0
        0x1fff2656:    e00e        ..      B        0x1fff2676 ; LL_IRQHandler1 + 114
        0x1fff2658:    4628        (F      MOV      r0,r5
        0x1fff265a:    f7fff9cf    ....    BL       $Ven$TT$L$$ll_processExtScanIRQ ; 0x1fff19fc
        0x1fff265e:    e00a        ..      B        0x1fff2676 ; LL_IRQHandler1 + 114
        0x1fff2660:    4628        (F      MOV      r0,r5
        0x1fff2662:    f7fff9d1    ....    BL       $Ven$TT$L$$ll_processExtInitIRQ ; 0x1fff1a08
        0x1fff2666:    e006        ..      B        0x1fff2676 ; LL_IRQHandler1 + 114
        0x1fff2668:    4628        (F      MOV      r0,r5
        0x1fff266a:    f7fff9d3    ....    BL       $Ven$TT$L$$ll_processPrdAdvIRQ ; 0x1fff1a14
        0x1fff266e:    e002        ..      B        0x1fff2676 ; LL_IRQHandler1 + 114
        0x1fff2670:    4628        (F      MOV      r0,r5
        0x1fff2672:    f7fff9d5    ....    BL       $Ven$TT$L$$ll_processPrdScanIRQ ; 0x1fff1a20
        0x1fff2676:    b240        @.      SXTB     r0,r0
        0x1fff2678:    2801        .(      CMP      r0,#1
        0x1fff267a:    d0e8        ..      BEQ      0x1fff264e ; LL_IRQHandler1 + 74
        0x1fff267c:    e05f        _.      B        0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff267e:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff2680:    2805        .(      CMP      r0,#5
        0x1fff2682:    d009        ..      BEQ      0x1fff2698 ; LL_IRQHandler1 + 148
        0x1fff2684:    2806        .(      CMP      r0,#6
        0x1fff2686:    d007        ..      BEQ      0x1fff2698 ; LL_IRQHandler1 + 148
        0x1fff2688:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff27ac] = 0x1fff0923
        0x1fff268a:    4e49        IN      LDR      r6,[pc,#292] ; [0x1fff27b0] = 0x1fff0ba6
        0x1fff268c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff268e:    2802        .(      CMP      r0,#2
        0x1fff2690:    d006        ..      BEQ      0x1fff26a0 ; LL_IRQHandler1 + 156
        0x1fff2692:    2805        .(      CMP      r0,#5
        0x1fff2694:    d004        ..      BEQ      0x1fff26a0 ; LL_IRQHandler1 + 156
        0x1fff2696:    e009        ..      B        0x1fff26ac ; LL_IRQHandler1 + 168
        0x1fff2698:    4628        (F      MOV      r0,r5
        0x1fff269a:    f002fc97    ....    BL       ll_processBasicIRQ_SRX ; 0x1fff4fcc
        0x1fff269e:    e04e        N.      B        0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff26a0:    2c00        .,      CMP      r4,#0
        0x1fff26a2:    d006        ..      BEQ      0x1fff26b2 ; LL_IRQHandler1 + 174
        0x1fff26a4:    2802        .(      CMP      r0,#2
        0x1fff26a6:    d008        ..      BEQ      0x1fff26ba ; LL_IRQHandler1 + 182
        0x1fff26a8:    2805        .(      CMP      r0,#5
        0x1fff26aa:    d006        ..      BEQ      0x1fff26ba ; LL_IRQHandler1 + 182
        0x1fff26ac:    2c02        .,      CMP      r4,#2
        0x1fff26ae:    d00e        ..      BEQ      0x1fff26ce ; LL_IRQHandler1 + 202
        0x1fff26b0:    e005        ..      B        0x1fff26be ; LL_IRQHandler1 + 186
        0x1fff26b2:    4628        (F      MOV      r0,r5
        0x1fff26b4:    f002fcae    ....    BL       ll_processBasicIRQ_secondaryAdvSTX ; 0x1fff5014
        0x1fff26b8:    e041        A.      B        0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff26ba:    2c02        .,      CMP      r4,#2
        0x1fff26bc:    d002        ..      BEQ      0x1fff26c4 ; LL_IRQHandler1 + 192
        0x1fff26be:    2c01        .,      CMP      r4,#1
        0x1fff26c0:    d013        ..      BEQ      0x1fff26ea ; LL_IRQHandler1 + 230
        0x1fff26c2:    e016        ..      B        0x1fff26f2 ; LL_IRQHandler1 + 238
        0x1fff26c4:    7bb1        .{      LDRB     r1,[r6,#0xe]
        0x1fff26c6:    2900        .)      CMP      r1,#0
        0x1fff26c8:    d007        ..      BEQ      0x1fff26da ; LL_IRQHandler1 + 214
        0x1fff26ca:    2902        .)      CMP      r1,#2
        0x1fff26cc:    d005        ..      BEQ      0x1fff26da ; LL_IRQHandler1 + 214
        0x1fff26ce:    7839        9x      LDRB     r1,[r7,#0]
        0x1fff26d0:    2905        .)      CMP      r1,#5
        0x1fff26d2:    d006        ..      BEQ      0x1fff26e2 ; LL_IRQHandler1 + 222
        0x1fff26d4:    2801        .(      CMP      r0,#1
        0x1fff26d6:    d01a        ..      BEQ      0x1fff270e ; LL_IRQHandler1 + 266
        0x1fff26d8:    e00b        ..      B        0x1fff26f2 ; LL_IRQHandler1 + 238
        0x1fff26da:    4628        (F      MOV      r0,r5
        0x1fff26dc:    f002fca6    ....    BL       ll_processBasicIRQ_secondaryAdvTRX ; 0x1fff502c
        0x1fff26e0:    e018        ..      B        0x1fff2714 ; LL_IRQHandler1 + 272
        0x1fff26e2:    4628        (F      MOV      r0,r5
        0x1fff26e4:    f002fc7e    ..~.    BL       ll_processBasicIRQ_ScanTRX ; 0x1fff4fe4
        0x1fff26e8:    e014        ..      B        0x1fff2714 ; LL_IRQHandler1 + 272
        0x1fff26ea:    2801        .(      CMP      r0,#1
        0x1fff26ec:    d007        ..      BEQ      0x1fff26fe ; LL_IRQHandler1 + 250
        0x1fff26ee:    2806        .(      CMP      r0,#6
        0x1fff26f0:    d009        ..      BEQ      0x1fff2706 ; LL_IRQHandler1 + 258
        0x1fff26f2:    4628        (F      MOV      r0,r5
        0x1fff26f4:    f7fff99a    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff26f8:    2c02        .,      CMP      r4,#2
        0x1fff26fa:    d00b        ..      BEQ      0x1fff2714 ; LL_IRQHandler1 + 272
        0x1fff26fc:    e01f        ..      B        0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff26fe:    4628        (F      MOV      r0,r5
        0x1fff2700:    f002fcac    ....    BL       ll_processBasicIRQ_secondaryScanSRX ; 0x1fff505c
        0x1fff2704:    e01b        ..      B        0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff2706:    4628        (F      MOV      r0,r5
        0x1fff2708:    f002fc9c    ....    BL       ll_processBasicIRQ_secondaryInitSRX ; 0x1fff5044
        0x1fff270c:    e017        ..      B        0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff270e:    4628        (F      MOV      r0,r5
        0x1fff2710:    f002fc74    ..t.    BL       ll_processBasicIRQ_secScanTRX ; 0x1fff4ffc
        0x1fff2714:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff2716:    2801        .(      CMP      r0,#1
        0x1fff2718:    d111        ..      BNE      0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff271a:    0568        h.      LSLS     r0,r5,#21
        0x1fff271c:    d40f        ..      BMI      0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff271e:    7b70        p{      LDRB     r0,[r6,#0xd]
        0x1fff2720:    07c1        ..      LSLS     r1,r0,#31
        0x1fff2722:    d001        ..      BEQ      0x1fff2728 ; LL_IRQHandler1 + 292
        0x1fff2724:    2025        %       MOVS     r0,#0x25
        0x1fff2726:    e004        ..      B        0x1fff2732 ; LL_IRQHandler1 + 302
        0x1fff2728:    0780        ..      LSLS     r0,r0,#30
        0x1fff272a:    d501        ..      BPL      0x1fff2730 ; LL_IRQHandler1 + 300
        0x1fff272c:    2026        &       MOVS     r0,#0x26
        0x1fff272e:    e000        ..      B        0x1fff2732 ; LL_IRQHandler1 + 302
        0x1fff2730:    2027        '       MOVS     r0,#0x27
        0x1fff2732:    7d31        1}      LDRB     r1,[r6,#0x14]
        0x1fff2734:    4281        .B      CMP      r1,r0
        0x1fff2736:    d902        ..      BLS      0x1fff273e ; LL_IRQHandler1 + 314
        0x1fff2738:    2032        2       MOVS     r0,#0x32
        0x1fff273a:    f7fff97d    ..}.    BL       $Ven$TT$L$$ll_schedule_next_event ; 0x1fff1a38
        0x1fff273e:    4c1b        .L      LDR      r4,[pc,#108] ; [0x1fff27ac] = 0x1fff0923
        0x1fff2740:    7820         x      LDRB     r0,[r4,#0]
        0x1fff2742:    2804        .(      CMP      r0,#4
        0x1fff2744:    d004        ..      BEQ      0x1fff2750 ; LL_IRQHandler1 + 332
        0x1fff2746:    2803        .(      CMP      r0,#3
        0x1fff2748:    d01a        ..      BEQ      0x1fff2780 ; LL_IRQHandler1 + 380
        0x1fff274a:    2807        .(      CMP      r0,#7
        0x1fff274c:    d01d        ..      BEQ      0x1fff278a ; LL_IRQHandler1 + 390
        0x1fff274e:    e020         .      B        0x1fff2792 ; LL_IRQHandler1 + 398
        0x1fff2750:    f7fff978    ..x.    BL       $Ven$TT$L$$llSecAdvAllow ; 0x1fff1a44
        0x1fff2754:    2800        .(      CMP      r0,#0
        0x1fff2756:    d01c        ..      BEQ      0x1fff2792 ; LL_IRQHandler1 + 398
        0x1fff2758:    f7fff97a    ..z.    BL       $Ven$TT$L$$llSetupSecAdvEvt ; 0x1fff1a50
        0x1fff275c:    2058        X       MOVS     r0,#0x58
        0x1fff275e:    f7fff97d    ..}.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff2762:    7820         x      LDRB     r0,[r4,#0]
        0x1fff2764:    2800        .(      CMP      r0,#0
        0x1fff2766:    d001        ..      BEQ      0x1fff276c ; LL_IRQHandler1 + 360
        0x1fff2768:    2002        .       MOVS     r0,#2
        0x1fff276a:    7020         p      STRB     r0,[r4,#0]
        0x1fff276c:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff27b4] = 0x1fff70d8
        0x1fff276e:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff2770:    2800        .(      CMP      r0,#0
        0x1fff2772:    d00e        ..      BEQ      0x1fff2792 ; LL_IRQHandler1 + 398
        0x1fff2774:    7820         x      LDRB     r0,[r4,#0]
        0x1fff2776:    2800        .(      CMP      r0,#0
        0x1fff2778:    d10b        ..      BNE      0x1fff2792 ; LL_IRQHandler1 + 398
        0x1fff277a:    2003        .       MOVS     r0,#3
        0x1fff277c:    7020         p      STRB     r0,[r4,#0]
        0x1fff277e:    e008        ..      B        0x1fff2792 ; LL_IRQHandler1 + 398
        0x1fff2780:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff27b8] = 0x1fff0bbc
        0x1fff2782:    7c80        .|      LDRB     r0,[r0,#0x12]
        0x1fff2784:    f7fff970    ..p.    BL       $Ven$TT$L$$llSetupSecScan ; 0x1fff1a68
        0x1fff2788:    e003        ..      B        0x1fff2792 ; LL_IRQHandler1 + 398
        0x1fff278a:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff27bc] = 0x1fff0bd4
        0x1fff278c:    7b80        .{      LDRB     r0,[r0,#0xe]
        0x1fff278e:    f7fff971    ..q.    BL       $Ven$TT$L$$llSetupSecInit ; 0x1fff1a74
        0x1fff2792:    2003        .       MOVS     r0,#3
        0x1fff2794:    f7fff914    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff2798:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff279a:    0000        ..      DCW    0
        0x1fff279c:    1fff099c    ....    DCD    536807836
        0x1fff27a0:    1fff0998    ....    DCD    536807832
        0x1fff27a4:    1fff0990    ....    DCD    536807824
        0x1fff27a8:    1fff091c    ....    DCD    536807708
        0x1fff27ac:    1fff0923    #...    DCD    536807715
        0x1fff27b0:    1fff0ba6    ....    DCD    536808358
        0x1fff27b4:    1fff70d8    .p..    DCD    536834264
        0x1fff27b8:    1fff0bbc    ....    DCD    536808380
        0x1fff27bc:    1fff0bd4    ....    DCD    536808404
    $t
    i.LL_ProcessEvent1
    LL_ProcessEvent1
        0x1fff27c0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff27c2:    460c        .F      MOV      r4,r1
        0x1fff27c4:    4910        .I      LDR      r1,[pc,#64] ; [0x1fff2808] = 0x9de
        0x1fff27c6:    420c        .B      TST      r4,r1
        0x1fff27c8:    d11a        ..      BNE      0x1fff2800 ; LL_ProcessEvent1 + 64
        0x1fff27ca:    0561        a.      LSLS     r1,r4,#21
        0x1fff27cc:    d518        ..      BPL      0x1fff2800 ; LL_ProcessEvent1 + 64
        0x1fff27ce:    2500        .%      MOVS     r5,#0
        0x1fff27d0:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff280c] = 0x1fff80f0
        0x1fff27d2:    00af        ..      LSLS     r7,r5,#2
        0x1fff27d4:    183e        >.      ADDS     r6,r7,r0
        0x1fff27d6:    7871        qx      LDRB     r1,[r6,#1]
        0x1fff27d8:    2901        .)      CMP      r1,#1
        0x1fff27da:    d109        ..      BNE      0x1fff27f0 ; LL_ProcessEvent1 + 48
        0x1fff27dc:    5dc1        .]      LDRB     r1,[r0,r7]
        0x1fff27de:    8870        p.      LDRH     r0,[r6,#2]
        0x1fff27e0:    f7fff94e    ..N.    BL       $Ven$TT$L$$LL_DisconnectCback ; 0x1fff1a80
        0x1fff27e4:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff2810] = 0xffff
        0x1fff27e6:    8070        p.      STRH     r0,[r6,#2]
        0x1fff27e8:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff280c] = 0x1fff80f0
        0x1fff27ea:    2000        .       MOVS     r0,#0
        0x1fff27ec:    55c8        .U      STRB     r0,[r1,r7]
        0x1fff27ee:    7070        pp      STRB     r0,[r6,#1]
        0x1fff27f0:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff27f2:    b2ed        ..      UXTB     r5,r5
        0x1fff27f4:    2d10        .-      CMP      r5,#0x10
        0x1fff27f6:    d3eb        ..      BCC      0x1fff27d0 ; LL_ProcessEvent1 + 16
        0x1fff27f8:    2001        .       MOVS     r0,#1
        0x1fff27fa:    0280        ..      LSLS     r0,r0,#10
        0x1fff27fc:    4060        `@      EORS     r0,r0,r4
        0x1fff27fe:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2800:    4621        !F      MOV      r1,r4
        0x1fff2802:    f7fff943    ..C.    BL       $Ven$TT$L$$LL_ProcessEvent0 ; 0x1fff1a8c
        0x1fff2806:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff2808:    000009de    ....    DCD    2526
        0x1fff280c:    1fff80f0    ....    DCD    536838384
        0x1fff2810:    0000ffff    ....    DCD    65535
    $t
    i.LL_Reset1
    LL_Reset1
        0x1fff2814:    b510        ..      PUSH     {r4,lr}
        0x1fff2816:    2001        .       MOVS     r0,#1
        0x1fff2818:    f002ff10    ....    BL       patch_linkBuf_init ; 0x1fff563c
        0x1fff281c:    f7fff93c    ..<.    BL       $Ven$TT$L$$LL_Reset0 ; 0x1fff1a98
        0x1fff2820:    4604        .F      MOV      r4,r0
        0x1fff2822:    2000        .       MOVS     r0,#0
        0x1fff2824:    f002ff0a    ....    BL       patch_linkBuf_init ; 0x1fff563c
        0x1fff2828:    4620         F      MOV      r0,r4
        0x1fff282a:    bd10        ..      POP      {r4,pc}
    i.LL_set_default_conn_params1
    LL_set_default_conn_params1
        0x1fff282c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff282e:    4604        .F      MOV      r4,r0
        0x1fff2830:    f7fff938    ..8.    BL       $Ven$TT$L$$LL_set_default_conn_params0 ; 0x1fff1aa4
        0x1fff2834:    1de2        ..      ADDS     r2,r4,#7
        0x1fff2836:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff2838:    32fa        .2      ADDS     r2,r2,#0xfa
        0x1fff283a:    6fd0        .o      LDR      r0,[r2,#0x7c]
        0x1fff283c:    2100        .!      MOVS     r1,#0
        0x1fff283e:    0c00        ..      LSRS     r0,r0,#16
        0x1fff2840:    0400        ..      LSLS     r0,r0,#16
        0x1fff2842:    67d0        .g      STR      r0,[r2,#0x7c]
        0x1fff2844:    4610        .F      MOV      r0,r2
        0x1fff2846:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff2848:    008b        ..      LSLS     r3,r1,#2
        0x1fff284a:    191b        ..      ADDS     r3,r3,r4
        0x1fff284c:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff284e:    3301        .3      ADDS     r3,#1
        0x1fff2850:    6ac5        .j      LDR      r5,[r0,#0x2c]
        0x1fff2852:    1c49        I.      ADDS     r1,r1,#1
        0x1fff2854:    66dd        .f      STR      r5,[r3,#0x6c]
        0x1fff2856:    2908        .)      CMP      r1,#8
        0x1fff2858:    dbf6        ..      BLT      0x1fff2848 ; LL_set_default_conn_params1 + 28
        0x1fff285a:    2100        .!      MOVS     r1,#0
        0x1fff285c:    008b        ..      LSLS     r3,r1,#2
        0x1fff285e:    191b        ..      ADDS     r3,r3,r4
        0x1fff2860:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff2862:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff2864:    6ac5        .j      LDR      r5,[r0,#0x2c]
        0x1fff2866:    1c49        I.      ADDS     r1,r1,#1
        0x1fff2868:    60dd        .`      STR      r5,[r3,#0xc]
        0x1fff286a:    2908        .)      CMP      r1,#8
        0x1fff286c:    dbf6        ..      BLT      0x1fff285c ; LL_set_default_conn_params1 + 48
        0x1fff286e:    2001        .       MOVS     r0,#1
        0x1fff2870:    64d0        .d      STR      r0,[r2,#0x4c]
        0x1fff2872:    bd70        p.      POP      {r4-r6,pc}
    i.NVIC_EnableIRQ
    NVIC_EnableIRQ
        0x1fff2874:    06c1        ..      LSLS     r1,r0,#27
        0x1fff2876:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff2878:    2001        .       MOVS     r0,#1
        0x1fff287a:    4088        .@      LSLS     r0,r0,r1
        0x1fff287c:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff2884] = 0xe000e100
        0x1fff287e:    6008        .`      STR      r0,[r1,#0]
        0x1fff2880:    4770        pG      BX       lr
    $d
        0x1fff2882:    0000        ..      DCW    0
        0x1fff2884:    e000e100    ....    DCD    3758153984
    $t
    i.PLUSPHY_IRQHandler
    PLUSPHY_IRQHandler
        0x1fff2888:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff288a:    b085        ..      SUB      sp,sp,#0x14
        0x1fff288c:    f7fff892    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff2890:    4940        @I      LDR      r1,[pc,#256] ; [0x1fff2994] = 0x1fff7064
        0x1fff2892:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff2894:    f7fff89a    ....    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff19cc
        0x1fff2898:    4605        .F      MOV      r5,r0
        0x1fff289a:    07c0        ..      LSLS     r0,r0,#31
        0x1fff289c:    d012        ..      BEQ      0x1fff28c4 ; PLUSPHY_IRQHandler + 60
        0x1fff289e:    4e3e        >N      LDR      r6,[pc,#248] ; [0x1fff2998] = 0x1fff0998
        0x1fff28a0:    2000        .       MOVS     r0,#0
        0x1fff28a2:    6030        0`      STR      r0,[r6,#0]
        0x1fff28a4:    f7fff82c    ..,.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff28a8:    f7fff896    ....    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff28ac:    493b        ;I      LDR      r1,[pc,#236] ; [0x1fff299c] = 0x1fff7b80
        0x1fff28ae:    2800        .(      CMP      r0,#0
        0x1fff28b0:    d063        c.      BEQ      0x1fff297a ; PLUSPHY_IRQHandler + 242
        0x1fff28b2:    4f38        8O      LDR      r7,[pc,#224] ; [0x1fff2994] = 0x1fff7064
        0x1fff28b4:    460c        .F      MOV      r4,r1
        0x1fff28b6:    1c7f        ..      ADDS     r7,r7,#1
        0x1fff28b8:    3c14        .<      SUBS     r4,r4,#0x14
        0x1fff28ba:    2801        .(      CMP      r0,#1
        0x1fff28bc:    d008        ..      BEQ      0x1fff28d0 ; PLUSPHY_IRQHandler + 72
        0x1fff28be:    2802        .(      CMP      r0,#2
        0x1fff28c0:    d029        ).      BEQ      0x1fff2916 ; PLUSPHY_IRQHandler + 142
        0x1fff28c2:    e05a        Z.      B        0x1fff297a ; PLUSPHY_IRQHandler + 242
        0x1fff28c4:    f7fff88e    ....    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff28c8:    f000f928    ..(.    BL       PhyPlusPhy_Set_BLE_IRQHandler ; 0x1fff2b1c
        0x1fff28cc:    b005        ..      ADD      sp,sp,#0x14
        0x1fff28ce:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff28d0:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff28d2:    2801        .(      CMP      r0,#1
        0x1fff28d4:    d151        Q.      BNE      0x1fff297a ; PLUSPHY_IRQHandler + 242
        0x1fff28d6:    4a2f        /J      LDR      r2,[pc,#188] ; [0x1fff2994] = 0x1fff7064
        0x1fff28d8:    1c52        R.      ADDS     r2,r2,#1
        0x1fff28da:    1cd1        ..      ADDS     r1,r2,#3
        0x1fff28dc:    1e88        ..      SUBS     r0,r1,#2
        0x1fff28de:    f003fdcf    ....    BL       rf_phy_get_pktFoot ; 0x1fff6480
        0x1fff28e2:    0568        h.      LSLS     r0,r5,#21
        0x1fff28e4:    d549        I.      BPL      0x1fff297a ; PLUSPHY_IRQHandler + 242
        0x1fff28e6:    ab02        ..      ADD      r3,sp,#8
        0x1fff28e8:    aa01        ..      ADD      r2,sp,#4
        0x1fff28ea:    a903        ..      ADD      r1,sp,#0xc
        0x1fff28ec:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff28ee:    f7fff8df    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo ; 0x1fff1ab0
        0x1fff28f2:    4b28        (K      LDR      r3,[pc,#160] ; [0x1fff2994] = 0x1fff7064
        0x1fff28f4:    9700        ..      STR      r7,[sp,#0]
        0x1fff28f6:    1d1b        ..      ADDS     r3,r3,#4
        0x1fff28f8:    1e9a        ..      SUBS     r2,r3,#2
        0x1fff28fa:    9902        ..      LDR      r1,[sp,#8]
        0x1fff28fc:    9801        ..      LDR      r0,[sp,#4]
        0x1fff28fe:    f003fdd7    ....    BL       rf_phy_get_pktFoot_fromPkt ; 0x1fff64b0
        0x1fff2902:    4924        $I      LDR      r1,[pc,#144] ; [0x1fff2994] = 0x1fff7064
        0x1fff2904:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2906:    2206        ."      MOVS     r2,#6
        0x1fff2908:    3120         1      ADDS     r1,r1,#0x20
        0x1fff290a:    1c80        ..      ADDS     r0,r0,#2
        0x1fff290c:    f7fff8d6    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1abc
        0x1fff2910:    2800        .(      CMP      r0,#0
        0x1fff2912:    d127        '.      BNE      0x1fff2964 ; PLUSPHY_IRQHandler + 220
        0x1fff2914:    e031        1.      B        0x1fff297a ; PLUSPHY_IRQHandler + 242
        0x1fff2916:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff2918:    2802        .(      CMP      r0,#2
        0x1fff291a:    d12e        ..      BNE      0x1fff297a ; PLUSPHY_IRQHandler + 242
        0x1fff291c:    4a1d        .J      LDR      r2,[pc,#116] ; [0x1fff2994] = 0x1fff7064
        0x1fff291e:    1c52        R.      ADDS     r2,r2,#1
        0x1fff2920:    1cd1        ..      ADDS     r1,r2,#3
        0x1fff2922:    1e88        ..      SUBS     r0,r1,#2
        0x1fff2924:    f003fdac    ....    BL       rf_phy_get_pktFoot ; 0x1fff6480
        0x1fff2928:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff299c] = 0x1fff7b80
        0x1fff292a:    302c        ,0      ADDS     r0,r0,#0x2c
        0x1fff292c:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff292e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff2930:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff2932:    0568        h.      LSLS     r0,r5,#21
        0x1fff2934:    d521        !.      BPL      0x1fff297a ; PLUSPHY_IRQHandler + 242
        0x1fff2936:    ab02        ..      ADD      r3,sp,#8
        0x1fff2938:    aa01        ..      ADD      r2,sp,#4
        0x1fff293a:    a903        ..      ADD      r1,sp,#0xc
        0x1fff293c:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff293e:    f7fff8b7    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo ; 0x1fff1ab0
        0x1fff2942:    4b14        .K      LDR      r3,[pc,#80] ; [0x1fff2994] = 0x1fff7064
        0x1fff2944:    9700        ..      STR      r7,[sp,#0]
        0x1fff2946:    1d1b        ..      ADDS     r3,r3,#4
        0x1fff2948:    1e9a        ..      SUBS     r2,r3,#2
        0x1fff294a:    9902        ..      LDR      r1,[sp,#8]
        0x1fff294c:    9801        ..      LDR      r0,[sp,#4]
        0x1fff294e:    f003fdaf    ....    BL       rf_phy_get_pktFoot_fromPkt ; 0x1fff64b0
        0x1fff2952:    4910        .I      LDR      r1,[pc,#64] ; [0x1fff2994] = 0x1fff7064
        0x1fff2954:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2956:    2206        ."      MOVS     r2,#6
        0x1fff2958:    3120         1      ADDS     r1,r1,#0x20
        0x1fff295a:    1c80        ..      ADDS     r0,r0,#2
        0x1fff295c:    f7fff8ae    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1abc
        0x1fff2960:    2800        .(      CMP      r0,#0
        0x1fff2962:    d002        ..      BEQ      0x1fff296a ; PLUSPHY_IRQHandler + 226
        0x1fff2964:    f003fa0c    ....    BL       phy_rx_data_check ; 0x1fff5d80
        0x1fff2968:    e007        ..      B        0x1fff297a ; PLUSPHY_IRQHandler + 242
        0x1fff296a:    a00d        ..      ADR      r0,{pc}+0x36 ; 0x1fff29a0
        0x1fff296c:    f000fe32    ..2.    BL       dbg_printf ; 0x1fff35d4
        0x1fff2970:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2972:    2102        .!      MOVS     r1,#2
        0x1fff2974:    300a        .0      ADDS     r0,r0,#0xa
        0x1fff2976:    f002fd59    ..Y.    BL       my_dump_byte ; 0x1fff542c
        0x1fff297a:    6830        0h      LDR      r0,[r6,#0]
        0x1fff297c:    2801        .(      CMP      r0,#1
        0x1fff297e:    d003        ..      BEQ      0x1fff2988 ; PLUSPHY_IRQHandler + 256
        0x1fff2980:    f7fff830    ..0.    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff2984:    f000f8ca    ....    BL       PhyPlusPhy_Set_BLE_IRQHandler ; 0x1fff2b1c
        0x1fff2988:    f7feffc6    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff298c:    f003f8e2    ....    BL       phy_rf_schedule ; 0x1fff5b54
        0x1fff2990:    e79c        ..      B        0x1fff28cc ; PLUSPHY_IRQHandler + 68
    $d
        0x1fff2992:    0000        ..      DCW    0
        0x1fff2994:    1fff7064    dp..    DCD    536834148
        0x1fff2998:    1fff0998    ....    DCD    536807832
        0x1fff299c:    1fff7b80    .{..    DCD    536836992
        0x1fff29a0:    6e6f7277    wron    DCD    1852797559
        0x1fff29a4:    65642067    g de    DCD    1701060711
        0x1fff29a8:    65636976    vice    DCD    1701013878
        0x1fff29ac:    00000a3a    :...    DCD    2618
    $t
    i.PhyPlusPhy_Init
    PhyPlusPhy_Init
        0x1fff29b0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff29b2:    4931        1I      LDR      r1,[pc,#196] ; [0x1fff2a78] = 0x1fff7064
        0x1fff29b4:    b085        ..      SUB      sp,sp,#0x14
        0x1fff29b6:    70c8        .p      STRB     r0,[r1,#3]
        0x1fff29b8:    4830        0H      LDR      r0,[pc,#192] ; [0x1fff2a7c] = 0x1fff0380
        0x1fff29ba:    2220         "      MOVS     r2,#0x20
        0x1fff29bc:    6900        .i      LDR      r0,[r0,#0x10]
        0x1fff29be:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff29c0:    2100        .!      MOVS     r1,#0
        0x1fff29c2:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff2a80] = 0x1fff7b4c
        0x1fff29c4:    f7fff880    ....    BL       $Ven$TT$L$$osal_memset ; 0x1fff1ac8
        0x1fff29c8:    4e2d        -N      LDR      r6,[pc,#180] ; [0x1fff2a80] = 0x1fff7b4c
        0x1fff29ca:    2000        .       MOVS     r0,#0
        0x1fff29cc:    3654        T6      ADDS     r6,r6,#0x54
        0x1fff29ce:    4635        5F      MOV      r5,r6
        0x1fff29d0:    3d20         =      SUBS     r5,r5,#0x20
        0x1fff29d2:    72b0        .r      STRB     r0,[r6,#0xa]
        0x1fff29d4:    21ff        .!      MOVS     r1,#0xff
        0x1fff29d6:    7029        )p      STRB     r1,[r5,#0]
        0x1fff29d8:    4927        'I      LDR      r1,[pc,#156] ; [0x1fff2a78] = 0x1fff7064
        0x1fff29da:    a32a        *.      ADR      r3,{pc}+0xaa ; 0x1fff2a84
        0x1fff29dc:    3108        .1      ADDS     r1,r1,#8
        0x1fff29de:    7088        .p      STRB     r0,[r1,#2]
        0x1fff29e0:    cb0c        ..      LDM      r3,{r2,r3}
        0x1fff29e2:    9200        ..      STR      r2,[sp,#0]
        0x1fff29e4:    9301        ..      STR      r3,[sp,#4]
        0x1fff29e6:    466b        kF      MOV      r3,sp
        0x1fff29e8:    460a        .F      MOV      r2,r1
        0x1fff29ea:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff29ec:    321e        .2      ADDS     r2,r2,#0x1e
        0x1fff29ee:    70d3        .p      STRB     r3,[r2,#3]
        0x1fff29f0:    466b        kF      MOV      r3,sp
        0x1fff29f2:    785b        [x      LDRB     r3,[r3,#1]
        0x1fff29f4:    7093        .p      STRB     r3,[r2,#2]
        0x1fff29f6:    466b        kF      MOV      r3,sp
        0x1fff29f8:    789b        .x      LDRB     r3,[r3,#2]
        0x1fff29fa:    7053        Sp      STRB     r3,[r2,#1]
        0x1fff29fc:    466b        kF      MOV      r3,sp
        0x1fff29fe:    78db        .x      LDRB     r3,[r3,#3]
        0x1fff2a00:    7013        .p      STRB     r3,[r2,#0]
        0x1fff2a02:    466b        kF      MOV      r3,sp
        0x1fff2a04:    791b        .y      LDRB     r3,[r3,#4]
        0x1fff2a06:    7153        Sq      STRB     r3,[r2,#5]
        0x1fff2a08:    466b        kF      MOV      r3,sp
        0x1fff2a0a:    795b        [y      LDRB     r3,[r3,#5]
        0x1fff2a0c:    7113        .q      STRB     r3,[r2,#4]
        0x1fff2a0e:    462c        ,F      MOV      r4,r5
        0x1fff2a10:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff2a8c] = 0x8e89bed6
        0x1fff2a12:    3c14        .<      SUBS     r4,r4,#0x14
        0x1fff2a14:    60a2        .`      STR      r2,[r4,#8]
        0x1fff2a16:    2325        %#      MOVS     r3,#0x25
        0x1fff2a18:    7063        cp      STRB     r3,[r4,#1]
        0x1fff2a1a:    2202        ."      MOVS     r2,#2
        0x1fff2a1c:    1e8f        ..      SUBS     r7,r1,#2
        0x1fff2a1e:    703a        :p      STRB     r2,[r7,#0]
        0x1fff2a20:    707b        {p      STRB     r3,[r7,#1]
        0x1fff2a22:    70e2        .p      STRB     r2,[r4,#3]
        0x1fff2a24:    4a1a        .J      LDR      r2,[pc,#104] ; [0x1fff2a90] = 0x555555
        0x1fff2a26:    6062        b`      STR      r2,[r4,#4]
        0x1fff2a28:    784a        Jx      LDRB     r2,[r1,#1]
        0x1fff2a2a:    70a2        .p      STRB     r2,[r4,#2]
        0x1fff2a2c:    2201        ."      MOVS     r2,#1
        0x1fff2a2e:    7022        "p      STRB     r2,[r4,#0]
        0x1fff2a30:    460a        .F      MOV      r2,r1
        0x1fff2a32:    4b18        .K      LDR      r3,[pc,#96] ; [0x1fff2a94] = 0x5dc
        0x1fff2a34:    3224        $2      ADDS     r2,r2,#0x24
        0x1fff2a36:    6013        .`      STR      r3,[r2,#0]
        0x1fff2a38:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff2a98] = 0x9c4
        0x1fff2a3a:    6053        S`      STR      r3,[r2,#4]
        0x1fff2a3c:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff2a9c] = 0xf4240
        0x1fff2a3e:    61aa        .a      STR      r2,[r5,#0x18]
        0x1fff2a40:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff2a42:    7529        )u      STRB     r1,[r5,#0x14]
        0x1fff2a44:    83a8        ..      STRH     r0,[r5,#0x1c]
        0x1fff2a46:    7170        pq      STRB     r0,[r6,#5]
        0x1fff2a48:    8528        (.      STRH     r0,[r5,#0x28]
        0x1fff2a4a:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff2aa0] = 0x1fff7a4c
        0x1fff2a4c:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff2a4e:    38ff        .8      SUBS     r0,r0,#0xff
        0x1fff2a50:    3801        .8      SUBS     r0,#1
        0x1fff2a52:    6120         a      STR      r0,[r4,#0x10]
        0x1fff2a54:    a013        ..      ADR      r0,{pc}+0x50 ; 0x1fff2aa4
        0x1fff2a56:    f000fdbd    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff2a5a:    78a3        .x      LDRB     r3,[r4,#2]
        0x1fff2a5c:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2a5e:    6862        bh      LDR      r2,[r4,#4]
        0x1fff2a60:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff2a62:    466c        lF      MOV      r4,sp
        0x1fff2a64:    c40f        ..      STM      r4!,{r0-r3}
        0x1fff2a66:    7ab3        .z      LDRB     r3,[r6,#0xa]
        0x1fff2a68:    7d2a        *}      LDRB     r2,[r5,#0x14]
        0x1fff2a6a:    7829        )x      LDRB     r1,[r5,#0]
        0x1fff2a6c:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff2ab4] = 0x1fff6f70
        0x1fff2a6e:    f000fdb1    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff2a72:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2a74:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2a76:    0000        ..      DCW    0
        0x1fff2a78:    1fff7064    dp..    DCD    536834148
        0x1fff2a7c:    1fff0380    ....    DCD    536806272
        0x1fff2a80:    1fff7b4c    L{..    DCD    536836940
        0x1fff2a84:    04030201    ....    DCD    67305985
        0x1fff2a88:    00000605    ....    DCD    1541
        0x1fff2a8c:    8e89bed6    ....    DCD    2391391958
        0x1fff2a90:    00555555    UUU.    DCD    5592405
        0x1fff2a94:    000005dc    ....    DCD    1500
        0x1fff2a98:    000009c4    ....    DCD    2500
        0x1fff2a9c:    000f4240    @B..    DCD    1000000
        0x1fff2aa0:    1fff7a4c    Lz..    DCD    536836684
        0x1fff2aa4:    2046524e    NRF     DCD    541479502
        0x1fff2aa8:    61736944    Disa    DCD    1634953540
        0x1fff2aac:    64656c62    bled    DCD    1684368482
        0x1fff2ab0:    0000000a    ....    DCD    10
        0x1fff2ab4:    1fff6f70    po..    DCD    536833904
    $t
    i.PhyPlusPhy_ProcessEvent
    PhyPlusPhy_ProcessEvent
        0x1fff2ab8:    b510        ..      PUSH     {r4,lr}
        0x1fff2aba:    460c        .F      MOV      r4,r1
        0x1fff2abc:    0608        ..      LSLS     r0,r1,#24
        0x1fff2abe:    d503        ..      BPL      0x1fff2ac8 ; PhyPlusPhy_ProcessEvent + 16
        0x1fff2ac0:    f002ffc6    ....    BL       phy_rf_process_recv ; 0x1fff5a50
        0x1fff2ac4:    2080        .       MOVS     r0,#0x80
        0x1fff2ac6:    e01d        ..      B        0x1fff2b04 ; PhyPlusPhy_ProcessEvent + 76
        0x1fff2ac8:    0720         .      LSLS     r0,r4,#28
        0x1fff2aca:    d503        ..      BPL      0x1fff2ad4 ; PhyPlusPhy_ProcessEvent + 28
        0x1fff2acc:    f003fe22    ..".    BL       show_phy_debug_info ; 0x1fff6714
        0x1fff2ad0:    2008        .       MOVS     r0,#8
        0x1fff2ad2:    e017        ..      B        0x1fff2b04 ; PhyPlusPhy_ProcessEvent + 76
        0x1fff2ad4:    0660        `.      LSLS     r0,r4,#25
        0x1fff2ad6:    d503        ..      BPL      0x1fff2ae0 ; PhyPlusPhy_ProcessEvent + 40
        0x1fff2ad8:    f002ffdc    ....    BL       phy_rf_process_tsmt ; 0x1fff5a94
        0x1fff2adc:    2040        @       MOVS     r0,#0x40
        0x1fff2ade:    e011        ..      B        0x1fff2b04 ; PhyPlusPhy_ProcessEvent + 76
        0x1fff2ae0:    0760        `.      LSLS     r0,r4,#29
        0x1fff2ae2:    d504        ..      BPL      0x1fff2aee ; PhyPlusPhy_ProcessEvent + 54
        0x1fff2ae4:    a009        ..      ADR      r0,{pc}+0x28 ; 0x1fff2b0c
        0x1fff2ae6:    f000fd75    ..u.    BL       dbg_printf ; 0x1fff35d4
        0x1fff2aea:    2004        .       MOVS     r0,#4
        0x1fff2aec:    e00a        ..      B        0x1fff2b04 ; PhyPlusPhy_ProcessEvent + 76
        0x1fff2aee:    06e0        ..      LSLS     r0,r4,#27
        0x1fff2af0:    d503        ..      BPL      0x1fff2afa ; PhyPlusPhy_ProcessEvent + 66
        0x1fff2af2:    f003fa43    ..C.    BL       process_trx_done_evt ; 0x1fff5f7c
        0x1fff2af6:    2010        .       MOVS     r0,#0x10
        0x1fff2af8:    e004        ..      B        0x1fff2b04 ; PhyPlusPhy_ProcessEvent + 76
        0x1fff2afa:    06a0        ..      LSLS     r0,r4,#26
        0x1fff2afc:    d504        ..      BPL      0x1fff2b08 ; PhyPlusPhy_ProcessEvent + 80
        0x1fff2afe:    f003f969    ..i.    BL       phy_rx_data_process ; 0x1fff5dd4
        0x1fff2b02:    2020                MOVS     r0,#0x20
        0x1fff2b04:    4060        `@      EORS     r0,r0,r4
        0x1fff2b06:    bd10        ..      POP      {r4,pc}
        0x1fff2b08:    2000        .       MOVS     r0,#0
        0x1fff2b0a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff2b0c:    64207874    tx d    DCD    1679849588
        0x1fff2b10:    20656e6f    one     DCD    543518319
        0x1fff2b14:    0a747665    evt.    DCD    175404645
        0x1fff2b18:    00000000    ....    DCD    0
    $t
    i.PhyPlusPhy_Set_BLE_IRQHandler
    PhyPlusPhy_Set_BLE_IRQHandler
        0x1fff2b1c:    b510        ..      PUSH     {r4,lr}
        0x1fff2b1e:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff2b4c] = 0x1fff7064
        0x1fff2b20:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff2b22:    2800        .(      CMP      r0,#0
        0x1fff2b24:    d010        ..      BEQ      0x1fff2b48 ; PhyPlusPhy_Set_BLE_IRQHandler + 44
        0x1fff2b26:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff2b50] = 0x1fff0380
        0x1fff2b28:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff2b2a:    2102        .!      MOVS     r1,#2
        0x1fff2b2c:    4608        .F      MOV      r0,r1
        0x1fff2b2e:    f7feffd1    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff2b32:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff2b54] = 0x40030040
        0x1fff2b34:    6801        .h      LDR      r1,[r0,#0]
        0x1fff2b36:    2210        ."      MOVS     r2,#0x10
        0x1fff2b38:    4391        .C      BICS     r1,r1,r2
        0x1fff2b3a:    6001        .`      STR      r1,[r0,#0]
        0x1fff2b3c:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff2b54] = 0x40030040
        0x1fff2b3e:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff2b40:    6881        .h      LDR      r1,[r0,#8]
        0x1fff2b42:    1582        ..      ASRS     r2,r0,#22
        0x1fff2b44:    4311        .C      ORRS     r1,r1,r2
        0x1fff2b46:    6081        .`      STR      r1,[r0,#8]
        0x1fff2b48:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff2b4a:    0000        ..      DCW    0
        0x1fff2b4c:    1fff7064    dp..    DCD    536834148
        0x1fff2b50:    1fff0380    ....    DCD    536806272
        0x1fff2b54:    40030040    @..@    DCD    1073938496
    $t
    i.Smart_nRF_Init
    Smart_nRF_Init
        0x1fff2b58:    b510        ..      PUSH     {r4,lr}
        0x1fff2b5a:    4c0f        .L      LDR      r4,[pc,#60] ; [0x1fff2b98] = 0x1fff7048
        0x1fff2b5c:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff2b9c] = 0x1fff2c6d
        0x1fff2b5e:    7060        `p      STRB     r0,[r4,#1]
        0x1fff2b60:    2001        .       MOVS     r0,#1
        0x1fff2b62:    f002fe6f    ..o.    BL       phy_cbfunc_regist ; 0x1fff5844
        0x1fff2b66:    2101        .!      MOVS     r1,#1
        0x1fff2b68:    2013        .       MOVS     r0,#0x13
        0x1fff2b6a:    f001f819    ....    BL       hal_gpio_pin_init ; 0x1fff3ba0
        0x1fff2b6e:    2013        .       MOVS     r0,#0x13
        0x1fff2b70:    f001fa50    ..P.    BL       hal_gpioretention_register ; 0x1fff4014
        0x1fff2b74:    2000        .       MOVS     r0,#0
        0x1fff2b76:    f7feffb3    ....    BL       $Ven$TT$L$$gpio_read ; 0x1fff1ae0
        0x1fff2b7a:    2800        .(      CMP      r0,#0
        0x1fff2b7c:    d007        ..      BEQ      0x1fff2b8e ; Smart_nRF_Init + 54
        0x1fff2b7e:    2180        .!      MOVS     r1,#0x80
        0x1fff2b80:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff2b82:    f7feffb3    ....    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff2b86:    a006        ..      ADR      r0,{pc}+0x1a ; 0x1fff2ba0
        0x1fff2b88:    f000fd24    ..$.    BL       dbg_printf ; 0x1fff35d4
        0x1fff2b8c:    bd10        ..      POP      {r4,pc}
        0x1fff2b8e:    2102        .!      MOVS     r1,#2
        0x1fff2b90:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff2b92:    f7feffab    ....    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff2b96:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff2b98:    1fff7048    Hp..    DCD    536834120
        0x1fff2b9c:    1fff2c6d    m,..    DCD    536816749
        0x1fff2ba0:    3d3d3d3d    ====    DCD    1027423549
        0x1fff2ba4:    3d3d3d3d    ====    DCD    1027423549
        0x1fff2ba8:    3d3d3d3d    ====    DCD    1027423549
        0x1fff2bac:    3d3d3d3d    ====    DCD    1027423549
        0x1fff2bb0:    3d3d3d3d    ====    DCD    1027423549
        0x1fff2bb4:    3d3d3d3d    ====    DCD    1027423549
        0x1fff2bb8:    0d3d3d3d    ===.    DCD    222117181
        0x1fff2bbc:    0000000a    ....    DCD    10
    $t
    i.Smart_nRF_ProcessEvent
    Smart_nRF_ProcessEvent
        0x1fff2bc0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2bc2:    4d28        (M      LDR      r5,[pc,#160] ; [0x1fff2c64] = 0x1fff7048
        0x1fff2bc4:    460c        .F      MOV      r4,r1
        0x1fff2bc6:    07c8        ..      LSLS     r0,r1,#31
        0x1fff2bc8:    d017        ..      BEQ      0x1fff2bfa ; Smart_nRF_ProcessEvent + 58
        0x1fff2bca:    8868        h.      LDRH     r0,[r5,#2]
        0x1fff2bcc:    1d29        ).      ADDS     r1,r5,#4
        0x1fff2bce:    0a02        ..      LSRS     r2,r0,#8
        0x1fff2bd0:    74ca        .t      STRB     r2,[r1,#0x13]
        0x1fff2bd2:    2615        .&      MOVS     r6,#0x15
        0x1fff2bd4:    7508        .u      STRB     r0,[r1,#0x14]
        0x1fff2bd6:    07c0        ..      LSLS     r0,r0,#31
        0x1fff2bd8:    d008        ..      BEQ      0x1fff2bec ; Smart_nRF_ProcessEvent + 44
        0x1fff2bda:    2300        .#      MOVS     r3,#0
        0x1fff2bdc:    461a        .F      MOV      r2,r3
        0x1fff2bde:    4631        1F      MOV      r1,r6
        0x1fff2be0:    1d28        (.      ADDS     r0,r5,#4
        0x1fff2be2:    f003f81b    ....    BL       phy_rf_start_tx ; 0x1fff5c1c
        0x1fff2be6:    2800        .(      CMP      r0,#0
        0x1fff2be8:    d002        ..      BEQ      0x1fff2bf0 ; Smart_nRF_ProcessEvent + 48
        0x1fff2bea:    e004        ..      B        0x1fff2bf6 ; Smart_nRF_ProcessEvent + 54
        0x1fff2bec:    f003f844    ..D.    BL       phy_rf_stop_tx ; 0x1fff5c78
        0x1fff2bf0:    8868        h.      LDRH     r0,[r5,#2]
        0x1fff2bf2:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2bf4:    8068        h.      STRH     r0,[r5,#2]
        0x1fff2bf6:    2001        .       MOVS     r0,#1
        0x1fff2bf8:    e02f        /.      B        0x1fff2c5a ; Smart_nRF_ProcessEvent + 154
        0x1fff2bfa:    07a0        ..      LSLS     r0,r4,#30
        0x1fff2bfc:    d504        ..      BPL      0x1fff2c08 ; Smart_nRF_ProcessEvent + 72
        0x1fff2bfe:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff2c68] = 0x2710
        0x1fff2c00:    f002fff8    ....    BL       phy_rf_start_rx ; 0x1fff5bf4
        0x1fff2c04:    2002        .       MOVS     r0,#2
        0x1fff2c06:    e028        (.      B        0x1fff2c5a ; Smart_nRF_ProcessEvent + 154
        0x1fff2c08:    06a0        ..      LSLS     r0,r4,#26
        0x1fff2c0a:    d508        ..      BPL      0x1fff2c1e ; Smart_nRF_ProcessEvent + 94
        0x1fff2c0c:    f003f814    ....    BL       phy_rf_stop_rx ; 0x1fff5c38
        0x1fff2c10:    22c3        ."      MOVS     r2,#0xc3
        0x1fff2c12:    2102        .!      MOVS     r1,#2
        0x1fff2c14:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff2c16:    f7feff6f    ..o.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff2c1a:    2020                MOVS     r0,#0x20
        0x1fff2c1c:    e01d        ..      B        0x1fff2c5a ; Smart_nRF_ProcessEvent + 154
        0x1fff2c1e:    0720         .      LSLS     r0,r4,#28
        0x1fff2c20:    d502        ..      BPL      0x1fff2c28 ; Smart_nRF_ProcessEvent + 104
        0x1fff2c22:    2008        .       MOVS     r0,#8
        0x1fff2c24:    4048        H@      EORS     r0,r0,r1
        0x1fff2c26:    bd70        p.      POP      {r4-r6,pc}
        0x1fff2c28:    0660        `.      LSLS     r0,r4,#25
        0x1fff2c2a:    d507        ..      BPL      0x1fff2c3c ; Smart_nRF_ProcessEvent + 124
        0x1fff2c2c:    227d        }"      MOVS     r2,#0x7d
        0x1fff2c2e:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2c30:    2140        @!      MOVS     r1,#0x40
        0x1fff2c32:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff2c34:    f7feff60    ..`.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff2c38:    2040        @       MOVS     r0,#0x40
        0x1fff2c3a:    e00e        ..      B        0x1fff2c5a ; Smart_nRF_ProcessEvent + 154
        0x1fff2c3c:    0620         .      LSLS     r0,r4,#24
        0x1fff2c3e:    d50e        ..      BPL      0x1fff2c5e ; Smart_nRF_ProcessEvent + 158
        0x1fff2c40:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff2c42:    43c0        .C      MVNS     r0,r0
        0x1fff2c44:    b2c1        ..      UXTB     r1,r0
        0x1fff2c46:    7029        )p      STRB     r1,[r5,#0]
        0x1fff2c48:    2013        .       MOVS     r0,#0x13
        0x1fff2c4a:    f7feff5b    ..[.    BL       $Ven$TT$L$$gpio_write ; 0x1fff1b04
        0x1fff2c4e:    220a        ."      MOVS     r2,#0xa
        0x1fff2c50:    2180        .!      MOVS     r1,#0x80
        0x1fff2c52:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff2c54:    f7feff50    ..P.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff2c58:    2080        .       MOVS     r0,#0x80
        0x1fff2c5a:    4060        `@      EORS     r0,r0,r4
        0x1fff2c5c:    bd70        p.      POP      {r4-r6,pc}
        0x1fff2c5e:    2000        .       MOVS     r0,#0
        0x1fff2c60:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff2c62:    0000        ..      DCW    0
        0x1fff2c64:    1fff7048    Hp..    DCD    536834120
        0x1fff2c68:    00002710    .'..    DCD    10000
    $t
    i.Smart_nRF_data_process
    Smart_nRF_data_process
        0x1fff2c6c:    b510        ..      PUSH     {r4,lr}
        0x1fff2c6e:    7a01        .z      LDRB     r1,[r0,#8]
        0x1fff2c70:    6840        @h      LDR      r0,[r0,#4]
        0x1fff2c72:    f002fbdb    ....    BL       my_dump_byte ; 0x1fff542c
        0x1fff2c76:    2000        .       MOVS     r0,#0
        0x1fff2c78:    bd10        ..      POP      {r4,pc}
        0x1fff2c7a:    0000        ..      MOVS     r0,r0
    i.SystemInit
    SystemInit
        0x1fff2c7c:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff2c88] = 0x1fff70d4
        0x1fff2c7e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2c84] = 0x17d7840
        0x1fff2c80:    6008        .`      STR      r0,[r1,#0]
        0x1fff2c82:    4770        pG      BX       lr
    $d
        0x1fff2c84:    017d7840    @x}.    DCD    25000000
        0x1fff2c88:    1fff70d4    .p..    DCD    536834260
    $t
    i.__NVIC_EnableIRQ
    __NVIC_EnableIRQ
        0x1fff2c8c:    2800        .(      CMP      r0,#0
        0x1fff2c8e:    db05        ..      BLT      0x1fff2c9c ; __NVIC_EnableIRQ + 16
        0x1fff2c90:    06c1        ..      LSLS     r1,r0,#27
        0x1fff2c92:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff2c94:    2001        .       MOVS     r0,#1
        0x1fff2c96:    4088        .@      LSLS     r0,r0,r1
        0x1fff2c98:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff2ca0] = 0xe000e100
        0x1fff2c9a:    6008        .`      STR      r0,[r1,#0]
        0x1fff2c9c:    4770        pG      BX       lr
    $d
        0x1fff2c9e:    0000        ..      DCW    0
        0x1fff2ca0:    e000e100    ....    DCD    3758153984
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2ca4:    0783        ..      LSLS     r3,r0,#30
        0x1fff2ca6:    22ff        ."      MOVS     r2,#0xff
        0x1fff2ca8:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2caa:    409a        .@      LSLS     r2,r2,r3
        0x1fff2cac:    0789        ..      LSLS     r1,r1,#30
        0x1fff2cae:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2cb0:    4099        .@      LSLS     r1,r1,r3
        0x1fff2cb2:    2800        .(      CMP      r0,#0
        0x1fff2cb4:    db08        ..      BLT      0x1fff2cc8 ; __NVIC_SetPriority + 36
        0x1fff2cb6:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cb8:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2ce0] = 0xe000e400
        0x1fff2cba:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cbc:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cbe:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2cc0:    4390        .C      BICS     r0,r0,r2
        0x1fff2cc2:    4308        .C      ORRS     r0,r0,r1
        0x1fff2cc4:    6018        .`      STR      r0,[r3,#0]
        0x1fff2cc6:    4770        pG      BX       lr
        0x1fff2cc8:    0700        ..      LSLS     r0,r0,#28
        0x1fff2cca:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2ccc:    3808        .8      SUBS     r0,r0,#8
        0x1fff2cce:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cd0:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2ce4] = 0xe000ed00
        0x1fff2cd2:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cd4:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cd6:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2cd8:    4390        .C      BICS     r0,r0,r2
        0x1fff2cda:    4308        .C      ORRS     r0,r0,r1
        0x1fff2cdc:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2cde:    4770        pG      BX       lr
    $d
        0x1fff2ce0:    e000e400    ....    DCD    3758154752
        0x1fff2ce4:    e000ed00    ....    DCD    3758157056
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2ce8:    0783        ..      LSLS     r3,r0,#30
        0x1fff2cea:    22ff        ."      MOVS     r2,#0xff
        0x1fff2cec:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2cee:    409a        .@      LSLS     r2,r2,r3
        0x1fff2cf0:    0789        ..      LSLS     r1,r1,#30
        0x1fff2cf2:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2cf4:    4099        .@      LSLS     r1,r1,r3
        0x1fff2cf6:    2800        .(      CMP      r0,#0
        0x1fff2cf8:    db08        ..      BLT      0x1fff2d0c ; __NVIC_SetPriority + 36
        0x1fff2cfa:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cfc:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2d24] = 0xe000e400
        0x1fff2cfe:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d00:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d02:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2d04:    4390        .C      BICS     r0,r0,r2
        0x1fff2d06:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d08:    6018        .`      STR      r0,[r3,#0]
        0x1fff2d0a:    4770        pG      BX       lr
        0x1fff2d0c:    0700        ..      LSLS     r0,r0,#28
        0x1fff2d0e:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2d10:    3808        .8      SUBS     r0,r0,#8
        0x1fff2d12:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d14:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2d28] = 0xe000ed00
        0x1fff2d16:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d18:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d1a:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2d1c:    4390        .C      BICS     r0,r0,r2
        0x1fff2d1e:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d20:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2d22:    4770        pG      BX       lr
    $d
        0x1fff2d24:    e000e400    ....    DCD    3758154752
        0x1fff2d28:    e000ed00    ....    DCD    3758157056
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2d2c:    0783        ..      LSLS     r3,r0,#30
        0x1fff2d2e:    22ff        ."      MOVS     r2,#0xff
        0x1fff2d30:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2d32:    409a        .@      LSLS     r2,r2,r3
        0x1fff2d34:    0789        ..      LSLS     r1,r1,#30
        0x1fff2d36:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2d38:    4099        .@      LSLS     r1,r1,r3
        0x1fff2d3a:    2800        .(      CMP      r0,#0
        0x1fff2d3c:    db08        ..      BLT      0x1fff2d50 ; __NVIC_SetPriority + 36
        0x1fff2d3e:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d40:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2d68] = 0xe000e400
        0x1fff2d42:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d44:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d46:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2d48:    4390        .C      BICS     r0,r0,r2
        0x1fff2d4a:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d4c:    6018        .`      STR      r0,[r3,#0]
        0x1fff2d4e:    4770        pG      BX       lr
        0x1fff2d50:    0700        ..      LSLS     r0,r0,#28
        0x1fff2d52:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2d54:    3808        .8      SUBS     r0,r0,#8
        0x1fff2d56:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d58:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2d6c] = 0xe000ed00
        0x1fff2d5a:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d5c:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d5e:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2d60:    4390        .C      BICS     r0,r0,r2
        0x1fff2d62:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d64:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2d66:    4770        pG      BX       lr
    $d
        0x1fff2d68:    e000e400    ....    DCD    3758154752
        0x1fff2d6c:    e000ed00    ....    DCD    3758157056
    $t
    i.__scatterload_copy
    __scatterload_copy
        0x1fff2d70:    e002        ..      B        0x1fff2d78 ; __scatterload_copy + 8
        0x1fff2d72:    c808        ..      LDM      r0!,{r3}
        0x1fff2d74:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2d76:    c108        ..      STM      r1!,{r3}
        0x1fff2d78:    2a00        .*      CMP      r2,#0
        0x1fff2d7a:    d1fa        ..      BNE      0x1fff2d72 ; __scatterload_copy + 2
        0x1fff2d7c:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x1fff2d7e:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x1fff2d80:    2000        .       MOVS     r0,#0
        0x1fff2d82:    e001        ..      B        0x1fff2d88 ; __scatterload_zeroinit + 8
        0x1fff2d84:    c101        ..      STM      r1!,{r0}
        0x1fff2d86:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2d88:    2a00        .*      CMP      r2,#0
        0x1fff2d8a:    d1fb        ..      BNE      0x1fff2d84 ; __scatterload_zeroinit + 4
        0x1fff2d8c:    4770        pG      BX       lr
        0x1fff2d8e:    0000        ..      MOVS     r0,r0
    i.__wdt_init
    __wdt_init
        0x1fff2d90:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff2d9c] = 0x1fff0340
        0x1fff2d92:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x1fff2d94:    2800        .(      CMP      r0,#0
        0x1fff2d96:    d000        ..      BEQ      0x1fff2d9a ; __wdt_init + 10
        0x1fff2d98:    4700        .G      BX       r0
        0x1fff2d9a:    4770        pG      BX       lr
    $d
        0x1fff2d9c:    1fff0340    @...    DCD    536806208
    $t
    i._clk_apply_setting1
    _clk_apply_setting1
        0x1fff2da0:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff2da2:    4607        .F      MOV      r7,r0
        0x1fff2da4:    2001        .       MOVS     r0,#1
        0x1fff2da6:    0780        ..      LSLS     r0,r0,#30
        0x1fff2da8:    6881        .h      LDR      r1,[r0,#8]
        0x1fff2daa:    b083        ..      SUB      sp,sp,#0xc
        0x1fff2dac:    461c        .F      MOV      r4,r3
        0x1fff2dae:    4615        .F      MOV      r5,r2
        0x1fff2db0:    9102        ..      STR      r1,[sp,#8]
        0x1fff2db2:    6946        Fi      LDR      r6,[r0,#0x14]
        0x1fff2db4:    4939        9I      LDR      r1,[pc,#228] ; [0x1fff2e9c] = 0xe000e100
        0x1fff2db6:    6809        .h      LDR      r1,[r1,#0]
        0x1fff2db8:    4a38        8J      LDR      r2,[pc,#224] ; [0x1fff2e9c] = 0xe000e100
        0x1fff2dba:    0049        I.      LSLS     r1,r1,#1
        0x1fff2dbc:    0849        I.      LSRS     r1,r1,#1
        0x1fff2dbe:    9101        ..      STR      r1,[sp,#4]
        0x1fff2dc0:    2100        .!      MOVS     r1,#0
        0x1fff2dc2:    43c9        .C      MVNS     r1,r1
        0x1fff2dc4:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2dc6:    6011        .`      STR      r1,[r2,#0]
        0x1fff2dc8:    4a35        5J      LDR      r2,[pc,#212] ; [0x1fff2ea0] = 0xe000e200
        0x1fff2dca:    6812        .h      LDR      r2,[r2,#0]
        0x1fff2dcc:    0052        R.      LSLS     r2,r2,#1
        0x1fff2dce:    0852        R.      LSRS     r2,r2,#1
        0x1fff2dd0:    9200        ..      STR      r2,[sp,#0]
        0x1fff2dd2:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff2ea0] = 0xe000e200
        0x1fff2dd4:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2dd6:    6011        .`      STR      r1,[r2,#0]
        0x1fff2dd8:    4932        2I      LDR      r1,[pc,#200] ; [0x1fff2ea4] = 0x80001
        0x1fff2dda:    6081        .`      STR      r1,[r0,#8]
        0x1fff2ddc:    2121        !!      MOVS     r1,#0x21
        0x1fff2dde:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff2de0:    201f        .       MOVS     r0,#0x1f
        0x1fff2de2:    f7fffd47    ..G.    BL       NVIC_EnableIRQ ; 0x1fff2874
        0x1fff2de6:    07e2        ..      LSLS     r2,r4,#31
        0x1fff2de8:    2180        .!      MOVS     r1,#0x80
        0x1fff2dea:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff2ea8] = 0x4000f040
        0x1fff2dec:    2a00        .*      CMP      r2,#0
        0x1fff2dee:    d002        ..      BEQ      0x1fff2df6 ; _clk_apply_setting1 + 86
        0x1fff2df0:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2df2:    430a        .C      ORRS     r2,r2,r1
        0x1fff2df4:    6042        B`      STR      r2,[r0,#4]
        0x1fff2df6:    07a2        ..      LSLS     r2,r4,#30
        0x1fff2df8:    d504        ..      BPL      0x1fff2e04 ; _clk_apply_setting1 + 100
        0x1fff2dfa:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2dfc:    23ff        .#      MOVS     r3,#0xff
        0x1fff2dfe:    3301        .3      ADDS     r3,#1
        0x1fff2e00:    431a        .C      ORRS     r2,r2,r3
        0x1fff2e02:    6042        B`      STR      r2,[r0,#4]
        0x1fff2e04:    2d00        .-      CMP      r5,#0
        0x1fff2e06:    d00c        ..      BEQ      0x1fff2e22 ; _clk_apply_setting1 + 130
        0x1fff2e08:    072a        *.      LSLS     r2,r5,#28
        0x1fff2e0a:    0f52        R.      LSRS     r2,r2,#29
        0x1fff2e0c:    d004        ..      BEQ      0x1fff2e18 ; _clk_apply_setting1 + 120
        0x1fff2e0e:    2201        ."      MOVS     r2,#1
        0x1fff2e10:    4314        .C      ORRS     r4,r4,r2
        0x1fff2e12:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2e14:    430a        .C      ORRS     r2,r2,r1
        0x1fff2e16:    6042        B`      STR      r2,[r0,#4]
        0x1fff2e18:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e1a:    072a        *.      LSLS     r2,r5,#28
        0x1fff2e1c:    0bd2        ..      LSRS     r2,r2,#15
        0x1fff2e1e:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e20:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e22:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff2ea8] = 0x4000f040
        0x1fff2e24:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff2e26:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e28:    0152        R.      LSLS     r2,r2,#5
        0x1fff2e2a:    0f52        R.      LSRS     r2,r2,#29
        0x1fff2e2c:    42ba        .B      CMP      r2,r7
        0x1fff2e2e:    d006        ..      BEQ      0x1fff2e3e ; _clk_apply_setting1 + 158
        0x1fff2e30:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e32:    2307        .#      MOVS     r3,#7
        0x1fff2e34:    061b        ..      LSLS     r3,r3,#24
        0x1fff2e36:    439a        .C      BICS     r2,r2,r3
        0x1fff2e38:    063b        ;.      LSLS     r3,r7,#24
        0x1fff2e3a:    431a        .C      ORRS     r2,r2,r3
        0x1fff2e3c:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff2e3e:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e40:    0753        S.      LSLS     r3,r2,#29
        0x1fff2e42:    9a04        ..      LDR      r2,[sp,#0x10]
        0x1fff2e44:    0f5b        [.      LSRS     r3,r3,#29
        0x1fff2e46:    4293        .B      CMP      r3,r2
        0x1fff2e48:    d005        ..      BEQ      0x1fff2e56 ; _clk_apply_setting1 + 182
        0x1fff2e4a:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e4c:    9b04        ..      LDR      r3,[sp,#0x10]
        0x1fff2e4e:    08d2        ..      LSRS     r2,r2,#3
        0x1fff2e50:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2e52:    431a        .C      ORRS     r2,r2,r3
        0x1fff2e54:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff2e56:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e58:    22ff        ."      MOVS     r2,#0xff
        0x1fff2e5a:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff2e5c:    4391        .C      BICS     r1,r1,r2
        0x1fff2e5e:    01e2        ..      LSLS     r2,r4,#7
        0x1fff2e60:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e62:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e64:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e66:    220f        ."      MOVS     r2,#0xf
        0x1fff2e68:    0352        R.      LSLS     r2,r2,#13
        0x1fff2e6a:    4391        .C      BICS     r1,r1,r2
        0x1fff2e6c:    036a        j.      LSLS     r2,r5,#13
        0x1fff2e6e:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e70:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e72:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff2ea4] = 0x80001
        0x1fff2e74:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2e76:    4301        .C      ORRS     r1,r1,r0
        0x1fff2e78:    0780        ..      LSLS     r0,r0,#30
        0x1fff2e7a:    6081        .`      STR      r1,[r0,#8]
        0x1fff2e7c:    2101        .!      MOVS     r1,#1
        0x1fff2e7e:    430e        .C      ORRS     r6,r6,r1
        0x1fff2e80:    6146        Fa      STR      r6,[r0,#0x14]
        0x1fff2e82:    0041        A.      LSLS     r1,r0,#1
        0x1fff2e84:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff2e9c] = 0xe000e100
        0x1fff2e86:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff2e88:    6001        .`      STR      r1,[r0,#0]
        0x1fff2e8a:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff2ea0] = 0xe000e200
        0x1fff2e8c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff2e8e:    6008        .`      STR      r0,[r1,#0]
        0x1fff2e90:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff2e9c] = 0xe000e100
        0x1fff2e92:    9801        ..      LDR      r0,[sp,#4]
        0x1fff2e94:    6008        .`      STR      r0,[r1,#0]
        0x1fff2e96:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff2e98:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2e9a:    0000        ..      DCW    0
        0x1fff2e9c:    e000e100    ....    DCD    3758153984
        0x1fff2ea0:    e000e200    ....    DCD    3758154240
        0x1fff2ea4:    00080001    ....    DCD    524289
        0x1fff2ea8:    4000f040    @..@    DCD    1073803328
    $t
    i._efuse_chip_version_check
    _efuse_chip_version_check
        0x1fff2eac:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff2eae:    4669        iF      MOV      r1,sp
        0x1fff2eb0:    2001        .       MOVS     r0,#1
        0x1fff2eb2:    f7fefe2d    ..-.    BL       $Ven$TT$L$$efuse_read ; 0x1fff1b10
        0x1fff2eb6:    2001        .       MOVS     r0,#1
        0x1fff2eb8:    9000        ..      STR      r0,[sp,#0]
        0x1fff2eba:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff2ec8] = 0xbbb
        0x1fff2ebc:    9001        ..      STR      r0,[sp,#4]
        0x1fff2ebe:    f000fc2b    ..+.    BL       finidv ; 0x1fff3718
        0x1fff2ec2:    2001        .       MOVS     r0,#1
        0x1fff2ec4:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff2ec6:    0000        ..      DCW    0
        0x1fff2ec8:    00000bbb    ....    DCD    3003
    $t
    i._hard_fault
    _hard_fault
        0x1fff2ecc:    b508        ..      PUSH     {r3,lr}
        0x1fff2ece:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff2f9c] = 0x1fff0000
        0x1fff2ed0:    4604        .F      MOV      r4,r0
        0x1fff2ed2:    68f8        .h      LDR      r0,[r7,#0xc]
        0x1fff2ed4:    2500        .%      MOVS     r5,#0
        0x1fff2ed6:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff2ed8:    20e1        .       MOVS     r0,#0xe1
        0x1fff2eda:    462b        +F      MOV      r3,r5
        0x1fff2edc:    2212        ."      MOVS     r2,#0x12
        0x1fff2ede:    2105        .!      MOVS     r1,#5
        0x1fff2ee0:    0240        @.      LSLS     r0,r0,#9
        0x1fff2ee2:    f7fefe1b    ....    BL       $Ven$TT$L$$rom_uart_init ; 0x1fff1b1c
        0x1fff2ee6:    a02e        ..      ADR      r0,{pc}+0xba ; 0x1fff2fa0
        0x1fff2ee8:    f7fefe1e    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2eec:    6b20         k      LDR      r0,[r4,#0x30]
        0x1fff2eee:    9000        ..      STR      r0,[sp,#0]
        0x1fff2ef0:    4621        !F      MOV      r1,r4
        0x1fff2ef2:    3124        $1      ADDS     r1,r1,#0x24
        0x1fff2ef4:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2ef6:    a030        0.      ADR      r0,{pc}+0xc2 ; 0x1fff2fb8
        0x1fff2ef8:    f7fefe16    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2efc:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2efe:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f00:    1d21        !.      ADDS     r1,r4,#4
        0x1fff2f02:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2f04:    a037        7.      ADR      r0,{pc}+0xe0 ; 0x1fff2fe4
        0x1fff2f06:    f7fefe0f    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f0a:    6a20         j      LDR      r0,[r4,#0x20]
        0x1fff2f0c:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f0e:    4621        !F      MOV      r1,r4
        0x1fff2f10:    3114        .1      ADDS     r1,r1,#0x14
        0x1fff2f12:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2f14:    a03e        >.      ADR      r0,{pc}+0xfc ; 0x1fff3010
        0x1fff2f16:    f7fefe07    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f1a:    6be0        .k      LDR      r0,[r4,#0x3c]
        0x1fff2f1c:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f1e:    a047        G.      ADR      r0,{pc}+0x11e ; 0x1fff303c
        0x1fff2f20:    6ba3        .k      LDR      r3,[r4,#0x38]
        0x1fff2f22:    6822        "h      LDR      r2,[r4,#0]
        0x1fff2f24:    6b61        ak      LDR      r1,[r4,#0x34]
        0x1fff2f26:    f7fefdff    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f2a:    a04f        O.      ADR      r0,{pc}+0x13e ; 0x1fff3068
        0x1fff2f2c:    6c21        !l      LDR      r1,[r4,#0x40]
        0x1fff2f2e:    f7fefdfb    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f32:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff3078] = 0xe000ed00
        0x1fff2f34:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2f36:    a051        Q.      ADR      r0,{pc}+0x146 ; 0x1fff307c
        0x1fff2f38:    f7fefdf6    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f3c:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff308c] = 0x1fff08b4
        0x1fff2f3e:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff2f40:    42b1        .B      CMP      r1,r6
        0x1fff2f42:    d202        ..      BCS      0x1fff2f4a ; _hard_fault + 126
        0x1fff2f44:    68b8        .h      LDR      r0,[r7,#8]
        0x1fff2f46:    008a        ..      LSLS     r2,r1,#2
        0x1fff2f48:    5885        .X      LDR      r5,[r0,r2]
        0x1fff2f4a:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff3090] = 0x1fff0860
        0x1fff2f4c:    460e        .F      MOV      r6,r1
        0x1fff2f4e:    6807        .h      LDR      r7,[r0,#0]
        0x1fff2f50:    f7fefdf0    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b34
        0x1fff2f54:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f56:    463b        ;F      MOV      r3,r7
        0x1fff2f58:    462a        *F      MOV      r2,r5
        0x1fff2f5a:    4631        1F      MOV      r1,r6
        0x1fff2f5c:    a04d        M.      ADR      r0,{pc}+0x138 ; 0x1fff3094
        0x1fff2f5e:    f7fefde3    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f62:    a059        Y.      ADR      r0,{pc}+0x166 ; 0x1fff30c8
        0x1fff2f64:    f7fefde0    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f68:    4e61        aN      LDR      r6,[pc,#388] ; [0x1fff30f0] = 0x1ffffffc
        0x1fff2f6a:    6825        %h      LDR      r5,[r4,#0]
        0x1fff2f6c:    4035        5@      ANDS     r5,r5,r6
        0x1fff2f6e:    2400        .$      MOVS     r4,#0
        0x1fff2f70:    1929        ).      ADDS     r1,r5,r4
        0x1fff2f72:    42b1        .B      CMP      r1,r6
        0x1fff2f74:    d80b        ..      BHI      0x1fff2f8e ; _hard_fault + 194
        0x1fff2f76:    0720         .      LSLS     r0,r4,#28
        0x1fff2f78:    d102        ..      BNE      0x1fff2f80 ; _hard_fault + 180
        0x1fff2f7a:    a05e        ^.      ADR      r0,{pc}+0x17a ; 0x1fff30f4
        0x1fff2f7c:    f7fefdd4    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f80:    5929        )Y      LDR      r1,[r5,r4]
        0x1fff2f82:    a05e        ^.      ADR      r0,{pc}+0x17a ; 0x1fff30fc
        0x1fff2f84:    f7fefdd0    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b28
        0x1fff2f88:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2f8a:    2cff        .,      CMP      r4,#0xff
        0x1fff2f8c:    ddf0        ..      BLE      0x1fff2f70 ; _hard_fault + 164
        0x1fff2f8e:    485d        ]H      LDR      r0,[pc,#372] ; [0x1fff3104] = 0x1fff70d0
        0x1fff2f90:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2f92:    2800        .(      CMP      r0,#0
        0x1fff2f94:    d000        ..      BEQ      0x1fff2f98 ; _hard_fault + 204
        0x1fff2f96:    4780        .G      BLX      r0
        0x1fff2f98:    e7fe        ..      B        0x1fff2f98 ; _hard_fault + 204
    $d
        0x1fff2f9a:    0000        ..      DCW    0
        0x1fff2f9c:    1fff0000    ....    DCD    536805376
        0x1fff2fa0:    61485b0a    .[Ha    DCD    1632131850
        0x1fff2fa4:    66206472    rd f    DCD    1713398898
        0x1fff2fa8:    746c7561    ault    DCD    1953264993
        0x1fff2fac:    6e616820     han    DCD    1851877408
        0x1fff2fb0:    72656c64    dler    DCD    1919249508
        0x1fff2fb4:    00000a5d    ]...    DCD    2653
        0x1fff2fb8:    522d3052    R0-R    DCD    1378693202
        0x1fff2fbc:    20202033    3       DCD    538976307
        0x1fff2fc0:    20202020            DCD    538976288
        0x1fff2fc4:    30203d20     = 0    DCD    807419168
        0x1fff2fc8:    38302578    x%08    DCD    942679416
        0x1fff2fcc:    78302078    x 0x    DCD    2016419960
        0x1fff2fd0:    78383025    %08x    DCD    2016948261
        0x1fff2fd4:    25783020     0x%    DCD    628633632
        0x1fff2fd8:    20783830    08x     DCD    544749616
        0x1fff2fdc:    30257830    0x%0    DCD    807761968
        0x1fff2fe0:    000a7838    8x..    DCD    686136
        0x1fff2fe4:    522d3452    R4-R    DCD    1378694226
        0x1fff2fe8:    20202037    7       DCD    538976311
        0x1fff2fec:    20202020            DCD    538976288
        0x1fff2ff0:    30203d20     = 0    DCD    807419168
        0x1fff2ff4:    38302578    x%08    DCD    942679416
        0x1fff2ff8:    78302078    x 0x    DCD    2016419960
        0x1fff2ffc:    78383025    %08x    DCD    2016948261
        0x1fff3000:    25783020     0x%    DCD    628633632
        0x1fff3004:    20783830    08x     DCD    544749616
        0x1fff3008:    30257830    0x%0    DCD    807761968
        0x1fff300c:    000a7838    8x..    DCD    686136
        0x1fff3010:    522d3852    R8-R    DCD    1378695250
        0x1fff3014:    20203131    11      DCD    538980657
        0x1fff3018:    20202020            DCD    538976288
        0x1fff301c:    30203d20     = 0    DCD    807419168
        0x1fff3020:    38302578    x%08    DCD    942679416
        0x1fff3024:    78302078    x 0x    DCD    2016419960
        0x1fff3028:    78383025    %08x    DCD    2016948261
        0x1fff302c:    25783020     0x%    DCD    628633632
        0x1fff3030:    20783830    08x     DCD    544749616
        0x1fff3034:    30257830    0x%0    DCD    807761968
        0x1fff3038:    000a7838    8x..    DCD    686136
        0x1fff303c:    2c323152    R12,    DCD    741486930
        0x1fff3040:    4c2c5053    SP,L    DCD    1277972563
        0x1fff3044:    43502c52    R,PC    DCD    1129327698
        0x1fff3048:    30203d20     = 0    DCD    807419168
        0x1fff304c:    38302578    x%08    DCD    942679416
        0x1fff3050:    78302078    x 0x    DCD    2016419960
        0x1fff3054:    78383025    %08x    DCD    2016948261
        0x1fff3058:    25783020     0x%    DCD    628633632
        0x1fff305c:    20783830    08x     DCD    544749616
        0x1fff3060:    30257830    0x%0    DCD    807761968
        0x1fff3064:    000a7838    8x..    DCD    686136
        0x1fff3068:    20525350    PSR     DCD    542266192
        0x1fff306c:    30203d20     = 0    DCD    807419168
        0x1fff3070:    38302578    x%08    DCD    942679416
        0x1fff3074:    00202078    x  .    DCD    2105464
        0x1fff3078:    e000ed00    ....    DCD    3758157056
        0x1fff307c:    52534349    ICSR    DCD    1381188425
        0x1fff3080:    30203d20     = 0    DCD    807419168
        0x1fff3084:    38302578    x%08    DCD    942679416
        0x1fff3088:    00000a78    x...    DCD    2680
        0x1fff308c:    1fff08b4    ....    DCD    536807604
        0x1fff3090:    1fff0860    `...    DCD    536807520
        0x1fff3094:    41534f5b    [OSA    DCD    1095978843
        0x1fff3098:    64695d4c    L]id    DCD    1684626764
        0x1fff309c:    64252078    x %d    DCD    1680154744
        0x1fff30a0:    6e754620     Fun    DCD    1853179424
        0x1fff30a4:    78302063    c 0x    DCD    2016419939
        0x1fff30a8:    78383025    %08x    DCD    2016948261
        0x1fff30ac:    73797320     sys    DCD    1937339168
        0x1fff30b0:    6b636974    tick    DCD    1801677172
        0x1fff30b4:    38302520     %08    DCD    942679328
        0x1fff30b8:    74722078    x rt    DCD    1953636472
        0x1fff30bc:    30252063    c %0    DCD    807739491
        0x1fff30c0:    200a7838    8x.     DCD    537557048
        0x1fff30c4:    00000000    ....    DCD    0
        0x1fff30c8:    2d2d2d2d    ----    DCD    757935405
        0x1fff30cc:    2d2d2d2d    ----    DCD    757935405
        0x1fff30d0:    642d2d2d    ---d    DCD    1680682285
        0x1fff30d4:    20706d75    ump     DCD    544238965
        0x1fff30d8:    63617473    stac    DCD    1667331187
        0x1fff30dc:    2d2d2d6b    k---    DCD    757935467
        0x1fff30e0:    2d2d2d2d    ----    DCD    757935405
        0x1fff30e4:    2d2d2d2d    ----    DCD    757935405
        0x1fff30e8:    0a2d2d2d    ---.    DCD    170732845
        0x1fff30ec:    00000000    ....    DCD    0
        0x1fff30f0:    1ffffffc    ....    DCD    536870908
        0x1fff30f4:    30255b0a    .[%0    DCD    807754506
        0x1fff30f8:    005d5838    8X].    DCD    6117432
        0x1fff30fc:    78383025    %08x    DCD    2016948261
        0x1fff3100:    00000020     ...    DCD    32
        0x1fff3104:    1fff70d0    .p..    DCD    536834256
    $t
    i._rom_efuse_version_init
    _rom_efuse_version_init
        0x1fff3108:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff310a:    4669        iF      MOV      r1,sp
        0x1fff310c:    2003        .       MOVS     r0,#3
        0x1fff310e:    f7fefcff    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff1b10
        0x1fff3112:    4668        hF      MOV      r0,sp
        0x1fff3114:    f001fa4a    ..J.    BL       lib_efuse_load ; 0x1fff45ac
        0x1fff3118:    9800        ..      LDR      r0,[sp,#0]
        0x1fff311a:    2800        .(      CMP      r0,#0
        0x1fff311c:    d102        ..      BNE      0x1fff3124 ; _rom_efuse_version_init + 28
        0x1fff311e:    9801        ..      LDR      r0,[sp,#4]
        0x1fff3120:    2800        .(      CMP      r0,#0
        0x1fff3122:    d000        ..      BEQ      0x1fff3126 ; _rom_efuse_version_init + 30
        0x1fff3124:    2001        .       MOVS     r0,#1
        0x1fff3126:    bd1c        ..      POP      {r2-r4,pc}
    i._rom_sec_boot_init
    _rom_sec_boot_init
        0x1fff3128:    b510        ..      PUSH     {r4,lr}
        0x1fff312a:    f000fa6b    ..k.    BL       efuse_init ; 0x1fff3604
        0x1fff312e:    f7fffebd    ....    BL       _efuse_chip_version_check ; 0x1fff2eac
        0x1fff3132:    2800        .(      CMP      r0,#0
        0x1fff3134:    d002        ..      BEQ      0x1fff313c ; _rom_sec_boot_init + 20
        0x1fff3136:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff3140] = 0xa2e1
        0x1fff3138:    4780        .G      BLX      r0
        0x1fff313a:    bd10        ..      POP      {r4,pc}
        0x1fff313c:    e7fe        ..      B        0x1fff313c ; _rom_sec_boot_init + 20
    $d
        0x1fff313e:    0000        ..      DCW    0
        0x1fff3140:    0000a2e1    ....    DCD    41697
    $t
    i._uart_putc
    _uart_putc
        0x1fff3144:    460a        .F      MOV      r2,r1
        0x1fff3146:    b510        ..      PUSH     {r4,lr}
        0x1fff3148:    4601        .F      MOV      r1,r0
        0x1fff314a:    2000        .       MOVS     r0,#0
        0x1fff314c:    f001f9c0    ....    BL       hal_uart_send_buff ; 0x1fff44d0
        0x1fff3150:    bd10        ..      POP      {r4,pc}
        0x1fff3152:    0000        ..      MOVS     r0,r0
    i.aon_register_init
    aon_register_init
        0x1fff3154:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff3190] = 0x4000f000
        0x1fff3156:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff318c] = 0x6000c00
        0x1fff3158:    6081        .`      STR      r1,[r0,#8]
        0x1fff315a:    2100        .!      MOVS     r1,#0
        0x1fff315c:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff315e:    221b        ."      MOVS     r2,#0x1b
        0x1fff3160:    0352        R.      LSLS     r2,r2,#13
        0x1fff3162:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff3164:    224d        M"      MOVS     r2,#0x4d
        0x1fff3166:    03d2        ..      LSLS     r2,r2,#15
        0x1fff3168:    6142        Ba      STR      r2,[r0,#0x14]
        0x1fff316a:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff3194] = 0x1064040
        0x1fff316c:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff316e:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff3198] = 0x1ffab
        0x1fff3170:    61c2        .a      STR      r2,[r0,#0x1c]
        0x1fff3172:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff3174:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff3176:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff3178:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff317a:    6341        Ac      STR      r1,[r0,#0x34]
        0x1fff317c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3190] = 0x4000f000
        0x1fff317e:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff3180:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff3182:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff3184:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff3186:    2101        .!      MOVS     r1,#1
        0x1fff3188:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff318a:    4770        pG      BX       lr
    $d
        0x1fff318c:    06000c00    ....    DCD    100666368
        0x1fff3190:    4000f000    ...@    DCD    1073803264
        0x1fff3194:    01064040    @@..    DCD    17186880
        0x1fff3198:    0001ffab    ....    DCD    130987
    $t
    i.app_main
    app_main
        0x1fff319c:    b510        ..      PUSH     {r4,lr}
        0x1fff319e:    f7fefccf    ....    BL       $Ven$TT$L$$osal_init_system ; 0x1fff1b40
        0x1fff31a2:    2001        .       MOVS     r0,#1
        0x1fff31a4:    f7fefcd2    ....    BL       $Ven$TT$L$$osal_pwrmgr_device ; 0x1fff1b4c
        0x1fff31a8:    f7fefcd6    ....    BL       $Ven$TT$L$$osal_start_system ; 0x1fff1b58
        0x1fff31ac:    2000        .       MOVS     r0,#0
        0x1fff31ae:    bd10        ..      POP      {r4,pc}
    i.check_16MXtal_by_rcTracking
    check_16MXtal_by_rcTracking
        0x1fff31b0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff31b2:    484e        NH      LDR      r0,[pc,#312] ; [0x1fff32ec] = 0x4000f0c0
        0x1fff31b4:    6840        @h      LDR      r0,[r0,#4]
        0x1fff31b6:    43c0        .C      MVNS     r0,r0
        0x1fff31b8:    0600        ..      LSLS     r0,r0,#24
        0x1fff31ba:    d503        ..      BPL      0x1fff31c4 ; check_16MXtal_by_rcTracking + 20
        0x1fff31bc:    203c        <       MOVS     r0,#0x3c
        0x1fff31be:    f7fefcd1    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff31c2:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff31c4:    f7fefcb6    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b34
        0x1fff31c8:    4d48        HM      LDR      r5,[pc,#288] ; [0x1fff32ec] = 0x4000f0c0
        0x1fff31ca:    9000        ..      STR      r0,[sp,#0]
        0x1fff31cc:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff31ce:    6828        (h      LDR      r0,[r5,#0]
        0x1fff31d0:    2101        .!      MOVS     r1,#1
        0x1fff31d2:    0489        ..      LSLS     r1,r1,#18
        0x1fff31d4:    4308        .C      ORRS     r0,r0,r1
        0x1fff31d6:    6028        (`      STR      r0,[r5,#0]
        0x1fff31d8:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff31da:    4945        EI      LDR      r1,[pc,#276] ; [0x1fff32f0] = 0xfffefe00
        0x1fff31dc:    4008        .@      ANDS     r0,r0,r1
        0x1fff31de:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff31e0:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff31e2:    2003        .       MOVS     r0,#3
        0x1fff31e4:    f7fefcbe    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff31e8:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31ea:    03c7        ..      LSLS     r7,r0,#15
        0x1fff31ec:    0bff        ..      LSRS     r7,r7,#15
        0x1fff31ee:    2003        .       MOVS     r0,#3
        0x1fff31f0:    f7fefcb8    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff31f4:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31f6:    03c4        ..      LSLS     r4,r0,#15
        0x1fff31f8:    0be4        ..      LSRS     r4,r4,#15
        0x1fff31fa:    2003        .       MOVS     r0,#3
        0x1fff31fc:    f7fefcb2    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff3200:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff3202:    03c6        ..      LSLS     r6,r0,#15
        0x1fff3204:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff3206:    42a7        .B      CMP      r7,r4
        0x1fff3208:    d301        ..      BCC      0x1fff320e ; check_16MXtal_by_rcTracking + 94
        0x1fff320a:    4620         F      MOV      r0,r4
        0x1fff320c:    e000        ..      B        0x1fff3210 ; check_16MXtal_by_rcTracking + 96
        0x1fff320e:    4638        8F      MOV      r0,r7
        0x1fff3210:    42b0        .B      CMP      r0,r6
        0x1fff3212:    d300        ..      BCC      0x1fff3216 ; check_16MXtal_by_rcTracking + 102
        0x1fff3214:    4630        0F      MOV      r0,r6
        0x1fff3216:    42a7        .B      CMP      r7,r4
        0x1fff3218:    d301        ..      BCC      0x1fff321e ; check_16MXtal_by_rcTracking + 110
        0x1fff321a:    4639        9F      MOV      r1,r7
        0x1fff321c:    e000        ..      B        0x1fff3220 ; check_16MXtal_by_rcTracking + 112
        0x1fff321e:    4621        !F      MOV      r1,r4
        0x1fff3220:    42b1        .B      CMP      r1,r6
        0x1fff3222:    d200        ..      BCS      0x1fff3226 ; check_16MXtal_by_rcTracking + 118
        0x1fff3224:    4631        1F      MOV      r1,r6
        0x1fff3226:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff32f4] = 0xfffffc91
        0x1fff3228:    18ba        ..      ADDS     r2,r7,r2
        0x1fff322a:    2ac3        .*      CMP      r2,#0xc3
        0x1fff322c:    d226        &.      BCS      0x1fff327c ; check_16MXtal_by_rcTracking + 204
        0x1fff322e:    4b31        1K      LDR      r3,[pc,#196] ; [0x1fff32f4] = 0xfffffc91
        0x1fff3230:    43db        .C      MVNS     r3,r3
        0x1fff3232:    429c        .B      CMP      r4,r3
        0x1fff3234:    d922        ".      BLS      0x1fff327c ; check_16MXtal_by_rcTracking + 204
        0x1fff3236:    4a30        0J      LDR      r2,[pc,#192] ; [0x1fff32f8] = 0x432
        0x1fff3238:    4294        .B      CMP      r4,r2
        0x1fff323a:    d21f        ..      BCS      0x1fff327c ; check_16MXtal_by_rcTracking + 204
        0x1fff323c:    429e        .B      CMP      r6,r3
        0x1fff323e:    d91d        ..      BLS      0x1fff327c ; check_16MXtal_by_rcTracking + 204
        0x1fff3240:    4296        .B      CMP      r6,r2
        0x1fff3242:    d21b        ..      BCS      0x1fff327c ; check_16MXtal_by_rcTracking + 204
        0x1fff3244:    1a08        ..      SUBS     r0,r1,r0
        0x1fff3246:    2813        .(      CMP      r0,#0x13
        0x1fff3248:    d218        ..      BCS      0x1fff327c ; check_16MXtal_by_rcTracking + 204
        0x1fff324a:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff32ec] = 0x4000f0c0
        0x1fff324c:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff324e:    210c        .!      MOVS     r1,#0xc
        0x1fff3250:    438a        .C      BICS     r2,r2,r1
        0x1fff3252:    6042        B`      STR      r2,[r0,#4]
        0x1fff3254:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3256:    22ff        ."      MOVS     r2,#0xff
        0x1fff3258:    0212        ..      LSLS     r2,r2,#8
        0x1fff325a:    4391        .C      BICS     r1,r1,r2
        0x1fff325c:    6041        A`      STR      r1,[r0,#4]
        0x1fff325e:    2014        .       MOVS     r0,#0x14
        0x1fff3260:    f7fefc80    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff3264:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff32ec] = 0x4000f0c0
        0x1fff3266:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff3268:    6a41        Aj      LDR      r1,[r0,#0x24]
        0x1fff326a:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff326c:    03c9        ..      LSLS     r1,r1,#15
        0x1fff326e:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff3270:    2308        .#      MOVS     r3,#8
        0x1fff3272:    439a        .C      BICS     r2,r2,r3
        0x1fff3274:    61c2        .a      STR      r2,[r0,#0x1c]
        0x1fff3276:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff32fc] = 0x1fff70d8
        0x1fff3278:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff327a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff327c:    4627        'F      MOV      r7,r4
        0x1fff327e:    4634        4F      MOV      r4,r6
        0x1fff3280:    2003        .       MOVS     r0,#3
        0x1fff3282:    f7fefc6f    ..o.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff3286:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff32ec] = 0x4000f0c0
        0x1fff3288:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff328a:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff328c:    03c6        ..      LSLS     r6,r0,#15
        0x1fff328e:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff3290:    f7fefc50    ..P.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b34
        0x1fff3294:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3296:    4288        .B      CMP      r0,r1
        0x1fff3298:    d301        ..      BCC      0x1fff329e ; check_16MXtal_by_rcTracking + 238
        0x1fff329a:    1a40        @.      SUBS     r0,r0,r1
        0x1fff329c:    e001        ..      B        0x1fff32a2 ; check_16MXtal_by_rcTracking + 242
        0x1fff329e:    1a40        @.      SUBS     r0,r0,r1
        0x1fff32a0:    1e40        @.      SUBS     r0,r0,#1
        0x1fff32a2:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff3300] = 0xce4
        0x1fff32a4:    4288        .B      CMP      r0,r1
        0x1fff32a6:    d3ae        ..      BCC      0x1fff3206 ; check_16MXtal_by_rcTracking + 86
        0x1fff32a8:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff32ec] = 0x4000f0c0
        0x1fff32aa:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff32ac:    0409        ..      LSLS     r1,r1,#16
        0x1fff32ae:    0e0d        ..      LSRS     r5,r1,#24
        0x1fff32b0:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff32b2:    22ff        ."      MOVS     r2,#0xff
        0x1fff32b4:    0212        ..      LSLS     r2,r2,#8
        0x1fff32b6:    4391        .C      BICS     r1,r1,r2
        0x1fff32b8:    1c6a        j.      ADDS     r2,r5,#1
        0x1fff32ba:    0612        ..      LSLS     r2,r2,#24
        0x1fff32bc:    0c12        ..      LSRS     r2,r2,#16
        0x1fff32be:    4311        .C      ORRS     r1,r1,r2
        0x1fff32c0:    6041        A`      STR      r1,[r0,#4]
        0x1fff32c2:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff32c4:    220c        ."      MOVS     r2,#0xc
        0x1fff32c6:    4391        .C      BICS     r1,r1,r2
        0x1fff32c8:    1d09        ..      ADDS     r1,r1,#4
        0x1fff32ca:    6041        A`      STR      r1,[r0,#4]
        0x1fff32cc:    2000        .       MOVS     r0,#0
        0x1fff32ce:    f7fefc4f    ..O.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b70
        0x1fff32d2:    2d64        d-      CMP      r5,#0x64
        0x1fff32d4:    d302        ..      BCC      0x1fff32dc ; check_16MXtal_by_rcTracking + 300
        0x1fff32d6:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff32ec] = 0x4000f0c0
        0x1fff32d8:    2100        .!      MOVS     r1,#0
        0x1fff32da:    6041        A`      STR      r1,[r0,#4]
        0x1fff32dc:    2d06        .-      CMP      r5,#6
        0x1fff32de:    d300        ..      BCC      0x1fff32e2 ; check_16MXtal_by_rcTracking + 306
        0x1fff32e0:    2506        .%      MOVS     r5,#6
        0x1fff32e2:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff3300] = 0xce4
        0x1fff32e4:    40a8        .@      LSLS     r0,r0,r5
        0x1fff32e6:    f7fefe77    ..w.    BL       hal_pwrmgr_enter_sleep_rtc_reset ; 0x1fff1fd8
        0x1fff32ea:    e78c        ..      B        0x1fff3206 ; check_16MXtal_by_rcTracking + 86
    $d
        0x1fff32ec:    4000f0c0    ...@    DCD    1073803456
        0x1fff32f0:    fffefe00    ....    DCD    4294901248
        0x1fff32f4:    fffffc91    ....    DCD    4294966417
        0x1fff32f8:    00000432    2...    DCD    1074
        0x1fff32fc:    1fff70d8    .p..    DCD    536834264
        0x1fff3300:    00000ce4    ....    DCD    3300
    $t
    i.check_96MXtal_by_rcTracking
    check_96MXtal_by_rcTracking
        0x1fff3304:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3306:    483d        =H      LDR      r0,[pc,#244] ; [0x1fff33fc] = 0x4000f0c0
        0x1fff3308:    6840        @h      LDR      r0,[r0,#4]
        0x1fff330a:    4c3c        <L      LDR      r4,[pc,#240] ; [0x1fff33fc] = 0x4000f0c0
        0x1fff330c:    0600        ..      LSLS     r0,r0,#24
        0x1fff330e:    3c80        .<      SUBS     r4,r4,#0x80
        0x1fff3310:    2180        .!      MOVS     r1,#0x80
        0x1fff3312:    2800        .(      CMP      r0,#0
        0x1fff3314:    db06        ..      BLT      0x1fff3324 ; check_96MXtal_by_rcTracking + 32
        0x1fff3316:    6860        `h      LDR      r0,[r4,#4]
        0x1fff3318:    4308        .C      ORRS     r0,r0,r1
        0x1fff331a:    6060        ``      STR      r0,[r4,#4]
        0x1fff331c:    2003        .       MOVS     r0,#3
        0x1fff331e:    f7fefc21    ..!.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff3322:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3324:    4d36        6M      LDR      r5,[pc,#216] ; [0x1fff3400] = 0x1fff70d8
        0x1fff3326:    2000        .       MOVS     r0,#0
        0x1fff3328:    6328        (c      STR      r0,[r5,#0x30]
        0x1fff332a:    6820         h      LDR      r0,[r4,#0]
        0x1fff332c:    2201        ."      MOVS     r2,#1
        0x1fff332e:    0492        ..      LSLS     r2,r2,#18
        0x1fff3330:    4310        .C      ORRS     r0,r0,r2
        0x1fff3332:    6020         `      STR      r0,[r4,#0]
        0x1fff3334:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff3404] = 0xfffefe00
        0x1fff3336:    6860        `h      LDR      r0,[r4,#4]
        0x1fff3338:    2180        .!      MOVS     r1,#0x80
        0x1fff333a:    4308        .C      ORRS     r0,r0,r1
        0x1fff333c:    6060        ``      STR      r0,[r4,#4]
        0x1fff333e:    2003        .       MOVS     r0,#3
        0x1fff3340:    f7fefc10    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff3344:    6b28        (k      LDR      r0,[r5,#0x30]
        0x1fff3346:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3348:    6328        (c      STR      r0,[r5,#0x30]
        0x1fff334a:    6860        `h      LDR      r0,[r4,#4]
        0x1fff334c:    2101        .!      MOVS     r1,#1
        0x1fff334e:    0409        ..      LSLS     r1,r1,#16
        0x1fff3350:    4308        .C      ORRS     r0,r0,r1
        0x1fff3352:    6060        ``      STR      r0,[r4,#4]
        0x1fff3354:    2600        .&      MOVS     r6,#0
        0x1fff3356:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff3358:    492b        +I      LDR      r1,[pc,#172] ; [0x1fff3408] = 0x10028
        0x1fff335a:    4038        8@      ANDS     r0,r0,r7
        0x1fff335c:    1840        @.      ADDS     r0,r0,r1
        0x1fff335e:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff3360:    2003        .       MOVS     r0,#3
        0x1fff3362:    f7fefbff    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff3366:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff3368:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff336a:    03c0        ..      LSLS     r0,r0,#15
        0x1fff336c:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff336e:    2208        ."      MOVS     r2,#8
        0x1fff3370:    4391        .C      BICS     r1,r1,r2
        0x1fff3372:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff3374:    6aa9        .j      LDR      r1,[r5,#0x28]
        0x1fff3376:    2206        ."      MOVS     r2,#6
        0x1fff3378:    4351        QC      MULS     r1,r2,r1
        0x1fff337a:    4281        .B      CMP      r1,r0
        0x1fff337c:    d301        ..      BCC      0x1fff3382 ; check_96MXtal_by_rcTracking + 126
        0x1fff337e:    1a09        ..      SUBS     r1,r1,r0
        0x1fff3380:    e000        ..      B        0x1fff3384 ; check_96MXtal_by_rcTracking + 128
        0x1fff3382:    1a41        A.      SUBS     r1,r0,r1
        0x1fff3384:    293c        <)      CMP      r1,#0x3c
        0x1fff3386:    d209        ..      BCS      0x1fff339c ; check_96MXtal_by_rcTracking + 152
        0x1fff3388:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x1fff338a:    2101        .!      MOVS     r1,#1
        0x1fff338c:    0409        ..      LSLS     r1,r1,#16
        0x1fff338e:    438a        .C      BICS     r2,r2,r1
        0x1fff3390:    61e2        .a      STR      r2,[r4,#0x1c]
        0x1fff3392:    6862        bh      LDR      r2,[r4,#4]
        0x1fff3394:    438a        .C      BICS     r2,r2,r1
        0x1fff3396:    6062        b`      STR      r2,[r4,#4]
        0x1fff3398:    62e8        .b      STR      r0,[r5,#0x2c]
        0x1fff339a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff339c:    1c76        v.      ADDS     r6,r6,#1
        0x1fff339e:    b2f6        ..      UXTB     r6,r6
        0x1fff33a0:    2e05        ..      CMP      r6,#5
        0x1fff33a2:    d3d8        ..      BCC      0x1fff3356 ; check_96MXtal_by_rcTracking + 82
        0x1fff33a4:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff33a6:    2001        .       MOVS     r0,#1
        0x1fff33a8:    0400        ..      LSLS     r0,r0,#16
        0x1fff33aa:    4381        .C      BICS     r1,r1,r0
        0x1fff33ac:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff33ae:    6861        ah      LDR      r1,[r4,#4]
        0x1fff33b0:    4381        .C      BICS     r1,r1,r0
        0x1fff33b2:    6061        a`      STR      r1,[r4,#4]
        0x1fff33b4:    6b28        (k      LDR      r0,[r5,#0x30]
        0x1fff33b6:    462e        .F      MOV      r6,r5
        0x1fff33b8:    2805        .(      CMP      r0,#5
        0x1fff33ba:    d307        ..      BCC      0x1fff33cc ; check_96MXtal_by_rcTracking + 200
        0x1fff33bc:    f3bf8f4f    ..O.    DSB      
        0x1fff33c0:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff3410] = 0xe000ed00
        0x1fff33c2:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff340c] = 0x5fa0004
        0x1fff33c4:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff33c6:    f3bf8f4f    ..O.    DSB      
        0x1fff33ca:    e7fe        ..      B        0x1fff33ca ; check_96MXtal_by_rcTracking + 198
        0x1fff33cc:    6860        `h      LDR      r0,[r4,#4]
        0x1fff33ce:    2180        .!      MOVS     r1,#0x80
        0x1fff33d0:    4388        .C      BICS     r0,r0,r1
        0x1fff33d2:    6060        ``      STR      r0,[r4,#4]
        0x1fff33d4:    2003        .       MOVS     r0,#3
        0x1fff33d6:    f7fefbc5    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff33da:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff33dc:    4038        8@      ANDS     r0,r0,r7
        0x1fff33de:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff33e0:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff33e2:    2003        .       MOVS     r0,#3
        0x1fff33e4:    f7fefbbe    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff33e8:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff33ea:    03c0        ..      LSLS     r0,r0,#15
        0x1fff33ec:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff33ee:    62b0        .b      STR      r0,[r6,#0x28]
        0x1fff33f0:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff33f2:    2008        .       MOVS     r0,#8
        0x1fff33f4:    4381        .C      BICS     r1,r1,r0
        0x1fff33f6:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff33f8:    e79d        ..      B        0x1fff3336 ; check_96MXtal_by_rcTracking + 50
    $d
        0x1fff33fa:    0000        ..      DCW    0
        0x1fff33fc:    4000f0c0    ...@    DCD    1073803456
        0x1fff3400:    1fff70d8    .p..    DCD    536834264
        0x1fff3404:    fffefe00    ....    DCD    4294901248
        0x1fff3408:    00010028    (...    DCD    65576
        0x1fff340c:    05fa0004    ....    DCD    100270084
        0x1fff3410:    e000ed00    ....    DCD    3758157056
    $t
    i.clk_init
    clk_init
        0x1fff3414:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff3416:    4604        .F      MOV      r4,r0
        0x1fff3418:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff3480] = 0x4000f000
        0x1fff341a:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff341c:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff3484] = 0x17be0
        0x1fff341e:    0749        I.      LSLS     r1,r1,#29
        0x1fff3420:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff3422:    5869        iX      LDR      r1,[r5,r1]
        0x1fff3424:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3480] = 0x4000f000
        0x1fff3426:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff3428:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff342a:    9100        ..      STR      r1,[sp,#0]
        0x1fff342c:    6811        .h      LDR      r1,[r2,#0]
        0x1fff342e:    0349        I.      LSLS     r1,r1,#13
        0x1fff3430:    d404        ..      BMI      0x1fff343c ; clk_init + 40
        0x1fff3432:    6811        .h      LDR      r1,[r2,#0]
        0x1fff3434:    2301        .#      MOVS     r3,#1
        0x1fff3436:    049b        ..      LSLS     r3,r3,#18
        0x1fff3438:    4319        .C      ORRS     r1,r1,r3
        0x1fff343a:    6011        .`      STR      r1,[r2,#0]
        0x1fff343c:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff343e:    2218        ."      MOVS     r2,#0x18
        0x1fff3440:    4311        .C      ORRS     r1,r1,r2
        0x1fff3442:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff3444:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff3446:    4f10        .O      LDR      r7,[pc,#64] ; [0x1fff3488] = 0x8c01
        0x1fff3448:    0140        @.      LSLS     r0,r0,#5
        0x1fff344a:    0f40        @.      LSRS     r0,r0,#29
        0x1fff344c:    9001        ..      STR      r0,[sp,#4]
        0x1fff344e:    47b8        .G      BLX      r7
        0x1fff3450:    4606        .F      MOV      r6,r0
        0x1fff3452:    4620         F      MOV      r0,r4
        0x1fff3454:    47b8        .G      BLX      r7
        0x1fff3456:    4306        .C      ORRS     r6,r6,r0
        0x1fff3458:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff348c] = 0x8aa9
        0x1fff345a:    07f0        ..      LSLS     r0,r6,#31
        0x1fff345c:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff345e:    4788        .G      BLX      r1
        0x1fff3460:    4603        .F      MOV      r3,r0
        0x1fff3462:    00a0        ..      LSLS     r0,r4,#2
        0x1fff3464:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff3490] = 0x1fff0874
        0x1fff3466:    5828        (X      LDR      r0,[r5,r0]
        0x1fff3468:    6008        .`      STR      r0,[r1,#0]
        0x1fff346a:    9800        ..      LDR      r0,[sp,#0]
        0x1fff346c:    1e41        A.      SUBS     r1,r0,#1
        0x1fff346e:    9100        ..      STR      r1,[sp,#0]
        0x1fff3470:    d2fb        ..      BCS      0x1fff346a ; clk_init + 86
        0x1fff3472:    4632        2F      MOV      r2,r6
        0x1fff3474:    4621        !F      MOV      r1,r4
        0x1fff3476:    9801        ..      LDR      r0,[sp,#4]
        0x1fff3478:    f7fffc92    ....    BL       _clk_apply_setting1 ; 0x1fff2da0
        0x1fff347c:    2000        .       MOVS     r0,#0
        0x1fff347e:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff3480:    4000f000    ...@    DCD    1073803264
        0x1fff3484:    00017be0    .{..    DCD    97248
        0x1fff3488:    00008c01    ....    DCD    35841
        0x1fff348c:    00008aa9    ....    DCD    35497
        0x1fff3490:    1fff0874    t...    DCD    536807540
    $t
    i.config_RTC1
    config_RTC1
        0x1fff3494:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3496:    4606        .F      MOV      r6,r0
        0x1fff3498:    2001        .       MOVS     r0,#1
        0x1fff349a:    f7fefb63    ..c.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff349e:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff3524] = 0x1fff091c
        0x1fff34a0:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff3528] = 0x1fff70d8
        0x1fff34a2:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff34a4:    4c21        !L      LDR      r4,[pc,#132] ; [0x1fff352c] = 0x1fff08e4
        0x1fff34a6:    2800        .(      CMP      r0,#0
        0x1fff34a8:    d016        ..      BEQ      0x1fff34d8 ; config_RTC1 + 68
        0x1fff34aa:    f7fefb67    ..g.    BL       $Ven$TT$L$$read_LL_remainder_time ; 0x1fff1b7c
        0x1fff34ae:    6020         `      STR      r0,[r4,#0]
        0x1fff34b0:    f001f872    ..r.    BL       isTimer5Running ; 0x1fff4598
        0x1fff34b4:    2800        .(      CMP      r0,#0
        0x1fff34b6:    d002        ..      BEQ      0x1fff34be ; config_RTC1 + 42
        0x1fff34b8:    f002fe08    ....    BL       read_TIM5_remainder_timer ; 0x1fff60cc
        0x1fff34bc:    6178        xa      STR      r0,[r7,#0x14]
        0x1fff34be:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff3530] = 0x4000f000
        0x1fff34c0:    6a8b        .j      LDR      r3,[r1,#0x28]
        0x1fff34c2:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff3534] = 0x1fff0a34
        0x1fff34c4:    6003        .`      STR      r3,[r0,#0]
        0x1fff34c6:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff3538] = 0x40001000
        0x1fff34c8:    6ac7        .j      LDR      r7,[r0,#0x2c]
        0x1fff34ca:    4a1c        .J      LDR      r2,[pc,#112] ; [0x1fff353c] = 0x1fff0a18
        0x1fff34cc:    6812        .h      LDR      r2,[r2,#0]
        0x1fff34ce:    4297        .B      CMP      r7,r2
        0x1fff34d0:    d205        ..      BCS      0x1fff34de ; config_RTC1 + 74
        0x1fff34d2:    6ac0        .j      LDR      r0,[r0,#0x2c]
        0x1fff34d4:    1a10        ..      SUBS     r0,r2,r0
        0x1fff34d6:    e003        ..      B        0x1fff34e0 ; config_RTC1 + 76
        0x1fff34d8:    68f8        .h      LDR      r0,[r7,#0xc]
        0x1fff34da:    6940        @i      LDR      r0,[r0,#0x14]
        0x1fff34dc:    e7e7        ..      B        0x1fff34ae ; config_RTC1 + 26
        0x1fff34de:    2000        .       MOVS     r0,#0
        0x1fff34e0:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff3540] = 0x1fff0a1c
        0x1fff34e2:    6010        .`      STR      r0,[r2,#0]
        0x1fff34e4:    1998        ..      ADDS     r0,r3,r6
        0x1fff34e6:    62c8        .b      STR      r0,[r1,#0x2c]
        0x1fff34e8:    6a48        Hj      LDR      r0,[r1,#0x24]
        0x1fff34ea:    2229        )"      MOVS     r2,#0x29
        0x1fff34ec:    03d2        ..      LSLS     r2,r2,#15
        0x1fff34ee:    4310        .C      ORRS     r0,r0,r2
        0x1fff34f0:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff34f2:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff34f4:    2800        .(      CMP      r0,#0
        0x1fff34f6:    d012        ..      BEQ      0x1fff351e ; config_RTC1 + 138
        0x1fff34f8:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff3544] = 0x1fff0a4a
        0x1fff34fa:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff34fc:    2902        .)      CMP      r1,#2
        0x1fff34fe:    d008        ..      BEQ      0x1fff3512 ; config_RTC1 + 126
        0x1fff3500:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff3502:    2901        .)      CMP      r1,#1
        0x1fff3504:    d008        ..      BEQ      0x1fff3518 ; config_RTC1 + 132
        0x1fff3506:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff3508:    2803        .(      CMP      r0,#3
        0x1fff350a:    6820         h      LDR      r0,[r4,#0]
        0x1fff350c:    d008        ..      BEQ      0x1fff3520 ; config_RTC1 + 140
        0x1fff350e:    1ec0        ..      SUBS     r0,r0,#3
        0x1fff3510:    e004        ..      B        0x1fff351c ; config_RTC1 + 136
        0x1fff3512:    6820         h      LDR      r0,[r4,#0]
        0x1fff3514:    380f        .8      SUBS     r0,r0,#0xf
        0x1fff3516:    e001        ..      B        0x1fff351c ; config_RTC1 + 136
        0x1fff3518:    6820         h      LDR      r0,[r4,#0]
        0x1fff351a:    3808        .8      SUBS     r0,r0,#8
        0x1fff351c:    6020         `      STR      r0,[r4,#0]
        0x1fff351e:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3520:    1f40        @.      SUBS     r0,r0,#5
        0x1fff3522:    e7fb        ..      B        0x1fff351c ; config_RTC1 + 136
    $d
        0x1fff3524:    1fff091c    ....    DCD    536807708
        0x1fff3528:    1fff70d8    .p..    DCD    536834264
        0x1fff352c:    1fff08e4    ....    DCD    536807652
        0x1fff3530:    4000f000    ...@    DCD    1073803264
        0x1fff3534:    1fff0a34    4...    DCD    536807988
        0x1fff3538:    40001000    ...@    DCD    1073745920
        0x1fff353c:    1fff0a18    ....    DCD    536807960
        0x1fff3540:    1fff0a1c    ....    DCD    536807964
        0x1fff3544:    1fff0a4a    J...    DCD    536808010
    $t
    i.cusum_advance_slave_rx_window
    cusum_advance_slave_rx_window
        0x1fff3548:    b510        ..      PUSH     {r4,lr}
        0x1fff354a:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff35c4] = 0x1fff0d30
        0x1fff354c:    21a1        .!      MOVS     r1,#0xa1
        0x1fff354e:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff3550:    0089        ..      LSLS     r1,r1,#2
        0x1fff3552:    4348        HC      MULS     r0,r1,r0
        0x1fff3554:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff35c8] = 0x1fff0934
        0x1fff3556:    23a1        .#      MOVS     r3,#0xa1
        0x1fff3558:    6809        .h      LDR      r1,[r1,#0]
        0x1fff355a:    009b        ..      LSLS     r3,r3,#2
        0x1fff355c:    1844        D.      ADDS     r4,r0,r1
        0x1fff355e:    2191        .!      MOVS     r1,#0x91
        0x1fff3560:    0089        ..      LSLS     r1,r1,#2
        0x1fff3562:    590a        .Y      LDR      r2,[r1,r4]
        0x1fff3564:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff35c4] = 0x1fff0d30
        0x1fff3566:    2000        .       MOVS     r0,#0
        0x1fff3568:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff356a:    4359        YC      MULS     r1,r3,r1
        0x1fff356c:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff35c8] = 0x1fff0934
        0x1fff356e:    681b        .h      LDR      r3,[r3,#0]
        0x1fff3570:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3572:    8ec9        ..      LDRH     r1,[r1,#0x36]
        0x1fff3574:    2a00        .*      CMP      r2,#0
        0x1fff3576:    d01e        ..      BEQ      0x1fff35b6 ; cusum_advance_slave_rx_window + 110
        0x1fff3578:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff35cc] = 0x1fff70d8
        0x1fff357a:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff357c:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff357e:    3001        .0      ADDS     r0,#1
        0x1fff3580:    2a01        .*      CMP      r2,#1
        0x1fff3582:    d00c        ..      BEQ      0x1fff359e ; cusum_advance_slave_rx_window + 86
        0x1fff3584:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff35cc] = 0x1fff70d8
        0x1fff3586:    68db        .h      LDR      r3,[r3,#0xc]
        0x1fff3588:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff358a:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff358c:    2a06        .*      CMP      r2,#6
        0x1fff358e:    d808        ..      BHI      0x1fff35a2 ; cusum_advance_slave_rx_window + 90
        0x1fff3590:    7964        dy      LDRB     r4,[r4,#5]
        0x1fff3592:    2c01        .,      CMP      r4,#1
        0x1fff3594:    d005        ..      BEQ      0x1fff35a2 ; cusum_advance_slave_rx_window + 90
        0x1fff3596:    4c0d        .L      LDR      r4,[pc,#52] ; [0x1fff35cc] = 0x1fff70d8
        0x1fff3598:    3452        R4      ADDS     r4,r4,#0x52
        0x1fff359a:    5d12        .]      LDRB     r2,[r2,r4]
        0x1fff359c:    e004        ..      B        0x1fff35a8 ; cusum_advance_slave_rx_window + 96
        0x1fff359e:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff35a0:    e009        ..      B        0x1fff35b6 ; cusum_advance_slave_rx_window + 110
        0x1fff35a2:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff35cc] = 0x1fff70d8
        0x1fff35a4:    3254        T2      ADDS     r2,r2,#0x54
        0x1fff35a6:    7912        .y      LDRB     r2,[r2,#4]
        0x1fff35a8:    6d1b        .m      LDR      r3,[r3,#0x50]
        0x1fff35aa:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff35ac:    435a        ZC      MULS     r2,r3,r2
        0x1fff35ae:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff35b0:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff35b2:    435a        ZC      MULS     r2,r3,r2
        0x1fff35b4:    1810        ..      ADDS     r0,r2,r0
        0x1fff35b6:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff35d0] = 0x753
        0x1fff35b8:    08c9        ..      LSRS     r1,r1,#3
        0x1fff35ba:    4351        QC      MULS     r1,r2,r1
        0x1fff35bc:    4281        .B      CMP      r1,r0
        0x1fff35be:    d800        ..      BHI      0x1fff35c2 ; cusum_advance_slave_rx_window + 122
        0x1fff35c0:    4608        .F      MOV      r0,r1
        0x1fff35c2:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff35c4:    1fff0d30    0...    DCD    536808752
        0x1fff35c8:    1fff0934    4...    DCD    536807732
        0x1fff35cc:    1fff70d8    .p..    DCD    536834264
        0x1fff35d0:    00000753    S...    DCD    1875
    $t
    i.dbg_printf
    dbg_printf
        0x1fff35d4:    b40f        ..      PUSH     {r0-r3}
        0x1fff35d6:    b510        ..      PUSH     {r4,lr}
        0x1fff35d8:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff35da:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff35ec] = 0x1fff3145
        0x1fff35dc:    9902        ..      LDR      r1,[sp,#8]
        0x1fff35de:    f001fd8b    ....    BL       log_vsprintf ; 0x1fff50f8
        0x1fff35e2:    bc10        ..      POP      {r4}
        0x1fff35e4:    bc08        ..      POP      {r3}
        0x1fff35e6:    b004        ..      ADD      sp,sp,#0x10
        0x1fff35e8:    4718        .G      BX       r3
    $d
        0x1fff35ea:    0000        ..      DCW    0
        0x1fff35ec:    1fff3145    E1..    DCD    536817989
    $t
    i.dbg_printf_init
    dbg_printf_init
        0x1fff35f0:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff35f2:    4b03        .K      LDR      r3,[pc,#12] ; [0x1fff3600] = 0x1fff6f08
        0x1fff35f4:    2400        .$      MOVS     r4,#0
        0x1fff35f6:    cb0f        ..      LDM      r3,{r0-r3}
        0x1fff35f8:    9400        ..      STR      r4,[sp,#0]
        0x1fff35fa:    f000ff37    ..7.    BL       hal_uart_init ; 0x1fff446c
        0x1fff35fe:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x1fff3600:    1fff6f08    .o..    DCD    536833800
    $t
    i.efuse_init
    efuse_init
        0x1fff3604:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff3614] = 0x4000f040
        0x1fff3606:    2000        .       MOVS     r0,#0
        0x1fff3608:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff360a:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff3618] = 0x4000f140
        0x1fff360c:    6008        .`      STR      r0,[r1,#0]
        0x1fff360e:    6048        H`      STR      r0,[r1,#4]
        0x1fff3610:    4770        pG      BX       lr
    $d
        0x1fff3612:    0000        ..      DCW    0
        0x1fff3614:    4000f040    @..@    DCD    1073803328
        0x1fff3618:    4000f140    @..@    DCD    1073803584
    $t
    i.enlarge_rx_timeout_1st
    enlarge_rx_timeout_1st
        0x1fff361c:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff361e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff36bc] = 0x1fff0d30
        0x1fff3620:    21a1        .!      MOVS     r1,#0xa1
        0x1fff3622:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff3624:    0089        ..      LSLS     r1,r1,#2
        0x1fff3626:    4348        HC      MULS     r0,r1,r0
        0x1fff3628:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff36c0] = 0x1fff0934
        0x1fff362a:    6809        .h      LDR      r1,[r1,#0]
        0x1fff362c:    1844        D.      ADDS     r4,r0,r1
        0x1fff362e:    4825        %H      LDR      r0,[pc,#148] ; [0x1fff36c4] = 0x40031000
        0x1fff3630:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff3632:    b280        ..      UXTH     r0,r0
        0x1fff3634:    9000        ..      STR      r0,[sp,#0]
        0x1fff3636:    2091        .       MOVS     r0,#0x91
        0x1fff3638:    0080        ..      LSLS     r0,r0,#2
        0x1fff363a:    5901        .Y      LDR      r1,[r0,r4]
        0x1fff363c:    2900        .)      CMP      r1,#0
        0x1fff363e:    d00f        ..      BEQ      0x1fff3660 ; enlarge_rx_timeout_1st + 68
        0x1fff3640:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff36c8] = 0x1fff70d8
        0x1fff3642:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3644:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff3646:    3001        .0      ADDS     r0,#1
        0x1fff3648:    2901        .)      CMP      r1,#1
        0x1fff364a:    d00e        ..      BEQ      0x1fff366a ; enlarge_rx_timeout_1st + 78
        0x1fff364c:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff36c8] = 0x1fff70d8
        0x1fff364e:    68d2        .h      LDR      r2,[r2,#0xc]
        0x1fff3650:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff3652:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff3654:    2906        .)      CMP      r1,#6
        0x1fff3656:    d80a        ..      BHI      0x1fff366e ; enlarge_rx_timeout_1st + 82
        0x1fff3658:    4b1b        .K      LDR      r3,[pc,#108] ; [0x1fff36c8] = 0x1fff70d8
        0x1fff365a:    3352        R3      ADDS     r3,r3,#0x52
        0x1fff365c:    5cc9        .\      LDRB     r1,[r1,r3]
        0x1fff365e:    e009        ..      B        0x1fff3674 ; enlarge_rx_timeout_1st + 88
        0x1fff3660:    8c60        `.      LDRH     r0,[r4,#0x22]
        0x1fff3662:    8ee1        ..      LDRH     r1,[r4,#0x36]
        0x1fff3664:    4348        HC      MULS     r0,r1,r0
        0x1fff3666:    1040        @.      ASRS     r0,r0,#1
        0x1fff3668:    e00d        ..      B        0x1fff3686 ; enlarge_rx_timeout_1st + 106
        0x1fff366a:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff366c:    e00a        ..      B        0x1fff3684 ; enlarge_rx_timeout_1st + 104
        0x1fff366e:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff36c8] = 0x1fff70d8
        0x1fff3670:    3154        T1      ADDS     r1,r1,#0x54
        0x1fff3672:    7909        .y      LDRB     r1,[r1,#4]
        0x1fff3674:    6d12        .m      LDR      r2,[r2,#0x50]
        0x1fff3676:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3678:    4351        QC      MULS     r1,r2,r1
        0x1fff367a:    8ee2        ..      LDRH     r2,[r4,#0x36]
        0x1fff367c:    0a12        ..      LSRS     r2,r2,#8
        0x1fff367e:    1c52        R.      ADDS     r2,r2,#1
        0x1fff3680:    4351        QC      MULS     r1,r2,r1
        0x1fff3682:    1808        ..      ADDS     r0,r1,r0
        0x1fff3684:    0040        @.      LSLS     r0,r0,#1
        0x1fff3686:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3688:    1840        @.      ADDS     r0,r0,r1
        0x1fff368a:    9000        ..      STR      r0,[sp,#0]
        0x1fff368c:    f7ffff5c    ..\.    BL       cusum_advance_slave_rx_window ; 0x1fff3548
        0x1fff3690:    9001        ..      STR      r0,[sp,#4]
        0x1fff3692:    9901        ..      LDR      r1,[sp,#4]
        0x1fff3694:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3696:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff36cc] = 0x753
        0x1fff3698:    1a42        B.      SUBS     r2,r0,r1
        0x1fff369a:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff369c:    08c1        ..      LSRS     r1,r0,#3
        0x1fff369e:    4359        YC      MULS     r1,r3,r1
        0x1fff36a0:    428a        .B      CMP      r2,r1
        0x1fff36a2:    d801        ..      BHI      0x1fff36a8 ; enlarge_rx_timeout_1st + 140
        0x1fff36a4:    9800        ..      LDR      r0,[sp,#0]
        0x1fff36a6:    e005        ..      B        0x1fff36b4 ; enlarge_rx_timeout_1st + 152
        0x1fff36a8:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff36d0] = 0x271
        0x1fff36aa:    0840        @.      LSRS     r0,r0,#1
        0x1fff36ac:    4348        HC      MULS     r0,r1,r0
        0x1fff36ae:    9901        ..      LDR      r1,[sp,#4]
        0x1fff36b0:    1840        @.      ADDS     r0,r0,r1
        0x1fff36b2:    9000        ..      STR      r0,[sp,#0]
        0x1fff36b4:    f7fefa68    ..h.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff1b88
        0x1fff36b8:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff36ba:    0000        ..      DCW    0
        0x1fff36bc:    1fff0d30    0...    DCD    536808752
        0x1fff36c0:    1fff0934    4...    DCD    536807732
        0x1fff36c4:    40031000    ...@    DCD    1073942528
        0x1fff36c8:    1fff70d8    .p..    DCD    536834264
        0x1fff36cc:    00000753    S...    DCD    1875
        0x1fff36d0:    00000271    q...    DCD    625
    $t
    i.enterSleepProcess1
    enterSleepProcess1
        0x1fff36d4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff36d6:    4c0d        .L      LDR      r4,[pc,#52] ; [0x1fff370c] = 0x1fff70d8
        0x1fff36d8:    4605        .F      MOV      r5,r0
        0x1fff36da:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff36dc:    8d80        ..      LDRH     r0,[r0,#0x2c]
        0x1fff36de:    0540        @.      LSLS     r0,r0,#21
        0x1fff36e0:    d505        ..      BPL      0x1fff36ee ; enterSleepProcess1 + 26
        0x1fff36e2:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff3710] = 0x4000f040
        0x1fff36e4:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff36e6:    03c0        ..      LSLS     r0,r0,#15
        0x1fff36e8:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff36ea:    f002fcc3    ....    BL       rc32k_cap_cal ; 0x1fff6074
        0x1fff36ee:    2000        .       MOVS     r0,#0
        0x1fff36f0:    f001ff88    ....    BL       osal_search_active_task ; 0x1fff5604
        0x1fff36f4:    2800        .(      CMP      r0,#0
        0x1fff36f6:    d008        ..      BEQ      0x1fff370a ; enterSleepProcess1 + 54
        0x1fff36f8:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff3714] = 0x1fff8000
        0x1fff36fa:    6801        .h      LDR      r1,[r0,#0]
        0x1fff36fc:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff36fe:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff3700:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff3702:    6541        Ae      STR      r1,[r0,#0x54]
        0x1fff3704:    4628        (F      MOV      r0,r5
        0x1fff3706:    f7fefa45    ..E.    BL       $Ven$TT$L$$enterSleepProcess0 ; 0x1fff1b94
        0x1fff370a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff370c:    1fff70d8    .p..    DCD    536834264
        0x1fff3710:    4000f040    @..@    DCD    1073803328
        0x1fff3714:    1fff8000    ....    DCD    536838144
    $t
    i.finidv
    finidv
        0x1fff3718:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff371a:    b08a        ..      SUB      sp,sp,#0x28
        0x1fff371c:    2400        .$      MOVS     r4,#0
        0x1fff371e:    4d1e        .M      LDR      r5,[pc,#120] ; [0x1fff3798] = 0x1fff7141
        0x1fff3720:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff3722:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff3724:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff3726:    2801        .(      CMP      r0,#1
        0x1fff3728:    d006        ..      BEQ      0x1fff3738 ; finidv + 32
        0x1fff372a:    a904        ..      ADD      r1,sp,#0x10
        0x1fff372c:    2001        .       MOVS     r0,#1
        0x1fff372e:    f7fef9ef    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff1b10
        0x1fff3732:    2800        .(      CMP      r0,#0
        0x1fff3734:    d002        ..      BEQ      0x1fff373c ; finidv + 36
        0x1fff3736:    2000        .       MOVS     r0,#0
        0x1fff3738:    b00a        ..      ADD      sp,sp,#0x28
        0x1fff373a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff373c:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff373e:    9000        ..      STR      r0,[sp,#0]
        0x1fff3740:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff3742:    9001        ..      STR      r0,[sp,#4]
        0x1fff3744:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff379c] = 0x11002900
        0x1fff3746:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3748:    9102        ..      STR      r1,[sp,#8]
        0x1fff374a:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff374c:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff379c] = 0x11002900
        0x1fff374e:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff3750:    aa06        ..      ADD      r2,sp,#0x18
        0x1fff3752:    3110        .1      ADDS     r1,r1,#0x10
        0x1fff3754:    4668        hF      MOV      r0,sp
        0x1fff3756:    f7fefa23    ..#.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x1fff1ba0
        0x1fff375a:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff379c] = 0x11002900
        0x1fff375c:    2210        ."      MOVS     r2,#0x10
        0x1fff375e:    3620         6      ADDS     r6,r6,#0x20
        0x1fff3760:    4631        1F      MOV      r1,r6
        0x1fff3762:    a806        ..      ADD      r0,sp,#0x18
        0x1fff3764:    f7fef9aa    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1abc
        0x1fff3768:    2800        .(      CMP      r0,#0
        0x1fff376a:    d011        ..      BEQ      0x1fff3790 ; finidv + 120
        0x1fff376c:    2001        .       MOVS     r0,#1
        0x1fff376e:    7028        (p      STRB     r0,[r5,#0]
        0x1fff3770:    4a0b        .J      LDR      r2,[pc,#44] ; [0x1fff37a0] = 0x1fff8150
        0x1fff3772:    4631        1F      MOV      r1,r6
        0x1fff3774:    4668        hF      MOV      r0,sp
        0x1fff3776:    f7fefa13    ....    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x1fff1ba0
        0x1fff377a:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff377c:    2000        .       MOVS     r0,#0
        0x1fff377e:    4669        iF      MOV      r1,sp
        0x1fff3780:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff3782:    0082        ..      LSLS     r2,r0,#2
        0x1fff3784:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3786:    508c        .P      STR      r4,[r1,r2]
        0x1fff3788:    2804        .(      CMP      r0,#4
        0x1fff378a:    dbfa        ..      BLT      0x1fff3782 ; finidv + 106
        0x1fff378c:    2001        .       MOVS     r0,#1
        0x1fff378e:    e7d3        ..      B        0x1fff3738 ; finidv + 32
        0x1fff3790:    20ff        .       MOVS     r0,#0xff
        0x1fff3792:    7028        (p      STRB     r0,[r5,#0]
        0x1fff3794:    e7cf        ..      B        0x1fff3736 ; finidv + 30
    $d
        0x1fff3796:    0000        ..      DCW    0
        0x1fff3798:    1fff7141    Aq..    DCD    536834369
        0x1fff379c:    11002900    .)..    DCD    285223168
        0x1fff37a0:    1fff8150    P...    DCD    536838480
    $t
    i.global_config_hclk_related
    global_config_hclk_related
        0x1fff37a4:    b510        ..      PUSH     {r4,lr}
        0x1fff37a6:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff3830] = 0x1fff0a4a
        0x1fff37a8:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff37aa:    4922        "I      LDR      r1,[pc,#136] ; [0x1fff3834] = 0x1fff70d8
        0x1fff37ac:    2210        ."      MOVS     r2,#0x10
        0x1fff37ae:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff37b0:    2b02        .+      CMP      r3,#2
        0x1fff37b2:    d008        ..      BEQ      0x1fff37c6 ; global_config_hclk_related + 34
        0x1fff37b4:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff37b6:    2b01        .+      CMP      r3,#1
        0x1fff37b8:    d005        ..      BEQ      0x1fff37c6 ; global_config_hclk_related + 34
        0x1fff37ba:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff37bc:    2b03        .+      CMP      r3,#3
        0x1fff37be:    d002        ..      BEQ      0x1fff37c6 ; global_config_hclk_related + 34
        0x1fff37c0:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff37c2:    2b04        .+      CMP      r3,#4
        0x1fff37c4:    d100        ..      BNE      0x1fff37c8 ; global_config_hclk_related + 36
        0x1fff37c6:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff37c8:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37ca:    230e        .#      MOVS     r3,#0xe
        0x1fff37cc:    2c02        .,      CMP      r4,#2
        0x1fff37ce:    d009        ..      BEQ      0x1fff37e4 ; global_config_hclk_related + 64
        0x1fff37d0:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37d2:    2c01        .,      CMP      r4,#1
        0x1fff37d4:    d008        ..      BEQ      0x1fff37e8 ; global_config_hclk_related + 68
        0x1fff37d6:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37d8:    2c03        .,      CMP      r4,#3
        0x1fff37da:    d007        ..      BEQ      0x1fff37ec ; global_config_hclk_related + 72
        0x1fff37dc:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37de:    2c04        .,      CMP      r4,#4
        0x1fff37e0:    d006        ..      BEQ      0x1fff37f0 ; global_config_hclk_related + 76
        0x1fff37e2:    e007        ..      B        0x1fff37f4 ; global_config_hclk_related + 80
        0x1fff37e4:    241b        .$      MOVS     r4,#0x1b
        0x1fff37e6:    e004        ..      B        0x1fff37f2 ; global_config_hclk_related + 78
        0x1fff37e8:    2412        .$      MOVS     r4,#0x12
        0x1fff37ea:    e002        ..      B        0x1fff37f2 ; global_config_hclk_related + 78
        0x1fff37ec:    604b        K`      STR      r3,[r1,#4]
        0x1fff37ee:    e001        ..      B        0x1fff37f4 ; global_config_hclk_related + 80
        0x1fff37f0:    240c        .$      MOVS     r4,#0xc
        0x1fff37f2:    604c        L`      STR      r4,[r1,#4]
        0x1fff37f4:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37f6:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff3834] = 0x1fff70d8
        0x1fff37f8:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff37fa:    3180        .1      ADDS     r1,r1,#0x80
        0x1fff37fc:    2c02        .,      CMP      r4,#2
        0x1fff37fe:    d00b        ..      BEQ      0x1fff3818 ; global_config_hclk_related + 116
        0x1fff3800:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff3802:    2c01        .,      CMP      r4,#1
        0x1fff3804:    d00c        ..      BEQ      0x1fff3820 ; global_config_hclk_related + 124
        0x1fff3806:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff3808:    2c03        .,      CMP      r4,#3
        0x1fff380a:    d00e        ..      BEQ      0x1fff382a ; global_config_hclk_related + 134
        0x1fff380c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff380e:    2804        .(      CMP      r0,#4
        0x1fff3810:    d101        ..      BNE      0x1fff3816 ; global_config_hclk_related + 114
        0x1fff3812:    61cb        .a      STR      r3,[r1,#0x1c]
        0x1fff3814:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff3816:    bd10        ..      POP      {r4,pc}
        0x1fff3818:    201f        .       MOVS     r0,#0x1f
        0x1fff381a:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff381c:    2021        !       MOVS     r0,#0x21
        0x1fff381e:    e002        ..      B        0x1fff3826 ; global_config_hclk_related + 130
        0x1fff3820:    2014        .       MOVS     r0,#0x14
        0x1fff3822:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff3824:    2018        .       MOVS     r0,#0x18
        0x1fff3826:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff3828:    bd10        ..      POP      {r4,pc}
        0x1fff382a:    2013        .       MOVS     r0,#0x13
        0x1fff382c:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff382e:    e7fa        ..      B        0x1fff3826 ; global_config_hclk_related + 130
    $d
        0x1fff3830:    1fff0a4a    J...    DCD    536808010
        0x1fff3834:    1fff70d8    .p..    DCD    536834264
    $t
    i.hal_GPIO_IRQHandler
    hal_GPIO_IRQHandler
    __tagsym$$used
        0x1fff3838:    b510        ..      PUSH     {r4,lr}
        0x1fff383a:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff384c] = 0x40008000
        0x1fff383c:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff383e:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff384c] = 0x40008000
        0x1fff3840:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff3842:    6810        .h      LDR      r0,[r2,#0]
        0x1fff3844:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff3846:    f000fb9d    ....    BL       hal_gpioin_event ; 0x1fff3f84
        0x1fff384a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff384c:    40008000    ...@    DCD    1073774592
    $t
    i.hal_TIMER5_IRQHandler
    hal_TIMER5_IRQHandler
    __tagsym$$used
        0x1fff3850:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff386c] = 0x40001040
        0x1fff3852:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff3854:    07c0        ..      LSLS     r0,r0,#31
        0x1fff3856:    d008        ..      BEQ      0x1fff386a ; hal_TIMER5_IRQHandler + 26
        0x1fff3858:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff386c] = 0x40001040
        0x1fff385a:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff385c:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff385e:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3870] = 0x1fff709c
        0x1fff3860:    6801        .h      LDR      r1,[r0,#0]
        0x1fff3862:    2900        .)      CMP      r1,#0
        0x1fff3864:    d001        ..      BEQ      0x1fff386a ; hal_TIMER5_IRQHandler + 26
        0x1fff3866:    2005        .       MOVS     r0,#5
        0x1fff3868:    4708        .G      BX       r1
        0x1fff386a:    4770        pG      BX       lr
    $d
        0x1fff386c:    40001040    @..@    DCD    1073745984
        0x1fff3870:    1fff709c    .p..    DCD    536834204
    $t
    i.hal_TIMER6_IRQHandler
    hal_TIMER6_IRQHandler
    __tagsym$$used
        0x1fff3874:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff3890] = 0x40001040
        0x1fff3876:    6b40        @k      LDR      r0,[r0,#0x34]
        0x1fff3878:    07c0        ..      LSLS     r0,r0,#31
        0x1fff387a:    d008        ..      BEQ      0x1fff388e ; hal_TIMER6_IRQHandler + 26
        0x1fff387c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3890] = 0x40001040
        0x1fff387e:    3024        $0      ADDS     r0,r0,#0x24
        0x1fff3880:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3882:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3894] = 0x1fff709c
        0x1fff3884:    6801        .h      LDR      r1,[r0,#0]
        0x1fff3886:    2900        .)      CMP      r1,#0
        0x1fff3888:    d001        ..      BEQ      0x1fff388e ; hal_TIMER6_IRQHandler + 26
        0x1fff388a:    2006        .       MOVS     r0,#6
        0x1fff388c:    4708        .G      BX       r1
        0x1fff388e:    4770        pG      BX       lr
    $d
        0x1fff3890:    40001040    @..@    DCD    1073745984
        0x1fff3894:    1fff709c    .p..    DCD    536834204
    $t
    i.hal_UART0_IRQHandler
    hal_UART0_IRQHandler
    __tagsym$$used
        0x1fff3898:    b510        ..      PUSH     {r4,lr}
        0x1fff389a:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff38d8] = 0x40004000
        0x1fff389c:    6880        .h      LDR      r0,[r0,#8]
        0x1fff389e:    0700        ..      LSLS     r0,r0,#28
        0x1fff38a0:    0f00        ..      LSRS     r0,r0,#28
        0x1fff38a2:    2806        .(      CMP      r0,#6
        0x1fff38a4:    d008        ..      BEQ      0x1fff38b8 ; hal_UART0_IRQHandler + 32
        0x1fff38a6:    dc08        ..      BGT      0x1fff38ba ; hal_UART0_IRQHandler + 34
        0x1fff38a8:    2802        .(      CMP      r0,#2
        0x1fff38aa:    d00c        ..      BEQ      0x1fff38c6 ; hal_UART0_IRQHandler + 46
        0x1fff38ac:    2804        .(      CMP      r0,#4
        0x1fff38ae:    d103        ..      BNE      0x1fff38b8 ; hal_UART0_IRQHandler + 32
        0x1fff38b0:    2101        .!      MOVS     r1,#1
        0x1fff38b2:    2000        .       MOVS     r0,#0
        0x1fff38b4:    f7fefb1e    ....    BL       irq_rx_handler ; 0x1fff1ef4
        0x1fff38b8:    bd10        ..      POP      {r4,pc}
        0x1fff38ba:    2807        .(      CMP      r0,#7
        0x1fff38bc:    d007        ..      BEQ      0x1fff38ce ; hal_UART0_IRQHandler + 54
        0x1fff38be:    280c        .(      CMP      r0,#0xc
        0x1fff38c0:    d1fa        ..      BNE      0x1fff38b8 ; hal_UART0_IRQHandler + 32
        0x1fff38c2:    2102        .!      MOVS     r1,#2
        0x1fff38c4:    e7f5        ..      B        0x1fff38b2 ; hal_UART0_IRQHandler + 26
        0x1fff38c6:    2000        .       MOVS     r0,#0
        0x1fff38c8:    f7fefb3a    ..:.    BL       irq_tx_empty_handler ; 0x1fff1f40
        0x1fff38cc:    bd10        ..      POP      {r4,pc}
        0x1fff38ce:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff38d8] = 0x40004000
        0x1fff38d0:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff38d2:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff38d4:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff38d6:    0000        ..      DCW    0
        0x1fff38d8:    40004000    .@.@    DCD    1073758208
    $t
    i.hal_UART1_IRQHandler
    hal_UART1_IRQHandler
    __tagsym$$used
        0x1fff38dc:    b510        ..      PUSH     {r4,lr}
        0x1fff38de:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff391c] = 0x40009000
        0x1fff38e0:    6880        .h      LDR      r0,[r0,#8]
        0x1fff38e2:    0700        ..      LSLS     r0,r0,#28
        0x1fff38e4:    0f00        ..      LSRS     r0,r0,#28
        0x1fff38e6:    2806        .(      CMP      r0,#6
        0x1fff38e8:    d008        ..      BEQ      0x1fff38fc ; hal_UART1_IRQHandler + 32
        0x1fff38ea:    dc08        ..      BGT      0x1fff38fe ; hal_UART1_IRQHandler + 34
        0x1fff38ec:    2802        .(      CMP      r0,#2
        0x1fff38ee:    d00c        ..      BEQ      0x1fff390a ; hal_UART1_IRQHandler + 46
        0x1fff38f0:    2804        .(      CMP      r0,#4
        0x1fff38f2:    d103        ..      BNE      0x1fff38fc ; hal_UART1_IRQHandler + 32
        0x1fff38f4:    2101        .!      MOVS     r1,#1
        0x1fff38f6:    2001        .       MOVS     r0,#1
        0x1fff38f8:    f7fefafc    ....    BL       irq_rx_handler ; 0x1fff1ef4
        0x1fff38fc:    bd10        ..      POP      {r4,pc}
        0x1fff38fe:    2807        .(      CMP      r0,#7
        0x1fff3900:    d007        ..      BEQ      0x1fff3912 ; hal_UART1_IRQHandler + 54
        0x1fff3902:    280c        .(      CMP      r0,#0xc
        0x1fff3904:    d1fa        ..      BNE      0x1fff38fc ; hal_UART1_IRQHandler + 32
        0x1fff3906:    2102        .!      MOVS     r1,#2
        0x1fff3908:    e7f5        ..      B        0x1fff38f6 ; hal_UART1_IRQHandler + 26
        0x1fff390a:    2001        .       MOVS     r0,#1
        0x1fff390c:    f7fefb18    ....    BL       irq_tx_empty_handler ; 0x1fff1f40
        0x1fff3910:    bd10        ..      POP      {r4,pc}
        0x1fff3912:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff391c] = 0x40009000
        0x1fff3914:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff3916:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff3918:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff391a:    0000        ..      DCW    0
        0x1fff391c:    40009000    ...@    DCD    1073778688
    $t
    i.hal_cache_tag_flush
    hal_cache_tag_flush
        0x1fff3920:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff3922:    f7fdffed    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff3926:    2201        ."      MOVS     r2,#1
        0x1fff3928:    0792        ..      LSLS     r2,r2,#30
        0x1fff392a:    6a93        .j      LDR      r3,[r2,#0x28]
        0x1fff392c:    2408        .$      MOVS     r4,#8
        0x1fff392e:    9400        ..      STR      r4,[sp,#0]
        0x1fff3930:    2b00        .+      CMP      r3,#0
        0x1fff3932:    d101        ..      BNE      0x1fff3938 ; hal_cache_tag_flush + 24
        0x1fff3934:    2001        .       MOVS     r0,#1
        0x1fff3936:    6290        .b      STR      r0,[r2,#0x28]
        0x1fff3938:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3964] = 0x4000c000
        0x1fff393a:    2102        .!      MOVS     r1,#2
        0x1fff393c:    6001        .`      STR      r1,[r0,#0]
        0x1fff393e:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3940:    1e4d        M.      SUBS     r5,r1,#1
        0x1fff3942:    9500        ..      STR      r5,[sp,#0]
        0x1fff3944:    d2fb        ..      BCS      0x1fff393e ; hal_cache_tag_flush + 30
        0x1fff3946:    2103        .!      MOVS     r1,#3
        0x1fff3948:    6001        .`      STR      r1,[r0,#0]
        0x1fff394a:    9400        ..      STR      r4,[sp,#0]
        0x1fff394c:    1e64        d.      SUBS     r4,r4,#1
        0x1fff394e:    9400        ..      STR      r4,[sp,#0]
        0x1fff3950:    d2fc        ..      BCS      0x1fff394c ; hal_cache_tag_flush + 44
        0x1fff3952:    2100        .!      MOVS     r1,#0
        0x1fff3954:    6001        .`      STR      r1,[r0,#0]
        0x1fff3956:    2b00        .+      CMP      r3,#0
        0x1fff3958:    d100        ..      BNE      0x1fff395c ; hal_cache_tag_flush + 60
        0x1fff395a:    6291        .b      STR      r1,[r2,#0x28]
        0x1fff395c:    f7fdffdc    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff3960:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x1fff3962:    0000        ..      DCW    0
        0x1fff3964:    4000c000    ...@    DCD    1073790976
    $t
    i.hal_clk_gate_disable
    hal_clk_gate_disable
        0x1fff3968:    2101        .!      MOVS     r1,#1
        0x1fff396a:    0789        ..      LSLS     r1,r1,#30
        0x1fff396c:    2201        ."      MOVS     r2,#1
        0x1fff396e:    2820         (      CMP      r0,#0x20
        0x1fff3970:    d204        ..      BCS      0x1fff397c ; hal_clk_gate_disable + 20
        0x1fff3972:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3974:    4082        .@      LSLS     r2,r2,r0
        0x1fff3976:    4393        .C      BICS     r3,r3,r2
        0x1fff3978:    608b        .`      STR      r3,[r1,#8]
        0x1fff397a:    4770        pG      BX       lr
        0x1fff397c:    2840        @(      CMP      r0,#0x40
        0x1fff397e:    d205        ..      BCS      0x1fff398c ; hal_clk_gate_disable + 36
        0x1fff3980:    694b        Ki      LDR      r3,[r1,#0x14]
        0x1fff3982:    3820         8      SUBS     r0,r0,#0x20
        0x1fff3984:    4082        .@      LSLS     r2,r2,r0
        0x1fff3986:    4393        .C      BICS     r3,r3,r2
        0x1fff3988:    614b        Ka      STR      r3,[r1,#0x14]
        0x1fff398a:    4770        pG      BX       lr
        0x1fff398c:    2860        `(      CMP      r0,#0x60
        0x1fff398e:    d2fc        ..      BCS      0x1fff398a ; hal_clk_gate_disable + 34
        0x1fff3990:    6a0b        .j      LDR      r3,[r1,#0x20]
        0x1fff3992:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff3994:    4082        .@      LSLS     r2,r2,r0
        0x1fff3996:    4393        .C      BICS     r3,r3,r2
        0x1fff3998:    620b        .b      STR      r3,[r1,#0x20]
        0x1fff399a:    4770        pG      BX       lr
    i.hal_clk_gate_enable
    hal_clk_gate_enable
        0x1fff399c:    2201        ."      MOVS     r2,#1
        0x1fff399e:    0792        ..      LSLS     r2,r2,#30
        0x1fff39a0:    2101        .!      MOVS     r1,#1
        0x1fff39a2:    2820         (      CMP      r0,#0x20
        0x1fff39a4:    d204        ..      BCS      0x1fff39b0 ; hal_clk_gate_enable + 20
        0x1fff39a6:    6893        .h      LDR      r3,[r2,#8]
        0x1fff39a8:    4081        .@      LSLS     r1,r1,r0
        0x1fff39aa:    430b        .C      ORRS     r3,r3,r1
        0x1fff39ac:    6093        .`      STR      r3,[r2,#8]
        0x1fff39ae:    4770        pG      BX       lr
        0x1fff39b0:    2840        @(      CMP      r0,#0x40
        0x1fff39b2:    d205        ..      BCS      0x1fff39c0 ; hal_clk_gate_enable + 36
        0x1fff39b4:    6953        Si      LDR      r3,[r2,#0x14]
        0x1fff39b6:    3820         8      SUBS     r0,r0,#0x20
        0x1fff39b8:    4081        .@      LSLS     r1,r1,r0
        0x1fff39ba:    430b        .C      ORRS     r3,r3,r1
        0x1fff39bc:    6153        Sa      STR      r3,[r2,#0x14]
        0x1fff39be:    4770        pG      BX       lr
        0x1fff39c0:    2860        `(      CMP      r0,#0x60
        0x1fff39c2:    d2fc        ..      BCS      0x1fff39be ; hal_clk_gate_enable + 34
        0x1fff39c4:    6a13        .j      LDR      r3,[r2,#0x20]
        0x1fff39c6:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff39c8:    4081        .@      LSLS     r1,r1,r0
        0x1fff39ca:    430b        .C      ORRS     r3,r3,r1
        0x1fff39cc:    6213        .b      STR      r3,[r2,#0x20]
        0x1fff39ce:    4770        pG      BX       lr
    i.hal_clk_reset
    hal_clk_reset
        0x1fff39d0:    2101        .!      MOVS     r1,#1
        0x1fff39d2:    b510        ..      PUSH     {r4,lr}
        0x1fff39d4:    0789        ..      LSLS     r1,r1,#30
        0x1fff39d6:    2201        ."      MOVS     r2,#1
        0x1fff39d8:    2820         (      CMP      r0,#0x20
        0x1fff39da:    d213        ..      BCS      0x1fff3a04 ; hal_clk_reset + 52
        0x1fff39dc:    4603        .F      MOV      r3,r0
        0x1fff39de:    3b15        .;      SUBS     r3,r3,#0x15
        0x1fff39e0:    2b01        .+      CMP      r3,#1
        0x1fff39e2:    d807        ..      BHI      0x1fff39f4 ; hal_clk_reset + 36
        0x1fff39e4:    680a        .h      LDR      r2,[r1,#0]
        0x1fff39e6:    2020                MOVS     r0,#0x20
        0x1fff39e8:    4382        .C      BICS     r2,r2,r0
        0x1fff39ea:    600a        .`      STR      r2,[r1,#0]
        0x1fff39ec:    680a        .h      LDR      r2,[r1,#0]
        0x1fff39ee:    4302        .C      ORRS     r2,r2,r0
        0x1fff39f0:    600a        .`      STR      r2,[r1,#0]
        0x1fff39f2:    bd10        ..      POP      {r4,pc}
        0x1fff39f4:    680b        .h      LDR      r3,[r1,#0]
        0x1fff39f6:    4082        .@      LSLS     r2,r2,r0
        0x1fff39f8:    4393        .C      BICS     r3,r3,r2
        0x1fff39fa:    600b        .`      STR      r3,[r1,#0]
        0x1fff39fc:    6808        .h      LDR      r0,[r1,#0]
        0x1fff39fe:    4310        .C      ORRS     r0,r0,r2
        0x1fff3a00:    6008        .`      STR      r0,[r1,#0]
        0x1fff3a02:    bd10        ..      POP      {r4,pc}
        0x1fff3a04:    2840        @(      CMP      r0,#0x40
        0x1fff3a06:    d214        ..      BCS      0x1fff3a32 ; hal_clk_reset + 98
        0x1fff3a08:    4603        .F      MOV      r3,r0
        0x1fff3a0a:    3b35        5;      SUBS     r3,r3,#0x35
        0x1fff3a0c:    2b03        .+      CMP      r3,#3
        0x1fff3a0e:    d807        ..      BHI      0x1fff3a20 ; hal_clk_reset + 80
        0x1fff3a10:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff3a12:    2010        .       MOVS     r0,#0x10
        0x1fff3a14:    4382        .C      BICS     r2,r2,r0
        0x1fff3a16:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff3a18:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff3a1a:    4302        .C      ORRS     r2,r2,r0
        0x1fff3a1c:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff3a1e:    bd10        ..      POP      {r4,pc}
        0x1fff3a20:    68cb        .h      LDR      r3,[r1,#0xc]
        0x1fff3a22:    3820         8      SUBS     r0,r0,#0x20
        0x1fff3a24:    4082        .@      LSLS     r2,r2,r0
        0x1fff3a26:    4393        .C      BICS     r3,r3,r2
        0x1fff3a28:    60cb        .`      STR      r3,[r1,#0xc]
        0x1fff3a2a:    68c8        .h      LDR      r0,[r1,#0xc]
        0x1fff3a2c:    4310        .C      ORRS     r0,r0,r2
        0x1fff3a2e:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff3a30:    bd10        ..      POP      {r4,pc}
        0x1fff3a32:    2860        `(      CMP      r0,#0x60
        0x1fff3a34:    d2fc        ..      BCS      0x1fff3a30 ; hal_clk_reset + 96
        0x1fff3a36:    6a4b        Kj      LDR      r3,[r1,#0x24]
        0x1fff3a38:    2442        B$      MOVS     r4,#0x42
        0x1fff3a3a:    1a20         .      SUBS     r0,r4,r0
        0x1fff3a3c:    4082        .@      LSLS     r2,r2,r0
        0x1fff3a3e:    4393        .C      BICS     r3,r3,r2
        0x1fff3a40:    624b        Kb      STR      r3,[r1,#0x24]
        0x1fff3a42:    6a48        Hj      LDR      r0,[r1,#0x24]
        0x1fff3a44:    4310        .C      ORRS     r0,r0,r2
        0x1fff3a46:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff3a48:    bd10        ..      POP      {r4,pc}
        0x1fff3a4a:    0000        ..      MOVS     r0,r0
    i.hal_gpio_cfg_analog_io
    hal_gpio_cfg_analog_io
        0x1fff3a4c:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff3a4e:    1fc2        ..      SUBS     r2,r0,#7
        0x1fff3a50:    2a0a        .*      CMP      r2,#0xa
        0x1fff3a52:    d301        ..      BCC      0x1fff3a58 ; hal_gpio_cfg_analog_io + 12
        0x1fff3a54:    2006        .       MOVS     r0,#6
        0x1fff3a56:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3a58:    2816        .(      CMP      r0,#0x16
        0x1fff3a5a:    d901        ..      BLS      0x1fff3a60 ; hal_gpio_cfg_analog_io + 20
        0x1fff3a5c:    2005        .       MOVS     r0,#5
        0x1fff3a5e:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3a60:    2401        .$      MOVS     r4,#1
        0x1fff3a62:    4d07        .M      LDR      r5,[pc,#28] ; [0x1fff3a80] = 0x40003800
        0x1fff3a64:    4094        .@      LSLS     r4,r4,r2
        0x1fff3a66:    2900        .)      CMP      r1,#0
        0x1fff3a68:    d005        ..      BEQ      0x1fff3a76 ; hal_gpio_cfg_analog_io + 42
        0x1fff3a6a:    2100        .!      MOVS     r1,#0
        0x1fff3a6c:    f000f8d0    ....    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff3a70:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3a72:    4320         C      ORRS     r0,r0,r4
        0x1fff3a74:    e001        ..      B        0x1fff3a7a ; hal_gpio_cfg_analog_io + 46
        0x1fff3a76:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3a78:    43a0        .C      BICS     r0,r0,r4
        0x1fff3a7a:    6028        (`      STR      r0,[r5,#0]
        0x1fff3a7c:    2000        .       MOVS     r0,#0
        0x1fff3a7e:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff3a80:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_fmux
    hal_gpio_fmux
        0x1fff3a84:    2816        .(      CMP      r0,#0x16
        0x1fff3a86:    d809        ..      BHI      0x1fff3a9c ; hal_gpio_fmux + 24
        0x1fff3a88:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff3aa0] = 0x40003800
        0x1fff3a8a:    2301        .#      MOVS     r3,#1
        0x1fff3a8c:    4083        .@      LSLS     r3,r3,r0
        0x1fff3a8e:    68d0        .h      LDR      r0,[r2,#0xc]
        0x1fff3a90:    2900        .)      CMP      r1,#0
        0x1fff3a92:    d001        ..      BEQ      0x1fff3a98 ; hal_gpio_fmux + 20
        0x1fff3a94:    4318        .C      ORRS     r0,r0,r3
        0x1fff3a96:    e000        ..      B        0x1fff3a9a ; hal_gpio_fmux + 22
        0x1fff3a98:    4398        .C      BICS     r0,r0,r3
        0x1fff3a9a:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff3a9c:    4770        pG      BX       lr
    $d
        0x1fff3a9e:    0000        ..      DCW    0
        0x1fff3aa0:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_fmux_set
    hal_gpio_fmux_set
        0x1fff3aa4:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff3aa6:    4606        .F      MOV      r6,r0
        0x1fff3aa8:    28ff        .(      CMP      r0,#0xff
        0x1fff3aaa:    d019        ..      BEQ      0x1fff3ae0 ; hal_gpio_fmux_set + 60
        0x1fff3aac:    07b0        ..      LSLS     r0,r6,#30
        0x1fff3aae:    0ec4        ..      LSRS     r4,r0,#27
        0x1fff3ab0:    08b7        ..      LSRS     r7,r6,#2
        0x1fff3ab2:    1d65        e.      ADDS     r5,r4,#5
        0x1fff3ab4:    4630        0F      MOV      r0,r6
        0x1fff3ab6:    f000fa0b    ....    BL       hal_gpioin_disable ; 0x1fff3ed0
        0x1fff3aba:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3ae4] = 0x40003800
        0x1fff3abc:    00b9        ..      LSLS     r1,r7,#2
        0x1fff3abe:    1809        ..      ADDS     r1,r1,r0
        0x1fff3ac0:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff3ac2:    1b2b        +.      SUBS     r3,r5,r4
        0x1fff3ac4:    2201        ."      MOVS     r2,#1
        0x1fff3ac6:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff3ac8:    409a        .@      LSLS     r2,r2,r3
        0x1fff3aca:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3acc:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3ace:    4390        .C      BICS     r0,r0,r2
        0x1fff3ad0:    9a01        ..      LDR      r2,[sp,#4]
        0x1fff3ad2:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3ad4:    4310        .C      ORRS     r0,r0,r2
        0x1fff3ad6:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff3ad8:    2101        .!      MOVS     r1,#1
        0x1fff3ada:    4630        0F      MOV      r0,r6
        0x1fff3adc:    f7ffffd2    ....    BL       hal_gpio_fmux ; 0x1fff3a84
        0x1fff3ae0:    bdfc        ..      POP      {r2-r7,pc}
    $d
        0x1fff3ae2:    0000        ..      DCW    0
        0x1fff3ae4:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_init
    hal_gpio_init
        0x1fff3ae8:    b510        ..      PUSH     {r4,lr}
        0x1fff3aea:    4c11        .L      LDR      r4,[pc,#68] ; [0x1fff3b30] = 0x1fff7c10
        0x1fff3aec:    7820         x      LDRB     r0,[r4,#0]
        0x1fff3aee:    2800        .(      CMP      r0,#0
        0x1fff3af0:    d001        ..      BEQ      0x1fff3af6 ; hal_gpio_init + 14
        0x1fff3af2:    2007        .       MOVS     r0,#7
        0x1fff3af4:    bd10        ..      POP      {r4,pc}
        0x1fff3af6:    21ff        .!      MOVS     r1,#0xff
        0x1fff3af8:    3131        11      ADDS     r1,r1,#0x31
        0x1fff3afa:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff3b30] = 0x1fff7c10
        0x1fff3afc:    f7fef856    ..V.    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1bac
        0x1fff3b00:    2001        .       MOVS     r0,#1
        0x1fff3b02:    7020         p      STRB     r0,[r4,#0]
        0x1fff3b04:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff3b34] = 0x40008000
        0x1fff3b06:    2000        .       MOVS     r0,#0
        0x1fff3b08:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff3b0a:    6348        Hc      STR      r0,[r1,#0x34]
        0x1fff3b0c:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff3b38] = 0x4000f080
        0x1fff3b0e:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff3b10:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff3b12:    2102        .!      MOVS     r1,#2
        0x1fff3b14:    2010        .       MOVS     r0,#0x10
        0x1fff3b16:    f7fff8e7    ....    BL       __NVIC_SetPriority ; 0x1fff2ce8
        0x1fff3b1a:    2010        .       MOVS     r0,#0x10
        0x1fff3b1c:    f7fff8b6    ....    BL       __NVIC_EnableIRQ ; 0x1fff2c8c
        0x1fff3b20:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3b3c] = 0x1fff3d95
        0x1fff3b22:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3b40] = 0x1fff3cfd
        0x1fff3b24:    200d        .       MOVS     r0,#0xd
        0x1fff3b26:    f000fb3b    ..;.    BL       hal_pwrmgr_register ; 0x1fff41a0
        0x1fff3b2a:    2000        .       MOVS     r0,#0
        0x1fff3b2c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3b2e:    0000        ..      DCW    0
        0x1fff3b30:    1fff7c10    .|..    DCD    536837136
        0x1fff3b34:    40008000    ...@    DCD    1073774592
        0x1fff3b38:    4000f080    ...@    DCD    1073803392
        0x1fff3b3c:    1fff3d95    .=..    DCD    536821141
        0x1fff3b40:    1fff3cfd    .<..    DCD    536820989
    $t
    i.hal_gpio_interrupt_enable
    hal_gpio_interrupt_enable
        0x1fff3b44:    b510        ..      PUSH     {r4,lr}
        0x1fff3b46:    2816        .(      CMP      r0,#0x16
        0x1fff3b48:    d901        ..      BLS      0x1fff3b4e ; hal_gpio_interrupt_enable + 10
        0x1fff3b4a:    2005        .       MOVS     r0,#5
        0x1fff3b4c:    bd10        ..      POP      {r4,pc}
        0x1fff3b4e:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff3b80] = 0x40008000
        0x1fff3b50:    6b9c        .k      LDR      r4,[r3,#0x38]
        0x1fff3b52:    2201        ."      MOVS     r2,#1
        0x1fff3b54:    4082        .@      LSLS     r2,r2,r0
        0x1fff3b56:    4610        .F      MOV      r0,r2
        0x1fff3b58:    4320         C      ORRS     r0,r0,r4
        0x1fff3b5a:    6398        .c      STR      r0,[r3,#0x38]
        0x1fff3b5c:    6b58        Xk      LDR      r0,[r3,#0x34]
        0x1fff3b5e:    4390        .C      BICS     r0,r0,r2
        0x1fff3b60:    6358        Xc      STR      r0,[r3,#0x34]
        0x1fff3b62:    6bdc        .k      LDR      r4,[r3,#0x3c]
        0x1fff3b64:    2901        .)      CMP      r1,#1
        0x1fff3b66:    d007        ..      BEQ      0x1fff3b78 ; hal_gpio_interrupt_enable + 52
        0x1fff3b68:    4620         F      MOV      r0,r4
        0x1fff3b6a:    4390        .C      BICS     r0,r0,r2
        0x1fff3b6c:    63d8        .c      STR      r0,[r3,#0x3c]
        0x1fff3b6e:    6b18        .k      LDR      r0,[r3,#0x30]
        0x1fff3b70:    4302        .C      ORRS     r2,r2,r0
        0x1fff3b72:    631a        .c      STR      r2,[r3,#0x30]
        0x1fff3b74:    2000        .       MOVS     r0,#0
        0x1fff3b76:    bd10        ..      POP      {r4,pc}
        0x1fff3b78:    4610        .F      MOV      r0,r2
        0x1fff3b7a:    4320         C      ORRS     r0,r0,r4
        0x1fff3b7c:    e7f6        ..      B        0x1fff3b6c ; hal_gpio_interrupt_enable + 40
    $d
        0x1fff3b7e:    0000        ..      DCW    0
        0x1fff3b80:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_pin2pin3_control
    hal_gpio_pin2pin3_control
        0x1fff3b84:    4b05        .K      LDR      r3,[pc,#20] ; [0x1fff3b9c] = 0x40003800
        0x1fff3b86:    2201        ."      MOVS     r2,#1
        0x1fff3b88:    1e80        ..      SUBS     r0,r0,#2
        0x1fff3b8a:    4082        .@      LSLS     r2,r2,r0
        0x1fff3b8c:    6958        Xi      LDR      r0,[r3,#0x14]
        0x1fff3b8e:    2900        .)      CMP      r1,#0
        0x1fff3b90:    d001        ..      BEQ      0x1fff3b96 ; hal_gpio_pin2pin3_control + 18
        0x1fff3b92:    4310        .C      ORRS     r0,r0,r2
        0x1fff3b94:    e000        ..      B        0x1fff3b98 ; hal_gpio_pin2pin3_control + 20
        0x1fff3b96:    4390        .C      BICS     r0,r0,r2
        0x1fff3b98:    6158        Xa      STR      r0,[r3,#0x14]
        0x1fff3b9a:    4770        pG      BX       lr
    $d
        0x1fff3b9c:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_pin_init
    hal_gpio_pin_init
        0x1fff3ba0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff3ba2:    460e        .F      MOV      r6,r1
        0x1fff3ba4:    4604        .F      MOV      r4,r0
        0x1fff3ba6:    2816        .(      CMP      r0,#0x16
        0x1fff3ba8:    d901        ..      BLS      0x1fff3bae ; hal_gpio_pin_init + 14
        0x1fff3baa:    2005        .       MOVS     r0,#5
        0x1fff3bac:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3bae:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff3c08] = 0x1fff7c10
        0x1fff3bb0:    2501        .%      MOVS     r5,#1
        0x1fff3bb2:    1907        ..      ADDS     r7,r0,r4
        0x1fff3bb4:    7879        yx      LDRB     r1,[r7,#1]
        0x1fff3bb6:    40a5        .@      LSLS     r5,r5,r4
        0x1fff3bb8:    2901        .)      CMP      r1,#1
        0x1fff3bba:    d104        ..      BNE      0x1fff3bc6 ; hal_gpio_pin_init + 38
        0x1fff3bbc:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff3bbe:    4228        (B      TST      r0,r5
        0x1fff3bc0:    d001        ..      BEQ      0x1fff3bc6 ; hal_gpio_pin_init + 38
        0x1fff3bc2:    2e00        ..      CMP      r6,#0
        0x1fff3bc4:    d008        ..      BEQ      0x1fff3bd8 ; hal_gpio_pin_init + 56
        0x1fff3bc6:    2100        .!      MOVS     r1,#0
        0x1fff3bc8:    4620         F      MOV      r0,r4
        0x1fff3bca:    f7ffff5b    ..[.    BL       hal_gpio_fmux ; 0x1fff3a84
        0x1fff3bce:    2c02        .,      CMP      r4,#2
        0x1fff3bd0:    d004        ..      BEQ      0x1fff3bdc ; hal_gpio_pin_init + 60
        0x1fff3bd2:    2c03        .,      CMP      r4,#3
        0x1fff3bd4:    d002        ..      BEQ      0x1fff3bdc ; hal_gpio_pin_init + 60
        0x1fff3bd6:    e005        ..      B        0x1fff3be4 ; hal_gpio_pin_init + 68
        0x1fff3bd8:    2006        .       MOVS     r0,#6
        0x1fff3bda:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3bdc:    2101        .!      MOVS     r1,#1
        0x1fff3bde:    4620         F      MOV      r0,r4
        0x1fff3be0:    f7ffffd0    ....    BL       hal_gpio_pin2pin3_control ; 0x1fff3b84
        0x1fff3be4:    2100        .!      MOVS     r1,#0
        0x1fff3be6:    4620         F      MOV      r0,r4
        0x1fff3be8:    f7ffff30    ..0.    BL       hal_gpio_cfg_analog_io ; 0x1fff3a4c
        0x1fff3bec:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff3c0c] = 0x40008000
        0x1fff3bee:    2e01        ..      CMP      r6,#1
        0x1fff3bf0:    d004        ..      BEQ      0x1fff3bfc ; hal_gpio_pin_init + 92
        0x1fff3bf2:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3bf4:    43a9        .C      BICS     r1,r1,r5
        0x1fff3bf6:    6041        A`      STR      r1,[r0,#4]
        0x1fff3bf8:    2000        .       MOVS     r0,#0
        0x1fff3bfa:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3bfc:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff3bfe:    2101        .!      MOVS     r1,#1
        0x1fff3c00:    432a        *C      ORRS     r2,r2,r5
        0x1fff3c02:    6042        B`      STR      r2,[r0,#4]
        0x1fff3c04:    7079        yp      STRB     r1,[r7,#1]
        0x1fff3c06:    e7f7        ..      B        0x1fff3bf8 ; hal_gpio_pin_init + 88
    $d
        0x1fff3c08:    1fff7c10    .|..    DCD    536837136
        0x1fff3c0c:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_pull_set
    hal_gpio_pull_set
        0x1fff3c10:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3c12:    2816        .(      CMP      r0,#0x16
        0x1fff3c14:    d816        ..      BHI      0x1fff3c44 ; hal_gpio_pull_set + 52
        0x1fff3c16:    0042        B.      LSLS     r2,r0,#1
        0x1fff3c18:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff3c5c] = 0x1fff6e93
        0x1fff3c1a:    1882        ..      ADDS     r2,r0,r2
        0x1fff3c1c:    5c9e        .\      LDRB     r6,[r3,r2]
        0x1fff3c1e:    18d2        ..      ADDS     r2,r2,r3
        0x1fff3c20:    7854        Tx      LDRB     r4,[r2,#1]
        0x1fff3c22:    7893        .x      LDRB     r3,[r2,#2]
        0x1fff3c24:    4d0e        .M      LDR      r5,[pc,#56] ; [0x1fff3c60] = 0x4000f000
        0x1fff3c26:    2201        ."      MOVS     r2,#1
        0x1fff3c28:    2813        .(      CMP      r0,#0x13
        0x1fff3c2a:    d20c        ..      BCS      0x1fff3c46 ; hal_gpio_pull_set + 54
        0x1fff3c2c:    00b0        ..      LSLS     r0,r6,#2
        0x1fff3c2e:    1945        E.      ADDS     r5,r0,r5
        0x1fff3c30:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff3c32:    1ae4        ..      SUBS     r4,r4,r3
        0x1fff3c34:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3c36:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3c38:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3c3a:    409a        .@      LSLS     r2,r2,r3
        0x1fff3c3c:    4390        .C      BICS     r0,r0,r2
        0x1fff3c3e:    4099        .@      LSLS     r1,r1,r3
        0x1fff3c40:    4308        .C      ORRS     r0,r0,r1
        0x1fff3c42:    60a8        .`      STR      r0,[r5,#8]
        0x1fff3c44:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3c46:    6968        hi      LDR      r0,[r5,#0x14]
        0x1fff3c48:    1ae4        ..      SUBS     r4,r4,r3
        0x1fff3c4a:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3c4c:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3c4e:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3c50:    409a        .@      LSLS     r2,r2,r3
        0x1fff3c52:    4390        .C      BICS     r0,r0,r2
        0x1fff3c54:    4099        .@      LSLS     r1,r1,r3
        0x1fff3c56:    4308        .C      ORRS     r0,r0,r1
        0x1fff3c58:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff3c5a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3c5c:    1fff6e93    .n..    DCD    536833683
        0x1fff3c60:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_gpio_read
    hal_gpio_read
        0x1fff3c64:    2816        .(      CMP      r0,#0x16
        0x1fff3c66:    d901        ..      BLS      0x1fff3c6c ; hal_gpio_read + 8
        0x1fff3c68:    2001        .       MOVS     r0,#1
        0x1fff3c6a:    4770        pG      BX       lr
        0x1fff3c6c:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3c8c] = 0x40008000
        0x1fff3c6e:    684a        Jh      LDR      r2,[r1,#4]
        0x1fff3c70:    2301        .#      MOVS     r3,#1
        0x1fff3c72:    4083        .@      LSLS     r3,r3,r0
        0x1fff3c74:    421a        .B      TST      r2,r3
        0x1fff3c76:    d001        ..      BEQ      0x1fff3c7c ; hal_gpio_read + 24
        0x1fff3c78:    6809        .h      LDR      r1,[r1,#0]
        0x1fff3c7a:    e002        ..      B        0x1fff3c82 ; hal_gpio_read + 30
        0x1fff3c7c:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff3c8c] = 0x40008000
        0x1fff3c7e:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff3c80:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff3c82:    40c1        .@      LSRS     r1,r1,r0
        0x1fff3c84:    07c8        ..      LSLS     r0,r1,#31
        0x1fff3c86:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff3c88:    4770        pG      BX       lr
    $d
        0x1fff3c8a:    0000        ..      DCW    0
        0x1fff3c8c:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_retention_enable
    hal_gpio_retention_enable
        0x1fff3c90:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3c92:    2816        .(      CMP      r0,#0x16
        0x1fff3c94:    d827        '.      BHI      0x1fff3ce6 ; hal_gpio_retention_enable + 86
        0x1fff3c96:    4c18        .L      LDR      r4,[pc,#96] ; [0x1fff3cf8] = 0x1fff6ed8
        0x1fff3c98:    0046        F.      LSLS     r6,r0,#1
        0x1fff3c9a:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3cf4] = 0x4000f000
        0x1fff3c9c:    1935        5.      ADDS     r5,r6,r4
        0x1fff3c9e:    2301        .#      MOVS     r3,#1
        0x1fff3ca0:    2900        .)      CMP      r1,#0
        0x1fff3ca2:    d012        ..      BEQ      0x1fff3cca ; hal_gpio_retention_enable + 58
        0x1fff3ca4:    2814        .(      CMP      r0,#0x14
        0x1fff3ca6:    d00b        ..      BEQ      0x1fff3cc0 ; hal_gpio_retention_enable + 48
        0x1fff3ca8:    2815        .(      CMP      r0,#0x15
        0x1fff3caa:    d009        ..      BEQ      0x1fff3cc0 ; hal_gpio_retention_enable + 48
        0x1fff3cac:    2816        .(      CMP      r0,#0x16
        0x1fff3cae:    d007        ..      BEQ      0x1fff3cc0 ; hal_gpio_retention_enable + 48
        0x1fff3cb0:    57a0        .W      LDRSB    r0,[r4,r6]
        0x1fff3cb2:    0080        ..      LSLS     r0,r0,#2
        0x1fff3cb4:    1880        ..      ADDS     r0,r0,r2
        0x1fff3cb6:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3cb8:    786a        jx      LDRB     r2,[r5,#1]
        0x1fff3cba:    4093        .@      LSLS     r3,r3,r2
        0x1fff3cbc:    4319        .C      ORRS     r1,r1,r3
        0x1fff3cbe:    e011        ..      B        0x1fff3ce4 ; hal_gpio_retention_enable + 84
        0x1fff3cc0:    6950        Pi      LDR      r0,[r2,#0x14]
        0x1fff3cc2:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff3cc4:    408b        .@      LSLS     r3,r3,r1
        0x1fff3cc6:    4318        .C      ORRS     r0,r0,r3
        0x1fff3cc8:    e012        ..      B        0x1fff3cf0 ; hal_gpio_retention_enable + 96
        0x1fff3cca:    2814        .(      CMP      r0,#0x14
        0x1fff3ccc:    d00c        ..      BEQ      0x1fff3ce8 ; hal_gpio_retention_enable + 88
        0x1fff3cce:    2815        .(      CMP      r0,#0x15
        0x1fff3cd0:    d00a        ..      BEQ      0x1fff3ce8 ; hal_gpio_retention_enable + 88
        0x1fff3cd2:    2816        .(      CMP      r0,#0x16
        0x1fff3cd4:    d008        ..      BEQ      0x1fff3ce8 ; hal_gpio_retention_enable + 88
        0x1fff3cd6:    57a0        .W      LDRSB    r0,[r4,r6]
        0x1fff3cd8:    0080        ..      LSLS     r0,r0,#2
        0x1fff3cda:    1880        ..      ADDS     r0,r0,r2
        0x1fff3cdc:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3cde:    786a        jx      LDRB     r2,[r5,#1]
        0x1fff3ce0:    4093        .@      LSLS     r3,r3,r2
        0x1fff3ce2:    4399        .C      BICS     r1,r1,r3
        0x1fff3ce4:    6081        .`      STR      r1,[r0,#8]
        0x1fff3ce6:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3ce8:    6950        Pi      LDR      r0,[r2,#0x14]
        0x1fff3cea:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff3cec:    408b        .@      LSLS     r3,r3,r1
        0x1fff3cee:    4398        .C      BICS     r0,r0,r3
        0x1fff3cf0:    6150        Pa      STR      r0,[r2,#0x14]
        0x1fff3cf2:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3cf4:    4000f000    ...@    DCD    1073803264
        0x1fff3cf8:    1fff6ed8    .n..    DCD    536833752
    $t
    i.hal_gpio_sleep_handler
    hal_gpio_sleep_handler
        0x1fff3cfc:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3cfe:    2400        .$      MOVS     r4,#0
        0x1fff3d00:    4d12        .M      LDR      r5,[pc,#72] ; [0x1fff3d4c] = 0x1fff7c10
        0x1fff3d02:    2601        .&      MOVS     r6,#1
        0x1fff3d04:    192f        /.      ADDS     r7,r5,r4
        0x1fff3d06:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3d08:    2801        .(      CMP      r0,#1
        0x1fff3d0a:    d108        ..      BNE      0x1fff3d1e ; hal_gpio_sleep_handler + 34
        0x1fff3d0c:    4631        1F      MOV      r1,r6
        0x1fff3d0e:    69a8        .i      LDR      r0,[r5,#0x18]
        0x1fff3d10:    40a1        .@      LSLS     r1,r1,r4
        0x1fff3d12:    4208        .B      TST      r0,r1
        0x1fff3d14:    d016        ..      BEQ      0x1fff3d44 ; hal_gpio_sleep_handler + 72
        0x1fff3d16:    b2e0        ..      UXTB     r0,r4
        0x1fff3d18:    2101        .!      MOVS     r1,#1
        0x1fff3d1a:    f7ffffb9    ....    BL       hal_gpio_retention_enable ; 0x1fff3c90
        0x1fff3d1e:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3d20:    2802        .(      CMP      r0,#2
        0x1fff3d22:    d10f        ..      BNE      0x1fff3d44 ; hal_gpio_sleep_handler + 72
        0x1fff3d24:    b2e0        ..      UXTB     r0,r4
        0x1fff3d26:    f7ffff9d    ....    BL       hal_gpio_read ; 0x1fff3c64
        0x1fff3d2a:    4070        p@      EORS     r0,r0,r6
        0x1fff3d2c:    b2e2        ..      UXTB     r2,r4
        0x1fff3d2e:    4601        .F      MOV      r1,r0
        0x1fff3d30:    4610        .F      MOV      r0,r2
        0x1fff3d32:    f000f87b    ..{.    BL       hal_gpio_wakeup_set ; 0x1fff3e2c
        0x1fff3d36:    b2e0        ..      UXTB     r0,r4
        0x1fff3d38:    f7ffff94    ....    BL       hal_gpio_read ; 0x1fff3c64
        0x1fff3d3c:    210c        .!      MOVS     r1,#0xc
        0x1fff3d3e:    4361        aC      MULS     r1,r4,r1
        0x1fff3d40:    1949        I.      ADDS     r1,r1,r5
        0x1fff3d42:    7748        Hw      STRB     r0,[r1,#0x1d]
        0x1fff3d44:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3d46:    2c17        .,      CMP      r4,#0x17
        0x1fff3d48:    dbdc        ..      BLT      0x1fff3d04 ; hal_gpio_sleep_handler + 8
        0x1fff3d4a:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff3d4c:    1fff7c10    .|..    DCD    536837136
    $t
    i.hal_gpio_wakeup_control
    hal_gpio_wakeup_control
        0x1fff3d50:    b510        ..      PUSH     {r4,lr}
        0x1fff3d52:    4c0f        .L      LDR      r4,[pc,#60] ; [0x1fff3d90] = 0x1fff6e7c
        0x1fff3d54:    4a0d        .J      LDR      r2,[pc,#52] ; [0x1fff3d8c] = 0x4000f080
        0x1fff3d56:    2301        .#      MOVS     r3,#1
        0x1fff3d58:    5c24        $\      LDRB     r4,[r4,r0]
        0x1fff3d5a:    2814        .(      CMP      r0,#0x14
        0x1fff3d5c:    d209        ..      BCS      0x1fff3d72 ; hal_gpio_wakeup_control + 34
        0x1fff3d5e:    6a10        .j      LDR      r0,[r2,#0x20]
        0x1fff3d60:    2900        .)      CMP      r1,#0
        0x1fff3d62:    d002        ..      BEQ      0x1fff3d6a ; hal_gpio_wakeup_control + 26
        0x1fff3d64:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3d66:    4318        .C      ORRS     r0,r0,r3
        0x1fff3d68:    e001        ..      B        0x1fff3d6e ; hal_gpio_wakeup_control + 30
        0x1fff3d6a:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3d6c:    4398        .C      BICS     r0,r0,r3
        0x1fff3d6e:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff3d70:    bd10        ..      POP      {r4,pc}
        0x1fff3d72:    6a50        Pj      LDR      r0,[r2,#0x24]
        0x1fff3d74:    2900        .)      CMP      r1,#0
        0x1fff3d76:    d003        ..      BEQ      0x1fff3d80 ; hal_gpio_wakeup_control + 48
        0x1fff3d78:    3c20         <      SUBS     r4,r4,#0x20
        0x1fff3d7a:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3d7c:    4318        .C      ORRS     r0,r0,r3
        0x1fff3d7e:    e002        ..      B        0x1fff3d86 ; hal_gpio_wakeup_control + 54
        0x1fff3d80:    3c20         <      SUBS     r4,r4,#0x20
        0x1fff3d82:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3d84:    4398        .C      BICS     r0,r0,r3
        0x1fff3d86:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff3d88:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3d8a:    0000        ..      DCW    0
        0x1fff3d8c:    4000f080    ...@    DCD    1073803392
        0x1fff3d90:    1fff6e7c    |n..    DCD    536833660
    $t
    i.hal_gpio_wakeup_handler
    hal_gpio_wakeup_handler
        0x1fff3d94:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3d96:    2102        .!      MOVS     r1,#2
        0x1fff3d98:    2010        .       MOVS     r0,#0x10
        0x1fff3d9a:    f7feffa5    ....    BL       __NVIC_SetPriority ; 0x1fff2ce8
        0x1fff3d9e:    2010        .       MOVS     r0,#0x10
        0x1fff3da0:    f7feff74    ..t.    BL       __NVIC_EnableIRQ ; 0x1fff2c8c
        0x1fff3da4:    4d20         M      LDR      r5,[pc,#128] ; [0x1fff3e28] = 0x1fff7c10
        0x1fff3da6:    2400        .$      MOVS     r4,#0
        0x1fff3da8:    192e        ..      ADDS     r6,r5,r4
        0x1fff3daa:    7870        px      LDRB     r0,[r6,#1]
        0x1fff3dac:    2800        .(      CMP      r0,#0
        0x1fff3dae:    d01a        ..      BEQ      0x1fff3de6 ; hal_gpio_wakeup_handler + 82
        0x1fff3db0:    2c02        .,      CMP      r4,#2
        0x1fff3db2:    d001        ..      BEQ      0x1fff3db8 ; hal_gpio_wakeup_handler + 36
        0x1fff3db4:    2c03        .,      CMP      r4,#3
        0x1fff3db6:    d103        ..      BNE      0x1fff3dc0 ; hal_gpio_wakeup_handler + 44
        0x1fff3db8:    b2e0        ..      UXTB     r0,r4
        0x1fff3dba:    2101        .!      MOVS     r1,#1
        0x1fff3dbc:    f7fffee2    ....    BL       hal_gpio_pin2pin3_control ; 0x1fff3b84
        0x1fff3dc0:    7870        px      LDRB     r0,[r6,#1]
        0x1fff3dc2:    2801        .(      CMP      r0,#1
        0x1fff3dc4:    d10f        ..      BNE      0x1fff3de6 ; hal_gpio_wakeup_handler + 82
        0x1fff3dc6:    2101        .!      MOVS     r1,#1
        0x1fff3dc8:    69a8        .i      LDR      r0,[r5,#0x18]
        0x1fff3dca:    40a1        .@      LSLS     r1,r1,r4
        0x1fff3dcc:    4208        .B      TST      r0,r1
        0x1fff3dce:    d00a        ..      BEQ      0x1fff3de6 ; hal_gpio_wakeup_handler + 82
        0x1fff3dd0:    b2e0        ..      UXTB     r0,r4
        0x1fff3dd2:    f7ffff47    ..G.    BL       hal_gpio_read ; 0x1fff3c64
        0x1fff3dd6:    4601        .F      MOV      r1,r0
        0x1fff3dd8:    b2e0        ..      UXTB     r0,r4
        0x1fff3dda:    f000f865    ..e.    BL       hal_gpio_write ; 0x1fff3ea8
        0x1fff3dde:    b2e0        ..      UXTB     r0,r4
        0x1fff3de0:    2100        .!      MOVS     r1,#0
        0x1fff3de2:    f7ffff55    ..U.    BL       hal_gpio_retention_enable ; 0x1fff3c90
        0x1fff3de6:    200c        .       MOVS     r0,#0xc
        0x1fff3de8:    4360        `C      MULS     r0,r4,r0
        0x1fff3dea:    1940        @.      ADDS     r0,r0,r5
        0x1fff3dec:    7f00        ..      LDRB     r0,[r0,#0x1c]
        0x1fff3dee:    2800        .(      CMP      r0,#0
        0x1fff3df0:    d016        ..      BEQ      0x1fff3e20 ; hal_gpio_wakeup_handler + 140
        0x1fff3df2:    b2e0        ..      UXTB     r0,r4
        0x1fff3df4:    f000f890    ....    BL       hal_gpioin_enable ; 0x1fff3f18
        0x1fff3df8:    b2e6        ..      UXTB     r6,r4
        0x1fff3dfa:    2e16        ..      CMP      r6,#0x16
        0x1fff3dfc:    d810        ..      BHI      0x1fff3e20 ; hal_gpio_wakeup_handler + 140
        0x1fff3dfe:    4630        0F      MOV      r0,r6
        0x1fff3e00:    f7ffff30    ..0.    BL       hal_gpio_read ; 0x1fff3c64
        0x1fff3e04:    2800        .(      CMP      r0,#0
        0x1fff3e06:    d001        ..      BEQ      0x1fff3e0c ; hal_gpio_wakeup_handler + 120
        0x1fff3e08:    2101        .!      MOVS     r1,#1
        0x1fff3e0a:    e000        ..      B        0x1fff3e0e ; hal_gpio_wakeup_handler + 122
        0x1fff3e0c:    2100        .!      MOVS     r1,#0
        0x1fff3e0e:    220c        ."      MOVS     r2,#0xc
        0x1fff3e10:    4372        rC      MULS     r2,r6,r2
        0x1fff3e12:    1952        R.      ADDS     r2,r2,r5
        0x1fff3e14:    7f52        R.      LDRB     r2,[r2,#0x1d]
        0x1fff3e16:    4282        .B      CMP      r2,r0
        0x1fff3e18:    d002        ..      BEQ      0x1fff3e20 ; hal_gpio_wakeup_handler + 140
        0x1fff3e1a:    4630        0F      MOV      r0,r6
        0x1fff3e1c:    f000f8e6    ....    BL       hal_gpioin_event_pin ; 0x1fff3fec
        0x1fff3e20:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3e22:    2c17        .,      CMP      r4,#0x17
        0x1fff3e24:    dbc0        ..      BLT      0x1fff3da8 ; hal_gpio_wakeup_handler + 20
        0x1fff3e26:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3e28:    1fff7c10    .|..    DCD    536837136
    $t
    i.hal_gpio_wakeup_set
    hal_gpio_wakeup_set
        0x1fff3e2c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3e2e:    2816        .(      CMP      r0,#0x16
        0x1fff3e30:    d82e        ..      BHI      0x1fff3e90 ; hal_gpio_wakeup_set + 100
        0x1fff3e32:    0042        B.      LSLS     r2,r0,#1
        0x1fff3e34:    1883        ..      ADDS     r3,r0,r2
        0x1fff3e36:    4a18        .J      LDR      r2,[pc,#96] ; [0x1fff3e98] = 0x1fff6e93
        0x1fff3e38:    5cd5        .\      LDRB     r5,[r2,r3]
        0x1fff3e3a:    189a        ..      ADDS     r2,r3,r2
        0x1fff3e3c:    7892        .x      LDRB     r2,[r2,#2]
        0x1fff3e3e:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3e40:    b2d4        ..      UXTB     r4,r2
        0x1fff3e42:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3e9c] = 0x1fff7c10
        0x1fff3e44:    1812        ..      ADDS     r2,r2,r0
        0x1fff3e46:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff3e48:    2a02        .*      CMP      r2,#2
        0x1fff3e4a:    d121        !.      BNE      0x1fff3e90 ; hal_gpio_wakeup_set + 100
        0x1fff3e4c:    4e14        .N      LDR      r6,[pc,#80] ; [0x1fff3ea0] = 0x40008000
        0x1fff3e4e:    6bb7        .k      LDR      r7,[r6,#0x38]
        0x1fff3e50:    2201        ."      MOVS     r2,#1
        0x1fff3e52:    4613        .F      MOV      r3,r2
        0x1fff3e54:    4083        .@      LSLS     r3,r3,r0
        0x1fff3e56:    431f        .C      ORRS     r7,r7,r3
        0x1fff3e58:    63b7        .c      STR      r7,[r6,#0x38]
        0x1fff3e5a:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff3ea4] = 0x4000f000
        0x1fff3e5c:    2813        .(      CMP      r0,#0x13
        0x1fff3e5e:    d20e        ..      BCS      0x1fff3e7e ; hal_gpio_wakeup_set + 82
        0x1fff3e60:    2900        .)      CMP      r1,#0
        0x1fff3e62:    d006        ..      BEQ      0x1fff3e72 ; hal_gpio_wakeup_set + 70
        0x1fff3e64:    00a9        ..      LSLS     r1,r5,#2
        0x1fff3e66:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3e68:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3e6a:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3e6c:    4393        .C      BICS     r3,r3,r2
        0x1fff3e6e:    608b        .`      STR      r3,[r1,#8]
        0x1fff3e70:    e00b        ..      B        0x1fff3e8a ; hal_gpio_wakeup_set + 94
        0x1fff3e72:    00a9        ..      LSLS     r1,r5,#2
        0x1fff3e74:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3e76:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3e78:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3e7a:    4313        .C      ORRS     r3,r3,r2
        0x1fff3e7c:    e7f7        ..      B        0x1fff3e6e ; hal_gpio_wakeup_set + 66
        0x1fff3e7e:    2900        .)      CMP      r1,#0
        0x1fff3e80:    6959        Yi      LDR      r1,[r3,#0x14]
        0x1fff3e82:    d006        ..      BEQ      0x1fff3e92 ; hal_gpio_wakeup_set + 102
        0x1fff3e84:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3e86:    4391        .C      BICS     r1,r1,r2
        0x1fff3e88:    6159        Ya      STR      r1,[r3,#0x14]
        0x1fff3e8a:    2101        .!      MOVS     r1,#1
        0x1fff3e8c:    f7ffff60    ..`.    BL       hal_gpio_wakeup_control ; 0x1fff3d50
        0x1fff3e90:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3e92:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3e94:    4311        .C      ORRS     r1,r1,r2
        0x1fff3e96:    e7f7        ..      B        0x1fff3e88 ; hal_gpio_wakeup_set + 92
    $d
        0x1fff3e98:    1fff6e93    .n..    DCD    536833683
        0x1fff3e9c:    1fff7c10    .|..    DCD    536837136
        0x1fff3ea0:    40008000    ...@    DCD    1073774592
        0x1fff3ea4:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_gpio_write
    hal_gpio_write
        0x1fff3ea8:    b500        ..      PUSH     {lr}
        0x1fff3eaa:    2816        .(      CMP      r0,#0x16
        0x1fff3eac:    d80c        ..      BHI      0x1fff3ec8 ; hal_gpio_write + 32
        0x1fff3eae:    2301        .#      MOVS     r3,#1
        0x1fff3eb0:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3ecc] = 0x40008000
        0x1fff3eb2:    4083        .@      LSLS     r3,r3,r0
        0x1fff3eb4:    2900        .)      CMP      r1,#0
        0x1fff3eb6:    6811        .h      LDR      r1,[r2,#0]
        0x1fff3eb8:    d001        ..      BEQ      0x1fff3ebe ; hal_gpio_write + 22
        0x1fff3eba:    4319        .C      ORRS     r1,r1,r3
        0x1fff3ebc:    e000        ..      B        0x1fff3ec0 ; hal_gpio_write + 24
        0x1fff3ebe:    4399        .C      BICS     r1,r1,r3
        0x1fff3ec0:    6011        .`      STR      r1,[r2,#0]
        0x1fff3ec2:    2101        .!      MOVS     r1,#1
        0x1fff3ec4:    f7fffe6c    ..l.    BL       hal_gpio_pin_init ; 0x1fff3ba0
        0x1fff3ec8:    bd00        ..      POP      {pc}
    $d
        0x1fff3eca:    0000        ..      DCW    0
        0x1fff3ecc:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpioin_disable
    hal_gpioin_disable
        0x1fff3ed0:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff3ed2:    4604        .F      MOV      r4,r0
        0x1fff3ed4:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff3f10] = 0x1fff7c2c
        0x1fff3ed6:    2c16        .,      CMP      r4,#0x16
        0x1fff3ed8:    d901        ..      BLS      0x1fff3ede ; hal_gpioin_disable + 14
        0x1fff3eda:    2005        .       MOVS     r0,#5
        0x1fff3edc:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3ede:    210c        .!      MOVS     r1,#0xc
        0x1fff3ee0:    2500        .%      MOVS     r5,#0
        0x1fff3ee2:    4361        aC      MULS     r1,r4,r1
        0x1fff3ee4:    5445        ET      STRB     r5,[r0,r1]
        0x1fff3ee6:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3f10] = 0x1fff7c2c
        0x1fff3ee8:    4629        )F      MOV      r1,r5
        0x1fff3eea:    381c        .8      SUBS     r0,r0,#0x1c
        0x1fff3eec:    1900        ..      ADDS     r0,r0,r4
        0x1fff3eee:    7045        Ep      STRB     r5,[r0,#1]
        0x1fff3ef0:    4620         F      MOV      r0,r4
        0x1fff3ef2:    f7fffe55    ..U.    BL       hal_gpio_pin_init ; 0x1fff3ba0
        0x1fff3ef6:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3f14] = 0x40008000
        0x1fff3ef8:    6b4a        Jk      LDR      r2,[r1,#0x34]
        0x1fff3efa:    2001        .       MOVS     r0,#1
        0x1fff3efc:    40a0        .@      LSLS     r0,r0,r4
        0x1fff3efe:    4382        .C      BICS     r2,r2,r0
        0x1fff3f00:    4302        .C      ORRS     r2,r2,r0
        0x1fff3f02:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff3f04:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff3f06:    4382        .C      BICS     r2,r2,r0
        0x1fff3f08:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff3f0a:    4628        (F      MOV      r0,r5
        0x1fff3f0c:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff3f0e:    0000        ..      DCW    0
        0x1fff3f10:    1fff7c2c    ,|..    DCD    536837164
        0x1fff3f14:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpioin_enable
    hal_gpioin_enable
        0x1fff3f18:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3f1a:    4604        .F      MOV      r4,r0
        0x1fff3f1c:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff3f80] = 0x1fff7c2c
        0x1fff3f1e:    2600        .&      MOVS     r6,#0
        0x1fff3f20:    2c16        .,      CMP      r4,#0x16
        0x1fff3f22:    d901        ..      BLS      0x1fff3f28 ; hal_gpioin_enable + 16
        0x1fff3f24:    2005        .       MOVS     r0,#5
        0x1fff3f26:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3f28:    4621        !F      MOV      r1,r4
        0x1fff3f2a:    220c        ."      MOVS     r2,#0xc
        0x1fff3f2c:    4351        QC      MULS     r1,r2,r1
        0x1fff3f2e:    180d        ..      ADDS     r5,r1,r0
        0x1fff3f30:    686a        jh      LDR      r2,[r5,#4]
        0x1fff3f32:    2a00        .*      CMP      r2,#0
        0x1fff3f34:    d102        ..      BNE      0x1fff3f3c ; hal_gpioin_enable + 36
        0x1fff3f36:    68aa        .h      LDR      r2,[r5,#8]
        0x1fff3f38:    2a00        .*      CMP      r2,#0
        0x1fff3f3a:    d01c        ..      BEQ      0x1fff3f76 ; hal_gpioin_enable + 94
        0x1fff3f3c:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff3f80] = 0x1fff7c2c
        0x1fff3f3e:    2202        ."      MOVS     r2,#2
        0x1fff3f40:    3b1c        .;      SUBS     r3,r3,#0x1c
        0x1fff3f42:    191b        ..      ADDS     r3,r3,r4
        0x1fff3f44:    705a        Zp      STRB     r2,[r3,#1]
        0x1fff3f46:    2201        ."      MOVS     r2,#1
        0x1fff3f48:    5442        BT      STRB     r2,[r0,r1]
        0x1fff3f4a:    2100        .!      MOVS     r1,#0
        0x1fff3f4c:    4620         F      MOV      r0,r4
        0x1fff3f4e:    f7fffe27    ..'.    BL       hal_gpio_pin_init ; 0x1fff3ba0
        0x1fff3f52:    6868        hh      LDR      r0,[r5,#4]
        0x1fff3f54:    2800        .(      CMP      r0,#0
        0x1fff3f56:    d008        ..      BEQ      0x1fff3f6a ; hal_gpioin_enable + 82
        0x1fff3f58:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff3f5a:    2800        .(      CMP      r0,#0
        0x1fff3f5c:    d00d        ..      BEQ      0x1fff3f7a ; hal_gpioin_enable + 98
        0x1fff3f5e:    4620         F      MOV      r0,r4
        0x1fff3f60:    f7fffe80    ....    BL       hal_gpio_read ; 0x1fff3c64
        0x1fff3f64:    2800        .(      CMP      r0,#0
        0x1fff3f66:    d008        ..      BEQ      0x1fff3f7a ; hal_gpioin_enable + 98
        0x1fff3f68:    2600        .&      MOVS     r6,#0
        0x1fff3f6a:    4631        1F      MOV      r1,r6
        0x1fff3f6c:    4620         F      MOV      r0,r4
        0x1fff3f6e:    f7fffde9    ....    BL       hal_gpio_interrupt_enable ; 0x1fff3b44
        0x1fff3f72:    2000        .       MOVS     r0,#0
        0x1fff3f74:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3f76:    2012        .       MOVS     r0,#0x12
        0x1fff3f78:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3f7a:    2601        .&      MOVS     r6,#1
        0x1fff3f7c:    e7f5        ..      B        0x1fff3f6a ; hal_gpioin_enable + 82
    $d
        0x1fff3f7e:    0000        ..      DCW    0
        0x1fff3f80:    1fff7c2c    ,|..    DCD    536837164
    $t
    i.hal_gpioin_event
    hal_gpioin_event
        0x1fff3f84:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff3f86:    4e18        .N      LDR      r6,[pc,#96] ; [0x1fff3fe8] = 0x1fff7c2c
        0x1fff3f88:    2400        .$      MOVS     r4,#0
        0x1fff3f8a:    b081        ..      SUB      sp,sp,#4
        0x1fff3f8c:    4607        .F      MOV      r7,r0
        0x1fff3f8e:    2501        .%      MOVS     r5,#1
        0x1fff3f90:    4628        (F      MOV      r0,r5
        0x1fff3f92:    40a0        .@      LSLS     r0,r0,r4
        0x1fff3f94:    4238        8B      TST      r0,r7
        0x1fff3f96:    d023        #.      BEQ      0x1fff3fe0 ; hal_gpioin_event + 92
        0x1fff3f98:    9902        ..      LDR      r1,[sp,#8]
        0x1fff3f9a:    4008        .@      ANDS     r0,r0,r1
        0x1fff3f9c:    d000        ..      BEQ      0x1fff3fa0 ; hal_gpioin_event + 28
        0x1fff3f9e:    2001        .       MOVS     r0,#1
        0x1fff3fa0:    9000        ..      STR      r0,[sp,#0]
        0x1fff3fa2:    b2e0        ..      UXTB     r0,r4
        0x1fff3fa4:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3fa6:    f000f821    ..!.    BL       hal_gpioin_event_pin ; 0x1fff3fec
        0x1fff3faa:    200c        .       MOVS     r0,#0xc
        0x1fff3fac:    4360        `C      MULS     r0,r4,r0
        0x1fff3fae:    1980        ..      ADDS     r0,r0,r6
        0x1fff3fb0:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3fb2:    6880        .h      LDR      r0,[r0,#8]
        0x1fff3fb4:    2900        .)      CMP      r1,#0
        0x1fff3fb6:    d00e        ..      BEQ      0x1fff3fd6 ; hal_gpioin_event + 82
        0x1fff3fb8:    2800        .(      CMP      r0,#0
        0x1fff3fba:    d007        ..      BEQ      0x1fff3fcc ; hal_gpioin_event + 72
        0x1fff3fbc:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3fbe:    2800        .(      CMP      r0,#0
        0x1fff3fc0:    d002        ..      BEQ      0x1fff3fc8 ; hal_gpioin_event + 68
        0x1fff3fc2:    2100        .!      MOVS     r1,#0
        0x1fff3fc4:    b2e0        ..      UXTB     r0,r4
        0x1fff3fc6:    e003        ..      B        0x1fff3fd0 ; hal_gpioin_event + 76
        0x1fff3fc8:    2101        .!      MOVS     r1,#1
        0x1fff3fca:    e7fb        ..      B        0x1fff3fc4 ; hal_gpioin_event + 64
        0x1fff3fcc:    b2e0        ..      UXTB     r0,r4
        0x1fff3fce:    2101        .!      MOVS     r1,#1
        0x1fff3fd0:    f7fffdb8    ....    BL       hal_gpio_interrupt_enable ; 0x1fff3b44
        0x1fff3fd4:    e004        ..      B        0x1fff3fe0 ; hal_gpioin_event + 92
        0x1fff3fd6:    2800        .(      CMP      r0,#0
        0x1fff3fd8:    d002        ..      BEQ      0x1fff3fe0 ; hal_gpioin_event + 92
        0x1fff3fda:    b2e0        ..      UXTB     r0,r4
        0x1fff3fdc:    2100        .!      MOVS     r1,#0
        0x1fff3fde:    e7f7        ..      B        0x1fff3fd0 ; hal_gpioin_event + 76
        0x1fff3fe0:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3fe2:    2c17        .,      CMP      r4,#0x17
        0x1fff3fe4:    dbd4        ..      BLT      0x1fff3f90 ; hal_gpioin_event + 12
        0x1fff3fe6:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff3fe8:    1fff7c2c    ,|..    DCD    536837164
    $t
    i.hal_gpioin_event_pin
    hal_gpioin_event_pin
        0x1fff3fec:    4a08        .J      LDR      r2,[pc,#32] ; [0x1fff4010] = 0x1fff7c2c
        0x1fff3fee:    2816        .(      CMP      r0,#0x16
        0x1fff3ff0:    d80d        ..      BHI      0x1fff400e ; hal_gpioin_event_pin + 34
        0x1fff3ff2:    230c        .#      MOVS     r3,#0xc
        0x1fff3ff4:    4343        CC      MULS     r3,r0,r3
        0x1fff3ff6:    189b        ..      ADDS     r3,r3,r2
        0x1fff3ff8:    685a        Zh      LDR      r2,[r3,#4]
        0x1fff3ffa:    2a00        .*      CMP      r2,#0
        0x1fff3ffc:    d001        ..      BEQ      0x1fff4002 ; hal_gpioin_event_pin + 22
        0x1fff3ffe:    2901        .)      CMP      r1,#1
        0x1fff4000:    d004        ..      BEQ      0x1fff400c ; hal_gpioin_event_pin + 32
        0x1fff4002:    689a        .h      LDR      r2,[r3,#8]
        0x1fff4004:    2a00        .*      CMP      r2,#0
        0x1fff4006:    d002        ..      BEQ      0x1fff400e ; hal_gpioin_event_pin + 34
        0x1fff4008:    2900        .)      CMP      r1,#0
        0x1fff400a:    d100        ..      BNE      0x1fff400e ; hal_gpioin_event_pin + 34
        0x1fff400c:    4710        .G      BX       r2
        0x1fff400e:    4770        pG      BX       lr
    $d
        0x1fff4010:    1fff7c2c    ,|..    DCD    536837164
    $t
    i.hal_gpioretention_register
    hal_gpioretention_register
        0x1fff4014:    2816        .(      CMP      r0,#0x16
        0x1fff4016:    d901        ..      BLS      0x1fff401c ; hal_gpioretention_register + 8
        0x1fff4018:    2005        .       MOVS     r0,#5
        0x1fff401a:    4770        pG      BX       lr
        0x1fff401c:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff4038] = 0x1fff7c10
        0x1fff401e:    180a        ..      ADDS     r2,r1,r0
        0x1fff4020:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff4022:    2a01        .*      CMP      r2,#1
        0x1fff4024:    d001        ..      BEQ      0x1fff402a ; hal_gpioretention_register + 22
        0x1fff4026:    2006        .       MOVS     r0,#6
        0x1fff4028:    4770        pG      BX       lr
        0x1fff402a:    2301        .#      MOVS     r3,#1
        0x1fff402c:    698a        .i      LDR      r2,[r1,#0x18]
        0x1fff402e:    4083        .@      LSLS     r3,r3,r0
        0x1fff4030:    431a        .C      ORRS     r2,r2,r3
        0x1fff4032:    2000        .       MOVS     r0,#0
        0x1fff4034:    618a        .a      STR      r2,[r1,#0x18]
        0x1fff4036:    4770        pG      BX       lr
    $d
        0x1fff4038:    1fff7c10    .|..    DCD    536837136
    $t
    i.hal_low_power_io_init
    hal_low_power_io_init
        0x1fff403c:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff403e:    b08d        ..      SUB      sp,sp,#0x34
        0x1fff4040:    2230        0"      MOVS     r2,#0x30
        0x1fff4042:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff40a0] = 0x1fff6e40
        0x1fff4044:    4668        hF      MOV      r0,sp
        0x1fff4046:    f7fdfdb7    ....    BL       $Ven$TT$L$$__aeabi_memcpy4 ; 0x1fff1bb8
        0x1fff404a:    2400        .$      MOVS     r4,#0
        0x1fff404c:    466d        mF      MOV      r5,sp
        0x1fff404e:    0060        `.      LSLS     r0,r4,#1
        0x1fff4050:    1941        A.      ADDS     r1,r0,r5
        0x1fff4052:    7849        Ix      LDRB     r1,[r1,#1]
        0x1fff4054:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff4056:    f7fffddb    ....    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff405a:    1c64        d.      ADDS     r4,r4,#1
        0x1fff405c:    b2e4        ..      UXTB     r4,r4
        0x1fff405e:    2c17        .,      CMP      r4,#0x17
        0x1fff4060:    d3f5        ..      BCC      0x1fff404e ; hal_low_power_io_init + 18
        0x1fff4062:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff40a4] = 0x4000f000
        0x1fff4064:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff4066:    00c2        ..      LSLS     r2,r0,#3
        0x1fff4068:    4391        .C      BICS     r1,r1,r2
        0x1fff406a:    2205        ."      MOVS     r2,#5
        0x1fff406c:    0412        ..      LSLS     r2,r2,#16
        0x1fff406e:    1889        ..      ADDS     r1,r1,r2
        0x1fff4070:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff4072:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff4074:    2201        ."      MOVS     r2,#1
        0x1fff4076:    0652        R.      LSLS     r2,r2,#25
        0x1fff4078:    4311        .C      ORRS     r1,r1,r2
        0x1fff407a:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff407c:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff407e:    2203        ."      MOVS     r2,#3
        0x1fff4080:    0552        R.      LSLS     r2,r2,#21
        0x1fff4082:    4391        .C      BICS     r1,r1,r2
        0x1fff4084:    2201        ."      MOVS     r2,#1
        0x1fff4086:    0552        R.      LSLS     r2,r2,#21
        0x1fff4088:    1889        ..      ADDS     r1,r1,r2
        0x1fff408a:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff408c:    2003        .       MOVS     r0,#3
        0x1fff408e:    f000f815    ....    BL       hal_pwrmgr_RAM_retention ; 0x1fff40bc
        0x1fff4092:    f000f82f    ../.    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff40f4
        0x1fff4096:    f000f807    ....    BL       hal_pwrmgr_LowCurrentLdo_enable ; 0x1fff40a8
        0x1fff409a:    b00d        ..      ADD      sp,sp,#0x34
        0x1fff409c:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff409e:    0000        ..      DCW    0
        0x1fff40a0:    1fff6e40    @n..    DCD    536833600
        0x1fff40a4:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_LowCurrentLdo_enable
    hal_pwrmgr_LowCurrentLdo_enable
        0x1fff40a8:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff40b8] = 0x4000f000
        0x1fff40aa:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff40ac:    2201        ."      MOVS     r2,#1
        0x1fff40ae:    0692        ..      LSLS     r2,r2,#26
        0x1fff40b0:    4391        .C      BICS     r1,r1,r2
        0x1fff40b2:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff40b4:    200f        .       MOVS     r0,#0xf
        0x1fff40b6:    4770        pG      BX       lr
    $d
        0x1fff40b8:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_RAM_retention
    hal_pwrmgr_RAM_retention
        0x1fff40bc:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff40dc] = 0x1fff70a1
        0x1fff40be:    0943        C.      LSRS     r3,r0,#5
        0x1fff40c0:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff40c2:    08d2        ..      LSRS     r2,r2,#3
        0x1fff40c4:    00d2        ..      LSLS     r2,r2,#3
        0x1fff40c6:    2b00        .+      CMP      r3,#0
        0x1fff40c8:    d002        ..      BEQ      0x1fff40d0 ; hal_pwrmgr_RAM_retention + 20
        0x1fff40ca:    700a        .p      STRB     r2,[r1,#0]
        0x1fff40cc:    2006        .       MOVS     r0,#6
        0x1fff40ce:    4770        pG      BX       lr
        0x1fff40d0:    0740        @.      LSLS     r0,r0,#29
        0x1fff40d2:    0f40        @.      LSRS     r0,r0,#29
        0x1fff40d4:    4302        .C      ORRS     r2,r2,r0
        0x1fff40d6:    700a        .p      STRB     r2,[r1,#0]
        0x1fff40d8:    2000        .       MOVS     r0,#0
        0x1fff40da:    4770        pG      BX       lr
    $d
        0x1fff40dc:    1fff70a1    .p..    DCD    536834209
    $t
    i.hal_pwrmgr_RAM_retention_clr
    hal_pwrmgr_RAM_retention_clr
        0x1fff40e0:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff40f0] = 0x4000f000
        0x1fff40e2:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff40e4:    221f        ."      MOVS     r2,#0x1f
        0x1fff40e6:    0452        R.      LSLS     r2,r2,#17
        0x1fff40e8:    4391        .C      BICS     r1,r1,r2
        0x1fff40ea:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff40ec:    2000        .       MOVS     r0,#0
        0x1fff40ee:    4770        pG      BX       lr
    $d
        0x1fff40f0:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_RAM_retention_set
    hal_pwrmgr_RAM_retention_set
        0x1fff40f4:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff4110] = 0x4000f000
        0x1fff40f6:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff40f8:    221f        ."      MOVS     r2,#0x1f
        0x1fff40fa:    0452        R.      LSLS     r2,r2,#17
        0x1fff40fc:    4391        .C      BICS     r1,r1,r2
        0x1fff40fe:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff4114] = 0x1fff70a1
        0x1fff4100:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4102:    0752        R.      LSLS     r2,r2,#29
        0x1fff4104:    0b12        ..      LSRS     r2,r2,#12
        0x1fff4106:    4311        .C      ORRS     r1,r1,r2
        0x1fff4108:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff410a:    2000        .       MOVS     r0,#0
        0x1fff410c:    4770        pG      BX       lr
    $d
        0x1fff410e:    0000        ..      DCW    0
        0x1fff4110:    4000f000    ...@    DCD    1073803264
        0x1fff4114:    1fff70a1    .p..    DCD    536834209
    $t
    i.hal_pwrmgr_init
    hal_pwrmgr_init
        0x1fff4118:    b510        ..      PUSH     {r4,lr}
        0x1fff411a:    2178        x!      MOVS     r1,#0x78
        0x1fff411c:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff4140] = 0x1fff7d40
        0x1fff411e:    f7fdfd45    ..E.    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1bac
        0x1fff4122:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff4144] = 0x1fff70a0
        0x1fff4124:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4126:    2801        .(      CMP      r0,#1
        0x1fff4128:    d003        ..      BEQ      0x1fff4132 ; hal_pwrmgr_init + 26
        0x1fff412a:    2802        .(      CMP      r0,#2
        0x1fff412c:    d004        ..      BEQ      0x1fff4138 ; hal_pwrmgr_init + 32
        0x1fff412e:    2804        .(      CMP      r0,#4
        0x1fff4130:    d104        ..      BNE      0x1fff413c ; hal_pwrmgr_init + 36
        0x1fff4132:    f7fdfd47    ..G.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bc4
        0x1fff4136:    e001        ..      B        0x1fff413c ; hal_pwrmgr_init + 36
        0x1fff4138:    f7fdfc18    ....    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff413c:    2000        .       MOVS     r0,#0
        0x1fff413e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4140:    1fff7d40    @}..    DCD    536837440
        0x1fff4144:    1fff70a0    .p..    DCD    536834208
    $t
    i.hal_pwrmgr_lock
    hal_pwrmgr_lock
        0x1fff4148:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff414a:    4605        .F      MOV      r5,r0
        0x1fff414c:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff4198] = 0x1fff70a0
        0x1fff414e:    2412        .$      MOVS     r4,#0x12
        0x1fff4150:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4152:    2801        .(      CMP      r0,#1
        0x1fff4154:    d015        ..      BEQ      0x1fff4182 ; hal_pwrmgr_lock + 58
        0x1fff4156:    2804        .(      CMP      r0,#4
        0x1fff4158:    d013        ..      BEQ      0x1fff4182 ; hal_pwrmgr_lock + 58
        0x1fff415a:    f7fdfbd1    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff415e:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff419c] = 0x1fff7d40
        0x1fff4160:    2100        .!      MOVS     r1,#0
        0x1fff4162:    220c        ."      MOVS     r2,#0xc
        0x1fff4164:    434a        JC      MULS     r2,r1,r2
        0x1fff4166:    5c82        .\      LDRB     r2,[r0,r2]
        0x1fff4168:    2a00        .*      CMP      r2,#0
        0x1fff416a:    d011        ..      BEQ      0x1fff4190 ; hal_pwrmgr_lock + 72
        0x1fff416c:    42aa        .B      CMP      r2,r5
        0x1fff416e:    d10c        ..      BNE      0x1fff418a ; hal_pwrmgr_lock + 66
        0x1fff4170:    230c        .#      MOVS     r3,#0xc
        0x1fff4172:    4359        YC      MULS     r1,r3,r1
        0x1fff4174:    2201        ."      MOVS     r2,#1
        0x1fff4176:    1808        ..      ADDS     r0,r1,r0
        0x1fff4178:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff417a:    f7fdfd23    ..#.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bc4
        0x1fff417e:    2400        .$      MOVS     r4,#0
        0x1fff4180:    e006        ..      B        0x1fff4190 ; hal_pwrmgr_lock + 72
        0x1fff4182:    f7fdfd1f    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bc4
        0x1fff4186:    2000        .       MOVS     r0,#0
        0x1fff4188:    bd70        p.      POP      {r4-r6,pc}
        0x1fff418a:    1c49        I.      ADDS     r1,r1,#1
        0x1fff418c:    290a        .)      CMP      r1,#0xa
        0x1fff418e:    dbe8        ..      BLT      0x1fff4162 ; hal_pwrmgr_lock + 26
        0x1fff4190:    f7fdfbc2    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4194:    4620         F      MOV      r0,r4
        0x1fff4196:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4198:    1fff70a0    .p..    DCD    536834208
        0x1fff419c:    1fff7d40    @}..    DCD    536837440
    $t
    i.hal_pwrmgr_register
    hal_pwrmgr_register
        0x1fff41a0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff41a2:    4c12        .L      LDR      r4,[pc,#72] ; [0x1fff41ec] = 0x1fff7d40
        0x1fff41a4:    2300        .#      MOVS     r3,#0
        0x1fff41a6:    250c        .%      MOVS     r5,#0xc
        0x1fff41a8:    435d        ]C      MULS     r5,r3,r5
        0x1fff41aa:    5d65        e]      LDRB     r5,[r4,r5]
        0x1fff41ac:    4285        .B      CMP      r5,r0
        0x1fff41ae:    d101        ..      BNE      0x1fff41b4 ; hal_pwrmgr_register + 20
        0x1fff41b0:    2007        .       MOVS     r0,#7
        0x1fff41b2:    bd70        p.      POP      {r4-r6,pc}
        0x1fff41b4:    2d00        .-      CMP      r5,#0
        0x1fff41b6:    d004        ..      BEQ      0x1fff41c2 ; hal_pwrmgr_register + 34
        0x1fff41b8:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff41ba:    2b0a        .+      CMP      r3,#0xa
        0x1fff41bc:    dbf3        ..      BLT      0x1fff41a6 ; hal_pwrmgr_register + 6
        0x1fff41be:    2003        .       MOVS     r0,#3
        0x1fff41c0:    bd70        p.      POP      {r4-r6,pc}
        0x1fff41c2:    250c        .%      MOVS     r5,#0xc
        0x1fff41c4:    436b        kC      MULS     r3,r5,r3
        0x1fff41c6:    191b        ..      ADDS     r3,r3,r4
        0x1fff41c8:    4c09        .L      LDR      r4,[pc,#36] ; [0x1fff41f0] = 0x1fff70a1
        0x1fff41ca:    7825        %x      LDRB     r5,[r4,#0]
        0x1fff41cc:    076e        n.      LSLS     r6,r5,#29
        0x1fff41ce:    08ed        ..      LSRS     r5,r5,#3
        0x1fff41d0:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff41d2:    0f76        v.      LSRS     r6,r6,#29
        0x1fff41d4:    00ed        ..      LSLS     r5,r5,#3
        0x1fff41d6:    432e        .C      ORRS     r6,r6,r5
        0x1fff41d8:    7026        &p      STRB     r6,[r4,#0]
        0x1fff41da:    2b00        .+      CMP      r3,#0
        0x1fff41dc:    d0ef        ..      BEQ      0x1fff41be ; hal_pwrmgr_register + 30
        0x1fff41de:    2400        .$      MOVS     r4,#0
        0x1fff41e0:    705c        \p      STRB     r4,[r3,#1]
        0x1fff41e2:    7018        .p      STRB     r0,[r3,#0]
        0x1fff41e4:    609a        .`      STR      r2,[r3,#8]
        0x1fff41e6:    4620         F      MOV      r0,r4
        0x1fff41e8:    6059        Y`      STR      r1,[r3,#4]
        0x1fff41ea:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff41ec:    1fff7d40    @}..    DCD    536837440
        0x1fff41f0:    1fff70a1    .p..    DCD    536834209
    $t
    i.hal_pwrmgr_sleep_process
    hal_pwrmgr_sleep_process
    __tagsym$$used
        0x1fff41f4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff41f6:    f7ffff7d    ..}.    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff40f4
        0x1fff41fa:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff4228] = 0x1fff70a1
        0x1fff41fc:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff41fe:    08c4        ..      LSRS     r4,r0,#3
        0x1fff4200:    1e64        d.      SUBS     r4,r4,#1
        0x1fff4202:    d40d        ..      BMI      0x1fff4220 ; hal_pwrmgr_sleep_process + 44
        0x1fff4204:    4d09        .M      LDR      r5,[pc,#36] ; [0x1fff422c] = 0x1fff7d40
        0x1fff4206:    4620         F      MOV      r0,r4
        0x1fff4208:    210c        .!      MOVS     r1,#0xc
        0x1fff420a:    4348        HC      MULS     r0,r1,r0
        0x1fff420c:    5c29        )\      LDRB     r1,[r5,r0]
        0x1fff420e:    2900        .)      CMP      r1,#0
        0x1fff4210:    d008        ..      BEQ      0x1fff4224 ; hal_pwrmgr_sleep_process + 48
        0x1fff4212:    1940        @.      ADDS     r0,r0,r5
        0x1fff4214:    6840        @h      LDR      r0,[r0,#4]
        0x1fff4216:    2800        .(      CMP      r0,#0
        0x1fff4218:    d000        ..      BEQ      0x1fff421c ; hal_pwrmgr_sleep_process + 40
        0x1fff421a:    4780        .G      BLX      r0
        0x1fff421c:    1e64        d.      SUBS     r4,r4,#1
        0x1fff421e:    d5f2        ..      BPL      0x1fff4206 ; hal_pwrmgr_sleep_process + 18
        0x1fff4220:    2000        .       MOVS     r0,#0
        0x1fff4222:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4224:    2012        .       MOVS     r0,#0x12
        0x1fff4226:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4228:    1fff70a1    .p..    DCD    536834209
        0x1fff422c:    1fff7d40    @}..    DCD    536837440
    $t
    i.hal_pwrmgr_unlock
    hal_pwrmgr_unlock
        0x1fff4230:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4232:    4605        .F      MOV      r5,r0
        0x1fff4234:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff4290] = 0x1fff70a0
        0x1fff4236:    2400        .$      MOVS     r4,#0
        0x1fff4238:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff423a:    2801        .(      CMP      r0,#1
        0x1fff423c:    d011        ..      BEQ      0x1fff4262 ; hal_pwrmgr_unlock + 50
        0x1fff423e:    2804        .(      CMP      r0,#4
        0x1fff4240:    d00f        ..      BEQ      0x1fff4262 ; hal_pwrmgr_unlock + 50
        0x1fff4242:    f7fdfb5d    ..].    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4246:    2100        .!      MOVS     r1,#0
        0x1fff4248:    4a12        .J      LDR      r2,[pc,#72] ; [0x1fff4294] = 0x1fff7d40
        0x1fff424a:    460b        .F      MOV      r3,r1
        0x1fff424c:    4608        .F      MOV      r0,r1
        0x1fff424e:    260c        .&      MOVS     r6,#0xc
        0x1fff4250:    4370        pC      MULS     r0,r6,r0
        0x1fff4252:    5c16        .\      LDRB     r6,[r2,r0]
        0x1fff4254:    2e00        ..      CMP      r6,#0
        0x1fff4256:    d00f        ..      BEQ      0x1fff4278 ; hal_pwrmgr_unlock + 72
        0x1fff4258:    42ae        .B      CMP      r6,r5
        0x1fff425a:    d105        ..      BNE      0x1fff4268 ; hal_pwrmgr_unlock + 56
        0x1fff425c:    1880        ..      ADDS     r0,r0,r2
        0x1fff425e:    7043        Cp      STRB     r3,[r0,#1]
        0x1fff4260:    e007        ..      B        0x1fff4272 ; hal_pwrmgr_unlock + 66
        0x1fff4262:    f7fdfcaf    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bc4
        0x1fff4266:    e00d        ..      B        0x1fff4284 ; hal_pwrmgr_unlock + 84
        0x1fff4268:    1880        ..      ADDS     r0,r0,r2
        0x1fff426a:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff426c:    2800        .(      CMP      r0,#0
        0x1fff426e:    d000        ..      BEQ      0x1fff4272 ; hal_pwrmgr_unlock + 66
        0x1fff4270:    1c64        d.      ADDS     r4,r4,#1
        0x1fff4272:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4274:    290a        .)      CMP      r1,#0xa
        0x1fff4276:    dbe9        ..      BLT      0x1fff424c ; hal_pwrmgr_unlock + 28
        0x1fff4278:    2c00        .,      CMP      r4,#0
        0x1fff427a:    d005        ..      BEQ      0x1fff4288 ; hal_pwrmgr_unlock + 88
        0x1fff427c:    f7fdfca2    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bc4
        0x1fff4280:    f7fdfb4a    ..J.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4284:    2000        .       MOVS     r0,#0
        0x1fff4286:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4288:    f7fdfb70    ..p.    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff428c:    e7f8        ..      B        0x1fff4280 ; hal_pwrmgr_unlock + 80
    $d
        0x1fff428e:    0000        ..      DCW    0
        0x1fff4290:    1fff70a0    .p..    DCD    536834208
        0x1fff4294:    1fff7d40    @}..    DCD    536837440
    $t
    i.hal_pwrmgr_wakeup_process
    hal_pwrmgr_wakeup_process
    __tagsym$$used
        0x1fff4298:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff429a:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff430c] = 0x1fff70a0
        0x1fff429c:    2101        .!      MOVS     r1,#1
        0x1fff429e:    0789        ..      LSLS     r1,r1,#30
        0x1fff42a0:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff42a2:    608a        .`      STR      r2,[r1,#8]
        0x1fff42a4:    6882        .h      LDR      r2,[r0,#8]
        0x1fff42a6:    2301        .#      MOVS     r3,#1
        0x1fff42a8:    431a        .C      ORRS     r2,r2,r3
        0x1fff42aa:    614a        Ja      STR      r2,[r1,#0x14]
        0x1fff42ac:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff4310] = 0x4000f080
        0x1fff42ae:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff42b0:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff42b2:    6b49        Ik      LDR      r1,[r1,#0x34]
        0x1fff42b4:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff42b6:    2100        .!      MOVS     r1,#0
        0x1fff42b8:    2004        .       MOVS     r0,#4
        0x1fff42ba:    f7fefd37    ..7.    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff42be:    2101        .!      MOVS     r1,#1
        0x1fff42c0:    2014        .       MOVS     r0,#0x14
        0x1fff42c2:    f7fefd33    ..3.    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff42c6:    2101        .!      MOVS     r1,#1
        0x1fff42c8:    2015        .       MOVS     r0,#0x15
        0x1fff42ca:    f7fefd2f    ../.    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff42ce:    2101        .!      MOVS     r1,#1
        0x1fff42d0:    2017        .       MOVS     r0,#0x17
        0x1fff42d2:    f7fefd2b    ..+.    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff42d6:    f001f9fd    ....    BL       peripheral_interrupt_restore_default ; 0x1fff56d4
        0x1fff42da:    4e0c        .N      LDR      r6,[pc,#48] ; [0x1fff430c] = 0x1fff70a0
        0x1fff42dc:    2400        .$      MOVS     r4,#0
        0x1fff42de:    4d0d        .M      LDR      r5,[pc,#52] ; [0x1fff4314] = 0x1fff7d40
        0x1fff42e0:    1c76        v.      ADDS     r6,r6,#1
        0x1fff42e2:    e00b        ..      B        0x1fff42fc ; hal_pwrmgr_wakeup_process + 100
        0x1fff42e4:    4620         F      MOV      r0,r4
        0x1fff42e6:    210c        .!      MOVS     r1,#0xc
        0x1fff42e8:    4348        HC      MULS     r0,r1,r0
        0x1fff42ea:    5c29        )\      LDRB     r1,[r5,r0]
        0x1fff42ec:    2900        .)      CMP      r1,#0
        0x1fff42ee:    d00b        ..      BEQ      0x1fff4308 ; hal_pwrmgr_wakeup_process + 112
        0x1fff42f0:    1940        @.      ADDS     r0,r0,r5
        0x1fff42f2:    6880        .h      LDR      r0,[r0,#8]
        0x1fff42f4:    2800        .(      CMP      r0,#0
        0x1fff42f6:    d000        ..      BEQ      0x1fff42fa ; hal_pwrmgr_wakeup_process + 98
        0x1fff42f8:    4780        .G      BLX      r0
        0x1fff42fa:    1c64        d.      ADDS     r4,r4,#1
        0x1fff42fc:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff42fe:    08c0        ..      LSRS     r0,r0,#3
        0x1fff4300:    42a0        .B      CMP      r0,r4
        0x1fff4302:    dcef        ..      BGT      0x1fff42e4 ; hal_pwrmgr_wakeup_process + 76
        0x1fff4304:    2000        .       MOVS     r0,#0
        0x1fff4306:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4308:    2012        .       MOVS     r0,#0x12
        0x1fff430a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff430c:    1fff70a0    .p..    DCD    536834208
        0x1fff4310:    4000f080    ...@    DCD    1073803392
        0x1fff4314:    1fff7d40    @}..    DCD    536837440
    $t
    i.hal_rc32k_clk_tracking_init
    hal_rc32k_clk_tracking_init
        0x1fff4318:    b510        ..      PUSH     {r4,lr}
        0x1fff431a:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff4334] = 0x1fff0a14
        0x1fff431c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff4330] = 0x1e84
        0x1fff431e:    6008        .`      STR      r0,[r1,#0]
        0x1fff4320:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff4338] = 0x1fff0a38
        0x1fff4322:    6008        .`      STR      r0,[r1,#0]
        0x1fff4324:    f7feff16    ....    BL       aon_register_init ; 0x1fff3154
        0x1fff4328:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff433c] = 0x4000f0c0
        0x1fff432a:    2000        .       MOVS     r0,#0
        0x1fff432c:    6048        H`      STR      r0,[r1,#4]
        0x1fff432e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4330:    00001e84    ....    DCD    7812
        0x1fff4334:    1fff0a14    ....    DCD    536807956
        0x1fff4338:    1fff0a38    8...    DCD    536807992
        0x1fff433c:    4000f0c0    ...@    DCD    1073803456
    $t
    i.hal_rfphy_init
    hal_rfphy_init
        0x1fff4340:    b510        ..      PUSH     {r4,lr}
        0x1fff4342:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff439c] = 0x1fff0a48
        0x1fff4344:    200f        .       MOVS     r0,#0xf
        0x1fff4346:    7008        .p      STRB     r0,[r1,#0]
        0x1fff4348:    4915        .I      LDR      r1,[pc,#84] ; [0x1fff43a0] = 0x1fff0a49
        0x1fff434a:    2001        .       MOVS     r0,#1
        0x1fff434c:    7008        .p      STRB     r0,[r1,#0]
        0x1fff434e:    4915        .I      LDR      r1,[pc,#84] ; [0x1fff43a4] = 0x1fff0a68
        0x1fff4350:    2000        .       MOVS     r0,#0
        0x1fff4352:    7008        .p      STRB     r0,[r1,#0]
        0x1fff4354:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff43a8] = 0x4000f080
        0x1fff4356:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff4358:    0949        I.      LSRS     r1,r1,#5
        0x1fff435a:    0149        I.      LSLS     r1,r1,#5
        0x1fff435c:    3109        .1      ADDS     r1,r1,#9
        0x1fff435e:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff4360:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff4362:    2260        `"      MOVS     r2,#0x60
        0x1fff4364:    4311        .C      ORRS     r1,r1,r2
        0x1fff4366:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff4368:    f7ffffd6    ....    BL       hal_rc32k_clk_tracking_init ; 0x1fff4318
        0x1fff436c:    f000f820    .. .    BL       hal_rom_boot_init ; 0x1fff43b0
        0x1fff4370:    2100        .!      MOVS     r1,#0
        0x1fff4372:    2004        .       MOVS     r0,#4
        0x1fff4374:    f7fefc96    ....    BL       __NVIC_SetPriority ; 0x1fff2ca4
        0x1fff4378:    2101        .!      MOVS     r1,#1
        0x1fff437a:    2014        .       MOVS     r0,#0x14
        0x1fff437c:    f7fefc92    ....    BL       __NVIC_SetPriority ; 0x1fff2ca4
        0x1fff4380:    2101        .!      MOVS     r1,#1
        0x1fff4382:    2015        .       MOVS     r0,#0x15
        0x1fff4384:    f7fefc8e    ....    BL       __NVIC_SetPriority ; 0x1fff2ca4
        0x1fff4388:    2101        .!      MOVS     r1,#1
        0x1fff438a:    2017        .       MOVS     r0,#0x17
        0x1fff438c:    f7fefc8a    ....    BL       __NVIC_SetPriority ; 0x1fff2ca4
        0x1fff4390:    2101        .!      MOVS     r1,#1
        0x1fff4392:    02c9        ..      LSLS     r1,r1,#11
        0x1fff4394:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff43ac] = 0x1fff714c
        0x1fff4396:    f7fdfc1b    ....    BL       $Ven$TT$L$$osal_mem_set_heap ; 0x1fff1bd0
        0x1fff439a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff439c:    1fff0a48    H...    DCD    536808008
        0x1fff43a0:    1fff0a49    I...    DCD    536808009
        0x1fff43a4:    1fff0a68    h...    DCD    536808040
        0x1fff43a8:    4000f080    ...@    DCD    1073803392
        0x1fff43ac:    1fff714c    Lq..    DCD    536834380
    $t
    i.hal_rom_boot_init
    hal_rom_boot_init
        0x1fff43b0:    b510        ..      PUSH     {r4,lr}
        0x1fff43b2:    f7fefeb9    ....    BL       _rom_sec_boot_init ; 0x1fff3128
        0x1fff43b6:    bd10        ..      POP      {r4,pc}
    i.hal_rtc_clock_config
    hal_rtc_clock_config
        0x1fff43b8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff43ba:    2540        @%      MOVS     r5,#0x40
        0x1fff43bc:    4c1c        .L      LDR      r4,[pc,#112] ; [0x1fff4430] = 0x4000f000
        0x1fff43be:    2801        .(      CMP      r0,#1
        0x1fff43c0:    d002        ..      BEQ      0x1fff43c8 ; hal_rtc_clock_config + 16
        0x1fff43c2:    2800        .(      CMP      r0,#0
        0x1fff43c4:    d011        ..      BEQ      0x1fff43ea ; hal_rtc_clock_config + 50
        0x1fff43c6:    e027        '.      B        0x1fff4418 ; hal_rtc_clock_config + 96
        0x1fff43c8:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff43ca:    2105        .!      MOVS     r1,#5
        0x1fff43cc:    0140        @.      LSLS     r0,r0,#5
        0x1fff43ce:    0940        @.      LSRS     r0,r0,#5
        0x1fff43d0:    06c9        ..      LSLS     r1,r1,#27
        0x1fff43d2:    1840        @.      ADDS     r0,r0,r1
        0x1fff43d4:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff43d6:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff43d8:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff4434] = 0xfffe007f
        0x1fff43da:    4008        .@      ANDS     r0,r0,r1
        0x1fff43dc:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff4438] = 0x1fd80
        0x1fff43de:    1840        @.      ADDS     r0,r0,r1
        0x1fff43e0:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff43e2:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff43e4:    4328        (C      ORRS     r0,r0,r5
        0x1fff43e6:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff43e8:    e016        ..      B        0x1fff4418 ; hal_rtc_clock_config + 96
        0x1fff43ea:    2100        .!      MOVS     r1,#0
        0x1fff43ec:    200a        .       MOVS     r0,#0xa
        0x1fff43ee:    f7fffc0f    ....    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff43f2:    2100        .!      MOVS     r1,#0
        0x1fff43f4:    200b        .       MOVS     r0,#0xb
        0x1fff43f6:    f7fffc0b    ....    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff43fa:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff43fc:    2103        .!      MOVS     r1,#3
        0x1fff43fe:    0209        ..      LSLS     r1,r1,#8
        0x1fff4400:    4308        .C      ORRS     r0,r0,r1
        0x1fff4402:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4404:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4406:    43a8        .C      BICS     r0,r0,r5
        0x1fff4408:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff440a:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff440c:    210b        .!      MOVS     r1,#0xb
        0x1fff440e:    0140        @.      LSLS     r0,r0,#5
        0x1fff4410:    0940        @.      LSRS     r0,r0,#5
        0x1fff4412:    0709        ..      LSLS     r1,r1,#28
        0x1fff4414:    1840        @.      ADDS     r0,r0,r1
        0x1fff4416:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff4418:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff441a:    2101        .!      MOVS     r1,#1
        0x1fff441c:    0709        ..      LSLS     r1,r1,#28
        0x1fff441e:    4308        .C      ORRS     r0,r0,r1
        0x1fff4420:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff4422:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff4424:    2103        .!      MOVS     r1,#3
        0x1fff4426:    0449        I.      LSLS     r1,r1,#17
        0x1fff4428:    4388        .C      BICS     r0,r0,r1
        0x1fff442a:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff442c:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff442e:    0000        ..      DCW    0
        0x1fff4430:    4000f000    ...@    DCD    1073803264
        0x1fff4434:    fffe007f    ....    DCD    4294836351
        0x1fff4438:    0001fd80    ....    DCD    130432
    $t
    i.hal_spif_cache_init
    hal_spif_cache_init
        0x1fff443c:    b510        ..      PUSH     {r4,lr}
        0x1fff443e:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff4454] = 0x1fff70c0
        0x1fff4440:    6048        H`      STR      r0,[r1,#4]
        0x1fff4442:    f000f855    ..U.    BL       hw_spif_cache_config ; 0x1fff44f0
        0x1fff4446:    4a04        .J      LDR      r2,[pc,#16] ; [0x1fff4458] = 0x1fff44f1
        0x1fff4448:    2100        .!      MOVS     r1,#0
        0x1fff444a:    2013        .       MOVS     r0,#0x13
        0x1fff444c:    f7fffea8    ....    BL       hal_pwrmgr_register ; 0x1fff41a0
        0x1fff4450:    2000        .       MOVS     r0,#0
        0x1fff4452:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4454:    1fff70c0    .p..    DCD    536834240
        0x1fff4458:    1fff44f1    .D..    DCD    536823025
    $t
    i.hal_system_clock_change_process
    hal_system_clock_change_process
        0x1fff445c:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff4468] = 0x1fff0340
        0x1fff445e:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff4460:    2800        .(      CMP      r0,#0
        0x1fff4462:    d000        ..      BEQ      0x1fff4466 ; hal_system_clock_change_process + 10
        0x1fff4464:    4700        .G      BX       r0
        0x1fff4466:    4770        pG      BX       lr
    $d
        0x1fff4468:    1fff0340    @...    DCD    536806208
    $t
    i.hal_uart_init
    hal_uart_init
        0x1fff446c:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff446e:    b081        ..      SUB      sp,sp,#4
        0x1fff4470:    9f0a        ..      LDR      r7,[sp,#0x28]
        0x1fff4472:    4d14        .M      LDR      r5,[pc,#80] ; [0x1fff44c4] = 0x1fff7bd0
        0x1fff4474:    017e        ~.      LSLS     r6,r7,#5
        0x1fff4476:    5da8        .]      LDRB     r0,[r5,r6]
        0x1fff4478:    2800        .(      CMP      r0,#0
        0x1fff447a:    d002        ..      BEQ      0x1fff4482 ; hal_uart_init + 22
        0x1fff447c:    2011        .       MOVS     r0,#0x11
        0x1fff447e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff4480:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff4482:    4668        hF      MOV      r0,sp
        0x1fff4484:    7b40        @{      LDRB     r0,[r0,#0xd]
        0x1fff4486:    2800        .(      CMP      r0,#0
        0x1fff4488:    d001        ..      BEQ      0x1fff448e ; hal_uart_init + 34
        0x1fff448a:    2005        .       MOVS     r0,#5
        0x1fff448c:    e7f7        ..      B        0x1fff447e ; hal_uart_init + 18
        0x1fff448e:    1974        t.      ADDS     r4,r6,r5
        0x1fff4490:    2120         !      MOVS     r1,#0x20
        0x1fff4492:    4620         F      MOV      r0,r4
        0x1fff4494:    f7fdfb8a    ....    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1bac
        0x1fff4498:    a801        ..      ADD      r0,sp,#4
        0x1fff449a:    c80f        ..      LDM      r0,{r0-r3}
        0x1fff449c:    3410        .4      ADDS     r4,r4,#0x10
        0x1fff449e:    c40f        ..      STM      r4!,{r0-r3}
        0x1fff44a0:    4638        8F      MOV      r0,r7
        0x1fff44a2:    f002fa35    ..5.    BL       uart_hw_init ; 0x1fff6910
        0x1fff44a6:    2001        .       MOVS     r0,#1
        0x1fff44a8:    55a8        .U      STRB     r0,[r5,r6]
        0x1fff44aa:    2f00        ./      CMP      r7,#0
        0x1fff44ac:    d006        ..      BEQ      0x1fff44bc ; hal_uart_init + 80
        0x1fff44ae:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff44c8] = 0x1fff6ac3
        0x1fff44b0:    2100        .!      MOVS     r1,#0
        0x1fff44b2:    2019        .       MOVS     r0,#0x19
        0x1fff44b4:    f7fffe74    ..t.    BL       hal_pwrmgr_register ; 0x1fff41a0
        0x1fff44b8:    2000        .       MOVS     r0,#0
        0x1fff44ba:    e7e0        ..      B        0x1fff447e ; hal_uart_init + 18
        0x1fff44bc:    2100        .!      MOVS     r1,#0
        0x1fff44be:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff44cc] = 0x1fff6ab9
        0x1fff44c0:    2008        .       MOVS     r0,#8
        0x1fff44c2:    e7f7        ..      B        0x1fff44b4 ; hal_uart_init + 72
    $d
        0x1fff44c4:    1fff7bd0    .{..    DCD    536837072
        0x1fff44c8:    1fff6ac3    .j..    DCD    536832707
        0x1fff44cc:    1fff6ab9    .j..    DCD    536832697
    $t
    i.hal_uart_send_buff
    hal_uart_send_buff
        0x1fff44d0:    b510        ..      PUSH     {r4,lr}
        0x1fff44d2:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff44ec] = 0x1fff7bd0
        0x1fff44d4:    0143        C.      LSLS     r3,r0,#5
        0x1fff44d6:    191b        ..      ADDS     r3,r3,r4
        0x1fff44d8:    7e9b        .~      LDRB     r3,[r3,#0x1a]
        0x1fff44da:    2b00        .+      CMP      r3,#0
        0x1fff44dc:    d002        ..      BEQ      0x1fff44e4 ; hal_uart_send_buff + 20
        0x1fff44de:    f002f979    ..y.    BL       txmit_buf_use_tx_buf ; 0x1fff67d4
        0x1fff44e2:    bd10        ..      POP      {r4,pc}
        0x1fff44e4:    f002f940    ..@.    BL       txmit_buf_polling ; 0x1fff6768
        0x1fff44e8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff44ea:    0000        ..      DCW    0
        0x1fff44ec:    1fff7bd0    .{..    DCD    536837072
    $t
    i.hw_spif_cache_config
    hw_spif_cache_config
        0x1fff44f0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff44f2:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff457c] = 0x1fff0a4a
        0x1fff44f4:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff44f6:    2902        .)      CMP      r1,#2
        0x1fff44f8:    d901        ..      BLS      0x1fff44fe ; hw_spif_cache_config + 14
        0x1fff44fa:    2004        .       MOVS     r0,#4
        0x1fff44fc:    e000        ..      B        0x1fff4500 ; hw_spif_cache_config + 16
        0x1fff44fe:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4500:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff4580] = 0x1fff70c4
        0x1fff4502:    4b20         K      LDR      r3,[pc,#128] ; [0x1fff4584] = 0x802006b
        0x1fff4504:    680a        .h      LDR      r2,[r1,#0]
        0x1fff4506:    2101        .!      MOVS     r1,#1
        0x1fff4508:    2400        .$      MOVS     r4,#0
        0x1fff450a:    429a        .B      CMP      r2,r3
        0x1fff450c:    d101        ..      BNE      0x1fff4512 ; hw_spif_cache_config + 34
        0x1fff450e:    9100        ..      STR      r1,[sp,#0]
        0x1fff4510:    e000        ..      B        0x1fff4514 ; hw_spif_cache_config + 36
        0x1fff4512:    9400        ..      STR      r4,[sp,#0]
        0x1fff4514:    2300        .#      MOVS     r3,#0
        0x1fff4516:    2101        .!      MOVS     r1,#1
        0x1fff4518:    f7fdfb60    ..`.    BL       $Ven$TT$L$$spif_config ; 0x1fff1bdc
        0x1fff451c:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff458c] = 0x4000c800
        0x1fff451e:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff4588] = 0xff010005
        0x1fff4520:    6388        .c      STR      r0,[r1,#0x38]
        0x1fff4522:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff458c] = 0x4000c800
        0x1fff4524:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff4526:    6104        .a      STR      r4,[r0,#0x10]
        0x1fff4528:    2110        .!      MOVS     r1,#0x10
        0x1fff452a:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff452c:    2602        .&      MOVS     r6,#2
        0x1fff452e:    6186        .a      STR      r6,[r0,#0x18]
        0x1fff4530:    0388        ..      LSLS     r0,r1,#14
        0x1fff4532:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff4590] = 0xe000e180
        0x1fff4534:    6008        .`      STR      r0,[r1,#0]
        0x1fff4536:    f3bf8f4f    ..O.    DSB      
        0x1fff453a:    f3bf8f6f    ..o.    ISB      
        0x1fff453e:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff4594] = 0xe000e410
        0x1fff4540:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4542:    22ff        ."      MOVS     r2,#0xff
        0x1fff4544:    0412        ..      LSLS     r2,r2,#16
        0x1fff4546:    4391        .C      BICS     r1,r1,r2
        0x1fff4548:    05b2        ..      LSLS     r2,r6,#22
        0x1fff454a:    4311        .C      ORRS     r1,r1,r2
        0x1fff454c:    6001        .`      STR      r1,[r0,#0]
        0x1fff454e:    2064        d       MOVS     r0,#0x64
        0x1fff4550:    9000        ..      STR      r0,[sp,#0]
        0x1fff4552:    2041        A       MOVS     r0,#0x41
        0x1fff4554:    f7fffa22    ..".    BL       hal_clk_gate_enable ; 0x1fff399c
        0x1fff4558:    2040        @       MOVS     r0,#0x40
        0x1fff455a:    f7fffa1f    ....    BL       hal_clk_gate_enable ; 0x1fff399c
        0x1fff455e:    0775        u.      LSLS     r5,r6,#29
        0x1fff4560:    626e        nb      STR      r6,[r5,#0x24]
        0x1fff4562:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4564:    1e41        A.      SUBS     r1,r0,#1
        0x1fff4566:    9100        ..      STR      r1,[sp,#0]
        0x1fff4568:    d2fb        ..      BCS      0x1fff4562 ; hw_spif_cache_config + 114
        0x1fff456a:    2003        .       MOVS     r0,#3
        0x1fff456c:    6268        hb      STR      r0,[r5,#0x24]
        0x1fff456e:    f7fff9d7    ....    BL       hal_cache_tag_flush ; 0x1fff3920
        0x1fff4572:    62ac        .b      STR      r4,[r5,#0x28]
        0x1fff4574:    2000        .       MOVS     r0,#0
        0x1fff4576:    f7fdfb37    ..7.    BL       $Ven$TT$L$$spif_read_id ; 0x1fff1be8
        0x1fff457a:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff457c:    1fff0a4a    J...    DCD    536808010
        0x1fff4580:    1fff70c4    .p..    DCD    536834244
        0x1fff4584:    0802006b    k...    DCD    134348907
        0x1fff4588:    ff010005    ....    DCD    4278255621
        0x1fff458c:    4000c800    ...@    DCD    1073793024
        0x1fff4590:    e000e180    ....    DCD    3758154112
        0x1fff4594:    e000e410    ....    DCD    3758154768
    $t
    i.isTimer5Running
    isTimer5Running
        0x1fff4598:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff45a4] = 0x40001040
        0x1fff459a:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff459c:    07c0        ..      LSLS     r0,r0,#31
        0x1fff459e:    d000        ..      BEQ      0x1fff45a2 ; isTimer5Running + 10
        0x1fff45a0:    2001        .       MOVS     r0,#1
        0x1fff45a2:    4770        pG      BX       lr
    $d
        0x1fff45a4:    40001040    @..@    DCD    1073745984
    $t
    i.l2capPocessFragmentTxData
    l2capPocessFragmentTxData
        0x1fff45a8:    4770        pG      BX       lr
        0x1fff45aa:    0000        ..      MOVS     r0,r0
    i.lib_efuse_load
    lib_efuse_load
        0x1fff45ac:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff45ae:    c80a        ..      LDM      r0!,{r1,r3}
        0x1fff45b0:    4a28        (J      LDR      r2,[pc,#160] ; [0x1fff4654] = 0x1fff7144
        0x1fff45b2:    074c        L.      LSLS     r4,r1,#29
        0x1fff45b4:    6810        .h      LDR      r0,[r2,#0]
        0x1fff45b6:    0fa4        ..      LSRS     r4,r4,#30
        0x1fff45b8:    0880        ..      LSRS     r0,r0,#2
        0x1fff45ba:    0080        ..      LSLS     r0,r0,#2
        0x1fff45bc:    4320         C      ORRS     r0,r0,r4
        0x1fff45be:    08cc        ..      LSRS     r4,r1,#3
        0x1fff45c0:    07e5        ..      LSLS     r5,r4,#31
        0x1fff45c2:    2404        .$      MOVS     r4,#4
        0x1fff45c4:    6010        .`      STR      r0,[r2,#0]
        0x1fff45c6:    2d00        .-      CMP      r5,#0
        0x1fff45c8:    d03c        <.      BEQ      0x1fff4644 ; lib_efuse_load + 152
        0x1fff45ca:    43a0        .C      BICS     r0,r0,r4
        0x1fff45cc:    2478        x$      MOVS     r4,#0x78
        0x1fff45ce:    43a0        .C      BICS     r0,r0,r4
        0x1fff45d0:    060c        ..      LSLS     r4,r1,#24
        0x1fff45d2:    0f24        $.      LSRS     r4,r4,#28
        0x1fff45d4:    00e4        ..      LSLS     r4,r4,#3
        0x1fff45d6:    4320         C      ORRS     r0,r0,r4
        0x1fff45d8:    240f        .$      MOVS     r4,#0xf
        0x1fff45da:    01e4        ..      LSLS     r4,r4,#7
        0x1fff45dc:    43a0        .C      BICS     r0,r0,r4
        0x1fff45de:    050c        ..      LSLS     r4,r1,#20
        0x1fff45e0:    0f24        $.      LSRS     r4,r4,#28
        0x1fff45e2:    01e4        ..      LSLS     r4,r4,#7
        0x1fff45e4:    4320         C      ORRS     r0,r0,r4
        0x1fff45e6:    0b0c        ..      LSRS     r4,r1,#12
        0x1fff45e8:    07e5        ..      LSLS     r5,r4,#31
        0x1fff45ea:    4c1b        .L      LDR      r4,[pc,#108] ; [0x1fff4658] = 0x800
        0x1fff45ec:    6010        .`      STR      r0,[r2,#0]
        0x1fff45ee:    d02b        +.      BEQ      0x1fff4648 ; lib_efuse_load + 156
        0x1fff45f0:    43a0        .C      BICS     r0,r0,r4
        0x1fff45f2:    4c1a        .L      LDR      r4,[pc,#104] ; [0x1fff465c] = 0xffc00fff
        0x1fff45f4:    4020         @      ANDS     r0,r0,r4
        0x1fff45f6:    024c        L.      LSLS     r4,r1,#9
        0x1fff45f8:    0da4        ..      LSRS     r4,r4,#22
        0x1fff45fa:    0324        $.      LSLS     r4,r4,#12
        0x1fff45fc:    4320         C      ORRS     r0,r0,r4
        0x1fff45fe:    240f        .$      MOVS     r4,#0xf
        0x1fff4600:    05a4        ..      LSLS     r4,r4,#22
        0x1fff4602:    43a0        .C      BICS     r0,r0,r4
        0x1fff4604:    014c        L.      LSLS     r4,r1,#5
        0x1fff4606:    0f24        $.      LSRS     r4,r4,#28
        0x1fff4608:    05a4        ..      LSLS     r4,r4,#22
        0x1fff460a:    4320         C      ORRS     r0,r0,r4
        0x1fff460c:    019c        ..      LSLS     r4,r3,#6
        0x1fff460e:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff4610:    0864        d.      LSRS     r4,r4,#1
        0x1fff4612:    4321        !C      ORRS     r1,r1,r4
        0x1fff4614:    c203        ..      STM      r2!,{r0,r1}
        0x1fff4616:    0e99        ..      LSRS     r1,r3,#26
        0x1fff4618:    07cc        ..      LSLS     r4,r1,#31
        0x1fff461a:    2101        .!      MOVS     r1,#1
        0x1fff461c:    0689        ..      LSLS     r1,r1,#26
        0x1fff461e:    3a08        .:      SUBS     r2,r2,#8
        0x1fff4620:    2c00        .,      CMP      r4,#0
        0x1fff4622:    d013        ..      BEQ      0x1fff464c ; lib_efuse_load + 160
        0x1fff4624:    4388        .C      BICS     r0,r0,r1
        0x1fff4626:    0ed9        ..      LSRS     r1,r3,#27
        0x1fff4628:    07cc        ..      LSLS     r4,r1,#31
        0x1fff462a:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff4660] = 0x8000000
        0x1fff462c:    6010        .`      STR      r0,[r2,#0]
        0x1fff462e:    d00f        ..      BEQ      0x1fff4650 ; lib_efuse_load + 164
        0x1fff4630:    4388        .C      BICS     r0,r0,r1
        0x1fff4632:    2103        .!      MOVS     r1,#3
        0x1fff4634:    0709        ..      LSLS     r1,r1,#28
        0x1fff4636:    4388        .C      BICS     r0,r0,r1
        0x1fff4638:    0099        ..      LSLS     r1,r3,#2
        0x1fff463a:    0f89        ..      LSRS     r1,r1,#30
        0x1fff463c:    0709        ..      LSLS     r1,r1,#28
        0x1fff463e:    4308        .C      ORRS     r0,r0,r1
        0x1fff4640:    6010        .`      STR      r0,[r2,#0]
        0x1fff4642:    bd30        0.      POP      {r4,r5,pc}
        0x1fff4644:    4320         C      ORRS     r0,r0,r4
        0x1fff4646:    e7c1        ..      B        0x1fff45cc ; lib_efuse_load + 32
        0x1fff4648:    4320         C      ORRS     r0,r0,r4
        0x1fff464a:    e7d2        ..      B        0x1fff45f2 ; lib_efuse_load + 70
        0x1fff464c:    4308        .C      ORRS     r0,r0,r1
        0x1fff464e:    e7ea        ..      B        0x1fff4626 ; lib_efuse_load + 122
        0x1fff4650:    4308        .C      ORRS     r0,r0,r1
        0x1fff4652:    e7ee        ..      B        0x1fff4632 ; lib_efuse_load + 134
    $d
        0x1fff4654:    1fff7144    Dq..    DCD    536834372
        0x1fff4658:    00000800    ....    DCD    2048
        0x1fff465c:    ffc00fff    ....    DCD    4290777087
        0x1fff4660:    08000000    ....    DCD    134217728
    $t
    i.llProcessTxData1
    llProcessTxData1
        0x1fff4664:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4666:    4605        .F      MOV      r5,r0
        0x1fff4668:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff46b4] = 0x1fff70d8
        0x1fff466a:    460f        .F      MOV      r7,r1
        0x1fff466c:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff466e:    4281        .B      CMP      r1,r0
        0x1fff4670:    d11f        ..      BNE      0x1fff46b2 ; llProcessTxData1 + 78
        0x1fff4672:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff4674:    2800        .(      CMP      r0,#0
        0x1fff4676:    d018        ..      BEQ      0x1fff46aa ; llProcessTxData1 + 70
        0x1fff4678:    2400        .$      MOVS     r4,#0
        0x1fff467a:    00a0        ..      LSLS     r0,r4,#2
        0x1fff467c:    1946        F.      ADDS     r6,r0,r5
        0x1fff467e:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4680:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4682:    68f1        .h      LDR      r1,[r6,#0xc]
        0x1fff4684:    2900        .)      CMP      r1,#0
        0x1fff4686:    d00d        ..      BEQ      0x1fff46a4 ; llProcessTxData1 + 64
        0x1fff4688:    6808        .h      LDR      r0,[r1,#0]
        0x1fff468a:    2800        .(      CMP      r0,#0
        0x1fff468c:    d10a        ..      BNE      0x1fff46a4 ; llProcessTxData1 + 64
        0x1fff468e:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff4690:    f000fc74    ..t.    BL       ll_osal_mem_free ; 0x1fff4f7c
        0x1fff4694:    2000        .       MOVS     r0,#0
        0x1fff4696:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff4698:    2005        .       MOVS     r0,#5
        0x1fff469a:    01c0        ..      LSLS     r0,r0,#7
        0x1fff469c:    1828        (.      ADDS     r0,r5,r0
        0x1fff469e:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff46a0:    1e49        I.      SUBS     r1,r1,#1
        0x1fff46a2:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff46a4:    1c64        d.      ADDS     r4,r4,#1
        0x1fff46a6:    2c08        .,      CMP      r4,#8
        0x1fff46a8:    dbe7        ..      BLT      0x1fff467a ; llProcessTxData1 + 22
        0x1fff46aa:    4639        9F      MOV      r1,r7
        0x1fff46ac:    4628        (F      MOV      r0,r5
        0x1fff46ae:    f7fdfaa1    ....    BL       $Ven$TT$L$$llProcessTxData0 ; 0x1fff1bf4
        0x1fff46b2:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff46b4:    1fff70d8    .p..    DCD    536834264
    $t
    i.llReleaseConnId1
    llReleaseConnId1
        0x1fff46b8:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff46ba:    4607        .F      MOV      r7,r0
        0x1fff46bc:    4605        .F      MOV      r5,r0
        0x1fff46be:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff46c0:    2005        .       MOVS     r0,#5
        0x1fff46c2:    2600        .&      MOVS     r6,#0
        0x1fff46c4:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff46c6:    01c0        ..      LSLS     r0,r0,#7
        0x1fff46c8:    182c        ,.      ADDS     r4,r5,r0
        0x1fff46ca:    00b0        ..      LSLS     r0,r6,#2
        0x1fff46cc:    1940        @.      ADDS     r0,r0,r5
        0x1fff46ce:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff46d0:    3001        .0      ADDS     r0,#1
        0x1fff46d2:    9000        ..      STR      r0,[sp,#0]
        0x1fff46d4:    6ec1        .n      LDR      r1,[r0,#0x6c]
        0x1fff46d6:    2900        .)      CMP      r1,#0
        0x1fff46d8:    d005        ..      BEQ      0x1fff46e6 ; llReleaseConnId1 + 46
        0x1fff46da:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff46dc:    f000fc4e    ..N.    BL       ll_osal_mem_free ; 0x1fff4f7c
        0x1fff46e0:    7820         x      LDRB     r0,[r4,#0]
        0x1fff46e2:    1e40        @.      SUBS     r0,r0,#1
        0x1fff46e4:    7020         p      STRB     r0,[r4,#0]
        0x1fff46e6:    9800        ..      LDR      r0,[sp,#0]
        0x1fff46e8:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff46ea:    1c76        v.      ADDS     r6,r6,#1
        0x1fff46ec:    66c1        .f      STR      r1,[r0,#0x6c]
        0x1fff46ee:    2e08        ..      CMP      r6,#8
        0x1fff46f0:    dbeb        ..      BLT      0x1fff46ca ; llReleaseConnId1 + 18
        0x1fff46f2:    2600        .&      MOVS     r6,#0
        0x1fff46f4:    00b0        ..      LSLS     r0,r6,#2
        0x1fff46f6:    1940        @.      ADDS     r0,r0,r5
        0x1fff46f8:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff46fa:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff46fc:    9000        ..      STR      r0,[sp,#0]
        0x1fff46fe:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1fff4700:    2900        .)      CMP      r1,#0
        0x1fff4702:    d005        ..      BEQ      0x1fff4710 ; llReleaseConnId1 + 88
        0x1fff4704:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff4706:    f000fc39    ..9.    BL       ll_osal_mem_free ; 0x1fff4f7c
        0x1fff470a:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff470c:    1e40        @.      SUBS     r0,r0,#1
        0x1fff470e:    7060        `p      STRB     r0,[r4,#1]
        0x1fff4710:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4712:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff4714:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4716:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff4718:    2e08        ..      CMP      r6,#8
        0x1fff471a:    dbeb        ..      BLT      0x1fff46f4 ; llReleaseConnId1 + 60
        0x1fff471c:    2600        .&      MOVS     r6,#0
        0x1fff471e:    00b0        ..      LSLS     r0,r6,#2
        0x1fff4720:    1947        G.      ADDS     r7,r0,r5
        0x1fff4722:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff4724:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff4726:    6b39        9k      LDR      r1,[r7,#0x30]
        0x1fff4728:    2900        .)      CMP      r1,#0
        0x1fff472a:    d005        ..      BEQ      0x1fff4738 ; llReleaseConnId1 + 128
        0x1fff472c:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff472e:    f000fc25    ..%.    BL       ll_osal_mem_free ; 0x1fff4f7c
        0x1fff4732:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff4734:    1e40        @.      SUBS     r0,r0,#1
        0x1fff4736:    70a0        .p      STRB     r0,[r4,#2]
        0x1fff4738:    2000        .       MOVS     r0,#0
        0x1fff473a:    1c76        v.      ADDS     r6,r6,#1
        0x1fff473c:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff473e:    2e08        ..      CMP      r6,#8
        0x1fff4740:    dbed        ..      BLT      0x1fff471e ; llReleaseConnId1 + 102
        0x1fff4742:    4628        (F      MOV      r0,r5
        0x1fff4744:    f000f888    ....    BL       ll_flow_ctrl_restore ; 0x1fff4858
        0x1fff4748:    4628        (F      MOV      r0,r5
        0x1fff474a:    f7fdfa59    ..Y.    BL       $Ven$TT$L$$llReleaseConnId0 ; 0x1fff1c00
        0x1fff474e:    2100        .!      MOVS     r1,#0
        0x1fff4750:    4608        .F      MOV      r0,r1
        0x1fff4752:    008a        ..      LSLS     r2,r1,#2
        0x1fff4754:    1952        R.      ADDS     r2,r2,r5
        0x1fff4756:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff4758:    3201        .2      ADDS     r2,#1
        0x1fff475a:    1c49        I.      ADDS     r1,r1,#1
        0x1fff475c:    66d0        .f      STR      r0,[r2,#0x6c]
        0x1fff475e:    2908        .)      CMP      r1,#8
        0x1fff4760:    dbf7        ..      BLT      0x1fff4752 ; llReleaseConnId1 + 154
        0x1fff4762:    2100        .!      MOVS     r1,#0
        0x1fff4764:    008a        ..      LSLS     r2,r1,#2
        0x1fff4766:    1952        R.      ADDS     r2,r2,r5
        0x1fff4768:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff476a:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff476c:    1c49        I.      ADDS     r1,r1,#1
        0x1fff476e:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff4770:    2908        .)      CMP      r1,#8
        0x1fff4772:    dbf7        ..      BLT      0x1fff4764 ; llReleaseConnId1 + 172
        0x1fff4774:    70e0        .p      STRB     r0,[r4,#3]
        0x1fff4776:    bdf8        ..      POP      {r3-r7,pc}
    i.llSlaveEvt_TaskEndOk1
    llSlaveEvt_TaskEndOk1
        0x1fff4778:    b510        ..      PUSH     {r4,lr}
        0x1fff477a:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff47a8] = 0x1fff0d30
        0x1fff477c:    21a1        .!      MOVS     r1,#0xa1
        0x1fff477e:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4780:    0089        ..      LSLS     r1,r1,#2
        0x1fff4782:    4348        HC      MULS     r0,r1,r0
        0x1fff4784:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff47ac] = 0x1fff0934
        0x1fff4786:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4788:    1840        @.      ADDS     r0,r0,r1
        0x1fff478a:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff478c:    2900        .)      CMP      r1,#0
        0x1fff478e:    d007        ..      BEQ      0x1fff47a0 ; llSlaveEvt_TaskEndOk1 + 40
        0x1fff4790:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4792:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4794:    3002        .0      ADDS     r0,#2
        0x1fff4796:    6cc1        .l      LDR      r1,[r0,#0x4c]
        0x1fff4798:    2900        .)      CMP      r1,#0
        0x1fff479a:    d001        ..      BEQ      0x1fff47a0 ; llSlaveEvt_TaskEndOk1 + 40
        0x1fff479c:    2100        .!      MOVS     r1,#0
        0x1fff479e:    64c1        .d      STR      r1,[r0,#0x4c]
        0x1fff47a0:    f7fdfa34    ..4.    BL       $Ven$TT$L$$llSlaveEvt_TaskEndOk0 ; 0x1fff1c0c
        0x1fff47a4:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff47a6:    0000        ..      DCW    0
        0x1fff47a8:    1fff0d30    0...    DCD    536808752
        0x1fff47ac:    1fff0934    4...    DCD    536807732
    $t
    i.llWriteTxData1
    llWriteTxData1
        0x1fff47b0:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff47b2:    4604        .F      MOV      r4,r0
        0x1fff47b4:    3060        `0      ADDS     r0,r0,#0x60
        0x1fff47b6:    7ec0        .~      LDRB     r0,[r0,#0x1b]
        0x1fff47b8:    2507        .%      MOVS     r5,#7
        0x1fff47ba:    b081        ..      SUB      sp,sp,#4
        0x1fff47bc:    4617        .F      MOV      r7,r2
        0x1fff47be:    2801        .(      CMP      r0,#1
        0x1fff47c0:    d142        B.      BNE      0x1fff4848 ; llWriteTxData1 + 152
        0x1fff47c2:    4620         F      MOV      r0,r4
        0x1fff47c4:    f7fdfa28    ..(.    BL       $Ven$TT$L$$getTxBufferFree ; 0x1fff1c18
        0x1fff47c8:    2800        .(      CMP      r0,#0
        0x1fff47ca:    d03d        =.      BEQ      0x1fff4848 ; llWriteTxData1 + 152
        0x1fff47cc:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff4854] = 0x1fff0917
        0x1fff47ce:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff47d0:    2800        .(      CMP      r0,#0
        0x1fff47d2:    d03c        <.      BEQ      0x1fff484e ; llWriteTxData1 + 158
        0x1fff47d4:    26ff        .&      MOVS     r6,#0xff
        0x1fff47d6:    3611        .6      ADDS     r6,r6,#0x11
        0x1fff47d8:    4620         F      MOV      r0,r4
        0x1fff47da:    f7fdfa23    ..#.    BL       $Ven$TT$L$$get_tx_write_ptr ; 0x1fff1c24
        0x1fff47de:    9000        ..      STR      r0,[sp,#0]
        0x1fff47e0:    7920         y      LDRB     r0,[r4,#4]
        0x1fff47e2:    2200        ."      MOVS     r2,#0
        0x1fff47e4:    4631        1F      MOV      r1,r6
        0x1fff47e6:    f000fb7f    ....    BL       ll_osal_mem_alloc ; 0x1fff4ee8
        0x1fff47ea:    9900        ..      LDR      r1,[sp,#0]
        0x1fff47ec:    0089        ..      LSLS     r1,r1,#2
        0x1fff47ee:    190e        ..      ADDS     r6,r1,r4
        0x1fff47f0:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff47f2:    3601        .6      ADDS     r6,#1
        0x1fff47f4:    66f0        .f      STR      r0,[r6,#0x6c]
        0x1fff47f6:    2800        .(      CMP      r0,#0
        0x1fff47f8:    d026        &.      BEQ      0x1fff4848 ; llWriteTxData1 + 152
        0x1fff47fa:    20a6        .       MOVS     r0,#0xa6
        0x1fff47fc:    5d00        .]      LDRB     r0,[r0,r4]
        0x1fff47fe:    2800        .(      CMP      r0,#0
        0x1fff4800:    d007        ..      BEQ      0x1fff4812 ; llWriteTxData1 + 98
        0x1fff4802:    463a        :F      MOV      r2,r7
        0x1fff4804:    4620         F      MOV      r0,r4
        0x1fff4806:    9b04        ..      LDR      r3,[sp,#0x10]
        0x1fff4808:    9902        ..      LDR      r1,[sp,#8]
        0x1fff480a:    f7fdfa11    ....    BL       $Ven$TT$L$$LL_ENC_Encrypt ; 0x1fff1c30
        0x1fff480e:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff4810:    b2ff        ..      UXTB     r7,r7
        0x1fff4812:    2005        .       MOVS     r0,#5
        0x1fff4814:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4816:    1825        %.      ADDS     r5,r4,r0
        0x1fff4818:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff481a:    463a        :F      MOV      r2,r7
        0x1fff481c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff481e:    7028        (p      STRB     r0,[r5,#0]
        0x1fff4820:    9902        ..      LDR      r1,[sp,#8]
        0x1fff4822:    0238        8.      LSLS     r0,r7,#8
        0x1fff4824:    4308        .C      ORRS     r0,r0,r1
        0x1fff4826:    6ef1        .n      LDR      r1,[r6,#0x6c]
        0x1fff4828:    8088        ..      STRH     r0,[r1,#4]
        0x1fff482a:    6ef0        .n      LDR      r0,[r6,#0x6c]
        0x1fff482c:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff482e:    1d80        ..      ADDS     r0,r0,#6
        0x1fff4830:    f7fdfa04    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c3c
        0x1fff4834:    6ef1        .n      LDR      r1,[r6,#0x6c]
        0x1fff4836:    2001        .       MOVS     r0,#1
        0x1fff4838:    6008        .`      STR      r0,[r1,#0]
        0x1fff483a:    4620         F      MOV      r0,r4
        0x1fff483c:    f7fdfa04    ....    BL       $Ven$TT$L$$update_tx_write_ptr ; 0x1fff1c48
        0x1fff4840:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff4842:    1e40        @.      SUBS     r0,r0,#1
        0x1fff4844:    70e8        .p      STRB     r0,[r5,#3]
        0x1fff4846:    2500        .%      MOVS     r5,#0
        0x1fff4848:    4628        (F      MOV      r0,r5
        0x1fff484a:    b005        ..      ADD      sp,sp,#0x14
        0x1fff484c:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff484e:    2634        4&      MOVS     r6,#0x34
        0x1fff4850:    e7c2        ..      B        0x1fff47d8 ; llWriteTxData1 + 40
    $d
        0x1fff4852:    0000        ..      DCW    0
        0x1fff4854:    1fff0917    ....    DCD    536807703
    $t
    i.ll_flow_ctrl_restore
    ll_flow_ctrl_restore
        0x1fff4858:    b510        ..      PUSH     {r4,lr}
        0x1fff485a:    7901        .y      LDRB     r1,[r0,#4]
        0x1fff485c:    4a13        .J      LDR      r2,[pc,#76] ; [0x1fff48ac] = 0x1fff7f10
        0x1fff485e:    0049        I.      LSLS     r1,r1,#1
        0x1fff4860:    5c51        Q\      LDRB     r1,[r2,r1]
        0x1fff4862:    2900        .)      CMP      r1,#0
        0x1fff4864:    d020         .      BEQ      0x1fff48a8 ; ll_flow_ctrl_restore + 80
        0x1fff4866:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff48b0] = 0x40031040
        0x1fff4868:    680b        .h      LDR      r3,[r1,#0]
        0x1fff486a:    158c        ..      ASRS     r4,r1,#22
        0x1fff486c:    43a3        .C      BICS     r3,r3,r4
        0x1fff486e:    600b        .`      STR      r3,[r1,#0]
        0x1fff4870:    4601        .F      MOV      r1,r0
        0x1fff4872:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4874:    3121        !1      ADDS     r1,r1,#0x21
        0x1fff4876:    460b        .F      MOV      r3,r1
        0x1fff4878:    7d09        .}      LDRB     r1,[r1,#0x14]
        0x1fff487a:    2402        .$      MOVS     r4,#2
        0x1fff487c:    4021        !@      ANDS     r1,r1,r4
        0x1fff487e:    7904        .y      LDRB     r4,[r0,#4]
        0x1fff4880:    0064        d.      LSLS     r4,r4,#1
        0x1fff4882:    18a4        ..      ADDS     r4,r4,r2
        0x1fff4884:    7864        dx      LDRB     r4,[r4,#1]
        0x1fff4886:    4321        !C      ORRS     r1,r1,r4
        0x1fff4888:    7519        .u      STRB     r1,[r3,#0x14]
        0x1fff488a:    4b09        .K      LDR      r3,[pc,#36] ; [0x1fff48b0] = 0x40031040
        0x1fff488c:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff488e:    6bdc        .k      LDR      r4,[r3,#0x3c]
        0x1fff4890:    08a4        ..      LSRS     r4,r4,#2
        0x1fff4892:    00a4        ..      LSLS     r4,r4,#2
        0x1fff4894:    430c        .C      ORRS     r4,r4,r1
        0x1fff4896:    63dc        .c      STR      r4,[r3,#0x3c]
        0x1fff4898:    7903        .y      LDRB     r3,[r0,#4]
        0x1fff489a:    2100        .!      MOVS     r1,#0
        0x1fff489c:    005b        [.      LSLS     r3,r3,#1
        0x1fff489e:    54d1        .T      STRB     r1,[r2,r3]
        0x1fff48a0:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff48a2:    0040        @.      LSLS     r0,r0,#1
        0x1fff48a4:    1880        ..      ADDS     r0,r0,r2
        0x1fff48a6:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff48a8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff48aa:    0000        ..      DCW    0
        0x1fff48ac:    1fff7f10    ....    DCD    536837904
        0x1fff48b0:    40031040    @..@    DCD    1073942592
    $t
    i.ll_generateTxBuffer1
    ll_generateTxBuffer1
        0x1fff48b4:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff48b6:    4607        .F      MOV      r7,r0
        0x1fff48b8:    4898        .H      LDR      r0,[pc,#608] ; [0x1fff4b1c] = 0x1fff0d30
        0x1fff48ba:    21a1        .!      MOVS     r1,#0xa1
        0x1fff48bc:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff48be:    0089        ..      LSLS     r1,r1,#2
        0x1fff48c0:    4348        HC      MULS     r0,r1,r0
        0x1fff48c2:    4997        .I      LDR      r1,[pc,#604] ; [0x1fff4b20] = 0x1fff0934
        0x1fff48c4:    b089        ..      SUB      sp,sp,#0x24
        0x1fff48c6:    6809        .h      LDR      r1,[r1,#0]
        0x1fff48c8:    2600        .&      MOVS     r6,#0
        0x1fff48ca:    1844        D.      ADDS     r4,r0,r1
        0x1fff48cc:    4620         F      MOV      r0,r4
        0x1fff48ce:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff48d0:    3021        !0      ADDS     r0,r0,#0x21
        0x1fff48d2:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff48d4:    7d40        @}      LDRB     r0,[r0,#0x15]
        0x1fff48d6:    2832        2(      CMP      r0,#0x32
        0x1fff48d8:    d022        ".      BEQ      0x1fff4920 ; ll_generateTxBuffer1 + 108
        0x1fff48da:    2822        "(      CMP      r0,#0x22
        0x1fff48dc:    d020         .      BEQ      0x1fff4920 ; ll_generateTxBuffer1 + 108
        0x1fff48de:    4625        %F      MOV      r5,r4
        0x1fff48e0:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff48e2:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff48e4:    6ae8        .j      LDR      r0,[r5,#0x2c]
        0x1fff48e6:    6801        .h      LDR      r1,[r0,#0]
        0x1fff48e8:    2900        .)      CMP      r1,#0
        0x1fff48ea:    d009        ..      BEQ      0x1fff4900 ; ll_generateTxBuffer1 + 76
        0x1fff48ec:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff48ee:    1d00        ..      ADDS     r0,r0,#4
        0x1fff48f0:    0a09        ..      LSRS     r1,r1,#8
        0x1fff48f2:    1c89        ..      ADDS     r1,r1,#2
        0x1fff48f4:    f7fdf9ae    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c54
        0x1fff48f8:    6ae9        .j      LDR      r1,[r5,#0x2c]
        0x1fff48fa:    2000        .       MOVS     r0,#0
        0x1fff48fc:    1c76        v.      ADDS     r6,r6,#1
        0x1fff48fe:    6008        .`      STR      r0,[r1,#0]
        0x1fff4900:    f7fdf9ae    ....    BL       $Ven$TT$L$$ll_hw_get_tfifo_wrptr ; 0x1fff1c60
        0x1fff4904:    990a        ..      LDR      r1,[sp,#0x28]
        0x1fff4906:    2500        .%      MOVS     r5,#0
        0x1fff4908:    8008        ..      STRH     r0,[r1,#0]
        0x1fff490a:    4620         F      MOV      r0,r4
        0x1fff490c:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff490e:    30c1        .0      ADDS     r0,r0,#0xc1
        0x1fff4910:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4912:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4914:    2800        .(      CMP      r0,#0
        0x1fff4916:    d029        ).      BEQ      0x1fff496c ; ll_generateTxBuffer1 + 184
        0x1fff4918:    42b8        .B      CMP      r0,r7
        0x1fff491a:    dc27        '.      BGT      0x1fff496c ; ll_generateTxBuffer1 + 184
        0x1fff491c:    2000        .       MOVS     r0,#0
        0x1fff491e:    e018        ..      B        0x1fff4952 ; ll_generateTxBuffer1 + 158
        0x1fff4920:    4980        .I      LDR      r1,[pc,#512] ; [0x1fff4b24] = 0x40031400
        0x1fff4922:    2001        .       MOVS     r0,#1
        0x1fff4924:    6008        .`      STR      r0,[r1,#0]
        0x1fff4926:    20ff        .       MOVS     r0,#0xff
        0x1fff4928:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff492a:    2100        .!      MOVS     r1,#0
        0x1fff492c:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff492e:    2601        .&      MOVS     r6,#1
        0x1fff4930:    6001        .`      STR      r1,[r0,#0]
        0x1fff4932:    e7e5        ..      B        0x1fff4900 ; ll_generateTxBuffer1 + 76
        0x1fff4934:    0080        ..      LSLS     r0,r0,#2
        0x1fff4936:    1900        ..      ADDS     r0,r0,r4
        0x1fff4938:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff493a:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff493c:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff493e:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4940:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff4942:    b2ed        ..      UXTB     r5,r5
        0x1fff4944:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4946:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4948:    1c89        ..      ADDS     r1,r1,#2
        0x1fff494a:    f7fdf983    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c54
        0x1fff494e:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4950:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4952:    9000        ..      STR      r0,[sp,#0]
        0x1fff4954:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4956:    7c01        .|      LDRB     r1,[r0,#0x10]
        0x1fff4958:    9800        ..      LDR      r0,[sp,#0]
        0x1fff495a:    4281        .B      CMP      r1,r0
        0x1fff495c:    dcea        ..      BGT      0x1fff4934 ; ll_generateTxBuffer1 + 128
        0x1fff495e:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4960:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4962:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4964:    1986        ..      ADDS     r6,r0,r6
        0x1fff4966:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4968:    2100        .!      MOVS     r1,#0
        0x1fff496a:    7401        .t      STRB     r1,[r0,#0x10]
        0x1fff496c:    496e        nI      LDR      r1,[pc,#440] ; [0x1fff4b28] = 0x1fff10e0
        0x1fff496e:    2000        .       MOVS     r0,#0
        0x1fff4970:    70c8        .p      STRB     r0,[r1,#3]
        0x1fff4972:    20ff        .       MOVS     r0,#0xff
        0x1fff4974:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff4976:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff4978:    6801        .h      LDR      r1,[r0,#0]
        0x1fff497a:    2900        .)      CMP      r1,#0
        0x1fff497c:    d003        ..      BEQ      0x1fff4986 ; ll_generateTxBuffer1 + 210
        0x1fff497e:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff4980:    43c0        .C      MVNS     r0,r0
        0x1fff4982:    0780        ..      LSLS     r0,r0,#30
        0x1fff4984:    d03a        :.      BEQ      0x1fff49fc ; ll_generateTxBuffer1 + 328
        0x1fff4986:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4988:    7dc0        .}      LDRB     r0,[r0,#0x17]
        0x1fff498a:    2800        .(      CMP      r0,#0
        0x1fff498c:    d036        6.      BEQ      0x1fff49fc ; ll_generateTxBuffer1 + 328
        0x1fff498e:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4990:    7d80        .}      LDRB     r0,[r0,#0x16]
        0x1fff4992:    2800        .(      CMP      r0,#0
        0x1fff4994:    d132        2.      BNE      0x1fff49fc ; ll_generateTxBuffer1 + 328
        0x1fff4996:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4998:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff499a:    42b8        .B      CMP      r0,r7
        0x1fff499c:    da2e        ..      BGE      0x1fff49fc ; ll_generateTxBuffer1 + 328
        0x1fff499e:    485f        _H      LDR      r0,[pc,#380] ; [0x1fff4b1c] = 0x1fff0d30
        0x1fff49a0:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff49a2:    201c        .       MOVS     r0,#0x1c
        0x1fff49a4:    4341        AC      MULS     r1,r0,r1
        0x1fff49a6:    4861        aH      LDR      r0,[pc,#388] ; [0x1fff4b2c] = 0x1fff7f30
        0x1fff49a8:    1808        ..      ADDS     r0,r1,r0
        0x1fff49aa:    7a01        .z      LDRB     r1,[r0,#8]
        0x1fff49ac:    2900        .)      CMP      r1,#0
        0x1fff49ae:    d125        %.      BNE      0x1fff49fc ; ll_generateTxBuffer1 + 328
        0x1fff49b0:    2101        .!      MOVS     r1,#1
        0x1fff49b2:    7201        .r      STRB     r1,[r0,#8]
        0x1fff49b4:    00a9        ..      LSLS     r1,r5,#2
        0x1fff49b6:    1909        ..      ADDS     r1,r1,r4
        0x1fff49b8:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff49ba:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff49bc:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff49be:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff49c0:    2800        .(      CMP      r0,#0
        0x1fff49c2:    d01f        ..      BEQ      0x1fff4a04 ; ll_generateTxBuffer1 + 336
        0x1fff49c4:    2005        .       MOVS     r0,#5
        0x1fff49c6:    01c0        ..      LSLS     r0,r0,#7
        0x1fff49c8:    1820         .      ADDS     r0,r4,r0
        0x1fff49ca:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff49cc:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff49ce:    1c49        I.      ADDS     r1,r1,#1
        0x1fff49d0:    7081        .p      STRB     r1,[r0,#2]
        0x1fff49d2:    20ff        .       MOVS     r0,#0xff
        0x1fff49d4:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff49d6:    5b00        .[      LDRH     r0,[r0,r4]
        0x1fff49d8:    b2ed        ..      UXTB     r5,r5
        0x1fff49da:    0a01        ..      LSRS     r1,r0,#8
        0x1fff49dc:    4620         F      MOV      r0,r4
        0x1fff49de:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff49e0:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff49e2:    1c89        ..      ADDS     r1,r1,#2
        0x1fff49e4:    f7fdf936    ..6.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c54
        0x1fff49e8:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff49ea:    2100        .!      MOVS     r1,#0
        0x1fff49ec:    75c1        .u      STRB     r1,[r0,#0x17]
        0x1fff49ee:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff49f0:    2101        .!      MOVS     r1,#1
        0x1fff49f2:    7581        .u      STRB     r1,[r0,#0x16]
        0x1fff49f4:    484c        LH      LDR      r0,[pc,#304] ; [0x1fff4b28] = 0x1fff10e0
        0x1fff49f6:    1c76        v.      ADDS     r6,r6,#1
        0x1fff49f8:    70c1        .p      STRB     r1,[r0,#3]
        0x1fff49fa:    1e7f        ..      SUBS     r7,r7,#1
        0x1fff49fc:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff49fe:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4a00:    2800        .(      CMP      r0,#0
        0x1fff4a02:    d002        ..      BEQ      0x1fff4a0a ; ll_generateTxBuffer1 + 342
        0x1fff4a04:    4630        0F      MOV      r0,r6
        0x1fff4a06:    b00b        ..      ADD      sp,sp,#0x2c
        0x1fff4a08:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff4a0a:    4620         F      MOV      r0,r4
        0x1fff4a0c:    f7fdf92e    ....    BL       $Ven$TT$L$$getTxBufferSize ; 0x1fff1c6c
        0x1fff4a10:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff4a12:    2800        .(      CMP      r0,#0
        0x1fff4a14:    dd3b        ;.      BLE      0x1fff4a8e ; ll_generateTxBuffer1 + 474
        0x1fff4a16:    2f00        ./      CMP      r7,#0
        0x1fff4a18:    dd39        9.      BLE      0x1fff4a8e ; ll_generateTxBuffer1 + 474
        0x1fff4a1a:    2000        .       MOVS     r0,#0
        0x1fff4a1c:    e031        1.      B        0x1fff4a82 ; ll_generateTxBuffer1 + 462
        0x1fff4a1e:    4620         F      MOV      r0,r4
        0x1fff4a20:    f7fdf92a    ..*.    BL       $Ven$TT$L$$get_tx_read_ptr ; 0x1fff1c78
        0x1fff4a24:    0080        ..      LSLS     r0,r0,#2
        0x1fff4a26:    1900        ..      ADDS     r0,r0,r4
        0x1fff4a28:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4a2a:    3001        .0      ADDS     r0,#1
        0x1fff4a2c:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4a2e:    6ec0        .n      LDR      r0,[r0,#0x6c]
        0x1fff4a30:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff4a32:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4a34:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4a36:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4a38:    f7fdf90c    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c54
        0x1fff4a3c:    2800        .(      CMP      r0,#0
        0x1fff4a3e:    d01e        ..      BEQ      0x1fff4a7e ; ll_generateTxBuffer1 + 458
        0x1fff4a40:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4a42:    6ec1        .n      LDR      r1,[r0,#0x6c]
        0x1fff4a44:    00a8        ..      LSLS     r0,r5,#2
        0x1fff4a46:    1900        ..      ADDS     r0,r0,r4
        0x1fff4a48:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4a4a:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4a4c:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff4a4e:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff4a50:    2000        .       MOVS     r0,#0
        0x1fff4a52:    66c8        .f      STR      r0,[r1,#0x6c]
        0x1fff4a54:    2005        .       MOVS     r0,#5
        0x1fff4a56:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4a58:    1820         .      ADDS     r0,r4,r0
        0x1fff4a5a:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4a5c:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4a5e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4a60:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4a62:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff4a64:    b2ed        ..      UXTB     r5,r5
        0x1fff4a66:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4a68:    7001        .p      STRB     r1,[r0,#0]
        0x1fff4a6a:    4620         F      MOV      r0,r4
        0x1fff4a6c:    f7fdf90a    ....    BL       $Ven$TT$L$$update_tx_read_ptr ; 0x1fff1c84
        0x1fff4a70:    1de1        ..      ADDS     r1,r4,#7
        0x1fff4a72:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4a74:    31fa        .1      ADDS     r1,r1,#0xfa
        0x1fff4a76:    6a08        .j      LDR      r0,[r1,#0x20]
        0x1fff4a78:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4a7a:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4a7c:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff4a7e:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4a80:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4a82:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff4a84:    9000        ..      STR      r0,[sp,#0]
        0x1fff4a86:    4288        .B      CMP      r0,r1
        0x1fff4a88:    da01        ..      BGE      0x1fff4a8e ; ll_generateTxBuffer1 + 474
        0x1fff4a8a:    42b8        .B      CMP      r0,r7
        0x1fff4a8c:    dbc7        ..      BLT      0x1fff4a1e ; ll_generateTxBuffer1 + 362
        0x1fff4a8e:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff4b1c] = 0x1fff0d30
        0x1fff4a90:    221c        ."      MOVS     r2,#0x1c
        0x1fff4a92:    7888        .x      LDRB     r0,[r1,#2]
        0x1fff4a94:    4b25        %K      LDR      r3,[pc,#148] ; [0x1fff4b2c] = 0x1fff7f30
        0x1fff4a96:    4350        PC      MULS     r0,r2,r0
        0x1fff4a98:    18c2        ..      ADDS     r2,r0,r3
        0x1fff4a9a:    7a10        .z      LDRB     r0,[r2,#8]
        0x1fff4a9c:    2800        .(      CMP      r0,#0
        0x1fff4a9e:    d022        ".      BEQ      0x1fff4ae6 ; ll_generateTxBuffer1 + 562
        0x1fff4aa0:    2000        .       MOVS     r0,#0
        0x1fff4aa2:    1e69        i.      SUBS     r1,r5,#1
        0x1fff4aa4:    e01d        ..      B        0x1fff4ae2 ; ll_generateTxBuffer1 + 558
        0x1fff4aa6:    0083        ..      LSLS     r3,r0,#2
        0x1fff4aa8:    191b        ..      ADDS     r3,r3,r4
        0x1fff4aaa:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4aac:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff4aae:    6b1b        .k      LDR      r3,[r3,#0x30]
        0x1fff4ab0:    68d7        .h      LDR      r7,[r2,#0xc]
        0x1fff4ab2:    42bb        .B      CMP      r3,r7
        0x1fff4ab4:    d114        ..      BNE      0x1fff4ae0 ; ll_generateTxBuffer1 + 556
        0x1fff4ab6:    4288        .B      CMP      r0,r1
        0x1fff4ab8:    d012        ..      BEQ      0x1fff4ae0 ; ll_generateTxBuffer1 + 556
        0x1fff4aba:    00a9        ..      LSLS     r1,r5,#2
        0x1fff4abc:    190a        ..      ADDS     r2,r1,r4
        0x1fff4abe:    0080        ..      LSLS     r0,r0,#2
        0x1fff4ac0:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff4ac2:    1900        ..      ADDS     r0,r0,r4
        0x1fff4ac4:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff4ac6:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4ac8:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4aca:    6ad1        .j      LDR      r1,[r2,#0x2c]
        0x1fff4acc:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff4ace:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff4b1c] = 0x1fff0d30
        0x1fff4ad0:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4ad2:    201c        .       MOVS     r0,#0x1c
        0x1fff4ad4:    4341        AC      MULS     r1,r0,r1
        0x1fff4ad6:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff4b2c] = 0x1fff7f30
        0x1fff4ad8:    1808        ..      ADDS     r0,r1,r0
        0x1fff4ada:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff4adc:    62d0        .b      STR      r0,[r2,#0x2c]
        0x1fff4ade:    e002        ..      B        0x1fff4ae6 ; ll_generateTxBuffer1 + 562
        0x1fff4ae0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4ae2:    42a8        .B      CMP      r0,r5
        0x1fff4ae4:    dbdf        ..      BLT      0x1fff4aa6 ; ll_generateTxBuffer1 + 498
        0x1fff4ae6:    2009        .       MOVS     r0,#9
        0x1fff4ae8:    0180        ..      LSLS     r0,r0,#6
        0x1fff4aea:    1820         .      ADDS     r0,r4,r0
        0x1fff4aec:    7e81        .~      LDRB     r1,[r0,#0x1a]
        0x1fff4aee:    2900        .)      CMP      r1,#0
        0x1fff4af0:    d011        ..      BEQ      0x1fff4b16 ; ll_generateTxBuffer1 + 610
        0x1fff4af2:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x1fff4af4:    2900        .)      CMP      r1,#0
        0x1fff4af6:    d00e        ..      BEQ      0x1fff4b16 ; ll_generateTxBuffer1 + 610
        0x1fff4af8:    8e42        B.      LDRH     r2,[r0,#0x32]
        0x1fff4afa:    2a00        .*      CMP      r2,#0
        0x1fff4afc:    d00b        ..      BEQ      0x1fff4b16 ; ll_generateTxBuffer1 + 610
        0x1fff4afe:    7f81        ..      LDRB     r1,[r0,#0x1e]
        0x1fff4b00:    4291        .B      CMP      r1,r2
        0x1fff4b02:    d202        ..      BCS      0x1fff4b0a ; ll_generateTxBuffer1 + 598
        0x1fff4b04:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4b06:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff4b08:    e005        ..      B        0x1fff4b16 ; ll_generateTxBuffer1 + 610
        0x1fff4b0a:    2100        .!      MOVS     r1,#0
        0x1fff4b0c:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff4b0e:    211a        .!      MOVS     r1,#0x1a
        0x1fff4b10:    4620         F      MOV      r0,r4
        0x1fff4b12:    f7fdf8bd    ....    BL       $Ven$TT$L$$llEnqueueCtrlPkt ; 0x1fff1c90
        0x1fff4b16:    b2b0        ..      UXTH     r0,r6
        0x1fff4b18:    e775        u.      B        0x1fff4a06 ; ll_generateTxBuffer1 + 338
    $d
        0x1fff4b1a:    0000        ..      DCW    0
        0x1fff4b1c:    1fff0d30    0...    DCD    536808752
        0x1fff4b20:    1fff0934    4...    DCD    536807732
        0x1fff4b24:    40031400    ...@    DCD    1073943552
        0x1fff4b28:    1fff10e0    ....    DCD    536809696
        0x1fff4b2c:    1fff7f30    0...    DCD    536837936
    $t
    i.ll_hw_go1
    ll_hw_go1
        0x1fff4b30:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff4b32:    b089        ..      SUB      sp,sp,#0x24
        0x1fff4b34:    f7fcff50    ..P.    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff4b38:    4605        .F      MOV      r5,r0
        0x1fff4b3a:    489a        .H      LDR      r0,[pc,#616] ; [0x1fff4da4] = 0x1fff0d30
        0x1fff4b3c:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4b3e:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4b40:    0089        ..      LSLS     r1,r1,#2
        0x1fff4b42:    4348        HC      MULS     r0,r1,r0
        0x1fff4b44:    4998        .I      LDR      r1,[pc,#608] ; [0x1fff4da8] = 0x1fff0934
        0x1fff4b46:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4b48:    1844        D.      ADDS     r4,r0,r1
        0x1fff4b4a:    4898        .H      LDR      r0,[pc,#608] ; [0x1fff4dac] = 0x1fff0998
        0x1fff4b4c:    6800        .h      LDR      r0,[r0,#0]
        0x1fff4b4e:    2801        .(      CMP      r0,#1
        0x1fff4b50:    d103        ..      BNE      0x1fff4b5a ; ll_hw_go1 + 42
        0x1fff4b52:    4897        .H      LDR      r0,[pc,#604] ; [0x1fff4db0] = 0x1fff0ffc
        0x1fff4b54:    6d81        .m      LDR      r1,[r0,#0x58]
        0x1fff4b56:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4b58:    6581        .e      STR      r1,[r0,#0x58]
        0x1fff4b5a:    2d05        .-      CMP      r5,#5
        0x1fff4b5c:    d001        ..      BEQ      0x1fff4b62 ; ll_hw_go1 + 50
        0x1fff4b5e:    2d04        .-      CMP      r5,#4
        0x1fff4b60:    d102        ..      BNE      0x1fff4b68 ; ll_hw_go1 + 56
        0x1fff4b62:    4620         F      MOV      r0,r4
        0x1fff4b64:    f7fffe78    ..x.    BL       ll_flow_ctrl_restore ; 0x1fff4858
        0x1fff4b68:    f7fcff24    ..$.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff4b6c:    4991        .I      LDR      r1,[pc,#580] ; [0x1fff4db4] = 0x1fff70d8
        0x1fff4b6e:    4a92        .J      LDR      r2,[pc,#584] ; [0x1fff4db8] = 0x3fff
        0x1fff4b70:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff4b72:    4892        .H      LDR      r0,[pc,#584] ; [0x1fff4dbc] = 0x40031000
        0x1fff4b74:    6142        Ba      STR      r2,[r0,#0x14]
        0x1fff4b76:    2201        ."      MOVS     r2,#1
        0x1fff4b78:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff4b7a:    6002        .`      STR      r2,[r0,#0]
        0x1fff4b7c:    2d05        .-      CMP      r5,#5
        0x1fff4b7e:    d017        ..      BEQ      0x1fff4bb0 ; ll_hw_go1 + 128
        0x1fff4b80:    2d04        .-      CMP      r5,#4
        0x1fff4b82:    d17d        }.      BNE      0x1fff4c80 ; ll_hw_go1 + 336
        0x1fff4b84:    8ee0        ..      LDRH     r0,[r4,#0x36]
        0x1fff4b86:    4a8e        .J      LDR      r2,[pc,#568] ; [0x1fff4dc0] = 0x271
        0x1fff4b88:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4b8a:    4350        PC      MULS     r0,r2,r0
        0x1fff4b8c:    22ff        ."      MOVS     r2,#0xff
        0x1fff4b8e:    32df        .2      ADDS     r2,r2,#0xdf
        0x1fff4b90:    5b12        .[      LDRH     r2,[r2,r4]
        0x1fff4b92:    1a80        ..      SUBS     r0,r0,r2
        0x1fff4b94:    22f8        ."      MOVS     r2,#0xf8
        0x1fff4b96:    5852        RX      LDR      r2,[r2,r1]
        0x1fff4b98:    6c89        .l      LDR      r1,[r1,#0x48]
        0x1fff4b9a:    1a80        ..      SUBS     r0,r0,r2
        0x1fff4b9c:    4a81        .J      LDR      r2,[pc,#516] ; [0x1fff4da4] = 0x1fff0d30
        0x1fff4b9e:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff4ba0:    0852        R.      LSRS     r2,r2,#1
        0x1fff4ba2:    40d0        .@      LSRS     r0,r0,r2
        0x1fff4ba4:    4281        .B      CMP      r1,r0
        0x1fff4ba6:    d200        ..      BCS      0x1fff4baa ; ll_hw_go1 + 122
        0x1fff4ba8:    4608        .F      MOV      r0,r1
        0x1fff4baa:    f7fdf877    ..w.    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff1c9c
        0x1fff4bae:    e004        ..      B        0x1fff4bba ; ll_hw_go1 + 138
        0x1fff4bb0:    7960        `y      LDRB     r0,[r4,#5]
        0x1fff4bb2:    2801        .(      CMP      r0,#1
        0x1fff4bb4:    d001        ..      BEQ      0x1fff4bba ; ll_hw_go1 + 138
        0x1fff4bb6:    f7fefd31    ..1.    BL       enlarge_rx_timeout_1st ; 0x1fff361c
        0x1fff4bba:    f7fcfefb    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff4bbe:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff4bc0:    4880        .H      LDR      r0,[pc,#512] ; [0x1fff4dc4] = 0x1fff0917
        0x1fff4bc2:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4bc4:    2800        .(      CMP      r0,#0
        0x1fff4bc6:    d005        ..      BEQ      0x1fff4bd4 ; ll_hw_go1 + 164
        0x1fff4bc8:    20ff        .       MOVS     r0,#0xff
        0x1fff4bca:    3011        .0      ADDS     r0,r0,#0x11
        0x1fff4bcc:    2700        .'      MOVS     r7,#0
        0x1fff4bce:    463e        >F      MOV      r6,r7
        0x1fff4bd0:    9000        ..      STR      r0,[sp,#0]
        0x1fff4bd2:    e033        3.      B        0x1fff4c3c ; ll_hw_go1 + 268
        0x1fff4bd4:    2034        4       MOVS     r0,#0x34
        0x1fff4bd6:    e7f9        ..      B        0x1fff4bcc ; ll_hw_go1 + 156
        0x1fff4bd8:    4620         F      MOV      r0,r4
        0x1fff4bda:    f7fdf865    ..e.    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1ca8
        0x1fff4bde:    1981        ..      ADDS     r1,r0,r6
        0x1fff4be0:    4879        yH      LDR      r0,[pc,#484] ; [0x1fff4dc8] = 0x1fff0916
        0x1fff4be2:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4be4:    4281        .B      CMP      r1,r0
        0x1fff4be6:    4620         F      MOV      r0,r4
        0x1fff4be8:    d203        ..      BCS      0x1fff4bf2 ; ll_hw_go1 + 194
        0x1fff4bea:    f7fdf85d    ..].    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1ca8
        0x1fff4bee:    1980        ..      ADDS     r0,r0,r6
        0x1fff4bf0:    e005        ..      B        0x1fff4bfe ; ll_hw_go1 + 206
        0x1fff4bf2:    f7fdf859    ..Y.    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1ca8
        0x1fff4bf6:    1981        ..      ADDS     r1,r0,r6
        0x1fff4bf8:    4873        sH      LDR      r0,[pc,#460] ; [0x1fff4dc8] = 0x1fff0916
        0x1fff4bfa:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4bfc:    1a08        ..      SUBS     r0,r1,r0
        0x1fff4bfe:    b2c0        ..      UXTB     r0,r0
        0x1fff4c00:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4c02:    4868        hH      LDR      r0,[pc,#416] ; [0x1fff4da4] = 0x1fff0d30
        0x1fff4c04:    2202        ."      MOVS     r2,#2
        0x1fff4c06:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4c08:    9900        ..      LDR      r1,[sp,#0]
        0x1fff4c0a:    f000f96d    ..m.    BL       ll_osal_mem_alloc ; 0x1fff4ee8
        0x1fff4c0e:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff4c10:    0089        ..      LSLS     r1,r1,#2
        0x1fff4c12:    1909        ..      ADDS     r1,r1,r4
        0x1fff4c14:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4c16:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4c18:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff4c1a:    2800        .(      CMP      r0,#0
        0x1fff4c1c:    d013        ..      BEQ      0x1fff4c46 ; ll_hw_go1 + 278
        0x1fff4c1e:    2005        .       MOVS     r0,#5
        0x1fff4c20:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4c22:    1820         .      ADDS     r0,r4,r0
        0x1fff4c24:    7842        Bx      LDRB     r2,[r0,#1]
        0x1fff4c26:    1c7f        ..      ADDS     r7,r7,#1
        0x1fff4c28:    1c52        R.      ADDS     r2,r2,#1
        0x1fff4c2a:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff4c2c:    2000        .       MOVS     r0,#0
        0x1fff4c2e:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff4c30:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4c32:    6010        .`      STR      r0,[r2,#0]
        0x1fff4c34:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4c36:    b2ff        ..      UXTB     r7,r7
        0x1fff4c38:    8088        ..      STRH     r0,[r1,#4]
        0x1fff4c3a:    b2f6        ..      UXTB     r6,r6
        0x1fff4c3c:    4620         F      MOV      r0,r4
        0x1fff4c3e:    f7fdf839    ..9.    BL       $Ven$TT$L$$getRxBufferFree ; 0x1fff1cb4
        0x1fff4c42:    42b0        .B      CMP      r0,r6
        0x1fff4c44:    d8c8        ..      BHI      0x1fff4bd8 ; ll_hw_go1 + 168
        0x1fff4c46:    485d        ]H      LDR      r0,[pc,#372] ; [0x1fff4dbc] = 0x40031000
        0x1fff4c48:    21ff        .!      MOVS     r1,#0xff
        0x1fff4c4a:    0409        ..      LSLS     r1,r1,#16
        0x1fff4c4c:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff4c4e:    2f00        ./      CMP      r7,#0
        0x1fff4c50:    d004        ..      BEQ      0x1fff4c5c ; ll_hw_go1 + 300
        0x1fff4c52:    438a        .C      BICS     r2,r2,r1
        0x1fff4c54:    0439        9.      LSLS     r1,r7,#16
        0x1fff4c56:    430a        .C      ORRS     r2,r2,r1
        0x1fff4c58:    6042        B`      STR      r2,[r0,#4]
        0x1fff4c5a:    e025        %.      B        0x1fff4ca8 ; ll_hw_go1 + 376
        0x1fff4c5c:    438a        .C      BICS     r2,r2,r1
        0x1fff4c5e:    2101        .!      MOVS     r1,#1
        0x1fff4c60:    0409        ..      LSLS     r1,r1,#16
        0x1fff4c62:    1851        Q.      ADDS     r1,r2,r1
        0x1fff4c64:    6041        A`      STR      r1,[r0,#4]
        0x1fff4c66:    7921        !y      LDRB     r1,[r4,#4]
        0x1fff4c68:    2001        .       MOVS     r0,#1
        0x1fff4c6a:    004a        J.      LSLS     r2,r1,#1
        0x1fff4c6c:    4957        WI      LDR      r1,[pc,#348] ; [0x1fff4dcc] = 0x1fff7f10
        0x1fff4c6e:    5488        .T      STRB     r0,[r1,r2]
        0x1fff4c70:    20ff        .       MOVS     r0,#0xff
        0x1fff4c72:    3035        50      ADDS     r0,r0,#0x35
        0x1fff4c74:    5d00        .]      LDRB     r0,[r0,r4]
        0x1fff4c76:    7922        "y      LDRB     r2,[r4,#4]
        0x1fff4c78:    07c0        ..      LSLS     r0,r0,#31
        0x1fff4c7a:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff4c7c:    0052        R.      LSLS     r2,r2,#1
        0x1fff4c7e:    e000        ..      B        0x1fff4c82 ; ll_hw_go1 + 338
        0x1fff4c80:    e015        ..      B        0x1fff4cae ; ll_hw_go1 + 382
        0x1fff4c82:    1852        R.      ADDS     r2,r2,r1
        0x1fff4c84:    7050        Pp      STRB     r0,[r2,#1]
        0x1fff4c86:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff4dbc] = 0x40031000
        0x1fff4c88:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff4c8a:    6802        .h      LDR      r2,[r0,#0]
        0x1fff4c8c:    1583        ..      ASRS     r3,r0,#22
        0x1fff4c8e:    431a        .C      ORRS     r2,r2,r3
        0x1fff4c90:    6002        .`      STR      r2,[r0,#0]
        0x1fff4c92:    6802        .h      LDR      r2,[r0,#0]
        0x1fff4c94:    7923        #y      LDRB     r3,[r4,#4]
        0x1fff4c96:    0852        R.      LSRS     r2,r2,#1
        0x1fff4c98:    0052        R.      LSLS     r2,r2,#1
        0x1fff4c9a:    005b        [.      LSLS     r3,r3,#1
        0x1fff4c9c:    1859        Y.      ADDS     r1,r3,r1
        0x1fff4c9e:    7849        Ix      LDRB     r1,[r1,#1]
        0x1fff4ca0:    430a        .C      ORRS     r2,r2,r1
        0x1fff4ca2:    6002        .`      STR      r2,[r0,#0]
        0x1fff4ca4:    2102        .!      MOVS     r1,#2
        0x1fff4ca6:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff4ca8:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4caa:    f000fa01    ....    BL       llbuf_alloc_time_statics ; 0x1fff50b0
        0x1fff4cae:    4948        HI      LDR      r1,[pc,#288] ; [0x1fff4dd0] = 0x40030080
        0x1fff4cb0:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff4cb2:    4a48        HJ      LDR      r2,[pc,#288] ; [0x1fff4dd4] = 0x1fff098c
        0x1fff4cb4:    b2c0        ..      UXTB     r0,r0
        0x1fff4cb6:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4cb8:    2a00        .*      CMP      r2,#0
        0x1fff4cba:    d117        ..      BNE      0x1fff4cec ; ll_hw_go1 + 444
        0x1fff4cbc:    4a46        FJ      LDR      r2,[pc,#280] ; [0x1fff4dd8] = 0x1fff0a68
        0x1fff4cbe:    2300        .#      MOVS     r3,#0
        0x1fff4cc0:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4cc2:    2b00        .+      CMP      r3,#0
        0x1fff4cc4:    4b45        EK      LDR      r3,[pc,#276] ; [0x1fff4ddc] = 0
        0x1fff4cc6:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4cc8:    db06        ..      BLT      0x1fff4cd8 ; ll_hw_go1 + 424
        0x1fff4cca:    041b        ..      LSLS     r3,r3,#16
        0x1fff4ccc:    2600        .&      MOVS     r6,#0
        0x1fff4cce:    5796        .W      LDRSB    r6,[r2,r6]
        0x1fff4cd0:    0232        2.      LSLS     r2,r6,#8
        0x1fff4cd2:    189a        ..      ADDS     r2,r3,r2
        0x1fff4cd4:    1812        ..      ADDS     r2,r2,r0
        0x1fff4cd6:    e008        ..      B        0x1fff4cea ; ll_hw_go1 + 442
        0x1fff4cd8:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4cda:    041b        ..      LSLS     r3,r3,#16
        0x1fff4cdc:    2600        .&      MOVS     r6,#0
        0x1fff4cde:    5796        .W      LDRSB    r6,[r2,r6]
        0x1fff4ce0:    0232        2.      LSLS     r2,r6,#8
        0x1fff4ce2:    189a        ..      ADDS     r2,r3,r2
        0x1fff4ce4:    4b3e        >K      LDR      r3,[pc,#248] ; [0x1fff4de0] = 0xfeff
        0x1fff4ce6:    1812        ..      ADDS     r2,r2,r0
        0x1fff4ce8:    18d2        ..      ADDS     r2,r2,r3
        0x1fff4cea:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff4cec:    2802        .(      CMP      r0,#2
        0x1fff4cee:    d201        ..      BCS      0x1fff4cf4 ; ll_hw_go1 + 452
        0x1fff4cf0:    2002        .       MOVS     r0,#2
        0x1fff4cf2:    e002        ..      B        0x1fff4cfa ; ll_hw_go1 + 458
        0x1fff4cf4:    2850        P(      CMP      r0,#0x50
        0x1fff4cf6:    d900        ..      BLS      0x1fff4cfa ; ll_hw_go1 + 458
        0x1fff4cf8:    2050        P       MOVS     r0,#0x50
        0x1fff4cfa:    4a3a        :J      LDR      r2,[pc,#232] ; [0x1fff4de4] = 0x1fff0a49
        0x1fff4cfc:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4cfe:    2a02        .*      CMP      r2,#2
        0x1fff4d00:    d011        ..      BEQ      0x1fff4d26 ; ll_hw_go1 + 502
        0x1fff4d02:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff4de8] = 0x1fff0a44
        0x1fff4d04:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d06:    4b39        9K      LDR      r3,[pc,#228] ; [0x1fff4dec] = 0x1fff0a45
        0x1fff4d08:    781f        .x      LDRB     r7,[r3,#0]
        0x1fff4d0a:    42be        .B      CMP      r6,r7
        0x1fff4d0c:    d90f        ..      BLS      0x1fff4d2e ; ll_hw_go1 + 510
        0x1fff4d0e:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d10:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff4d12:    1af3        ..      SUBS     r3,r6,r3
        0x1fff4d14:    1e80        ..      SUBS     r0,r0,#2
        0x1fff4d16:    1040        @.      ASRS     r0,r0,#1
        0x1fff4d18:    4343        CC      MULS     r3,r0,r3
        0x1fff4d1a:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4d1c:    0140        @.      LSLS     r0,r0,#5
        0x1fff4d1e:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff4d20:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff4d22:    1140        @.      ASRS     r0,r0,#5
        0x1fff4d24:    e004        ..      B        0x1fff4d30 ; ll_hw_go1 + 512
        0x1fff4d26:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff4df0] = 0x1fff0a46
        0x1fff4d28:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d2a:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff4df4] = 0x1fff0a47
        0x1fff4d2c:    e7ec        ..      B        0x1fff4d08 ; ll_hw_go1 + 472
        0x1fff4d2e:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4d30:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff4d32:    0a12        ..      LSRS     r2,r2,#8
        0x1fff4d34:    0212        ..      LSLS     r2,r2,#8
        0x1fff4d36:    4310        .C      ORRS     r0,r0,r2
        0x1fff4d38:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff4d3a:    2d05        .-      CMP      r5,#5
        0x1fff4d3c:    d001        ..      BEQ      0x1fff4d42 ; ll_hw_go1 + 530
        0x1fff4d3e:    2d04        .-      CMP      r5,#4
        0x1fff4d40:    d116        ..      BNE      0x1fff4d70 ; ll_hw_go1 + 576
        0x1fff4d42:    482d        -H      LDR      r0,[pc,#180] ; [0x1fff4df8] = 0x1fff08f9
        0x1fff4d44:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4d46:    2800        .(      CMP      r0,#0
        0x1fff4d48:    d006        ..      BEQ      0x1fff4d58 ; ll_hw_go1 + 552
        0x1fff4d4a:    482c        ,H      LDR      r0,[pc,#176] ; [0x1fff4dfc] = 0x1fff0922
        0x1fff4d4c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4d4e:    2800        .(      CMP      r0,#0
        0x1fff4d50:    d002        ..      BEQ      0x1fff4d58 ; ll_hw_go1 + 552
        0x1fff4d52:    2000        .       MOVS     r0,#0
        0x1fff4d54:    f7fcffb4    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1cc0
        0x1fff4d58:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff4d5a:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff4d5c:    3402        .4      ADDS     r4,#2
        0x1fff4d5e:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff4d60:    2804        .(      CMP      r0,#4
        0x1fff4d62:    d001        ..      BEQ      0x1fff4d68 ; ll_hw_go1 + 568
        0x1fff4d64:    2803        .(      CMP      r0,#3
        0x1fff4d66:    d103        ..      BNE      0x1fff4d70 ; ll_hw_go1 + 576
        0x1fff4d68:    20ff        .       MOVS     r0,#0xff
        0x1fff4d6a:    305f        _0      ADDS     r0,r0,#0x5f
        0x1fff4d6c:    f7fcfe76    ..v.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff4d70:    2d02        .-      CMP      r5,#2
        0x1fff4d72:    d112        ..      BNE      0x1fff4d9a ; ll_hw_go1 + 618
        0x1fff4d74:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff4e00] = 0x1fff091c
        0x1fff4d76:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4d78:    2801        .(      CMP      r0,#1
        0x1fff4d7a:    d007        ..      BEQ      0x1fff4d8c ; ll_hw_go1 + 604
        0x1fff4d7c:    2803        .(      CMP      r0,#3
        0x1fff4d7e:    d005        ..      BEQ      0x1fff4d8c ; ll_hw_go1 + 604
        0x1fff4d80:    2802        .(      CMP      r0,#2
        0x1fff4d82:    d003        ..      BEQ      0x1fff4d8c ; ll_hw_go1 + 604
        0x1fff4d84:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff4e04] = 0x1fff0923
        0x1fff4d86:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4d88:    2802        .(      CMP      r0,#2
        0x1fff4d8a:    d106        ..      BNE      0x1fff4d9a ; ll_hw_go1 + 618
        0x1fff4d8c:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff4dd4] = 0x1fff098c
        0x1fff4d8e:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4d90:    2800        .(      CMP      r0,#0
        0x1fff4d92:    d102        ..      BNE      0x1fff4d9a ; ll_hw_go1 + 618
        0x1fff4d94:    206c        l       MOVS     r0,#0x6c
        0x1fff4d96:    f7fcfe61    ..a.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff4d9a:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff4e08] = 0x1fff0bbc
        0x1fff4d9c:    2001        .       MOVS     r0,#1
        0x1fff4d9e:    82c8        ..      STRH     r0,[r1,#0x16]
        0x1fff4da0:    b009        ..      ADD      sp,sp,#0x24
        0x1fff4da2:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff4da4:    1fff0d30    0...    DCD    536808752
        0x1fff4da8:    1fff0934    4...    DCD    536807732
        0x1fff4dac:    1fff0998    ....    DCD    536807832
        0x1fff4db0:    1fff0ffc    ....    DCD    536809468
        0x1fff4db4:    1fff70d8    .p..    DCD    536834264
        0x1fff4db8:    00003fff    .?..    DCD    16383
        0x1fff4dbc:    40031000    ...@    DCD    1073942528
        0x1fff4dc0:    00000271    q...    DCD    625
        0x1fff4dc4:    1fff0917    ....    DCD    536807703
        0x1fff4dc8:    1fff0916    ....    DCD    536807702
        0x1fff4dcc:    1fff7f10    ....    DCD    536837904
        0x1fff4dd0:    40030080    ...@    DCD    1073938560
        0x1fff4dd4:    1fff098c    ....    DCD    536807820
        0x1fff4dd8:    1fff0a68    h...    DCD    536808040
        0x1fff4ddc:    00000000    ....    DCD    0
        0x1fff4de0:    0000feff    ....    DCD    65279
        0x1fff4de4:    1fff0a49    I...    DCD    536808009
        0x1fff4de8:    1fff0a44    D...    DCD    536808004
        0x1fff4dec:    1fff0a45    E...    DCD    536808005
        0x1fff4df0:    1fff0a46    F...    DCD    536808006
        0x1fff4df4:    1fff0a47    G...    DCD    536808007
        0x1fff4df8:    1fff08f9    ....    DCD    536807673
        0x1fff4dfc:    1fff0922    "...    DCD    536807714
        0x1fff4e00:    1fff091c    ....    DCD    536807708
        0x1fff4e04:    1fff0923    #...    DCD    536807715
        0x1fff4e08:    1fff0bbc    ....    DCD    536808380
    $t
    i.ll_hw_read_tfifo_rtlp1
    ll_hw_read_tfifo_rtlp1
        0x1fff4e0c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4e0e:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff4ed4] = 0x1fff0d30
        0x1fff4e10:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4e12:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4e14:    0089        ..      LSLS     r1,r1,#2
        0x1fff4e16:    4348        HC      MULS     r0,r1,r0
        0x1fff4e18:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff4ed8] = 0x1fff0934
        0x1fff4e1a:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4e1c:    1844        D.      ADDS     r4,r0,r1
        0x1fff4e1e:    4626        &F      MOV      r6,r4
        0x1fff4e20:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4e22:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4e24:    2000        .       MOVS     r0,#0
        0x1fff4e26:    6af1        .j      LDR      r1,[r6,#0x2c]
        0x1fff4e28:    4635        5F      MOV      r5,r6
        0x1fff4e2a:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff4e2c:    6008        .`      STR      r0,[r1,#0]
        0x1fff4e2e:    7428        (t      STRB     r0,[r5,#0x10]
        0x1fff4e30:    482a        *H      LDR      r0,[pc,#168] ; [0x1fff4edc] = 0x40031040
        0x1fff4e32:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1fff4e34:    054a        J.      LSLS     r2,r1,#21
        0x1fff4e36:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff4e38:    0d52        R.      LSRS     r2,r2,#21
        0x1fff4e3a:    0149        I.      LSLS     r1,r1,#5
        0x1fff4e3c:    0d4b        K.      LSRS     r3,r1,#21
        0x1fff4e3e:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff4e40:    4f27        'O      LDR      r7,[pc,#156] ; [0x1fff4ee0] = 0x7ff0000
        0x1fff4e42:    4039        9@      ANDS     r1,r1,r7
        0x1fff4e44:    4311        .C      ORRS     r1,r1,r2
        0x1fff4e46:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4e48:    1a9f        ..      SUBS     r7,r3,r2
        0x1fff4e4a:    e01e        ..      B        0x1fff4e8a ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4e4c:    6af0        .j      LDR      r0,[r6,#0x2c]
        0x1fff4e4e:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4e50:    2900        .)      CMP      r1,#0
        0x1fff4e52:    d01e        ..      BEQ      0x1fff4e92 ; ll_hw_read_tfifo_rtlp1 + 134
        0x1fff4e54:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff4ee4] = 0x1fff0915
        0x1fff4e56:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff4e58:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff4e5a:    4288        .B      CMP      r0,r1
        0x1fff4e5c:    d215        ..      BCS      0x1fff4e8a ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4e5e:    0080        ..      LSLS     r0,r0,#2
        0x1fff4e60:    1900        ..      ADDS     r0,r0,r4
        0x1fff4e62:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4e64:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4e66:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff4e68:    2800        .(      CMP      r0,#0
        0x1fff4e6a:    d00e        ..      BEQ      0x1fff4e8a ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4e6c:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4e6e:    f7fcff2d    ..-.    BL       $Ven$TT$L$$ll_hw_read_tfifo_packet ; 0x1fff1ccc
        0x1fff4e72:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4e74:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff4e76:    0081        ..      LSLS     r1,r0,#2
        0x1fff4e78:    1909        ..      ADDS     r1,r1,r4
        0x1fff4e7a:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4e7c:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4e7e:    6b09        .k      LDR      r1,[r1,#0x30]
        0x1fff4e80:    8889        ..      LDRH     r1,[r1,#4]
        0x1fff4e82:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4e84:    d001        ..      BEQ      0x1fff4e8a ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4e86:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4e88:    7428        (t      STRB     r0,[r5,#0x10]
        0x1fff4e8a:    2f00        ./      CMP      r7,#0
        0x1fff4e8c:    dcde        ..      BGT      0x1fff4e4c ; ll_hw_read_tfifo_rtlp1 + 64
        0x1fff4e8e:    7c2d        -|      LDRB     r5,[r5,#0x10]
        0x1fff4e90:    e01c        ..      B        0x1fff4ecc ; ll_hw_read_tfifo_rtlp1 + 192
        0x1fff4e92:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4e94:    f7fcff1a    ....    BL       $Ven$TT$L$$ll_hw_read_tfifo_packet ; 0x1fff1ccc
        0x1fff4e98:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4e9a:    6af1        .j      LDR      r1,[r6,#0x2c]
        0x1fff4e9c:    2001        .       MOVS     r0,#1
        0x1fff4e9e:    6008        .`      STR      r0,[r1,#0]
        0x1fff4ea0:    e7f3        ..      B        0x1fff4e8a ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4ea2:    00a8        ..      LSLS     r0,r5,#2
        0x1fff4ea4:    1906        ..      ADDS     r6,r0,r4
        0x1fff4ea6:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4ea8:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4eaa:    6b31        1k      LDR      r1,[r6,#0x30]
        0x1fff4eac:    2900        .)      CMP      r1,#0
        0x1fff4eae:    d00b        ..      BEQ      0x1fff4ec8 ; ll_hw_read_tfifo_rtlp1 + 188
        0x1fff4eb0:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff4ed4] = 0x1fff0d30
        0x1fff4eb2:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4eb4:    f000f862    ..b.    BL       ll_osal_mem_free ; 0x1fff4f7c
        0x1fff4eb8:    2000        .       MOVS     r0,#0
        0x1fff4eba:    6330        0c      STR      r0,[r6,#0x30]
        0x1fff4ebc:    2005        .       MOVS     r0,#5
        0x1fff4ebe:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4ec0:    1820         .      ADDS     r0,r4,r0
        0x1fff4ec2:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4ec4:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4ec6:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4ec8:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4eca:    b2ed        ..      UXTB     r5,r5
        0x1fff4ecc:    2d08        .-      CMP      r5,#8
        0x1fff4ece:    d3e8        ..      BCC      0x1fff4ea2 ; ll_hw_read_tfifo_rtlp1 + 150
        0x1fff4ed0:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff4ed2:    0000        ..      DCW    0
        0x1fff4ed4:    1fff0d30    0...    DCD    536808752
        0x1fff4ed8:    1fff0934    4...    DCD    536807732
        0x1fff4edc:    40031040    @..@    DCD    1073942592
        0x1fff4ee0:    07ff0000    ....    DCD    134152192
        0x1fff4ee4:    1fff0915    ....    DCD    536807701
    $t
    i.ll_osal_mem_alloc
    ll_osal_mem_alloc
        0x1fff4ee8:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff4eea:    b084        ..      SUB      sp,sp,#0x10
        0x1fff4eec:    460c        .F      MOV      r4,r1
        0x1fff4eee:    f7fcfd07    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4ef2:    4d1c        .M      LDR      r5,[pc,#112] ; [0x1fff4f64] = 0x1fff08d8
        0x1fff4ef4:    4e1c        .N      LDR      r6,[pc,#112] ; [0x1fff4f68] = 0x1fff08d4
        0x1fff4ef6:    6828        (h      LDR      r0,[r5,#0]
        0x1fff4ef8:    9002        ..      STR      r0,[sp,#8]
        0x1fff4efa:    6830        0h      LDR      r0,[r6,#0]
        0x1fff4efc:    4f1b        .O      LDR      r7,[pc,#108] ; [0x1fff4f6c] = 0x1fff08dc
        0x1fff4efe:    9001        ..      STR      r0,[sp,#4]
        0x1fff4f00:    6838        8h      LDR      r0,[r7,#0]
        0x1fff4f02:    9000        ..      STR      r0,[sp,#0]
        0x1fff4f04:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff4f70] = 0x1fff70d8
        0x1fff4f06:    6b81        .k      LDR      r1,[r0,#0x38]
        0x1fff4f08:    6029        )`      STR      r1,[r5,#0]
        0x1fff4f0a:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff4f0c:    6031        1`      STR      r1,[r6,#0]
        0x1fff4f0e:    6c00        .l      LDR      r0,[r0,#0x40]
        0x1fff4f10:    6038        8`      STR      r0,[r7,#0]
        0x1fff4f12:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff4f74] = 0x1fff08d0
        0x1fff4f14:    2100        .!      MOVS     r1,#0
        0x1fff4f16:    7001        .p      STRB     r1,[r0,#0]
        0x1fff4f18:    4620         F      MOV      r0,r4
        0x1fff4f1a:    f7fcfedd    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff1cd8
        0x1fff4f1e:    4604        .F      MOV      r4,r0
        0x1fff4f20:    9802        ..      LDR      r0,[sp,#8]
        0x1fff4f22:    6028        (`      STR      r0,[r5,#0]
        0x1fff4f24:    9801        ..      LDR      r0,[sp,#4]
        0x1fff4f26:    6030        0`      STR      r0,[r6,#0]
        0x1fff4f28:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4f2a:    6038        8`      STR      r0,[r7,#0]
        0x1fff4f2c:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff4f74] = 0x1fff08d0
        0x1fff4f2e:    2201        ."      MOVS     r2,#1
        0x1fff4f30:    7002        .p      STRB     r2,[r0,#0]
        0x1fff4f32:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff4f34:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff4f78] = 0x1fff7f30
        0x1fff4f36:    251c        .%      MOVS     r5,#0x1c
        0x1fff4f38:    4369        iC      MULS     r1,r5,r1
        0x1fff4f3a:    18c9        ..      ADDS     r1,r1,r3
        0x1fff4f3c:    2c00        .,      CMP      r4,#0
        0x1fff4f3e:    d003        ..      BEQ      0x1fff4f48 ; ll_osal_mem_alloc + 96
        0x1fff4f40:    7e08        .~      LDRB     r0,[r1,#0x18]
        0x1fff4f42:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4f44:    7608        .v      STRB     r0,[r1,#0x18]
        0x1fff4f46:    e007        ..      B        0x1fff4f58 ; ll_osal_mem_alloc + 112
        0x1fff4f48:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4f4a:    00c0        ..      LSLS     r0,r0,#3
        0x1fff4f4c:    5c0b        .\      LDRB     r3,[r1,r0]
        0x1fff4f4e:    2b00        .+      CMP      r3,#0
        0x1fff4f50:    d102        ..      BNE      0x1fff4f58 ; ll_osal_mem_alloc + 112
        0x1fff4f52:    540a        .T      STRB     r2,[r1,r0]
        0x1fff4f54:    1808        ..      ADDS     r0,r1,r0
        0x1fff4f56:    6844        Dh      LDR      r4,[r0,#4]
        0x1fff4f58:    f7fcfcde    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4f5c:    4620         F      MOV      r0,r4
        0x1fff4f5e:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff4f60:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff4f62:    0000        ..      DCW    0
        0x1fff4f64:    1fff08d8    ....    DCD    536807640
        0x1fff4f68:    1fff08d4    ....    DCD    536807636
        0x1fff4f6c:    1fff08dc    ....    DCD    536807644
        0x1fff4f70:    1fff70d8    .p..    DCD    536834264
        0x1fff4f74:    1fff08d0    ....    DCD    536807632
        0x1fff4f78:    1fff7f30    0...    DCD    536837936
    $t
    i.ll_osal_mem_free
    ll_osal_mem_free
        0x1fff4f7c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4f7e:    460c        .F      MOV      r4,r1
        0x1fff4f80:    4605        .F      MOV      r5,r0
        0x1fff4f82:    f7fcfcbd    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4f86:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff4fc8] = 0x1fff7f30
        0x1fff4f88:    211c        .!      MOVS     r1,#0x1c
        0x1fff4f8a:    2200        ."      MOVS     r2,#0
        0x1fff4f8c:    434d        MC      MULS     r5,r1,r5
        0x1fff4f8e:    1828        (.      ADDS     r0,r5,r0
        0x1fff4f90:    00d1        ..      LSLS     r1,r2,#3
        0x1fff4f92:    5c43        C\      LDRB     r3,[r0,r1]
        0x1fff4f94:    2b00        .+      CMP      r3,#0
        0x1fff4f96:    d009        ..      BEQ      0x1fff4fac ; ll_osal_mem_free + 48
        0x1fff4f98:    1841        A.      ADDS     r1,r0,r1
        0x1fff4f9a:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff4f9c:    42a1        .B      CMP      r1,r4
        0x1fff4f9e:    d105        ..      BNE      0x1fff4fac ; ll_osal_mem_free + 48
        0x1fff4fa0:    2100        .!      MOVS     r1,#0
        0x1fff4fa2:    00d2        ..      LSLS     r2,r2,#3
        0x1fff4fa4:    5481        .T      STRB     r1,[r0,r2]
        0x1fff4fa6:    f7fcfcb7    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4faa:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4fac:    1c52        R.      ADDS     r2,r2,#1
        0x1fff4fae:    b2d2        ..      UXTB     r2,r2
        0x1fff4fb0:    2a03        .*      CMP      r2,#3
        0x1fff4fb2:    d3ed        ..      BCC      0x1fff4f90 ; ll_osal_mem_free + 20
        0x1fff4fb4:    1f24        $.      SUBS     r4,r4,#4
        0x1fff4fb6:    8821        !.      LDRH     r1,[r4,#0]
        0x1fff4fb8:    0449        I.      LSLS     r1,r1,#17
        0x1fff4fba:    0c49        I.      LSRS     r1,r1,#17
        0x1fff4fbc:    8021        !.      STRH     r1,[r4,#0]
        0x1fff4fbe:    7e01        .~      LDRB     r1,[r0,#0x18]
        0x1fff4fc0:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4fc2:    7601        .v      STRB     r1,[r0,#0x18]
        0x1fff4fc4:    e7ef        ..      B        0x1fff4fa6 ; ll_osal_mem_free + 42
    $d
        0x1fff4fc6:    0000        ..      DCW    0
        0x1fff4fc8:    1fff7f30    0...    DCD    536837936
    $t
    i.ll_processBasicIRQ_SRX
    ll_processBasicIRQ_SRX
        0x1fff4fcc:    b510        ..      PUSH     {r4,lr}
        0x1fff4fce:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4fe0] = 0x1fff0280
        0x1fff4fd0:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4fd2:    2900        .)      CMP      r1,#0
        0x1fff4fd4:    d001        ..      BEQ      0x1fff4fda ; ll_processBasicIRQ_SRX + 14
        0x1fff4fd6:    4788        .G      BLX      r1
        0x1fff4fd8:    bd10        ..      POP      {r4,pc}
        0x1fff4fda:    f7fcfd27    ..'.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4fde:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4fe0:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_ScanTRX
    ll_processBasicIRQ_ScanTRX
        0x1fff4fe4:    b510        ..      PUSH     {r4,lr}
        0x1fff4fe6:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4ff8] = 0x1fff0280
        0x1fff4fe8:    6889        .h      LDR      r1,[r1,#8]
        0x1fff4fea:    2900        .)      CMP      r1,#0
        0x1fff4fec:    d001        ..      BEQ      0x1fff4ff2 ; ll_processBasicIRQ_ScanTRX + 14
        0x1fff4fee:    4788        .G      BLX      r1
        0x1fff4ff0:    bd10        ..      POP      {r4,pc}
        0x1fff4ff2:    f7fcfd1b    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff4ff6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4ff8:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secScanTRX
    ll_processBasicIRQ_secScanTRX
        0x1fff4ffc:    b510        ..      PUSH     {r4,lr}
        0x1fff4ffe:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5010] = 0x1fff0280
        0x1fff5000:    6989        .i      LDR      r1,[r1,#0x18]
        0x1fff5002:    2900        .)      CMP      r1,#0
        0x1fff5004:    d001        ..      BEQ      0x1fff500a ; ll_processBasicIRQ_secScanTRX + 14
        0x1fff5006:    4788        .G      BLX      r1
        0x1fff5008:    bd10        ..      POP      {r4,pc}
        0x1fff500a:    f7fcfd0f    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff500e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5010:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvSTX
    ll_processBasicIRQ_secondaryAdvSTX
        0x1fff5014:    b510        ..      PUSH     {r4,lr}
        0x1fff5016:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5028] = 0x1fff0280
        0x1fff5018:    6949        Ii      LDR      r1,[r1,#0x14]
        0x1fff501a:    2900        .)      CMP      r1,#0
        0x1fff501c:    d001        ..      BEQ      0x1fff5022 ; ll_processBasicIRQ_secondaryAdvSTX + 14
        0x1fff501e:    4788        .G      BLX      r1
        0x1fff5020:    bd10        ..      POP      {r4,pc}
        0x1fff5022:    f7fcfd03    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff5026:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5028:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvTRX
    ll_processBasicIRQ_secondaryAdvTRX
        0x1fff502c:    b510        ..      PUSH     {r4,lr}
        0x1fff502e:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5040] = 0x1fff0280
        0x1fff5030:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff5032:    2900        .)      CMP      r1,#0
        0x1fff5034:    d001        ..      BEQ      0x1fff503a ; ll_processBasicIRQ_secondaryAdvTRX + 14
        0x1fff5036:    4788        .G      BLX      r1
        0x1fff5038:    bd10        ..      POP      {r4,pc}
        0x1fff503a:    f7fcfcf7    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff503e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5040:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryInitSRX
    ll_processBasicIRQ_secondaryInitSRX
        0x1fff5044:    b510        ..      PUSH     {r4,lr}
        0x1fff5046:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5058] = 0x1fff0280
        0x1fff5048:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff504a:    2900        .)      CMP      r1,#0
        0x1fff504c:    d001        ..      BEQ      0x1fff5052 ; ll_processBasicIRQ_secondaryInitSRX + 14
        0x1fff504e:    4788        .G      BLX      r1
        0x1fff5050:    bd10        ..      POP      {r4,pc}
        0x1fff5052:    f7fcfceb    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff5056:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5058:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryScanSRX
    ll_processBasicIRQ_secondaryScanSRX
        0x1fff505c:    b510        ..      PUSH     {r4,lr}
        0x1fff505e:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5070] = 0x1fff0280
        0x1fff5060:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff5062:    2900        .)      CMP      r1,#0
        0x1fff5064:    d001        ..      BEQ      0x1fff506a ; ll_processBasicIRQ_secondaryScanSRX + 14
        0x1fff5066:    4788        .G      BLX      r1
        0x1fff5068:    bd10        ..      POP      {r4,pc}
        0x1fff506a:    f7fcfcdf    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff506e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5070:    1fff0280    ....    DCD    536806016
    $t
    i.ll_read_rxfifo1
    ll_read_rxfifo1
        0x1fff5074:    b510        ..      PUSH     {r4,lr}
        0x1fff5076:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff50a0] = 0x1fff0d30
        0x1fff5078:    21a1        .!      MOVS     r1,#0xa1
        0x1fff507a:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff507c:    0089        ..      LSLS     r1,r1,#2
        0x1fff507e:    4348        HC      MULS     r0,r1,r0
        0x1fff5080:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff50a4] = 0x1fff0934
        0x1fff5082:    6809        .h      LDR      r1,[r1,#0]
        0x1fff5084:    1840        @.      ADDS     r0,r0,r1
        0x1fff5086:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff5088:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff50a8] = 0x1fff7f10
        0x1fff508a:    0040        @.      LSLS     r0,r0,#1
        0x1fff508c:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff508e:    2800        .(      CMP      r0,#0
        0x1fff5090:    d003        ..      BEQ      0x1fff509a ; ll_read_rxfifo1 + 38
        0x1fff5092:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff50ac] = 0x1fff10e0
        0x1fff5094:    2000        .       MOVS     r0,#0
        0x1fff5096:    7188        .q      STRB     r0,[r1,#6]
        0x1fff5098:    bd10        ..      POP      {r4,pc}
        0x1fff509a:    f7fcfe23    ..#.    BL       $Ven$TT$L$$ll_read_rxfifo0 ; 0x1fff1ce4
        0x1fff509e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50a0:    1fff0d30    0...    DCD    536808752
        0x1fff50a4:    1fff0934    4...    DCD    536807732
        0x1fff50a8:    1fff7f10    ....    DCD    536837904
        0x1fff50ac:    1fff10e0    ....    DCD    536809696
    $t
    i.llbuf_alloc_time_statics
    llbuf_alloc_time_statics
        0x1fff50b0:    b510        ..      PUSH     {r4,lr}
        0x1fff50b2:    4604        .F      MOV      r4,r0
        0x1fff50b4:    f7fcfc7e    ..~.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff50b8:    42a0        .B      CMP      r0,r4
        0x1fff50ba:    d303        ..      BCC      0x1fff50c4 ; llbuf_alloc_time_statics + 20
        0x1fff50bc:    f7fcfc7a    ..z.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff50c0:    1b01        ..      SUBS     r1,r0,r4
        0x1fff50c2:    e004        ..      B        0x1fff50ce ; llbuf_alloc_time_statics + 30
        0x1fff50c4:    f7fcfc76    ..v.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff50c8:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff50f0] = 0x3fffff
        0x1fff50ca:    1b09        ..      SUBS     r1,r1,r4
        0x1fff50cc:    1841        A.      ADDS     r1,r0,r1
        0x1fff50ce:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff50f4] = 0x1fff70d8
        0x1fff50d0:    6a02        .j      LDR      r2,[r0,#0x20]
        0x1fff50d2:    4291        .B      CMP      r1,r2
        0x1fff50d4:    d200        ..      BCS      0x1fff50d8 ; llbuf_alloc_time_statics + 40
        0x1fff50d6:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff50d8:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff50da:    4291        .B      CMP      r1,r2
        0x1fff50dc:    d900        ..      BLS      0x1fff50e0 ; llbuf_alloc_time_statics + 48
        0x1fff50de:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff50e0:    6a42        Bj      LDR      r2,[r0,#0x24]
        0x1fff50e2:    00d3        ..      LSLS     r3,r2,#3
        0x1fff50e4:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff50e6:    1851        Q.      ADDS     r1,r2,r1
        0x1fff50e8:    08c9        ..      LSRS     r1,r1,#3
        0x1fff50ea:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff50ec:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50ee:    0000        ..      DCW    0
        0x1fff50f0:    003fffff    ..?.    DCD    4194303
        0x1fff50f4:    1fff70d8    .p..    DCD    536834264
    $t
    i.log_vsprintf
    log_vsprintf
        0x1fff50f8:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff50fa:    4606        .F      MOV      r6,r0
        0x1fff50fc:    b086        ..      SUB      sp,sp,#0x18
        0x1fff50fe:    2000        .       MOVS     r0,#0
        0x1fff5100:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff5102:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff5104:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff5106:    e110        ..      B        0x1fff532a ; log_vsprintf + 562
        0x1fff5108:    2925        %)      CMP      r1,#0x25
        0x1fff510a:    d00a        ..      BEQ      0x1fff5122 ; log_vsprintf + 42
        0x1fff510c:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff510e:    2900        .)      CMP      r1,#0
        0x1fff5110:    d001        ..      BEQ      0x1fff5116 ; log_vsprintf + 30
        0x1fff5112:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff5114:    e002        ..      B        0x1fff511c ; log_vsprintf + 36
        0x1fff5116:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff5118:    2000        .       MOVS     r0,#0
        0x1fff511a:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff511c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff511e:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff5120:    e100        ..      B        0x1fff5324 ; log_vsprintf + 556
        0x1fff5122:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff5124:    2800        .(      CMP      r0,#0
        0x1fff5126:    d005        ..      BEQ      0x1fff5134 ; log_vsprintf + 60
        0x1fff5128:    b281        ..      UXTH     r1,r0
        0x1fff512a:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff512c:    47b0        .G      BLX      r6
        0x1fff512e:    2000        .       MOVS     r0,#0
        0x1fff5130:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff5132:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff5134:    2500        .%      MOVS     r5,#0
        0x1fff5136:    2204        ."      MOVS     r2,#4
        0x1fff5138:    2308        .#      MOVS     r3,#8
        0x1fff513a:    2110        .!      MOVS     r1,#0x10
        0x1fff513c:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff513e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5140:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff5142:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5144:    282b        +(      CMP      r0,#0x2b
        0x1fff5146:    d019        ..      BEQ      0x1fff517c ; log_vsprintf + 132
        0x1fff5148:    dc04        ..      BGT      0x1fff5154 ; log_vsprintf + 92
        0x1fff514a:    2820         (      CMP      r0,#0x20
        0x1fff514c:    d018        ..      BEQ      0x1fff5180 ; log_vsprintf + 136
        0x1fff514e:    2823        #(      CMP      r0,#0x23
        0x1fff5150:    d104        ..      BNE      0x1fff515c ; log_vsprintf + 100
        0x1fff5152:    e017        ..      B        0x1fff5184 ; log_vsprintf + 140
        0x1fff5154:    282d        -(      CMP      r0,#0x2d
        0x1fff5156:    d00f        ..      BEQ      0x1fff5178 ; log_vsprintf + 128
        0x1fff5158:    2830        0(      CMP      r0,#0x30
        0x1fff515a:    d015        ..      BEQ      0x1fff5188 ; log_vsprintf + 144
        0x1fff515c:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x1fff515e:    2700        .'      MOVS     r7,#0
        0x1fff5160:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff5162:    43ff        .C      MVNS     r7,r7
        0x1fff5164:    4603        .F      MOV      r3,r0
        0x1fff5166:    3b30        0;      SUBS     r3,r3,#0x30
        0x1fff5168:    463c        <F      MOV      r4,r7
        0x1fff516a:    2b09        .+      CMP      r3,#9
        0x1fff516c:    d80f        ..      BHI      0x1fff518e ; log_vsprintf + 150
        0x1fff516e:    a807        ..      ADD      r0,sp,#0x1c
        0x1fff5170:    f001faea    ....    BL       skip_atoi ; 0x1fff6748
        0x1fff5174:    4604        .F      MOV      r4,r0
        0x1fff5176:    e015        ..      B        0x1fff51a4 ; log_vsprintf + 172
        0x1fff5178:    430d        .C      ORRS     r5,r5,r1
        0x1fff517a:    e7df        ..      B        0x1fff513c ; log_vsprintf + 68
        0x1fff517c:    4315        .C      ORRS     r5,r5,r2
        0x1fff517e:    e7dd        ..      B        0x1fff513c ; log_vsprintf + 68
        0x1fff5180:    431d        .C      ORRS     r5,r5,r3
        0x1fff5182:    e7db        ..      B        0x1fff513c ; log_vsprintf + 68
        0x1fff5184:    2020                MOVS     r0,#0x20
        0x1fff5186:    e000        ..      B        0x1fff518a ; log_vsprintf + 146
        0x1fff5188:    2001        .       MOVS     r0,#1
        0x1fff518a:    4305        .C      ORRS     r5,r5,r0
        0x1fff518c:    e7d6        ..      B        0x1fff513c ; log_vsprintf + 68
        0x1fff518e:    282a        *(      CMP      r0,#0x2a
        0x1fff5190:    d108        ..      BNE      0x1fff51a4 ; log_vsprintf + 172
        0x1fff5192:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5194:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff5196:    9207        ..      STR      r2,[sp,#0x1c]
        0x1fff5198:    c810        ..      LDM      r0!,{r4}
        0x1fff519a:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff519c:    2c00        .,      CMP      r4,#0
        0x1fff519e:    da01        ..      BGE      0x1fff51a4 ; log_vsprintf + 172
        0x1fff51a0:    4264        dB      RSBS     r4,r4,#0
        0x1fff51a2:    430d        .C      ORRS     r5,r5,r1
        0x1fff51a4:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff51a6:    4638        8F      MOV      r0,r7
        0x1fff51a8:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff51aa:    2a2e        .*      CMP      r2,#0x2e
        0x1fff51ac:    d114        ..      BNE      0x1fff51d8 ; log_vsprintf + 224
        0x1fff51ae:    1c49        I.      ADDS     r1,r1,#1
        0x1fff51b0:    9107        ..      STR      r1,[sp,#0x1c]
        0x1fff51b2:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff51b4:    4602        .F      MOV      r2,r0
        0x1fff51b6:    3a30        0:      SUBS     r2,r2,#0x30
        0x1fff51b8:    2a09        .*      CMP      r2,#9
        0x1fff51ba:    d803        ..      BHI      0x1fff51c4 ; log_vsprintf + 204
        0x1fff51bc:    a807        ..      ADD      r0,sp,#0x1c
        0x1fff51be:    f001fac3    ....    BL       skip_atoi ; 0x1fff6748
        0x1fff51c2:    e006        ..      B        0x1fff51d2 ; log_vsprintf + 218
        0x1fff51c4:    282a        *(      CMP      r0,#0x2a
        0x1fff51c6:    d106        ..      BNE      0x1fff51d6 ; log_vsprintf + 222
        0x1fff51c8:    1c49        I.      ADDS     r1,r1,#1
        0x1fff51ca:    9107        ..      STR      r1,[sp,#0x1c]
        0x1fff51cc:    9908        ..      LDR      r1,[sp,#0x20]
        0x1fff51ce:    c901        ..      LDM      r1!,{r0}
        0x1fff51d0:    9108        ..      STR      r1,[sp,#0x20]
        0x1fff51d2:    2800        .(      CMP      r0,#0
        0x1fff51d4:    da00        ..      BGE      0x1fff51d8 ; log_vsprintf + 224
        0x1fff51d6:    2000        .       MOVS     r0,#0
        0x1fff51d8:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x1fff51da:    4639        9F      MOV      r1,r7
        0x1fff51dc:    7817        .x      LDRB     r7,[r2,#0]
        0x1fff51de:    2f68        h/      CMP      r7,#0x68
        0x1fff51e0:    d003        ..      BEQ      0x1fff51ea ; log_vsprintf + 242
        0x1fff51e2:    2f6c        l/      CMP      r7,#0x6c
        0x1fff51e4:    d001        ..      BEQ      0x1fff51ea ; log_vsprintf + 242
        0x1fff51e6:    2f4c        L/      CMP      r7,#0x4c
        0x1fff51e8:    d102        ..      BNE      0x1fff51f0 ; log_vsprintf + 248
        0x1fff51ea:    1c52        R.      ADDS     r2,r2,#1
        0x1fff51ec:    4639        9F      MOV      r1,r7
        0x1fff51ee:    9207        ..      STR      r2,[sp,#0x1c]
        0x1fff51f0:    9b07        ..      LDR      r3,[sp,#0x1c]
        0x1fff51f2:    220a        ."      MOVS     r2,#0xa
        0x1fff51f4:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff51f6:    2b6e        n+      CMP      r3,#0x6e
        0x1fff51f8:    d02c        ,.      BEQ      0x1fff5254 ; log_vsprintf + 348
        0x1fff51fa:    dc0c        ..      BGT      0x1fff5216 ; log_vsprintf + 286
        0x1fff51fc:    2b63        c+      CMP      r3,#0x63
        0x1fff51fe:    d02a        *.      BEQ      0x1fff5256 ; log_vsprintf + 350
        0x1fff5200:    dc04        ..      BGT      0x1fff520c ; log_vsprintf + 276
        0x1fff5202:    2b41        A+      CMP      r3,#0x41
        0x1fff5204:    d026        &.      BEQ      0x1fff5254 ; log_vsprintf + 348
        0x1fff5206:    2b58        X+      CMP      r3,#0x58
        0x1fff5208:    d111        ..      BNE      0x1fff522e ; log_vsprintf + 310
        0x1fff520a:    e09b        ..      B        0x1fff5344 ; log_vsprintf + 588
        0x1fff520c:    2b64        d+      CMP      r3,#0x64
        0x1fff520e:    d001        ..      BEQ      0x1fff5214 ; log_vsprintf + 284
        0x1fff5210:    2b69        i+      CMP      r3,#0x69
        0x1fff5212:    d10c        ..      BNE      0x1fff522e ; log_vsprintf + 310
        0x1fff5214:    e09a        ..      B        0x1fff534c ; log_vsprintf + 596
        0x1fff5216:    2b73        s+      CMP      r3,#0x73
        0x1fff5218:    d03d        =.      BEQ      0x1fff5296 ; log_vsprintf + 414
        0x1fff521a:    dc04        ..      BGT      0x1fff5226 ; log_vsprintf + 302
        0x1fff521c:    2b6f        o+      CMP      r3,#0x6f
        0x1fff521e:    d077        w.      BEQ      0x1fff5310 ; log_vsprintf + 536
        0x1fff5220:    2b70        p+      CMP      r3,#0x70
        0x1fff5222:    d104        ..      BNE      0x1fff522e ; log_vsprintf + 310
        0x1fff5224:    e064        d.      B        0x1fff52f0 ; log_vsprintf + 504
        0x1fff5226:    2b75        u+      CMP      r3,#0x75
        0x1fff5228:    d073        s.      BEQ      0x1fff5312 ; log_vsprintf + 538
        0x1fff522a:    2b78        x+      CMP      r3,#0x78
        0x1fff522c:    d06f        o.      BEQ      0x1fff530e ; log_vsprintf + 534
        0x1fff522e:    2b25        %+      CMP      r3,#0x25
        0x1fff5230:    d009        ..      BEQ      0x1fff5246 ; log_vsprintf + 334
        0x1fff5232:    2025        %       MOVS     r0,#0x25
        0x1fff5234:    4669        iF      MOV      r1,sp
        0x1fff5236:    7208        .r      STRB     r0,[r1,#8]
        0x1fff5238:    2101        .!      MOVS     r1,#1
        0x1fff523a:    a802        ..      ADD      r0,sp,#8
        0x1fff523c:    47b0        .G      BLX      r6
        0x1fff523e:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff5240:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5242:    2900        .)      CMP      r1,#0
        0x1fff5244:    d075        u.      BEQ      0x1fff5332 ; log_vsprintf + 570
        0x1fff5246:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff5248:    4669        iF      MOV      r1,sp
        0x1fff524a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff524c:    7208        .r      STRB     r0,[r1,#8]
        0x1fff524e:    2101        .!      MOVS     r1,#1
        0x1fff5250:    a802        ..      ADD      r0,sp,#8
        0x1fff5252:    47b0        .G      BLX      r6
        0x1fff5254:    e066        f.      B        0x1fff5324 ; log_vsprintf + 556
        0x1fff5256:    06e8        ..      LSLS     r0,r5,#27
        0x1fff5258:    d409        ..      BMI      0x1fff526e ; log_vsprintf + 374
        0x1fff525a:    2520         %      MOVS     r5,#0x20
        0x1fff525c:    1e64        d.      SUBS     r4,r4,#1
        0x1fff525e:    2c00        .,      CMP      r4,#0
        0x1fff5260:    dd05        ..      BLE      0x1fff526e ; log_vsprintf + 374
        0x1fff5262:    4668        hF      MOV      r0,sp
        0x1fff5264:    7205        .r      STRB     r5,[r0,#8]
        0x1fff5266:    2101        .!      MOVS     r1,#1
        0x1fff5268:    a802        ..      ADD      r0,sp,#8
        0x1fff526a:    47b0        .G      BLX      r6
        0x1fff526c:    e7f6        ..      B        0x1fff525c ; log_vsprintf + 356
        0x1fff526e:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff5270:    466a        jF      MOV      r2,sp
        0x1fff5272:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5274:    7211        .r      STRB     r1,[r2,#8]
        0x1fff5276:    1d00        ..      ADDS     r0,r0,#4
        0x1fff5278:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff527a:    2101        .!      MOVS     r1,#1
        0x1fff527c:    a802        ..      ADD      r0,sp,#8
        0x1fff527e:    47b0        .G      BLX      r6
        0x1fff5280:    2520         %      MOVS     r5,#0x20
        0x1fff5282:    e004        ..      B        0x1fff528e ; log_vsprintf + 406
        0x1fff5284:    4668        hF      MOV      r0,sp
        0x1fff5286:    7205        .r      STRB     r5,[r0,#8]
        0x1fff5288:    2101        .!      MOVS     r1,#1
        0x1fff528a:    a802        ..      ADD      r0,sp,#8
        0x1fff528c:    47b0        .G      BLX      r6
        0x1fff528e:    1e64        d.      SUBS     r4,r4,#1
        0x1fff5290:    2c00        .,      CMP      r4,#0
        0x1fff5292:    dcf7        ..      BGT      0x1fff5284 ; log_vsprintf + 396
        0x1fff5294:    e046        F.      B        0x1fff5324 ; log_vsprintf + 556
        0x1fff5296:    9a08        ..      LDR      r2,[sp,#0x20]
        0x1fff5298:    ca02        ..      LDM      r2!,{r1}
        0x1fff529a:    9208        ..      STR      r2,[sp,#0x20]
        0x1fff529c:    9100        ..      STR      r1,[sp,#0]
        0x1fff529e:    2900        .)      CMP      r1,#0
        0x1fff52a0:    d101        ..      BNE      0x1fff52a6 ; log_vsprintf + 430
        0x1fff52a2:    a12d        -.      ADR      r1,{pc}+0xb6 ; 0x1fff5358
        0x1fff52a4:    9100        ..      STR      r1,[sp,#0]
        0x1fff52a6:    460a        .F      MOV      r2,r1
        0x1fff52a8:    e000        ..      B        0x1fff52ac ; log_vsprintf + 436
        0x1fff52aa:    1c49        I.      ADDS     r1,r1,#1
        0x1fff52ac:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff52ae:    2b00        .+      CMP      r3,#0
        0x1fff52b0:    d001        ..      BEQ      0x1fff52b6 ; log_vsprintf + 446
        0x1fff52b2:    1e40        @.      SUBS     r0,r0,#1
        0x1fff52b4:    d2f9        ..      BCS      0x1fff52aa ; log_vsprintf + 434
        0x1fff52b6:    1a8f        ..      SUBS     r7,r1,r2
        0x1fff52b8:    06e8        ..      LSLS     r0,r5,#27
        0x1fff52ba:    d40a        ..      BMI      0x1fff52d2 ; log_vsprintf + 474
        0x1fff52bc:    2520         %      MOVS     r5,#0x20
        0x1fff52be:    4620         F      MOV      r0,r4
        0x1fff52c0:    1e64        d.      SUBS     r4,r4,#1
        0x1fff52c2:    42b8        .B      CMP      r0,r7
        0x1fff52c4:    dd05        ..      BLE      0x1fff52d2 ; log_vsprintf + 474
        0x1fff52c6:    4668        hF      MOV      r0,sp
        0x1fff52c8:    7205        .r      STRB     r5,[r0,#8]
        0x1fff52ca:    2101        .!      MOVS     r1,#1
        0x1fff52cc:    a802        ..      ADD      r0,sp,#8
        0x1fff52ce:    47b0        .G      BLX      r6
        0x1fff52d0:    e7f5        ..      B        0x1fff52be ; log_vsprintf + 454
        0x1fff52d2:    b2b9        ..      UXTH     r1,r7
        0x1fff52d4:    9800        ..      LDR      r0,[sp,#0]
        0x1fff52d6:    47b0        .G      BLX      r6
        0x1fff52d8:    2520         %      MOVS     r5,#0x20
        0x1fff52da:    e004        ..      B        0x1fff52e6 ; log_vsprintf + 494
        0x1fff52dc:    4668        hF      MOV      r0,sp
        0x1fff52de:    7205        .r      STRB     r5,[r0,#8]
        0x1fff52e0:    2101        .!      MOVS     r1,#1
        0x1fff52e2:    a802        ..      ADD      r0,sp,#8
        0x1fff52e4:    47b0        .G      BLX      r6
        0x1fff52e6:    4620         F      MOV      r0,r4
        0x1fff52e8:    1e64        d.      SUBS     r4,r4,#1
        0x1fff52ea:    42b8        .B      CMP      r0,r7
        0x1fff52ec:    dcf6        ..      BGT      0x1fff52dc ; log_vsprintf + 484
        0x1fff52ee:    e019        ..      B        0x1fff5324 ; log_vsprintf + 556
        0x1fff52f0:    1c61        a.      ADDS     r1,r4,#1
        0x1fff52f2:    d102        ..      BNE      0x1fff52fa ; log_vsprintf + 514
        0x1fff52f4:    2408        .$      MOVS     r4,#8
        0x1fff52f6:    2101        .!      MOVS     r1,#1
        0x1fff52f8:    430d        .C      ORRS     r5,r5,r1
        0x1fff52fa:    9000        ..      STR      r0,[sp,#0]
        0x1fff52fc:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff52fe:    9501        ..      STR      r5,[sp,#4]
        0x1fff5300:    c802        ..      LDM      r0!,{r1}
        0x1fff5302:    4623        #F      MOV      r3,r4
        0x1fff5304:    2210        ."      MOVS     r2,#0x10
        0x1fff5306:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff5308:    e009        ..      B        0x1fff531e ; log_vsprintf + 550
        0x1fff530a:    e001        ..      B        0x1fff5310 ; log_vsprintf + 536
        0x1fff530c:    e001        ..      B        0x1fff5312 ; log_vsprintf + 538
        0x1fff530e:    e01b        ..      B        0x1fff5348 ; log_vsprintf + 592
        0x1fff5310:    2208        ."      MOVS     r2,#8
        0x1fff5312:    9b08        ..      LDR      r3,[sp,#0x20]
        0x1fff5314:    cb02        ..      LDM      r3!,{r1}
        0x1fff5316:    9308        ..      STR      r3,[sp,#0x20]
        0x1fff5318:    9501        ..      STR      r5,[sp,#4]
        0x1fff531a:    9000        ..      STR      r0,[sp,#0]
        0x1fff531c:    4623        #F      MOV      r3,r4
        0x1fff531e:    4630        0F      MOV      r0,r6
        0x1fff5320:    f000f89a    ....    BL       number ; 0x1fff5458
        0x1fff5324:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff5326:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5328:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff532a:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff532c:    2900        .)      CMP      r1,#0
        0x1fff532e:    d001        ..      BEQ      0x1fff5334 ; log_vsprintf + 572
        0x1fff5330:    e6ea        ..      B        0x1fff5108 ; log_vsprintf + 16
        0x1fff5332:    e00e        ..      B        0x1fff5352 ; log_vsprintf + 602
        0x1fff5334:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff5336:    2800        .(      CMP      r0,#0
        0x1fff5338:    d002        ..      BEQ      0x1fff5340 ; log_vsprintf + 584
        0x1fff533a:    b281        ..      UXTH     r1,r0
        0x1fff533c:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff533e:    47b0        .G      BLX      r6
        0x1fff5340:    b009        ..      ADD      sp,sp,#0x24
        0x1fff5342:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff5344:    2240        @"      MOVS     r2,#0x40
        0x1fff5346:    4315        .C      ORRS     r5,r5,r2
        0x1fff5348:    2210        ."      MOVS     r2,#0x10
        0x1fff534a:    e7e2        ..      B        0x1fff5312 ; log_vsprintf + 538
        0x1fff534c:    2302        .#      MOVS     r3,#2
        0x1fff534e:    431d        .C      ORRS     r5,r5,r3
        0x1fff5350:    e7df        ..      B        0x1fff5312 ; log_vsprintf + 538
        0x1fff5352:    1e40        @.      SUBS     r0,r0,#1
        0x1fff5354:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff5356:    e7e5        ..      B        0x1fff5324 ; log_vsprintf + 556
    $d
        0x1fff5358:    4c554e3c    <NUL    DCD    1280659004
        0x1fff535c:    00003e4c    L>..    DCD    15948
    $t
    i.main
    main
        0x1fff5360:    b57c        |.      PUSH     {r2-r6,lr}
        0x1fff5362:    4c19        .L      LDR      r4,[pc,#100] ; [0x1fff53c8] = 0x1fff0a4a
        0x1fff5364:    2002        .       MOVS     r0,#2
        0x1fff5366:    7020         p      STRB     r0,[r4,#0]
        0x1fff5368:    4d18        .M      LDR      r5,[pc,#96] ; [0x1fff53cc] = 0x1fff7040
        0x1fff536a:    2001        .       MOVS     r0,#1
        0x1fff536c:    7028        (p      STRB     r0,[r5,#0]
        0x1fff536e:    f7fcfcbf    ....    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff1cf0
        0x1fff5372:    f7fcfe60    ..`.    BL       init_config ; 0x1fff2036
        0x1fff5376:    f7feffe3    ....    BL       hal_rfphy_init ; 0x1fff4340
        0x1fff537a:    f7fefe5f    .._.    BL       hal_low_power_io_init ; 0x1fff403c
        0x1fff537e:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5380:    f7fef848    ..H.    BL       clk_init ; 0x1fff3414
        0x1fff5384:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff5386:    f7fff817    ....    BL       hal_rtc_clock_config ; 0x1fff43b8
        0x1fff538a:    f7fefec5    ....    BL       hal_pwrmgr_init ; 0x1fff4118
        0x1fff538e:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff53d0] = 0x1fff6e3c
        0x1fff5390:    6800        .h      LDR      r0,[r0,#0]
        0x1fff5392:    f7fff853    ..S.    BL       hal_spif_cache_init ; 0x1fff443c
        0x1fff5396:    f7fef92b    ..+.    BL       dbg_printf_init ; 0x1fff35f0
        0x1fff539a:    f7fefba5    ....    BL       hal_gpio_init ; 0x1fff3ae8
        0x1fff539e:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff53d4] = 0x30103
        0x1fff53a0:    a00d        ..      ADR      r0,{pc}+0x38 ; 0x1fff53d8
        0x1fff53a2:    f7fef917    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff53a6:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff53f0] = 0x1fff0a45
        0x1fff53a8:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff53aa:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff53f4] = 0x1fff0a44
        0x1fff53ac:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff53ae:    9101        ..      STR      r1,[sp,#4]
        0x1fff53b0:    9000        ..      STR      r0,[sp,#0]
        0x1fff53b2:    7823        #x      LDRB     r3,[r4,#0]
        0x1fff53b4:    782a        *x      LDRB     r2,[r5,#0]
        0x1fff53b6:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff53f8] = 0x1fff0a4b
        0x1fff53b8:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff53ba:    a010        ..      ADR      r0,{pc}+0x42 ; 0x1fff53fc
        0x1fff53bc:    f7fef90a    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff53c0:    f7fdfeec    ....    BL       app_main ; 0x1fff319c
        0x1fff53c4:    2000        .       MOVS     r0,#0
        0x1fff53c6:    bd7c        |.      POP      {r2-r6,pc}
    $d
        0x1fff53c8:    1fff0a4a    J...    DCD    536808010
        0x1fff53cc:    1fff7040    @p..    DCD    536834112
        0x1fff53d0:    1fff6e3c    <n..    DCD    536833596
        0x1fff53d4:    00030103    ....    DCD    196867
        0x1fff53d8:    204b4453    SDK     DCD    541803603
        0x1fff53dc:    73726556    Vers    DCD    1936876886
        0x1fff53e0:    206e6f69    ion     DCD    544108393
        0x1fff53e4:    25204449    ID %    DCD    622871625
        0x1fff53e8:    20783830    08x     DCD    544749616
        0x1fff53ec:    0000000a    ....    DCD    10
        0x1fff53f0:    1fff0a45    E...    DCD    536808005
        0x1fff53f4:    1fff0a44    D...    DCD    536808004
        0x1fff53f8:    1fff0a4b    K...    DCD    536808011
        0x1fff53fc:    6c436672    rfCl    DCD    1816356466
        0x1fff5400:    6425206b    k %d    DCD    1680154731
        0x1fff5404:    43637220     rcC    DCD    1130590752
        0x1fff5408:    25206b6c    lk %    DCD    622881644
        0x1fff540c:    79732064    d sy    DCD    2037588068
        0x1fff5410:    6b6c4373    sClk    DCD    1802257267
        0x1fff5414:    20642520     %d     DCD    543434016
        0x1fff5418:    61437074    tpCa    DCD    1631809652
        0x1fff541c:    30255b70    p[%0    DCD    807754608
        0x1fff5420:    25207832    2x %    DCD    622884914
        0x1fff5424:    5d783230    02x]    DCD    1568158256
        0x1fff5428:    0000000a    ....    DCD    10
    $t
    i.my_dump_byte
    my_dump_byte
        0x1fff542c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff542e:    460d        .F      MOV      r5,r1
        0x1fff5430:    4606        .F      MOV      r6,r0
        0x1fff5432:    2400        .$      MOVS     r4,#0
        0x1fff5434:    e004        ..      B        0x1fff5440 ; my_dump_byte + 20
        0x1fff5436:    5d31        1]      LDRB     r1,[r6,r4]
        0x1fff5438:    a004        ..      ADR      r0,{pc}+0x14 ; 0x1fff544c
        0x1fff543a:    f7fef8cb    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff543e:    1c64        d.      ADDS     r4,r4,#1
        0x1fff5440:    42ac        .B      CMP      r4,r5
        0x1fff5442:    dbf8        ..      BLT      0x1fff5436 ; my_dump_byte + 10
        0x1fff5444:    a003        ..      ADR      r0,{pc}+0x10 ; 0x1fff5454
        0x1fff5446:    f7fef8c5    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff544a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff544c:    78323025    %02x    DCD    2016555045
        0x1fff5450:    00000020     ...    DCD    32
        0x1fff5454:    0000000a    ....    DCD    10
    $t
    i.number
    number
        0x1fff5458:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff545a:    4607        .F      MOV      r7,r0
        0x1fff545c:    4857        WH      LDR      r0,[pc,#348] ; [0x1fff55bc] = 0x1fff70b8
        0x1fff545e:    b097        ..      SUB      sp,sp,#0x5c
        0x1fff5460:    9d21        !.      LDR      r5,[sp,#0x84]
        0x1fff5462:    6800        .h      LDR      r0,[r0,#0]
        0x1fff5464:    9015        ..      STR      r0,[sp,#0x54]
        0x1fff5466:    461e        .F      MOV      r6,r3
        0x1fff5468:    460a        .F      MOV      r2,r1
        0x1fff546a:    0668        h.      LSLS     r0,r5,#25
        0x1fff546c:    d502        ..      BPL      0x1fff5474 ; number + 28
        0x1fff546e:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff55bc] = 0x1fff70b8
        0x1fff5470:    6840        @h      LDR      r0,[r0,#4]
        0x1fff5472:    9015        ..      STR      r0,[sp,#0x54]
        0x1fff5474:    06e8        ..      LSLS     r0,r5,#27
        0x1fff5476:    d501        ..      BPL      0x1fff547c ; number + 36
        0x1fff5478:    086d        m.      LSRS     r5,r5,#1
        0x1fff547a:    006d        m.      LSLS     r5,r5,#1
        0x1fff547c:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff547e:    1e80        ..      SUBS     r0,r0,#2
        0x1fff5480:    2823        #(      CMP      r0,#0x23
        0x1fff5482:    d270        p.      BCS      0x1fff5566 ; number + 270
        0x1fff5484:    07e8        ..      LSLS     r0,r5,#31
        0x1fff5486:    d001        ..      BEQ      0x1fff548c ; number + 52
        0x1fff5488:    2130        0!      MOVS     r1,#0x30
        0x1fff548a:    e000        ..      B        0x1fff548e ; number + 54
        0x1fff548c:    2120         !      MOVS     r1,#0x20
        0x1fff548e:    a810        ..      ADD      r0,sp,#0x40
        0x1fff5490:    7301        .s      STRB     r1,[r0,#0xc]
        0x1fff5492:    2100        .!      MOVS     r1,#0
        0x1fff5494:    7201        .r      STRB     r1,[r0,#8]
        0x1fff5496:    07a8        ..      LSLS     r0,r5,#30
        0x1fff5498:    d510        ..      BPL      0x1fff54bc ; number + 100
        0x1fff549a:    2a00        .*      CMP      r2,#0
        0x1fff549c:    da04        ..      BGE      0x1fff54a8 ; number + 80
        0x1fff549e:    202d        -       MOVS     r0,#0x2d
        0x1fff54a0:    a910        ..      ADD      r1,sp,#0x40
        0x1fff54a2:    7208        .r      STRB     r0,[r1,#8]
        0x1fff54a4:    4252        RB      RSBS     r2,r2,#0
        0x1fff54a6:    e008        ..      B        0x1fff54ba ; number + 98
        0x1fff54a8:    0768        h.      LSLS     r0,r5,#29
        0x1fff54aa:    d501        ..      BPL      0x1fff54b0 ; number + 88
        0x1fff54ac:    202b        +       MOVS     r0,#0x2b
        0x1fff54ae:    e002        ..      B        0x1fff54b6 ; number + 94
        0x1fff54b0:    0728        (.      LSLS     r0,r5,#28
        0x1fff54b2:    d503        ..      BPL      0x1fff54bc ; number + 100
        0x1fff54b4:    2020                MOVS     r0,#0x20
        0x1fff54b6:    a910        ..      ADD      r1,sp,#0x40
        0x1fff54b8:    7208        .r      STRB     r0,[r1,#8]
        0x1fff54ba:    1e5e        ^.      SUBS     r6,r3,#1
        0x1fff54bc:    06a8        ..      LSLS     r0,r5,#26
        0x1fff54be:    d508        ..      BPL      0x1fff54d2 ; number + 122
        0x1fff54c0:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff54c2:    2810        .(      CMP      r0,#0x10
        0x1fff54c4:    d002        ..      BEQ      0x1fff54cc ; number + 116
        0x1fff54c6:    2808        .(      CMP      r0,#8
        0x1fff54c8:    d002        ..      BEQ      0x1fff54d0 ; number + 120
        0x1fff54ca:    e002        ..      B        0x1fff54d2 ; number + 122
        0x1fff54cc:    1eb6        ..      SUBS     r6,r6,#2
        0x1fff54ce:    e000        ..      B        0x1fff54d2 ; number + 122
        0x1fff54d0:    1e76        v.      SUBS     r6,r6,#1
        0x1fff54d2:    2400        .$      MOVS     r4,#0
        0x1fff54d4:    2a00        .*      CMP      r2,#0
        0x1fff54d6:    d014        ..      BEQ      0x1fff5502 ; number + 170
        0x1fff54d8:    4610        .F      MOV      r0,r2
        0x1fff54da:    9919        ..      LDR      r1,[sp,#0x64]
        0x1fff54dc:    f7fcfc0e    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cfc
        0x1fff54e0:    9a15        ..      LDR      r2,[sp,#0x54]
        0x1fff54e2:    5c52        R\      LDRB     r2,[r2,r1]
        0x1fff54e4:    a901        ..      ADD      r1,sp,#4
        0x1fff54e6:    550a        .U      STRB     r2,[r1,r4]
        0x1fff54e8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff54ea:    0002        ..      MOVS     r2,r0
        0x1fff54ec:    d1f4        ..      BNE      0x1fff54d8 ; number + 128
        0x1fff54ee:    9820         .      LDR      r0,[sp,#0x80]
        0x1fff54f0:    4284        .B      CMP      r4,r0
        0x1fff54f2:    dd00        ..      BLE      0x1fff54f6 ; number + 158
        0x1fff54f4:    9420         .      STR      r4,[sp,#0x80]
        0x1fff54f6:    9820         .      LDR      r0,[sp,#0x80]
        0x1fff54f8:    1a36        6.      SUBS     r6,r6,r0
        0x1fff54fa:    2011        .       MOVS     r0,#0x11
        0x1fff54fc:    4205        .B      TST      r5,r0
        0x1fff54fe:    d00b        ..      BEQ      0x1fff5518 ; number + 192
        0x1fff5500:    e00e        ..      B        0x1fff5520 ; number + 200
        0x1fff5502:    2030        0       MOVS     r0,#0x30
        0x1fff5504:    4669        iF      MOV      r1,sp
        0x1fff5506:    7108        .q      STRB     r0,[r1,#4]
        0x1fff5508:    2401        .$      MOVS     r4,#1
        0x1fff550a:    e7f0        ..      B        0x1fff54ee ; number + 150
        0x1fff550c:    2020                MOVS     r0,#0x20
        0x1fff550e:    4669        iF      MOV      r1,sp
        0x1fff5510:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5512:    2101        .!      MOVS     r1,#1
        0x1fff5514:    4668        hF      MOV      r0,sp
        0x1fff5516:    47b8        .G      BLX      r7
        0x1fff5518:    4630        0F      MOV      r0,r6
        0x1fff551a:    1e76        v.      SUBS     r6,r6,#1
        0x1fff551c:    2800        .(      CMP      r0,#0
        0x1fff551e:    dcf5        ..      BGT      0x1fff550c ; number + 180
        0x1fff5520:    a810        ..      ADD      r0,sp,#0x40
        0x1fff5522:    7a00        .z      LDRB     r0,[r0,#8]
        0x1fff5524:    2800        .(      CMP      r0,#0
        0x1fff5526:    d002        ..      BEQ      0x1fff552e ; number + 214
        0x1fff5528:    2101        .!      MOVS     r1,#1
        0x1fff552a:    a812        ..      ADD      r0,sp,#0x48
        0x1fff552c:    47b8        .G      BLX      r7
        0x1fff552e:    06a8        ..      LSLS     r0,r5,#26
        0x1fff5530:    d516        ..      BPL      0x1fff5560 ; number + 264
        0x1fff5532:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff5534:    2808        .(      CMP      r0,#8
        0x1fff5536:    d002        ..      BEQ      0x1fff553e ; number + 230
        0x1fff5538:    2810        .(      CMP      r0,#0x10
        0x1fff553a:    d002        ..      BEQ      0x1fff5542 ; number + 234
        0x1fff553c:    e010        ..      B        0x1fff5560 ; number + 264
        0x1fff553e:    2030        0       MOVS     r0,#0x30
        0x1fff5540:    e009        ..      B        0x1fff5556 ; number + 254
        0x1fff5542:    2030        0       MOVS     r0,#0x30
        0x1fff5544:    4669        iF      MOV      r1,sp
        0x1fff5546:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5548:    2101        .!      MOVS     r1,#1
        0x1fff554a:    4668        hF      MOV      r0,sp
        0x1fff554c:    47b8        .G      BLX      r7
        0x1fff554e:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff55bc] = 0x1fff70b8
        0x1fff5550:    6800        .h      LDR      r0,[r0,#0]
        0x1fff5552:    3020         0      ADDS     r0,r0,#0x20
        0x1fff5554:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff5556:    4669        iF      MOV      r1,sp
        0x1fff5558:    7008        .p      STRB     r0,[r1,#0]
        0x1fff555a:    2101        .!      MOVS     r1,#1
        0x1fff555c:    4668        hF      MOV      r0,sp
        0x1fff555e:    47b8        .G      BLX      r7
        0x1fff5560:    06e8        ..      LSLS     r0,r5,#27
        0x1fff5562:    d504        ..      BPL      0x1fff556e ; number + 278
        0x1fff5564:    e007        ..      B        0x1fff5576 ; number + 286
        0x1fff5566:    e027        '.      B        0x1fff55b8 ; number + 352
        0x1fff5568:    2101        .!      MOVS     r1,#1
        0x1fff556a:    a813        ..      ADD      r0,sp,#0x4c
        0x1fff556c:    47b8        .G      BLX      r7
        0x1fff556e:    4630        0F      MOV      r0,r6
        0x1fff5570:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5572:    2800        .(      CMP      r0,#0
        0x1fff5574:    dcf8        ..      BGT      0x1fff5568 ; number + 272
        0x1fff5576:    2530        0%      MOVS     r5,#0x30
        0x1fff5578:    9920         .      LDR      r1,[sp,#0x80]
        0x1fff557a:    1e48        H.      SUBS     r0,r1,#1
        0x1fff557c:    9020         .      STR      r0,[sp,#0x80]
        0x1fff557e:    42a1        .B      CMP      r1,r4
        0x1fff5580:    dd0b        ..      BLE      0x1fff559a ; number + 322
        0x1fff5582:    4668        hF      MOV      r0,sp
        0x1fff5584:    7005        .p      STRB     r5,[r0,#0]
        0x1fff5586:    2101        .!      MOVS     r1,#1
        0x1fff5588:    47b8        .G      BLX      r7
        0x1fff558a:    e7f5        ..      B        0x1fff5578 ; number + 288
        0x1fff558c:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff558e:    4669        iF      MOV      r1,sp
        0x1fff5590:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5592:    2101        .!      MOVS     r1,#1
        0x1fff5594:    4668        hF      MOV      r0,sp
        0x1fff5596:    47b8        .G      BLX      r7
        0x1fff5598:    e000        ..      B        0x1fff559c ; number + 324
        0x1fff559a:    ad01        ..      ADD      r5,sp,#4
        0x1fff559c:    4620         F      MOV      r0,r4
        0x1fff559e:    1e64        d.      SUBS     r4,r4,#1
        0x1fff55a0:    2800        .(      CMP      r0,#0
        0x1fff55a2:    dcf3        ..      BGT      0x1fff558c ; number + 308
        0x1fff55a4:    2420         $      MOVS     r4,#0x20
        0x1fff55a6:    4630        0F      MOV      r0,r6
        0x1fff55a8:    1e76        v.      SUBS     r6,r6,#1
        0x1fff55aa:    2800        .(      CMP      r0,#0
        0x1fff55ac:    dd04        ..      BLE      0x1fff55b8 ; number + 352
        0x1fff55ae:    4668        hF      MOV      r0,sp
        0x1fff55b0:    7004        .p      STRB     r4,[r0,#0]
        0x1fff55b2:    2101        .!      MOVS     r1,#1
        0x1fff55b4:    47b8        .G      BLX      r7
        0x1fff55b6:    e7f6        ..      B        0x1fff55a6 ; number + 334
        0x1fff55b8:    b01b        ..      ADD      sp,sp,#0x6c
        0x1fff55ba:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff55bc:    1fff70b8    .p..    DCD    536834232
    $t
    i.osalInitTasks
    osalInitTasks
        0x1fff55c0:    b510        ..      PUSH     {r4,lr}
        0x1fff55c2:    2400        .$      MOVS     r4,#0
        0x1fff55c4:    2004        .       MOVS     r0,#4
        0x1fff55c6:    f7fcfb87    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff1cd8
        0x1fff55ca:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff55e8] = 0x1fff7044
        0x1fff55cc:    2204        ."      MOVS     r2,#4
        0x1fff55ce:    6008        .`      STR      r0,[r1,#0]
        0x1fff55d0:    2100        .!      MOVS     r1,#0
        0x1fff55d2:    f7fcfa79    ..y.    BL       $Ven$TT$L$$osal_memset ; 0x1fff1ac8
        0x1fff55d6:    4620         F      MOV      r0,r4
        0x1fff55d8:    2401        .$      MOVS     r4,#1
        0x1fff55da:    f7fdf9e9    ....    BL       PhyPlusPhy_Init ; 0x1fff29b0
        0x1fff55de:    4620         F      MOV      r0,r4
        0x1fff55e0:    f7fdfaba    ....    BL       Smart_nRF_Init ; 0x1fff2b58
        0x1fff55e4:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff55e6:    0000        ..      DCW    0
        0x1fff55e8:    1fff7044    Dp..    DCD    536834116
    $t
    i.osal_idle_task0
    osal_idle_task0
        0x1fff55ec:    b510        ..      PUSH     {r4,lr}
        0x1fff55ee:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff5600] = 0x40002000
        0x1fff55f0:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff55f2:    07c9        ..      LSLS     r1,r1,#31
        0x1fff55f4:    d001        ..      BEQ      0x1fff55fa ; osal_idle_task0 + 14
        0x1fff55f6:    2176        v!      MOVS     r1,#0x76
        0x1fff55f8:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff55fa:    f7fcfb85    ....    BL       $Ven$TT$L$$osal_pwrmgr_powerconserve0 ; 0x1fff1d08
        0x1fff55fe:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5600:    40002000    . .@    DCD    1073750016
    $t
    i.osal_search_active_task
    osal_search_active_task
        0x1fff5604:    b510        ..      PUSH     {r4,lr}
        0x1fff5606:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff5638] = 0x1fff0000
        0x1fff5608:    2100        .!      MOVS     r1,#0
        0x1fff560a:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff560c:    6912        .i      LDR      r2,[r2,#0x10]
        0x1fff560e:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5610:    6812        .h      LDR      r2,[r2,#0]
        0x1fff5612:    2a00        .*      CMP      r2,#0
        0x1fff5614:    d003        ..      BEQ      0x1fff561e ; osal_search_active_task + 26
        0x1fff5616:    004c        L.      LSLS     r4,r1,#1
        0x1fff5618:    5b14        .[      LDRH     r4,[r2,r4]
        0x1fff561a:    2c00        .,      CMP      r4,#0
        0x1fff561c:    d103        ..      BNE      0x1fff5626 ; osal_search_active_task + 34
        0x1fff561e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5620:    b2c9        ..      UXTB     r1,r1
        0x1fff5622:    4299        .B      CMP      r1,r3
        0x1fff5624:    d3f5        ..      BCC      0x1fff5612 ; osal_search_active_task + 14
        0x1fff5626:    4299        .B      CMP      r1,r3
        0x1fff5628:    d204        ..      BCS      0x1fff5634 ; osal_search_active_task + 48
        0x1fff562a:    2800        .(      CMP      r0,#0
        0x1fff562c:    d000        ..      BEQ      0x1fff5630 ; osal_search_active_task + 44
        0x1fff562e:    7001        .p      STRB     r1,[r0,#0]
        0x1fff5630:    2000        .       MOVS     r0,#0
        0x1fff5632:    bd10        ..      POP      {r4,pc}
        0x1fff5634:    2001        .       MOVS     r0,#1
        0x1fff5636:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5638:    1fff0000    ....    DCD    536805376
    $t
    i.patch_linkBuf_init
    patch_linkBuf_init
        0x1fff563c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff563e:    4e23        #N      LDR      r6,[pc,#140] ; [0x1fff56cc] = 0x1fff0934
        0x1fff5640:    4b23        #K      LDR      r3,[pc,#140] ; [0x1fff56d0] = 0x1fff0914
        0x1fff5642:    2800        .(      CMP      r0,#0
        0x1fff5644:    d022        ".      BEQ      0x1fff568c ; patch_linkBuf_init + 80
        0x1fff5646:    2100        .!      MOVS     r1,#0
        0x1fff5648:    e01c        ..      B        0x1fff5684 ; patch_linkBuf_init + 72
        0x1fff564a:    20a1        .       MOVS     r0,#0xa1
        0x1fff564c:    0080        ..      LSLS     r0,r0,#2
        0x1fff564e:    6832        2h      LDR      r2,[r6,#0]
        0x1fff5650:    4348        HC      MULS     r0,r1,r0
        0x1fff5652:    1880        ..      ADDS     r0,r0,r2
        0x1fff5654:    4604        .F      MOV      r4,r0
        0x1fff5656:    2200        ."      MOVS     r2,#0
        0x1fff5658:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff565a:    3481        .4      ADDS     r4,r4,#0x81
        0x1fff565c:    0097        ..      LSLS     r7,r2,#2
        0x1fff565e:    183f        ?.      ADDS     r7,r7,r0
        0x1fff5660:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff5662:    3701        .7      ADDS     r7,#1
        0x1fff5664:    6ae5        .j      LDR      r5,[r4,#0x2c]
        0x1fff5666:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5668:    66fd        .f      STR      r5,[r7,#0x6c]
        0x1fff566a:    2a08        .*      CMP      r2,#8
        0x1fff566c:    dbf6        ..      BLT      0x1fff565c ; patch_linkBuf_init + 32
        0x1fff566e:    2200        ."      MOVS     r2,#0
        0x1fff5670:    0097        ..      LSLS     r7,r2,#2
        0x1fff5672:    183f        ?.      ADDS     r7,r7,r0
        0x1fff5674:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff5676:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff5678:    6ae5        .j      LDR      r5,[r4,#0x2c]
        0x1fff567a:    1c52        R.      ADDS     r2,r2,#1
        0x1fff567c:    60fd        .`      STR      r5,[r7,#0xc]
        0x1fff567e:    2a08        .*      CMP      r2,#8
        0x1fff5680:    dbf6        ..      BLT      0x1fff5670 ; patch_linkBuf_init + 52
        0x1fff5682:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5684:    7818        .x      LDRB     r0,[r3,#0]
        0x1fff5686:    4281        .B      CMP      r1,r0
        0x1fff5688:    dbdf        ..      BLT      0x1fff564a ; patch_linkBuf_init + 14
        0x1fff568a:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff568c:    2100        .!      MOVS     r1,#0
        0x1fff568e:    4608        .F      MOV      r0,r1
        0x1fff5690:    e017        ..      B        0x1fff56c2 ; patch_linkBuf_init + 134
        0x1fff5692:    22a1        ."      MOVS     r2,#0xa1
        0x1fff5694:    0092        ..      LSLS     r2,r2,#2
        0x1fff5696:    6834        4h      LDR      r4,[r6,#0]
        0x1fff5698:    434a        JC      MULS     r2,r1,r2
        0x1fff569a:    1914        ..      ADDS     r4,r2,r4
        0x1fff569c:    2200        ."      MOVS     r2,#0
        0x1fff569e:    0095        ..      LSLS     r5,r2,#2
        0x1fff56a0:    192d        -.      ADDS     r5,r5,r4
        0x1fff56a2:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff56a4:    3501        .5      ADDS     r5,#1
        0x1fff56a6:    1c52        R.      ADDS     r2,r2,#1
        0x1fff56a8:    66e8        .f      STR      r0,[r5,#0x6c]
        0x1fff56aa:    2a08        .*      CMP      r2,#8
        0x1fff56ac:    dbf7        ..      BLT      0x1fff569e ; patch_linkBuf_init + 98
        0x1fff56ae:    2200        ."      MOVS     r2,#0
        0x1fff56b0:    0095        ..      LSLS     r5,r2,#2
        0x1fff56b2:    192d        -.      ADDS     r5,r5,r4
        0x1fff56b4:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff56b6:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff56b8:    1c52        R.      ADDS     r2,r2,#1
        0x1fff56ba:    60e8        .`      STR      r0,[r5,#0xc]
        0x1fff56bc:    2a08        .*      CMP      r2,#8
        0x1fff56be:    dbf7        ..      BLT      0x1fff56b0 ; patch_linkBuf_init + 116
        0x1fff56c0:    1c49        I.      ADDS     r1,r1,#1
        0x1fff56c2:    781a        .x      LDRB     r2,[r3,#0]
        0x1fff56c4:    4291        .B      CMP      r1,r2
        0x1fff56c6:    dbe4        ..      BLT      0x1fff5692 ; patch_linkBuf_init + 86
        0x1fff56c8:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff56ca:    0000        ..      DCW    0
        0x1fff56cc:    1fff0934    4...    DCD    536807732
        0x1fff56d0:    1fff0914    ....    DCD    536807700
    $t
    i.peripheral_interrupt_restore_default
    peripheral_interrupt_restore_default
        0x1fff56d4:    b510        ..      PUSH     {r4,lr}
        0x1fff56d6:    2102        .!      MOVS     r1,#2
        0x1fff56d8:    2005        .       MOVS     r0,#5
        0x1fff56da:    f7fdfb27    ..'.    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff56de:    2102        .!      MOVS     r1,#2
        0x1fff56e0:    200a        .       MOVS     r0,#0xa
        0x1fff56e2:    f7fdfb23    ..#.    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff56e6:    2102        .!      MOVS     r1,#2
        0x1fff56e8:    200b        .       MOVS     r0,#0xb
        0x1fff56ea:    f7fdfb1f    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff56ee:    2102        .!      MOVS     r1,#2
        0x1fff56f0:    2011        .       MOVS     r0,#0x11
        0x1fff56f2:    f7fdfb1b    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff56f6:    2102        .!      MOVS     r1,#2
        0x1fff56f8:    200c        .       MOVS     r0,#0xc
        0x1fff56fa:    f7fdfb17    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff56fe:    2102        .!      MOVS     r1,#2
        0x1fff5700:    200d        .       MOVS     r0,#0xd
        0x1fff5702:    f7fdfb13    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff5706:    2102        .!      MOVS     r1,#2
        0x1fff5708:    200e        .       MOVS     r0,#0xe
        0x1fff570a:    f7fdfb0f    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff570e:    2102        .!      MOVS     r1,#2
        0x1fff5710:    200f        .       MOVS     r0,#0xf
        0x1fff5712:    f7fdfb0b    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff5716:    2102        .!      MOVS     r1,#2
        0x1fff5718:    2010        .       MOVS     r0,#0x10
        0x1fff571a:    f7fdfb07    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff571e:    2102        .!      MOVS     r1,#2
        0x1fff5720:    2013        .       MOVS     r0,#0x13
        0x1fff5722:    f7fdfb03    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff5726:    2102        .!      MOVS     r1,#2
        0x1fff5728:    2018        .       MOVS     r0,#0x18
        0x1fff572a:    f7fdfaff    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff572e:    2102        .!      MOVS     r1,#2
        0x1fff5730:    2019        .       MOVS     r0,#0x19
        0x1fff5732:    f7fdfafb    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff5736:    2102        .!      MOVS     r1,#2
        0x1fff5738:    201d        .       MOVS     r0,#0x1d
        0x1fff573a:    f7fdfaf7    ....    BL       __NVIC_SetPriority ; 0x1fff2d2c
        0x1fff573e:    bd10        ..      POP      {r4,pc}
    i.phy_adv_data_update
    phy_adv_data_update
        0x1fff5740:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5742:    460c        .F      MOV      r4,r1
        0x1fff5744:    4605        .F      MOV      r5,r0
        0x1fff5746:    291f        .)      CMP      r1,#0x1f
        0x1fff5748:    d904        ..      BLS      0x1fff5754 ; phy_adv_data_update + 20
        0x1fff574a:    a00c        ..      ADR      r0,{pc}+0x32 ; 0x1fff577c
        0x1fff574c:    f7fdff42    ..B.    BL       dbg_printf ; 0x1fff35d4
        0x1fff5750:    2008        .       MOVS     r0,#8
        0x1fff5752:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5754:    2220         "      MOVS     r2,#0x20
        0x1fff5756:    2100        .!      MOVS     r1,#0
        0x1fff5758:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff5794] = 0x1fff7b4c
        0x1fff575a:    f7fcf9b5    ....    BL       $Ven$TT$L$$osal_memset ; 0x1fff1ac8
        0x1fff575e:    4622        "F      MOV      r2,r4
        0x1fff5760:    4629        )F      MOV      r1,r5
        0x1fff5762:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff5794] = 0x1fff7b4c
        0x1fff5764:    f7fcfad6    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d14
        0x1fff5768:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff5798] = 0x1fff706a
        0x1fff576a:    4623        #F      MOV      r3,r4
        0x1fff576c:    4608        .F      MOV      r0,r1
        0x1fff576e:    4a09        .J      LDR      r2,[pc,#36] ; [0x1fff5794] = 0x1fff7b4c
        0x1fff5770:    3020         0      ADDS     r0,r0,#0x20
        0x1fff5772:    f000fbab    ....    BL       phy_tx_buf_updata ; 0x1fff5ecc
        0x1fff5776:    2000        .       MOVS     r0,#0
        0x1fff5778:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff577a:    0000        ..      DCW    0
        0x1fff577c:    61766e49    Inva    DCD    1635151433
        0x1fff5780:    2064696c    lid     DCD    543451500
        0x1fff5784:    61746144    Data    DCD    1635017028
        0x1fff5788:    676e654c    Leng    DCD    1735288140
        0x1fff578c:    0a216874    th!.    DCD    169961588
        0x1fff5790:    00000000    ....    DCD    0
        0x1fff5794:    1fff7b4c    L{..    DCD    536836940
        0x1fff5798:    1fff706a    jp..    DCD    536834154
    $t
    i.phy_allow_rx
    phy_allow_rx
        0x1fff579c:    b5f1        ..      PUSH     {r0,r4-r7,lr}
        0x1fff579e:    2500        .%      MOVS     r5,#0
        0x1fff57a0:    f7fcf908    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff57a4:    4606        .F      MOV      r6,r0
        0x1fff57a6:    f7fcf8ab    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff57aa:    4820         H      LDR      r0,[pc,#128] ; [0x1fff582c] = 0x1fff7090
        0x1fff57ac:    6847        Gh      LDR      r7,[r0,#4]
        0x1fff57ae:    4820         H      LDR      r0,[pc,#128] ; [0x1fff5830] = 0x40001000
        0x1fff57b0:    6880        .h      LDR      r0,[r0,#8]
        0x1fff57b2:    4c20         L      LDR      r4,[pc,#128] ; [0x1fff5834] = 0xffff
        0x1fff57b4:    2800        .(      CMP      r0,#0
        0x1fff57b6:    d002        ..      BEQ      0x1fff57be ; phy_allow_rx + 34
        0x1fff57b8:    f000fc8e    ....    BL       read_ble_remainder_time ; 0x1fff60d8
        0x1fff57bc:    e000        ..      B        0x1fff57c0 ; phy_allow_rx + 36
        0x1fff57be:    4620         F      MOV      r0,r4
        0x1fff57c0:    42b8        .B      CMP      r0,r7
        0x1fff57c2:    d901        ..      BLS      0x1fff57c8 ; phy_allow_rx + 44
        0x1fff57c4:    1bc2        ..      SUBS     r2,r0,r7
        0x1fff57c6:    e000        ..      B        0x1fff57ca ; phy_allow_rx + 46
        0x1fff57c8:    2200        ."      MOVS     r2,#0
        0x1fff57ca:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff5838] = 0x1fff7b80
        0x1fff57cc:    6a01        .j      LDR      r1,[r0,#0x20]
        0x1fff57ce:    42b1        .B      CMP      r1,r6
        0x1fff57d0:    d801        ..      BHI      0x1fff57d6 ; phy_allow_rx + 58
        0x1fff57d2:    1a73        s.      SUBS     r3,r6,r1
        0x1fff57d4:    e002        ..      B        0x1fff57dc ; phy_allow_rx + 64
        0x1fff57d6:    4b19        .K      LDR      r3,[pc,#100] ; [0x1fff583c] = 0x3fffff
        0x1fff57d8:    1a5b        [.      SUBS     r3,r3,r1
        0x1fff57da:    199b        ..      ADDS     r3,r3,r6
        0x1fff57dc:    6987        .i      LDR      r7,[r0,#0x18]
        0x1fff57de:    207d        }       MOVS     r0,#0x7d
        0x1fff57e0:    0100        ..      LSLS     r0,r0,#4
        0x1fff57e2:    42bb        .B      CMP      r3,r7
        0x1fff57e4:    d209        ..      BCS      0x1fff57fa ; phy_allow_rx + 94
        0x1fff57e6:    42b1        .B      CMP      r1,r6
        0x1fff57e8:    d801        ..      BHI      0x1fff57ee ; phy_allow_rx + 82
        0x1fff57ea:    1a71        q.      SUBS     r1,r6,r1
        0x1fff57ec:    e002        ..      B        0x1fff57f4 ; phy_allow_rx + 88
        0x1fff57ee:    4b13        .K      LDR      r3,[pc,#76] ; [0x1fff583c] = 0x3fffff
        0x1fff57f0:    1a59        Y.      SUBS     r1,r3,r1
        0x1fff57f2:    1989        ..      ADDS     r1,r1,r6
        0x1fff57f4:    1a79        y.      SUBS     r1,r7,r1
        0x1fff57f6:    4281        .B      CMP      r1,r0
        0x1fff57f8:    d200        ..      BCS      0x1fff57fc ; phy_allow_rx + 96
        0x1fff57fa:    4601        .F      MOV      r1,r0
        0x1fff57fc:    428a        .B      CMP      r2,r1
        0x1fff57fe:    d800        ..      BHI      0x1fff5802 ; phy_allow_rx + 102
        0x1fff5800:    4611        .F      MOV      r1,r2
        0x1fff5802:    4281        .B      CMP      r1,r0
        0x1fff5804:    d201        ..      BCS      0x1fff580a ; phy_allow_rx + 110
        0x1fff5806:    2100        .!      MOVS     r1,#0
        0x1fff5808:    e00a        ..      B        0x1fff5820 ; phy_allow_rx + 132
        0x1fff580a:    42a1        .B      CMP      r1,r4
        0x1fff580c:    d901        ..      BLS      0x1fff5812 ; phy_allow_rx + 118
        0x1fff580e:    4621        !F      MOV      r1,r4
        0x1fff5810:    e001        ..      B        0x1fff5816 ; phy_allow_rx + 122
        0x1fff5812:    2900        .)      CMP      r1,#0
        0x1fff5814:    d004        ..      BEQ      0x1fff5820 ; phy_allow_rx + 132
        0x1fff5816:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff5840] = 0x1fff0998
        0x1fff5818:    6800        .h      LDR      r0,[r0,#0]
        0x1fff581a:    2800        .(      CMP      r0,#0
        0x1fff581c:    d100        ..      BNE      0x1fff5820 ; phy_allow_rx + 132
        0x1fff581e:    2501        .%      MOVS     r5,#1
        0x1fff5820:    9800        ..      LDR      r0,[sp,#0]
        0x1fff5822:    6001        .`      STR      r1,[r0,#0]
        0x1fff5824:    f7fcf878    ..x.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5828:    4628        (F      MOV      r0,r5
        0x1fff582a:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff582c:    1fff7090    .p..    DCD    536834192
        0x1fff5830:    40001000    ...@    DCD    1073745920
        0x1fff5834:    0000ffff    ....    DCD    65535
        0x1fff5838:    1fff7b80    .{..    DCD    536836992
        0x1fff583c:    003fffff    ..?.    DCD    4194303
        0x1fff5840:    1fff0998    ....    DCD    536807832
    $t
    i.phy_cbfunc_regist
    phy_cbfunc_regist
        0x1fff5844:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff585c] = 0x1fff7064
        0x1fff5846:    2801        .(      CMP      r0,#1
        0x1fff5848:    d003        ..      BEQ      0x1fff5852 ; phy_cbfunc_regist + 14
        0x1fff584a:    2802        .(      CMP      r0,#2
        0x1fff584c:    d003        ..      BEQ      0x1fff5856 ; phy_cbfunc_regist + 18
        0x1fff584e:    2006        .       MOVS     r0,#6
        0x1fff5850:    4770        pG      BX       lr
        0x1fff5852:    6111        .a      STR      r1,[r2,#0x10]
        0x1fff5854:    e000        ..      B        0x1fff5858 ; phy_cbfunc_regist + 20
        0x1fff5856:    6151        Qa      STR      r1,[r2,#0x14]
        0x1fff5858:    2000        .       MOVS     r0,#0
        0x1fff585a:    4770        pG      BX       lr
    $d
        0x1fff585c:    1fff7064    dp..    DCD    536834148
    $t
    i.phy_hw_go
    phy_hw_go
        0x1fff5860:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff5862:    4820         H      LDR      r0,[pc,#128] ; [0x1fff58e4] = 0x1fff0998
        0x1fff5864:    6800        .h      LDR      r0,[r0,#0]
        0x1fff5866:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff58ec] = 0x40031000
        0x1fff5868:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff58e8] = 0x3fff
        0x1fff586a:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff586c:    2101        .!      MOVS     r1,#1
        0x1fff586e:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff5870:    6001        .`      STR      r1,[r0,#0]
        0x1fff5872:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff58f0] = 0x40030080
        0x1fff5874:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff5876:    b2c0        ..      UXTB     r0,r0
        0x1fff5878:    2802        .(      CMP      r0,#2
        0x1fff587a:    d201        ..      BCS      0x1fff5880 ; phy_hw_go + 32
        0x1fff587c:    2002        .       MOVS     r0,#2
        0x1fff587e:    e002        ..      B        0x1fff5886 ; phy_hw_go + 38
        0x1fff5880:    2850        P(      CMP      r0,#0x50
        0x1fff5882:    d900        ..      BLS      0x1fff5886 ; phy_hw_go + 38
        0x1fff5884:    2050        P       MOVS     r0,#0x50
        0x1fff5886:    4a1b        .J      LDR      r2,[pc,#108] ; [0x1fff58f4] = 0x1fff7b6c
        0x1fff5888:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff588a:    2a02        .*      CMP      r2,#2
        0x1fff588c:    d011        ..      BEQ      0x1fff58b2 ; phy_hw_go + 82
        0x1fff588e:    4a1a        .J      LDR      r2,[pc,#104] ; [0x1fff58f8] = 0x1fff0a44
        0x1fff5890:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff5892:    4b1a        .K      LDR      r3,[pc,#104] ; [0x1fff58fc] = 0x1fff0a45
        0x1fff5894:    781d        .x      LDRB     r5,[r3,#0]
        0x1fff5896:    42ac        .B      CMP      r4,r5
        0x1fff5898:    d90f        ..      BLS      0x1fff58ba ; phy_hw_go + 90
        0x1fff589a:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff589c:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff589e:    1ae3        ..      SUBS     r3,r4,r3
        0x1fff58a0:    1e80        ..      SUBS     r0,r0,#2
        0x1fff58a2:    1040        @.      ASRS     r0,r0,#1
        0x1fff58a4:    4343        CC      MULS     r3,r0,r3
        0x1fff58a6:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff58a8:    0140        @.      LSLS     r0,r0,#5
        0x1fff58aa:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff58ac:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff58ae:    1140        @.      ASRS     r0,r0,#5
        0x1fff58b0:    e004        ..      B        0x1fff58bc ; phy_hw_go + 92
        0x1fff58b2:    4a13        .J      LDR      r2,[pc,#76] ; [0x1fff5900] = 0x1fff0a46
        0x1fff58b4:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff58b6:    4b13        .K      LDR      r3,[pc,#76] ; [0x1fff5904] = 0x1fff0a47
        0x1fff58b8:    e7ec        ..      B        0x1fff5894 ; phy_hw_go + 52
        0x1fff58ba:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff58bc:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff58be:    0a12        ..      LSRS     r2,r2,#8
        0x1fff58c0:    0212        ..      LSLS     r2,r2,#8
        0x1fff58c2:    4310        .C      ORRS     r0,r0,r2
        0x1fff58c4:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff58c6:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff58f0] = 0x40030080
        0x1fff58c8:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff58ca:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff58cc:    227f        ."      MOVS     r2,#0x7f
        0x1fff58ce:    0212        ..      LSLS     r2,r2,#8
        0x1fff58d0:    4391        .C      BICS     r1,r1,r2
        0x1fff58d2:    220f        ."      MOVS     r2,#0xf
        0x1fff58d4:    0292        ..      LSLS     r2,r2,#10
        0x1fff58d6:    1889        ..      ADDS     r1,r1,r2
        0x1fff58d8:    6041        A`      STR      r1,[r0,#4]
        0x1fff58da:    6881        .h      LDR      r1,[r0,#8]
        0x1fff58dc:    1582        ..      ASRS     r2,r0,#22
        0x1fff58de:    4391        .C      BICS     r1,r1,r2
        0x1fff58e0:    6081        .`      STR      r1,[r0,#8]
        0x1fff58e2:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff58e4:    1fff0998    ....    DCD    536807832
        0x1fff58e8:    00003fff    .?..    DCD    16383
        0x1fff58ec:    40031000    ...@    DCD    1073942528
        0x1fff58f0:    40030080    ...@    DCD    1073938560
        0x1fff58f4:    1fff7b6c    l{..    DCD    536836972
        0x1fff58f8:    1fff0a44    D...    DCD    536808004
        0x1fff58fc:    1fff0a45    E...    DCD    536808005
        0x1fff5900:    1fff0a46    F...    DCD    536808006
        0x1fff5904:    1fff0a47    G...    DCD    536808007
    $t
    i.phy_hw_pktFmt_Config
    phy_hw_pktFmt_Config
        0x1fff5908:    b40f        ..      PUSH     {r0-r3}
        0x1fff590a:    b510        ..      PUSH     {r4,lr}
        0x1fff590c:    4668        hF      MOV      r0,sp
        0x1fff590e:    7a00        .z      LDRB     r0,[r0,#8]
        0x1fff5910:    f000fc8c    ....    BL       rf_phy_bb_cfg ; 0x1fff622c
        0x1fff5914:    4668        hF      MOV      r0,sp
        0x1fff5916:    7ac0        .z      LDRB     r0,[r0,#0xb]
        0x1fff5918:    4601        .F      MOV      r1,r0
        0x1fff591a:    f7fcf8db    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff591e:    4c0c        .L      LDR      r4,[pc,#48] ; [0x1fff5950] = 0x40030040
        0x1fff5920:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff5922:    9903        ..      LDR      r1,[sp,#0xc]
        0x1fff5924:    0e00        ..      LSRS     r0,r0,#24
        0x1fff5926:    0600        ..      LSLS     r0,r0,#24
        0x1fff5928:    4308        .C      ORRS     r0,r0,r1
        0x1fff592a:    60a0        .`      STR      r0,[r4,#8]
        0x1fff592c:    2002        .       MOVS     r0,#2
        0x1fff592e:    f7fcf9f7    ....    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff1d20
        0x1fff5932:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff5934:    0201        ..      LSLS     r1,r0,#8
        0x1fff5936:    4668        hF      MOV      r0,sp
        0x1fff5938:    7a80        .z      LDRB     r0,[r0,#0xa]
        0x1fff593a:    0a09        ..      LSRS     r1,r1,#8
        0x1fff593c:    0600        ..      LSLS     r0,r0,#24
        0x1fff593e:    4301        .C      ORRS     r1,r1,r0
        0x1fff5940:    60a1        .`      STR      r1,[r4,#8]
        0x1fff5942:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff5944:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5946:    bc10        ..      POP      {r4}
        0x1fff5948:    bc08        ..      POP      {r3}
        0x1fff594a:    b004        ..      ADD      sp,sp,#0x10
        0x1fff594c:    4718        .G      BX       r3
    $d
        0x1fff594e:    0000        ..      DCW    0
        0x1fff5950:    40030040    @..@    DCD    1073938496
    $t
    i.phy_hw_set_srx
    phy_hw_set_srx
        0x1fff5954:    b510        ..      PUSH     {r4,lr}
        0x1fff5956:    f7fcf881    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff595a:    f7fcf9e7    ....    BL       $Ven$TT$L$$ll_hw_set_srx ; 0x1fff1d2c
        0x1fff595e:    223c        <"      MOVS     r2,#0x3c
        0x1fff5960:    2108        .!      MOVS     r1,#8
        0x1fff5962:    205a        Z       MOVS     r0,#0x5a
        0x1fff5964:    f7fcf9e8    ....    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d38
        0x1fff5968:    bd10        ..      POP      {r4,pc}
    i.phy_hw_set_stx
    phy_hw_set_stx
        0x1fff596a:    b510        ..      PUSH     {r4,lr}
        0x1fff596c:    f7fcf9ea    ....    BL       $Ven$TT$L$$ll_hw_set_stx ; 0x1fff1d44
        0x1fff5970:    223c        <"      MOVS     r2,#0x3c
        0x1fff5972:    2108        .!      MOVS     r1,#8
        0x1fff5974:    205a        Z       MOVS     r0,#0x5a
        0x1fff5976:    f7fcf9df    ....    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d38
        0x1fff597a:    bd10        ..      POP      {r4,pc}
    i.phy_hw_set_trx
    phy_hw_set_trx
        0x1fff597c:    b510        ..      PUSH     {r4,lr}
        0x1fff597e:    f7fcf86d    ..m.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff5982:    f7fcf9e5    ....    BL       $Ven$TT$L$$ll_hw_set_trx ; 0x1fff1d50
        0x1fff5986:    223c        <"      MOVS     r2,#0x3c
        0x1fff5988:    2108        .!      MOVS     r1,#8
        0x1fff598a:    205a        Z       MOVS     r0,#0x5a
        0x1fff598c:    f7fcf9d4    ....    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d38
        0x1fff5990:    bd10        ..      POP      {r4,pc}
        0x1fff5992:    0000        ..      MOVS     r0,r0
    i.phy_hw_stop
    phy_hw_stop
        0x1fff5994:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5996:    2400        .$      MOVS     r4,#0
        0x1fff5998:    2021        !       MOVS     r0,#0x21
        0x1fff599a:    f7fcf85f    .._.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff599e:    4d06        .M      LDR      r5,[pc,#24] ; [0x1fff59b8] = 0x1fff0998
        0x1fff59a0:    e006        ..      B        0x1fff59b0 ; phy_hw_stop + 28
        0x1fff59a2:    2003        .       MOVS     r0,#3
        0x1fff59a4:    f7fcf8de    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff59a8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff59aa:    b2e4        ..      UXTB     r4,r4
        0x1fff59ac:    2c0a        .,      CMP      r4,#0xa
        0x1fff59ae:    d802        ..      BHI      0x1fff59b6 ; phy_hw_stop + 34
        0x1fff59b0:    6828        (h      LDR      r0,[r5,#0]
        0x1fff59b2:    2800        .(      CMP      r0,#0
        0x1fff59b4:    d1f5        ..      BNE      0x1fff59a2 ; phy_hw_stop + 14
        0x1fff59b6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff59b8:    1fff0998    ....    DCD    536807832
    $t
    i.phy_hw_timing_setting
    phy_hw_timing_setting
        0x1fff59bc:    b510        ..      PUSH     {r4,lr}
        0x1fff59be:    2101        .!      MOVS     r1,#1
        0x1fff59c0:    200a        .       MOVS     r0,#0xa
        0x1fff59c2:    f7fcf9cb    ....    BL       $Ven$TT$L$$ll_hw_set_tx_rx_release ; 0x1fff1d5c
        0x1fff59c6:    203c        <       MOVS     r0,#0x3c
        0x1fff59c8:    f7fcf9ce    ....    BL       $Ven$TT$L$$ll_hw_set_rx_tx_interval ; 0x1fff1d68
        0x1fff59cc:    200a        .       MOVS     r0,#0xa
        0x1fff59ce:    f7fcf9d1    ....    BL       $Ven$TT$L$$ll_hw_set_tx_rx_interval ; 0x1fff1d74
        0x1fff59d2:    2234        4"      MOVS     r2,#0x34
        0x1fff59d4:    2108        .!      MOVS     r1,#8
        0x1fff59d6:    2039        9       MOVS     r0,#0x39
        0x1fff59d8:    f7fcf9ae    ....    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d38
        0x1fff59dc:    bd10        ..      POP      {r4,pc}
        0x1fff59de:    0000        ..      MOVS     r0,r0
    i.phy_nrf_send_data
    phy_nrf_send_data
        0x1fff59e0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff59e2:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff5a18] = 0x1fff7b80
        0x1fff59e4:    781a        .x      LDRB     r2,[r3,#0]
        0x1fff59e6:    2aff        .*      CMP      r2,#0xff
        0x1fff59e8:    d001        ..      BEQ      0x1fff59ee ; phy_nrf_send_data + 14
        0x1fff59ea:    2011        .       MOVS     r0,#0x11
        0x1fff59ec:    bd70        p.      POP      {r4-r6,pc}
        0x1fff59ee:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff5a18] = 0x1fff7b80
        0x1fff59f0:    2400        .$      MOVS     r4,#0
        0x1fff59f2:    3220         2      ADDS     r2,r2,#0x20
        0x1fff59f4:    7a95        .z      LDRB     r5,[r2,#0xa]
        0x1fff59f6:    2d00        .-      CMP      r5,#0
        0x1fff59f8:    d00c        ..      BEQ      0x1fff5a14 ; phy_nrf_send_data + 52
        0x1fff59fa:    2502        .%      MOVS     r5,#2
        0x1fff59fc:    701d        .p      STRB     r5,[r3,#0]
        0x1fff59fe:    7114        .q      STRB     r4,[r2,#4]
        0x1fff5a00:    7194        .q      STRB     r4,[r2,#6]
        0x1fff5a02:    f7fffe9d    ....    BL       phy_adv_data_update ; 0x1fff5740
        0x1fff5a06:    f7fbffd5    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5a0a:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5a1c] = 0x1fff7064
        0x1fff5a0c:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff5a0e:    f000f841    ..A.    BL       phy_rf_process_tsmt ; 0x1fff5a94
        0x1fff5a12:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5a14:    701c        .p      STRB     r4,[r3,#0]
        0x1fff5a16:    e7f2        ..      B        0x1fff59fe ; phy_nrf_send_data + 30
    $d
        0x1fff5a18:    1fff7b80    .{..    DCD    536836992
        0x1fff5a1c:    1fff7064    dp..    DCD    536834148
    $t
    i.phy_rf_channel_hop
    phy_rf_channel_hop
        0x1fff5a20:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff5a48] = 0x1fff706c
        0x1fff5a22:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff5a24:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5a26:    b2c9        ..      UXTB     r1,r1
        0x1fff5a28:    7081        .p      STRB     r1,[r0,#2]
        0x1fff5a2a:    2901        .)      CMP      r1,#1
        0x1fff5a2c:    d101        ..      BNE      0x1fff5a32 ; phy_rf_channel_hop + 18
        0x1fff5a2e:    2100        .!      MOVS     r1,#0
        0x1fff5a30:    7081        .p      STRB     r1,[r0,#2]
        0x1fff5a32:    b2c9        ..      UXTB     r1,r1
        0x1fff5a34:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff5a4c] = 0x1fff7b80
        0x1fff5a36:    5c40        @\      LDRB     r0,[r0,r1]
        0x1fff5a38:    7510        .u      STRB     r0,[r2,#0x14]
        0x1fff5a3a:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff5a48] = 0x1fff706c
        0x1fff5a3c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5a3e:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff5a40:    4611        .F      MOV      r1,r2
        0x1fff5a42:    3914        .9      SUBS     r1,r1,#0x14
        0x1fff5a44:    7088        .p      STRB     r0,[r1,#2]
        0x1fff5a46:    4770        pG      BX       lr
    $d
        0x1fff5a48:    1fff706c    lp..    DCD    536834156
        0x1fff5a4c:    1fff7b80    .{..    DCD    536836992
    $t
    i.phy_rf_process_recv
    phy_rf_process_recv
        0x1fff5a50:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5a52:    4c0e        .L      LDR      r4,[pc,#56] ; [0x1fff5a8c] = 0x1fff7b80
        0x1fff5a54:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5a56:    28ff        .(      CMP      r0,#0xff
        0x1fff5a58:    d016        ..      BEQ      0x1fff5a88 ; phy_rf_process_recv + 56
        0x1fff5a5a:    f7fbff51    ..Q.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5a5e:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5a60:    0700        ..      LSLS     r0,r0,#28
        0x1fff5a62:    0f00        ..      LSRS     r0,r0,#28
        0x1fff5a64:    7020         p      STRB     r0,[r4,#0]
        0x1fff5a66:    f000f83b    ..;.    BL       phy_rf_rx ; 0x1fff5ae0
        0x1fff5a6a:    4605        .F      MOV      r5,r0
        0x1fff5a6c:    f7fbff54    ..T.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5a70:    2d11        .-      CMP      r5,#0x11
        0x1fff5a72:    d109        ..      BNE      0x1fff5a88 ; phy_rf_process_recv + 56
        0x1fff5a74:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5a76:    2110        .!      MOVS     r1,#0x10
        0x1fff5a78:    4308        .C      ORRS     r0,r0,r1
        0x1fff5a7a:    7020         p      STRB     r0,[r4,#0]
        0x1fff5a7c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff5a90] = 0x1fff7064
        0x1fff5a7e:    2202        ."      MOVS     r2,#2
        0x1fff5a80:    2180        .!      MOVS     r1,#0x80
        0x1fff5a82:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff5a84:    f7fcf838    ..8.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff5a88:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff5a8a:    0000        ..      DCW    0
        0x1fff5a8c:    1fff7b80    .{..    DCD    536836992
        0x1fff5a90:    1fff7064    dp..    DCD    536834148
    $t
    i.phy_rf_process_tsmt
    phy_rf_process_tsmt
        0x1fff5a94:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5a96:    4c10        .L      LDR      r4,[pc,#64] ; [0x1fff5ad8] = 0x1fff7b80
        0x1fff5a98:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5a9a:    28ff        .(      CMP      r0,#0xff
        0x1fff5a9c:    d00e        ..      BEQ      0x1fff5abc ; phy_rf_process_tsmt + 40
        0x1fff5a9e:    f7fbff2f    ../.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5aa2:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5aa4:    0700        ..      LSLS     r0,r0,#28
        0x1fff5aa6:    0f00        ..      LSRS     r0,r0,#28
        0x1fff5aa8:    7020         p      STRB     r0,[r4,#0]
        0x1fff5aaa:    f000f901    ....    BL       phy_rf_tx ; 0x1fff5cb0
        0x1fff5aae:    4605        .F      MOV      r5,r0
        0x1fff5ab0:    f7fbff32    ..2.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5ab4:    2d11        .-      CMP      r5,#0x11
        0x1fff5ab6:    d003        ..      BEQ      0x1fff5ac0 ; phy_rf_process_tsmt + 44
        0x1fff5ab8:    2000        .       MOVS     r0,#0
        0x1fff5aba:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5abc:    2011        .       MOVS     r0,#0x11
        0x1fff5abe:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5ac0:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5ac2:    2110        .!      MOVS     r1,#0x10
        0x1fff5ac4:    4308        .C      ORRS     r0,r0,r1
        0x1fff5ac6:    7020         p      STRB     r0,[r4,#0]
        0x1fff5ac8:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff5adc] = 0x1fff7064
        0x1fff5aca:    2202        ."      MOVS     r2,#2
        0x1fff5acc:    2140        @!      MOVS     r1,#0x40
        0x1fff5ace:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff5ad0:    f7fcf812    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff5ad4:    4628        (F      MOV      r0,r5
        0x1fff5ad6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff5ad8:    1fff7b80    .{..    DCD    536836992
        0x1fff5adc:    1fff7064    dp..    DCD    536834148
    $t
    i.phy_rf_rx
    phy_rf_rx
        0x1fff5ae0:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff5ae2:    a801        ..      ADD      r0,sp,#4
        0x1fff5ae4:    f7fffe5a    ..Z.    BL       phy_allow_rx ; 0x1fff579c
        0x1fff5ae8:    2800        .(      CMP      r0,#0
        0x1fff5aea:    d029        ).      BEQ      0x1fff5b40 ; phy_rf_rx + 96
        0x1fff5aec:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff5b48] = 0x1fff0380
        0x1fff5aee:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff5b44] = 0x1fff2889
        0x1fff5af0:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff5af2:    f7ffff4f    ..O.    BL       phy_hw_stop ; 0x1fff5994
        0x1fff5af6:    f7fbff03    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5afa:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff5b4c] = 0x1fff7b4c
        0x1fff5afc:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff5afe:    9000        ..      STR      r0,[sp,#0]
        0x1fff5b00:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff5b4c] = 0x1fff7b4c
        0x1fff5b02:    3020         0      ADDS     r0,r0,#0x20
        0x1fff5b04:    c80f        ..      LDM      r0,{r0-r3}
        0x1fff5b06:    f7fffeff    ....    BL       phy_hw_pktFmt_Config ; 0x1fff5908
        0x1fff5b0a:    f7ffff57    ..W.    BL       phy_hw_timing_setting ; 0x1fff59bc
        0x1fff5b0e:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff5b4c] = 0x1fff7b4c
        0x1fff5b10:    3034        40      ADDS     r0,r0,#0x34
        0x1fff5b12:    7d00        .}      LDRB     r0,[r0,#0x14]
        0x1fff5b14:    f000f9b6    ....    BL       phy_set_channel ; 0x1fff5e84
        0x1fff5b18:    9801        ..      LDR      r0,[sp,#4]
        0x1fff5b1a:    b280        ..      UXTH     r0,r0
        0x1fff5b1c:    f7ffff1a    ....    BL       phy_hw_set_srx ; 0x1fff5954
        0x1fff5b20:    f7fcf92e    ....    BL       $Ven$TT$L$$ll_hw_rst_tfifo ; 0x1fff1d80
        0x1fff5b24:    f7fcf932    ..2.    BL       $Ven$TT$L$$ll_hw_rst_rfifo ; 0x1fff1d8c
        0x1fff5b28:    20ff        .       MOVS     r0,#0xff
        0x1fff5b2a:    f7fcf8c9    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1cc0
        0x1fff5b2e:    f7fffe97    ....    BL       phy_hw_go ; 0x1fff5860
        0x1fff5b32:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff5b50] = 0x1fff0998
        0x1fff5b34:    2001        .       MOVS     r0,#1
        0x1fff5b36:    6008        .`      STR      r0,[r1,#0]
        0x1fff5b38:    f7fbfeee    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5b3c:    2000        .       MOVS     r0,#0
        0x1fff5b3e:    bd1c        ..      POP      {r2-r4,pc}
        0x1fff5b40:    2011        .       MOVS     r0,#0x11
        0x1fff5b42:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff5b44:    1fff2889    .(..    DCD    536815753
        0x1fff5b48:    1fff0380    ....    DCD    536806272
        0x1fff5b4c:    1fff7b4c    L{..    DCD    536836940
        0x1fff5b50:    1fff0998    ....    DCD    536807832
    $t
    i.phy_rf_schedule
    phy_rf_schedule
        0x1fff5b54:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5b56:    4c24        $L      LDR      r4,[pc,#144] ; [0x1fff5be8] = 0x1fff7b80
        0x1fff5b58:    4f24        $O      LDR      r7,[pc,#144] ; [0x1fff5bec] = 0x3fffff
        0x1fff5b5a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5b5c:    26ff        .&      MOVS     r6,#0xff
        0x1fff5b5e:    4d24        $M      LDR      r5,[pc,#144] ; [0x1fff5bf0] = 0x1fff7064
        0x1fff5b60:    2800        .(      CMP      r0,#0
        0x1fff5b62:    d00b        ..      BEQ      0x1fff5b7c ; phy_rf_schedule + 40
        0x1fff5b64:    2801        .(      CMP      r0,#1
        0x1fff5b66:    d112        ..      BNE      0x1fff5b8e ; phy_rf_schedule + 58
        0x1fff5b68:    f7fbff24    ..$.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5b6c:    69a2        .i      LDR      r2,[r4,#0x18]
        0x1fff5b6e:    2a00        .*      CMP      r2,#0
        0x1fff5b70:    d02d        -.      BEQ      0x1fff5bce ; phy_rf_schedule + 122
        0x1fff5b72:    6a21        !j      LDR      r1,[r4,#0x20]
        0x1fff5b74:    4281        .B      CMP      r1,r0
        0x1fff5b76:    d82d        -.      BHI      0x1fff5bd4 ; phy_rf_schedule + 128
        0x1fff5b78:    1a41        A.      SUBS     r1,r0,r1
        0x1fff5b7a:    e02d        -.      B        0x1fff5bd8 ; phy_rf_schedule + 132
        0x1fff5b7c:    f7ffff50    ..P.    BL       phy_rf_channel_hop ; 0x1fff5a20
        0x1fff5b80:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff5bf0] = 0x1fff7064
        0x1fff5b82:    3008        .0      ADDS     r0,r0,#8
        0x1fff5b84:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff5b86:    2800        .(      CMP      r0,#0
        0x1fff5b88:    d002        ..      BEQ      0x1fff5b90 ; phy_rf_schedule + 60
        0x1fff5b8a:    f7ffff83    ....    BL       phy_rf_process_tsmt ; 0x1fff5a94
        0x1fff5b8e:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5b90:    f7fbff10    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5b94:    68a2        .h      LDR      r2,[r4,#8]
        0x1fff5b96:    2a00        .*      CMP      r2,#0
        0x1fff5b98:    d00d        ..      BEQ      0x1fff5bb6 ; phy_rf_schedule + 98
        0x1fff5b9a:    69e9        .i      LDR      r1,[r5,#0x1c]
        0x1fff5b9c:    4288        .B      CMP      r0,r1
        0x1fff5b9e:    d301        ..      BCC      0x1fff5ba4 ; phy_rf_schedule + 80
        0x1fff5ba0:    1a40        @.      SUBS     r0,r0,r1
        0x1fff5ba2:    e001        ..      B        0x1fff5ba8 ; phy_rf_schedule + 84
        0x1fff5ba4:    1a79        y.      SUBS     r1,r7,r1
        0x1fff5ba6:    1808        ..      ADDS     r0,r1,r0
        0x1fff5ba8:    4290        .B      CMP      r0,r2
        0x1fff5baa:    d902        ..      BLS      0x1fff5bb2 ; phy_rf_schedule + 94
        0x1fff5bac:    7026        &p      STRB     r6,[r4,#0]
        0x1fff5bae:    2104        .!      MOVS     r1,#4
        0x1fff5bb0:    e009        ..      B        0x1fff5bc6 ; phy_rf_schedule + 114
        0x1fff5bb2:    2140        @!      MOVS     r1,#0x40
        0x1fff5bb4:    e007        ..      B        0x1fff5bc6 ; phy_rf_schedule + 114
        0x1fff5bb6:    6862        bh      LDR      r2,[r4,#4]
        0x1fff5bb8:    2a00        .*      CMP      r2,#0
        0x1fff5bba:    d0f7        ..      BEQ      0x1fff5bac ; phy_rf_schedule + 88
        0x1fff5bbc:    2140        @!      MOVS     r1,#0x40
        0x1fff5bbe:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff5bc0:    f7fbff9a    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1af8
        0x1fff5bc4:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5bc6:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff5bc8:    f7fbff90    ....    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff5bcc:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5bce:    7026        &p      STRB     r6,[r4,#0]
        0x1fff5bd0:    2108        .!      MOVS     r1,#8
        0x1fff5bd2:    e7f8        ..      B        0x1fff5bc6 ; phy_rf_schedule + 114
        0x1fff5bd4:    1a79        y.      SUBS     r1,r7,r1
        0x1fff5bd6:    1809        ..      ADDS     r1,r1,r0
        0x1fff5bd8:    4291        .B      CMP      r1,r2
        0x1fff5bda:    d302        ..      BCC      0x1fff5be2 ; phy_rf_schedule + 142
        0x1fff5bdc:    6220         b      STR      r0,[r4,#0x20]
        0x1fff5bde:    f7ffff1f    ....    BL       phy_rf_channel_hop ; 0x1fff5a20
        0x1fff5be2:    f7ffff35    ..5.    BL       phy_rf_process_recv ; 0x1fff5a50
        0x1fff5be6:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff5be8:    1fff7b80    .{..    DCD    536836992
        0x1fff5bec:    003fffff    ..?.    DCD    4194303
        0x1fff5bf0:    1fff7064    dp..    DCD    536834148
    $t
    i.phy_rf_start_rx
    phy_rf_start_rx
        0x1fff5bf4:    b510        ..      PUSH     {r4,lr}
        0x1fff5bf6:    4c08        .L      LDR      r4,[pc,#32] ; [0x1fff5c18] = 0x1fff7b80
        0x1fff5bf8:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff5bfa:    29ff        .)      CMP      r1,#0xff
        0x1fff5bfc:    d001        ..      BEQ      0x1fff5c02 ; phy_rf_start_rx + 14
        0x1fff5bfe:    2011        .       MOVS     r0,#0x11
        0x1fff5c00:    bd10        ..      POP      {r4,pc}
        0x1fff5c02:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5c04:    2001        .       MOVS     r0,#1
        0x1fff5c06:    7020         p      STRB     r0,[r4,#0]
        0x1fff5c08:    f7fbfed4    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5c0c:    6220         b      STR      r0,[r4,#0x20]
        0x1fff5c0e:    f7ffff1f    ....    BL       phy_rf_process_recv ; 0x1fff5a50
        0x1fff5c12:    2000        .       MOVS     r0,#0
        0x1fff5c14:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5c16:    0000        ..      DCW    0
        0x1fff5c18:    1fff7b80    .{..    DCD    536836992
    $t
    i.phy_rf_start_tx
    phy_rf_start_tx
        0x1fff5c1c:    b510        ..      PUSH     {r4,lr}
        0x1fff5c1e:    4b05        .K      LDR      r3,[pc,#20] ; [0x1fff5c34] = 0x1fff7b80
        0x1fff5c20:    781c        .x      LDRB     r4,[r3,#0]
        0x1fff5c22:    2cff        .,      CMP      r4,#0xff
        0x1fff5c24:    d001        ..      BEQ      0x1fff5c2a ; phy_rf_start_tx + 14
        0x1fff5c26:    2011        .       MOVS     r0,#0x11
        0x1fff5c28:    bd10        ..      POP      {r4,pc}
        0x1fff5c2a:    605a        Z`      STR      r2,[r3,#4]
        0x1fff5c2c:    f7fffed8    ....    BL       phy_nrf_send_data ; 0x1fff59e0
        0x1fff5c30:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5c32:    0000        ..      DCW    0
        0x1fff5c34:    1fff7b80    .{..    DCD    536836992
    $t
    i.phy_rf_stop_rx
    phy_rf_stop_rx
        0x1fff5c38:    b510        ..      PUSH     {r4,lr}
        0x1fff5c3a:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff5c70] = 0x1fff7b80
        0x1fff5c3c:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5c3e:    2901        .)      CMP      r1,#1
        0x1fff5c40:    d003        ..      BEQ      0x1fff5c4a ; phy_rf_stop_rx + 18
        0x1fff5c42:    2911        .)      CMP      r1,#0x11
        0x1fff5c44:    d001        ..      BEQ      0x1fff5c4a ; phy_rf_stop_rx + 18
        0x1fff5c46:    2007        .       MOVS     r0,#7
        0x1fff5c48:    bd10        ..      POP      {r4,pc}
        0x1fff5c4a:    2200        ."      MOVS     r2,#0
        0x1fff5c4c:    4b09        .K      LDR      r3,[pc,#36] ; [0x1fff5c74] = 0x1fff706c
        0x1fff5c4e:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff5c50:    709a        .p      STRB     r2,[r3,#2]
        0x1fff5c52:    2901        .)      CMP      r1,#1
        0x1fff5c54:    d008        ..      BEQ      0x1fff5c68 ; phy_rf_stop_rx + 48
        0x1fff5c56:    21ff        .!      MOVS     r1,#0xff
        0x1fff5c58:    7001        .p      STRB     r1,[r0,#0]
        0x1fff5c5a:    2108        .!      MOVS     r1,#8
        0x1fff5c5c:    1a58        X.      SUBS     r0,r3,r1
        0x1fff5c5e:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff5c60:    f7fbff44    ..D.    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff5c64:    2000        .       MOVS     r0,#0
        0x1fff5c66:    bd10        ..      POP      {r4,pc}
        0x1fff5c68:    f7fffe94    ....    BL       phy_hw_stop ; 0x1fff5994
        0x1fff5c6c:    e7fa        ..      B        0x1fff5c64 ; phy_rf_stop_rx + 44
    $d
        0x1fff5c6e:    0000        ..      DCW    0
        0x1fff5c70:    1fff7b80    .{..    DCD    536836992
        0x1fff5c74:    1fff706c    lp..    DCD    536834156
    $t
    i.phy_rf_stop_tx
    phy_rf_stop_tx
        0x1fff5c78:    b510        ..      PUSH     {r4,lr}
        0x1fff5c7a:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff5ca8] = 0x1fff7b80
        0x1fff5c7c:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff5c7e:    2800        .(      CMP      r0,#0
        0x1fff5c80:    d007        ..      BEQ      0x1fff5c92 ; phy_rf_stop_tx + 26
        0x1fff5c82:    2810        .(      CMP      r0,#0x10
        0x1fff5c84:    d005        ..      BEQ      0x1fff5c92 ; phy_rf_stop_tx + 26
        0x1fff5c86:    2802        .(      CMP      r0,#2
        0x1fff5c88:    d003        ..      BEQ      0x1fff5c92 ; phy_rf_stop_tx + 26
        0x1fff5c8a:    2812        .(      CMP      r0,#0x12
        0x1fff5c8c:    d001        ..      BEQ      0x1fff5c92 ; phy_rf_stop_tx + 26
        0x1fff5c8e:    2007        .       MOVS     r0,#7
        0x1fff5c90:    bd10        ..      POP      {r4,pc}
        0x1fff5c92:    2000        .       MOVS     r0,#0
        0x1fff5c94:    6048        H`      STR      r0,[r1,#4]
        0x1fff5c96:    20ff        .       MOVS     r0,#0xff
        0x1fff5c98:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5c9a:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff5cac] = 0x1fff7064
        0x1fff5c9c:    2140        @!      MOVS     r1,#0x40
        0x1fff5c9e:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff5ca0:    f7fcf87a    ..z.    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x1fff1d98
        0x1fff5ca4:    2000        .       MOVS     r0,#0
        0x1fff5ca6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5ca8:    1fff7b80    .{..    DCD    536836992
        0x1fff5cac:    1fff7064    dp..    DCD    536834148
    $t
    i.phy_rf_tx
    phy_rf_tx
        0x1fff5cb0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5cb2:    482b        +H      LDR      r0,[pc,#172] ; [0x1fff5d60] = 0x1fff7a4c
        0x1fff5cb4:    4d2b        +M      LDR      r5,[pc,#172] ; [0x1fff5d64] = 0x1fff7b6c
        0x1fff5cb6:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff5cb8:    7829        )x      LDRB     r1,[r5,#0]
        0x1fff5cba:    1d40        @.      ADDS     r0,r0,#5
        0x1fff5cbc:    2901        .)      CMP      r1,#1
        0x1fff5cbe:    d00c        ..      BEQ      0x1fff5cda ; phy_rf_tx + 42
        0x1fff5cc0:    0084        ..      LSLS     r4,r0,#2
        0x1fff5cc2:    f7fbfe1d    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5cc6:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff5d68] = 0x1fff7090
        0x1fff5cc8:    6806        .h      LDR      r6,[r0,#0]
        0x1fff5cca:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff5d6c] = 0x40001000
        0x1fff5ccc:    6880        .h      LDR      r0,[r0,#8]
        0x1fff5cce:    34c8        .4      ADDS     r4,r4,#0xc8
        0x1fff5cd0:    2800        .(      CMP      r0,#0
        0x1fff5cd2:    d004        ..      BEQ      0x1fff5cde ; phy_rf_tx + 46
        0x1fff5cd4:    f000fa00    ....    BL       read_ble_remainder_time ; 0x1fff60d8
        0x1fff5cd8:    e002        ..      B        0x1fff5ce0 ; phy_rf_tx + 48
        0x1fff5cda:    00c4        ..      LSLS     r4,r0,#3
        0x1fff5cdc:    e7f1        ..      B        0x1fff5cc2 ; phy_rf_tx + 18
        0x1fff5cde:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff5d70] = 0xffff
        0x1fff5ce0:    19a1        ..      ADDS     r1,r4,r6
        0x1fff5ce2:    4281        .B      CMP      r1,r0
        0x1fff5ce4:    d203        ..      BCS      0x1fff5cee ; phy_rf_tx + 62
        0x1fff5ce6:    4e23        #N      LDR      r6,[pc,#140] ; [0x1fff5d74] = 0x1fff0998
        0x1fff5ce8:    6830        0h      LDR      r0,[r6,#0]
        0x1fff5cea:    2800        .(      CMP      r0,#0
        0x1fff5cec:    d003        ..      BEQ      0x1fff5cf6 ; phy_rf_tx + 70
        0x1fff5cee:    f7fbfe13    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5cf2:    2011        .       MOVS     r0,#0x11
        0x1fff5cf4:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5cf6:    f7fbfe0f    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5cfa:    4920         I      LDR      r1,[pc,#128] ; [0x1fff5d7c] = 0x1fff0380
        0x1fff5cfc:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff5d78] = 0x1fff2889
        0x1fff5cfe:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff5d00:    f7fffe48    ..H.    BL       phy_hw_stop ; 0x1fff5994
        0x1fff5d04:    f7fbfdfc    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5d08:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff5d64] = 0x1fff7b6c
        0x1fff5d0a:    3820         8      SUBS     r0,r0,#0x20
        0x1fff5d0c:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff5d0e:    9000        ..      STR      r0,[sp,#0]
        0x1fff5d10:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff5d64] = 0x1fff7b6c
        0x1fff5d12:    c80f        ..      LDM      r0,{r0-r3}
        0x1fff5d14:    f7fffdf8    ....    BL       phy_hw_pktFmt_Config ; 0x1fff5908
        0x1fff5d18:    f7fffe50    ..P.    BL       phy_hw_timing_setting ; 0x1fff59bc
        0x1fff5d1c:    4c11        .L      LDR      r4,[pc,#68] ; [0x1fff5d64] = 0x1fff7b6c
        0x1fff5d1e:    3414        .4      ADDS     r4,r4,#0x14
        0x1fff5d20:    7d20         }      LDRB     r0,[r4,#0x14]
        0x1fff5d22:    f000f8af    ....    BL       phy_set_channel ; 0x1fff5e84
        0x1fff5d26:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5d28:    2802        .(      CMP      r0,#2
        0x1fff5d2a:    d015        ..      BEQ      0x1fff5d58 ; phy_rf_tx + 168
        0x1fff5d2c:    f7fffe1d    ....    BL       phy_hw_set_stx ; 0x1fff596a
        0x1fff5d30:    f7fcf826    ..&.    BL       $Ven$TT$L$$ll_hw_rst_tfifo ; 0x1fff1d80
        0x1fff5d34:    f7fcf82a    ..*.    BL       $Ven$TT$L$$ll_hw_rst_rfifo ; 0x1fff1d8c
        0x1fff5d38:    20ff        .       MOVS     r0,#0xff
        0x1fff5d3a:    f7fbffc1    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1cc0
        0x1fff5d3e:    68e8        .h      LDR      r0,[r5,#0xc]
        0x1fff5d40:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff5d42:    1c89        ..      ADDS     r1,r1,#2
        0x1fff5d44:    f7fbff86    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c54
        0x1fff5d48:    f7fffd8a    ....    BL       phy_hw_go ; 0x1fff5860
        0x1fff5d4c:    2001        .       MOVS     r0,#1
        0x1fff5d4e:    6030        0`      STR      r0,[r6,#0]
        0x1fff5d50:    f7fbfde2    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5d54:    2000        .       MOVS     r0,#0
        0x1fff5d56:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5d58:    8ba0        ..      LDRH     r0,[r4,#0x1c]
        0x1fff5d5a:    f7fffe0f    ....    BL       phy_hw_set_trx ; 0x1fff597c
        0x1fff5d5e:    e7e7        ..      B        0x1fff5d30 ; phy_rf_tx + 128
    $d
        0x1fff5d60:    1fff7a4c    Lz..    DCD    536836684
        0x1fff5d64:    1fff7b6c    l{..    DCD    536836972
        0x1fff5d68:    1fff7090    .p..    DCD    536834192
        0x1fff5d6c:    40001000    ...@    DCD    1073745920
        0x1fff5d70:    0000ffff    ....    DCD    65535
        0x1fff5d74:    1fff0998    ....    DCD    536807832
        0x1fff5d78:    1fff2889    .(..    DCD    536815753
        0x1fff5d7c:    1fff0380    ....    DCD    536806272
    $t
    i.phy_rx_data_check
    phy_rx_data_check
        0x1fff5d80:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5d82:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff5dc8] = 0x1fff7b80
        0x1fff5d84:    2500        .%      MOVS     r5,#0
        0x1fff5d86:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5d88:    4604        .F      MOV      r4,r0
        0x1fff5d8a:    342c        ,4      ADDS     r4,r4,#0x2c
        0x1fff5d8c:    2901        .)      CMP      r1,#1
        0x1fff5d8e:    d004        ..      BEQ      0x1fff5d9a ; phy_rx_data_check + 26
        0x1fff5d90:    2903        .)      CMP      r1,#3
        0x1fff5d92:    d002        ..      BEQ      0x1fff5d9a ; phy_rx_data_check + 26
        0x1fff5d94:    2902        .)      CMP      r1,#2
        0x1fff5d96:    d00a        ..      BEQ      0x1fff5dae ; phy_rx_data_check + 46
        0x1fff5d98:    e007        ..      B        0x1fff5daa ; phy_rx_data_check + 42
        0x1fff5d9a:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff5dcc] = 0x1fff7064
        0x1fff5d9c:    2120         !      MOVS     r1,#0x20
        0x1fff5d9e:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff5da0:    f7fbfea4    ....    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1aec
        0x1fff5da4:    6820         h      LDR      r0,[r4,#0]
        0x1fff5da6:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5da8:    6020         `      STR      r0,[r4,#0]
        0x1fff5daa:    4628        (F      MOV      r0,r5
        0x1fff5dac:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5dae:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff5dd0] = 0x1fff794c
        0x1fff5db0:    f000fc9e    ....    BL       rf_txack_check ; 0x1fff66f0
        0x1fff5db4:    2800        .(      CMP      r0,#0
        0x1fff5db6:    d1f9        ..      BNE      0x1fff5dac ; phy_rx_data_check + 44
        0x1fff5db8:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff5dc8] = 0x1fff7b80
        0x1fff5dba:    2201        ."      MOVS     r2,#1
        0x1fff5dbc:    3120         1      ADDS     r1,r1,#0x20
        0x1fff5dbe:    718a        .q      STRB     r2,[r1,#6]
        0x1fff5dc0:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1fff5dc2:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5dc4:    60e1        .`      STR      r1,[r4,#0xc]
        0x1fff5dc6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff5dc8:    1fff7b80    .{..    DCD    536836992
        0x1fff5dcc:    1fff7064    dp..    DCD    536834148
        0x1fff5dd0:    1fff794c    Ly..    DCD    536836428
    $t
    i.phy_rx_data_process
    phy_rx_data_process
        0x1fff5dd4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5dd6:    b08e        ..      SUB      sp,sp,#0x38
        0x1fff5dd8:    f7fbfd92    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5ddc:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff5e3c] = 0x1fff7b6c
        0x1fff5dde:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff5de0:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff5de2:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5de4:    b2c4        ..      UXTB     r4,r0
        0x1fff5de6:    4622        "F      MOV      r2,r4
        0x1fff5de8:    a803        ..      ADD      r0,sp,#0xc
        0x1fff5dea:    f7fbff93    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d14
        0x1fff5dee:    4e14        .N      LDR      r6,[pc,#80] ; [0x1fff5e40] = 0x1fff7064
        0x1fff5df0:    78b5        .x      LDRB     r5,[r6,#2]
        0x1fff5df2:    f7fbfd91    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5df6:    6931        1i      LDR      r1,[r6,#0x10]
        0x1fff5df8:    2900        .)      CMP      r1,#0
        0x1fff5dfa:    d00b        ..      BEQ      0x1fff5e14 ; phy_rx_data_process + 64
        0x1fff5dfc:    4668        hF      MOV      r0,sp
        0x1fff5dfe:    7b02        .{      LDRB     r2,[r0,#0xc]
        0x1fff5e00:    7002        .p      STRB     r2,[r0,#0]
        0x1fff5e02:    7b42        B{      LDRB     r2,[r0,#0xd]
        0x1fff5e04:    7202        .r      STRB     r2,[r0,#8]
        0x1fff5e06:    7245        Er      STRB     r5,[r0,#9]
        0x1fff5e08:    300e        .0      ADDS     r0,r0,#0xe
        0x1fff5e0a:    9001        ..      STR      r0,[sp,#4]
        0x1fff5e0c:    4668        hF      MOV      r0,sp
        0x1fff5e0e:    4788        .G      BLX      r1
        0x1fff5e10:    b00e        ..      ADD      sp,sp,#0x38
        0x1fff5e12:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5e14:    a00b        ..      ADR      r0,{pc}+0x30 ; 0x1fff5e44
        0x1fff5e16:    f7fdfbdd    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff5e1a:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff5e3c] = 0x1fff7b6c
        0x1fff5e1c:    88b2        ..      LDRH     r2,[r6,#4]
        0x1fff5e1e:    3014        .0      ADDS     r0,r0,#0x14
        0x1fff5e20:    3aff        .:      SUBS     r2,r2,#0xff
        0x1fff5e22:    7d03        .}      LDRB     r3,[r0,#0x14]
        0x1fff5e24:    3aff        .:      SUBS     r2,r2,#0xff
        0x1fff5e26:    4629        )F      MOV      r1,r5
        0x1fff5e28:    a00d        ..      ADR      r0,{pc}+0x38 ; 0x1fff5e60
        0x1fff5e2a:    3a02        .:      SUBS     r2,#2
        0x1fff5e2c:    f7fdfbd2    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff5e30:    4621        !F      MOV      r1,r4
        0x1fff5e32:    a803        ..      ADD      r0,sp,#0xc
        0x1fff5e34:    f7fffafa    ....    BL       my_dump_byte ; 0x1fff542c
        0x1fff5e38:    e7ea        ..      B        0x1fff5e10 ; phy_rx_data_process + 60
    $d
        0x1fff5e3a:    0000        ..      DCW    0
        0x1fff5e3c:    1fff7b6c    l{..    DCD    536836972
        0x1fff5e40:    1fff7064    dp..    DCD    536834148
        0x1fff5e44:    2d2d2d2d    ----    DCD    757935405
        0x1fff5e48:    2d2d2d2d    ----    DCD    757935405
        0x1fff5e4c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5e50:    2d2d2d2d    ----    DCD    757935405
        0x1fff5e54:    2d2d2d2d    ----    DCD    757935405
        0x1fff5e58:    2d2d2d2d    ----    DCD    757935405
        0x1fff5e5c:    00000a2d    -...    DCD    2605
        0x1fff5e60:    5948505b    [PHY    DCD    1497911387
        0x1fff5e64:    5d585220     RX]    DCD    1566069280
        0x1fff5e68:    252d5b20     [-%    DCD    623729440
        0x1fff5e6c:    64643330    03dd    DCD    1684288304
        0x1fff5e70:    25206d62    bm %    DCD    622882146
        0x1fff5e74:    484b6434    4dKH    DCD    1212900404
        0x1fff5e78:    3025207a    z %0    DCD    807739514
        0x1fff5e7c:    43206432    2d C    DCD    1126196274
        0x1fff5e80:    00205d48    H] .    DCD    2121032
    $t
    i.phy_set_channel
    phy_set_channel
        0x1fff5e84:    b510        ..      PUSH     {r4,lr}
        0x1fff5e86:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff5ebc] = 0x1fff0a68
        0x1fff5e88:    2300        .#      MOVS     r3,#0
        0x1fff5e8a:    56cb        .V      LDRSB    r3,[r1,r3]
        0x1fff5e8c:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff5ec0] = 0x40030080
        0x1fff5e8e:    2b00        .+      CMP      r3,#0
        0x1fff5e90:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff5ec4] = 0
        0x1fff5e92:    56cb        .V      LDRSB    r3,[r1,r3]
        0x1fff5e94:    db06        ..      BLT      0x1fff5ea4 ; phy_set_channel + 32
        0x1fff5e96:    041b        ..      LSLS     r3,r3,#16
        0x1fff5e98:    2400        .$      MOVS     r4,#0
        0x1fff5e9a:    570c        .W      LDRSB    r4,[r1,r4]
        0x1fff5e9c:    0221        !.      LSLS     r1,r4,#8
        0x1fff5e9e:    1859        Y.      ADDS     r1,r3,r1
        0x1fff5ea0:    1808        ..      ADDS     r0,r1,r0
        0x1fff5ea2:    e008        ..      B        0x1fff5eb6 ; phy_set_channel + 50
        0x1fff5ea4:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff5ea6:    041b        ..      LSLS     r3,r3,#16
        0x1fff5ea8:    2400        .$      MOVS     r4,#0
        0x1fff5eaa:    570c        .W      LDRSB    r4,[r1,r4]
        0x1fff5eac:    0221        !.      LSLS     r1,r4,#8
        0x1fff5eae:    1859        Y.      ADDS     r1,r3,r1
        0x1fff5eb0:    1808        ..      ADDS     r0,r1,r0
        0x1fff5eb2:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff5ec8] = 0xfeff
        0x1fff5eb4:    1840        @.      ADDS     r0,r0,r1
        0x1fff5eb6:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff5eb8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5eba:    0000        ..      DCW    0
        0x1fff5ebc:    1fff0a68    h...    DCD    536808040
        0x1fff5ec0:    40030080    ...@    DCD    1073938560
        0x1fff5ec4:    00000000    ....    DCD    0
        0x1fff5ec8:    0000feff    ....    DCD    65279
    $t
    i.phy_tx_buf_updata
    phy_tx_buf_updata
        0x1fff5ecc:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff5ece:    461c        .F      MOV      r4,r3
        0x1fff5ed0:    460b        .F      MOV      r3,r1
        0x1fff5ed2:    1da1        ..      ADDS     r1,r4,#6
        0x1fff5ed4:    4616        .F      MOV      r6,r2
        0x1fff5ed6:    4605        .F      MOV      r5,r0
        0x1fff5ed8:    7059        Yp      STRB     r1,[r3,#1]
        0x1fff5eda:    2202        ."      MOVS     r2,#2
        0x1fff5edc:    4619        .F      MOV      r1,r3
        0x1fff5ede:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff5f28] = 0x1fff7a4c
        0x1fff5ee0:    f7fbff18    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d14
        0x1fff5ee4:    4629        )F      MOV      r1,r5
        0x1fff5ee6:    4d10        .M      LDR      r5,[pc,#64] ; [0x1fff5f28] = 0x1fff7a4c
        0x1fff5ee8:    2206        ."      MOVS     r2,#6
        0x1fff5eea:    1ca8        ..      ADDS     r0,r5,#2
        0x1fff5eec:    f7fbff12    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d14
        0x1fff5ef0:    4628        (F      MOV      r0,r5
        0x1fff5ef2:    4622        "F      MOV      r2,r4
        0x1fff5ef4:    4631        1F      MOV      r1,r6
        0x1fff5ef6:    3008        .0      ADDS     r0,r0,#8
        0x1fff5ef8:    f7fbff0c    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d14
        0x1fff5efc:    a00b        ..      ADR      r0,{pc}+0x30 ; 0x1fff5f2c
        0x1fff5efe:    f7fdfb69    ..i.    BL       dbg_printf ; 0x1fff35d4
        0x1fff5f02:    a017        ..      ADR      r0,{pc}+0x5e ; 0x1fff5f60
        0x1fff5f04:    f7fdfb66    ..f.    BL       dbg_printf ; 0x1fff35d4
        0x1fff5f08:    2400        .$      MOVS     r4,#0
        0x1fff5f0a:    e005        ..      B        0x1fff5f18 ; phy_tx_buf_updata + 76
        0x1fff5f0c:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff5f0e:    a019        ..      ADR      r0,{pc}+0x66 ; 0x1fff5f74
        0x1fff5f10:    f7fdfb60    ..`.    BL       dbg_printf ; 0x1fff35d4
        0x1fff5f14:    1c64        d.      ADDS     r4,r4,#1
        0x1fff5f16:    b2e4        ..      UXTB     r4,r4
        0x1fff5f18:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff5f1a:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5f1c:    42a0        .B      CMP      r0,r4
        0x1fff5f1e:    d8f5        ..      BHI      0x1fff5f0c ; phy_tx_buf_updata + 64
        0x1fff5f20:    a002        ..      ADR      r0,{pc}+0xc ; 0x1fff5f2c
        0x1fff5f22:    f7fdfb57    ..W.    BL       dbg_printf ; 0x1fff35d4
        0x1fff5f26:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff5f28:    1fff7a4c    Lz..    DCD    536836684
        0x1fff5f2c:    2d2d2d0a    .---    DCD    757935370
        0x1fff5f30:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f34:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f38:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f3c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f40:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f44:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f48:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f4c:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f50:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f54:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f58:    2d2d2d2d    ----    DCD    757935405
        0x1fff5f5c:    0000000a    ....    DCD    10
        0x1fff5f60:    20594850    PHY     DCD    542722128
        0x1fff5f64:    20465542    BUF     DCD    541480258
        0x1fff5f68:    44207854    Tx D    DCD    1142978644
        0x1fff5f6c:    0a706d75    ump.    DCD    175140213
        0x1fff5f70:    00000000    ....    DCD    0
        0x1fff5f74:    78323025    %02x    DCD    2016555045
        0x1fff5f78:    00000020     ...    DCD    32
    $t
    i.process_trx_done_evt
    process_trx_done_evt
        0x1fff5f7c:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff5f7e:    4e15        .N      LDR      r6,[pc,#84] ; [0x1fff5fd4] = 0x1fff7ba0
        0x1fff5f80:    4d15        .M      LDR      r5,[pc,#84] ; [0x1fff5fd8] = 0x1fff7064
        0x1fff5f82:    79b0        .y      LDRB     r0,[r6,#6]
        0x1fff5f84:    2400        .$      MOVS     r4,#0
        0x1fff5f86:    2800        .(      CMP      r0,#0
        0x1fff5f88:    d013        ..      BEQ      0x1fff5fb2 ; process_trx_done_evt + 54
        0x1fff5f8a:    a014        ..      ADR      r0,{pc}+0x52 ; 0x1fff5fdc
        0x1fff5f8c:    f7fdfb22    ..".    BL       dbg_printf ; 0x1fff35d4
        0x1fff5f90:    6929        )i      LDR      r1,[r5,#0x10]
        0x1fff5f92:    2900        .)      CMP      r1,#0
        0x1fff5f94:    d019        ..      BEQ      0x1fff5fca ; process_trx_done_evt + 78
        0x1fff5f96:    4630        0F      MOV      r0,r6
        0x1fff5f98:    3834        48      SUBS     r0,r0,#0x34
        0x1fff5f9a:    6900        .i      LDR      r0,[r0,#0x10]
        0x1fff5f9c:    466a        jF      MOV      r2,sp
        0x1fff5f9e:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff5fa0:    7013        .p      STRB     r3,[r2,#0]
        0x1fff5fa2:    7843        Cx      LDRB     r3,[r0,#1]
        0x1fff5fa4:    7213        .r      STRB     r3,[r2,#8]
        0x1fff5fa6:    78ab        .x      LDRB     r3,[r5,#2]
        0x1fff5fa8:    7253        Sr      STRB     r3,[r2,#9]
        0x1fff5faa:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5fac:    9001        ..      STR      r0,[sp,#4]
        0x1fff5fae:    4668        hF      MOV      r0,sp
        0x1fff5fb0:    e00a        ..      B        0x1fff5fc8 ; process_trx_done_evt + 76
        0x1fff5fb2:    a00d        ..      ADR      r0,{pc}+0x36 ; 0x1fff5fe8
        0x1fff5fb4:    f7fdfb0e    ....    BL       dbg_printf ; 0x1fff35d4
        0x1fff5fb8:    6929        )i      LDR      r1,[r5,#0x10]
        0x1fff5fba:    2900        .)      CMP      r1,#0
        0x1fff5fbc:    d005        ..      BEQ      0x1fff5fca ; process_trx_done_evt + 78
        0x1fff5fbe:    4668        hF      MOV      r0,sp
        0x1fff5fc0:    7004        .p      STRB     r4,[r0,#0]
        0x1fff5fc2:    7204        .r      STRB     r4,[r0,#8]
        0x1fff5fc4:    7244        Dr      STRB     r4,[r0,#9]
        0x1fff5fc6:    9401        ..      STR      r4,[sp,#4]
        0x1fff5fc8:    4788        .G      BLX      r1
        0x1fff5fca:    7134        4q      STRB     r4,[r6,#4]
        0x1fff5fcc:    71b4        .q      STRB     r4,[r6,#6]
        0x1fff5fce:    f000fba1    ....    BL       show_phy_debug_info ; 0x1fff6714
        0x1fff5fd2:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff5fd4:    1fff7ba0    .{..    DCD    536837024
        0x1fff5fd8:    1fff7064    dp..    DCD    536834148
        0x1fff5fdc:    2058545b    [TX     DCD    542659675
        0x1fff5fe0:    0a5d4b4f    OK].    DCD    173886287
        0x1fff5fe4:    00000000    ....    DCD    0
        0x1fff5fe8:    2058545b    [TX     DCD    542659675
        0x1fff5fec:    6c696146    Fail    DCD    1818845510
        0x1fff5ff0:    00000a5d    ]...    DCD    2653
    $t
    i.rc32k_calibration
    rc32k_calibration
        0x1fff5ff4:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5ff6:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff6070] = 0x4000f0c0
        0x1fff5ff8:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5ffa:    0609        ..      LSLS     r1,r1,#24
        0x1fff5ffc:    d501        ..      BPL      0x1fff6002 ; rc32k_calibration + 14
        0x1fff5ffe:    2000        .       MOVS     r0,#0
        0x1fff6000:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff6002:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff6004:    2280        ."      MOVS     r2,#0x80
        0x1fff6006:    4311        .C      ORRS     r1,r1,r2
        0x1fff6008:    6041        A`      STR      r1,[r0,#4]
        0x1fff600a:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff6070] = 0x4000f0c0
        0x1fff600c:    260a        .&      MOVS     r6,#0xa
        0x1fff600e:    2700        .'      MOVS     r7,#0
        0x1fff6010:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff6012:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff6014:    0840        @.      LSRS     r0,r0,#1
        0x1fff6016:    0040        @.      LSLS     r0,r0,#1
        0x1fff6018:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff601a:    2006        .       MOVS     r0,#6
        0x1fff601c:    f7fbfda2    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff6020:    4c13        .L      LDR      r4,[pc,#76] ; [0x1fff6070] = 0x4000f0c0
        0x1fff6022:    3cc0        .<      SUBS     r4,r4,#0xc0
        0x1fff6024:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff6026:    2180        .!      MOVS     r1,#0x80
        0x1fff6028:    4308        .C      ORRS     r0,r0,r1
        0x1fff602a:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff602c:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff602e:    2101        .!      MOVS     r1,#1
        0x1fff6030:    4308        .C      ORRS     r0,r0,r1
        0x1fff6032:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff6034:    e002        ..      B        0x1fff603c ; rc32k_calibration + 72
        0x1fff6036:    2008        .       MOVS     r0,#8
        0x1fff6038:    f7fbfd94    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff603c:    6aa8        .j      LDR      r0,[r5,#0x28]
        0x1fff603e:    0580        ..      LSLS     r0,r0,#22
        0x1fff6040:    d404        ..      BMI      0x1fff604c ; rc32k_calibration + 88
        0x1fff6042:    4630        0F      MOV      r0,r6
        0x1fff6044:    1e76        v.      SUBS     r6,r6,#1
        0x1fff6046:    b2f6        ..      UXTB     r6,r6
        0x1fff6048:    2800        .(      CMP      r0,#0
        0x1fff604a:    d1f4        ..      BNE      0x1fff6036 ; rc32k_calibration + 66
        0x1fff604c:    2e00        ..      CMP      r6,#0
        0x1fff604e:    d007        ..      BEQ      0x1fff6060 ; rc32k_calibration + 108
        0x1fff6050:    6a28        (j      LDR      r0,[r5,#0x20]
        0x1fff6052:    217e        ~!      MOVS     r1,#0x7e
        0x1fff6054:    0bc7        ..      LSRS     r7,r0,#15
        0x1fff6056:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff6058:    400f        .@      ANDS     r7,r7,r1
        0x1fff605a:    4388        .C      BICS     r0,r0,r1
        0x1fff605c:    4338        8C      ORRS     r0,r0,r7
        0x1fff605e:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff6060:    69a1        .i      LDR      r1,[r4,#0x18]
        0x1fff6062:    2080        .       MOVS     r0,#0x80
        0x1fff6064:    4381        .C      BICS     r1,r1,r0
        0x1fff6066:    61a1        .a      STR      r1,[r4,#0x18]
        0x1fff6068:    0638        8.      LSLS     r0,r7,#24
        0x1fff606a:    0e40        @.      LSRS     r0,r0,#25
        0x1fff606c:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff606e:    0000        ..      DCW    0
        0x1fff6070:    4000f0c0    ...@    DCD    1073803456
    $t
    i.rc32k_cap_cal
    rc32k_cap_cal
        0x1fff6074:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff60c0] = 0x200b
        0x1fff6076:    b510        ..      PUSH     {r4,lr}
        0x1fff6078:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff60c4] = 0x4000f000
        0x1fff607a:    227e        ~"      MOVS     r2,#0x7e
        0x1fff607c:    4298        .B      CMP      r0,r3
        0x1fff607e:    d90a        ..      BLS      0x1fff6096 ; rc32k_cap_cal + 34
        0x1fff6080:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff6082:    065b        [.      LSLS     r3,r3,#25
        0x1fff6084:    0e9b        ..      LSRS     r3,r3,#26
        0x1fff6086:    d006        ..      BEQ      0x1fff6096 ; rc32k_cap_cal + 34
        0x1fff6088:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff608a:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff608c:    0640        @.      LSLS     r0,r0,#25
        0x1fff608e:    0e80        ..      LSRS     r0,r0,#26
        0x1fff6090:    4393        .C      BICS     r3,r3,r2
        0x1fff6092:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6094:    e00c        ..      B        0x1fff60b0 ; rc32k_cap_cal + 60
        0x1fff6096:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff60c8] = 0x1cfd
        0x1fff6098:    4298        .B      CMP      r0,r3
        0x1fff609a:    d20f        ..      BCS      0x1fff60bc ; rc32k_cap_cal + 72
        0x1fff609c:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff609e:    4010        .@      ANDS     r0,r0,r2
        0x1fff60a0:    287e        ~(      CMP      r0,#0x7e
        0x1fff60a2:    d20b        ..      BCS      0x1fff60bc ; rc32k_cap_cal + 72
        0x1fff60a4:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff60a6:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff60a8:    0640        @.      LSLS     r0,r0,#25
        0x1fff60aa:    0e80        ..      LSRS     r0,r0,#26
        0x1fff60ac:    4393        .C      BICS     r3,r3,r2
        0x1fff60ae:    1c40        @.      ADDS     r0,r0,#1
        0x1fff60b0:    0040        @.      LSLS     r0,r0,#1
        0x1fff60b2:    4303        .C      ORRS     r3,r3,r0
        0x1fff60b4:    618b        .a      STR      r3,[r1,#0x18]
        0x1fff60b6:    2003        .       MOVS     r0,#3
        0x1fff60b8:    f7fbfd54    ..T.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff60bc:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff60be:    0000        ..      DCW    0
        0x1fff60c0:    0000200b    . ..    DCD    8203
        0x1fff60c4:    4000f000    ...@    DCD    1073803264
        0x1fff60c8:    00001cfd    ....    DCD    7421
    $t
    i.read_TIM5_remainder_timer
    read_TIM5_remainder_timer
        0x1fff60cc:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff60d4] = 0x40001040
        0x1fff60ce:    6940        @i      LDR      r0,[r0,#0x14]
        0x1fff60d0:    0880        ..      LSRS     r0,r0,#2
        0x1fff60d2:    4770        pG      BX       lr
    $d
        0x1fff60d4:    40001040    @..@    DCD    1073745984
    $t
    i.read_ble_remainder_time
    read_ble_remainder_time
        0x1fff60d8:    b510        ..      PUSH     {r4,lr}
        0x1fff60da:    f7fbfc6b    ..k.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff60de:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff60fc] = 0x40001000
        0x1fff60e0:    6840        @h      LDR      r0,[r0,#4]
        0x1fff60e2:    2806        .(      CMP      r0,#6
        0x1fff60e4:    d307        ..      BCC      0x1fff60f6 ; read_ble_remainder_time + 30
        0x1fff60e6:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff6100] = 0xe000e200
        0x1fff60e8:    6809        .h      LDR      r1,[r1,#0]
        0x1fff60ea:    2201        ."      MOVS     r2,#1
        0x1fff60ec:    0512        ..      LSLS     r2,r2,#20
        0x1fff60ee:    4211        .B      TST      r1,r2
        0x1fff60f0:    d101        ..      BNE      0x1fff60f6 ; read_ble_remainder_time + 30
        0x1fff60f2:    0880        ..      LSRS     r0,r0,#2
        0x1fff60f4:    bd10        ..      POP      {r4,pc}
        0x1fff60f6:    2000        .       MOVS     r0,#0
        0x1fff60f8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff60fa:    0000        ..      DCW    0
        0x1fff60fc:    40001000    ...@    DCD    1073745920
        0x1fff6100:    e000e200    ....    DCD    3758154240
    $t
    i.rf_calibrate1
    rf_calibrate1
        0x1fff6104:    b510        ..      PUSH     {r4,lr}
        0x1fff6106:    f000fa3f    ..?.    BL       rf_tpCal_gen_cap_arrary ; 0x1fff6588
        0x1fff610a:    f7ffff73    ..s.    BL       rc32k_calibration ; 0x1fff5ff4
        0x1fff610e:    bd10        ..      POP      {r4,pc}
    i.rf_phy_ana_cfg
    rf_phy_ana_cfg
        0x1fff6110:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff6112:    4839        9H      LDR      r0,[pc,#228] ; [0x1fff61f8] = 0x4000f040
        0x1fff6114:    6801        .h      LDR      r1,[r0,#0]
        0x1fff6116:    2201        ."      MOVS     r2,#1
        0x1fff6118:    0492        ..      LSLS     r2,r2,#18
        0x1fff611a:    4311        .C      ORRS     r1,r1,r2
        0x1fff611c:    6001        .`      STR      r1,[r0,#0]
        0x1fff611e:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff6120:    2203        ."      MOVS     r2,#3
        0x1fff6122:    0612        ..      LSLS     r2,r2,#24
        0x1fff6124:    4391        .C      BICS     r1,r1,r2
        0x1fff6126:    4a35        5J      LDR      r2,[pc,#212] ; [0x1fff61fc] = 0x1fff0a4c
        0x1fff6128:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff612a:    061b        ..      LSLS     r3,r3,#24
        0x1fff612c:    4319        .C      ORRS     r1,r1,r3
        0x1fff612e:    6041        A`      STR      r1,[r0,#4]
        0x1fff6130:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff6132:    2103        .!      MOVS     r1,#3
        0x1fff6134:    0589        ..      LSLS     r1,r1,#22
        0x1fff6136:    438b        .C      BICS     r3,r3,r1
        0x1fff6138:    4931        1I      LDR      r1,[pc,#196] ; [0x1fff6200] = 0x1fff0a4b
        0x1fff613a:    780c        .x      LDRB     r4,[r1,#0]
        0x1fff613c:    05a4        ..      LSLS     r4,r4,#22
        0x1fff613e:    4323        #C      ORRS     r3,r3,r4
        0x1fff6140:    6043        C`      STR      r3,[r0,#4]
        0x1fff6142:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff6144:    2460        `$      MOVS     r4,#0x60
        0x1fff6146:    4323        #C      ORRS     r3,r3,r4
        0x1fff6148:    6043        C`      STR      r3,[r0,#4]
        0x1fff614a:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff614c:    2b02        .+      CMP      r3,#2
        0x1fff614e:    d008        ..      BEQ      0x1fff6162 ; rf_phy_ana_cfg + 82
        0x1fff6150:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff6152:    2b01        .+      CMP      r3,#1
        0x1fff6154:    d005        ..      BEQ      0x1fff6162 ; rf_phy_ana_cfg + 82
        0x1fff6156:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff6158:    2b02        .+      CMP      r3,#2
        0x1fff615a:    d002        ..      BEQ      0x1fff6162 ; rf_phy_ana_cfg + 82
        0x1fff615c:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff615e:    2b01        .+      CMP      r3,#1
        0x1fff6160:    d104        ..      BNE      0x1fff616c ; rf_phy_ana_cfg + 92
        0x1fff6162:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff6164:    24ff        .$      MOVS     r4,#0xff
        0x1fff6166:    3401        .4      ADDS     r4,#1
        0x1fff6168:    4323        #C      ORRS     r3,r3,r4
        0x1fff616a:    6043        C`      STR      r3,[r0,#4]
        0x1fff616c:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff616e:    2a03        .*      CMP      r2,#3
        0x1fff6170:    d002        ..      BEQ      0x1fff6178 ; rf_phy_ana_cfg + 104
        0x1fff6172:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff6174:    2a03        .*      CMP      r2,#3
        0x1fff6176:    d103        ..      BNE      0x1fff6180 ; rf_phy_ana_cfg + 112
        0x1fff6178:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff617a:    2380        .#      MOVS     r3,#0x80
        0x1fff617c:    431a        .C      ORRS     r2,r2,r3
        0x1fff617e:    6042        B`      STR      r2,[r0,#4]
        0x1fff6180:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff6182:    2303        .#      MOVS     r3,#3
        0x1fff6184:    049b        ..      LSLS     r3,r3,#18
        0x1fff6186:    431a        .C      ORRS     r2,r2,r3
        0x1fff6188:    6042        B`      STR      r2,[r0,#4]
        0x1fff618a:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff618c:    2201        ."      MOVS     r2,#1
        0x1fff618e:    05d2        ..      LSLS     r2,r2,#23
        0x1fff6190:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff6204] = 0x40030080
        0x1fff6192:    2b00        .+      CMP      r3,#0
        0x1fff6194:    d103        ..      BNE      0x1fff619e ; rf_phy_ana_cfg + 142
        0x1fff6196:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff6208] = 0x1fff0a4a
        0x1fff6198:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff619a:    2b03        .+      CMP      r3,#3
        0x1fff619c:    d01b        ..      BEQ      0x1fff61d6 ; rf_phy_ana_cfg + 198
        0x1fff619e:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff61a0:    4393        .C      BICS     r3,r3,r2
        0x1fff61a2:    60c3        .`      STR      r3,[r0,#0xc]
        0x1fff61a4:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff6204] = 0x40030080
        0x1fff61a6:    4b19        .K      LDR      r3,[pc,#100] ; [0x1fff620c] = 0x20000bc0
        0x1fff61a8:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff61aa:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff61ac:    23ff        .#      MOVS     r3,#0xff
        0x1fff61ae:    3361        a3      ADDS     r3,r3,#0x61
        0x1fff61b0:    6113        .a      STR      r3,[r2,#0x10]
        0x1fff61b2:    4c17        .L      LDR      r4,[pc,#92] ; [0x1fff6210] = 0x76a3e7a
        0x1fff61b4:    6154        Ta      STR      r4,[r2,#0x14]
        0x1fff61b6:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff6214] = 0x4890000
        0x1fff61b8:    6193        .a      STR      r3,[r2,#0x18]
        0x1fff61ba:    25ff        .%      MOVS     r5,#0xff
        0x1fff61bc:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff6204] = 0x40030080
        0x1fff61be:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff61c0:    3380        .3      ADDS     r3,r3,#0x80
        0x1fff61c2:    605d        ]`      STR      r5,[r3,#4]
        0x1fff61c4:    609c        .`      STR      r4,[r3,#8]
        0x1fff61c6:    4c14        .L      LDR      r4,[pc,#80] ; [0x1fff6218] = 0x4898000
        0x1fff61c8:    60dc        .`      STR      r4,[r3,#0xc]
        0x1fff61ca:    4b14        .K      LDR      r3,[pc,#80] ; [0x1fff621c] = 0x24cc
        0x1fff61cc:    6003        .`      STR      r3,[r0,#0]
        0x1fff61ce:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff61d0:    2900        .)      CMP      r1,#0
        0x1fff61d2:    d003        ..      BEQ      0x1fff61dc ; rf_phy_ana_cfg + 204
        0x1fff61d4:    e006        ..      B        0x1fff61e4 ; rf_phy_ana_cfg + 212
        0x1fff61d6:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff61d8:    4313        .C      ORRS     r3,r3,r2
        0x1fff61da:    e7e2        ..      B        0x1fff61a2 ; rf_phy_ana_cfg + 146
        0x1fff61dc:    6801        .h      LDR      r1,[r0,#0]
        0x1fff61de:    2301        .#      MOVS     r3,#1
        0x1fff61e0:    4319        .C      ORRS     r1,r1,r3
        0x1fff61e2:    6001        .`      STR      r1,[r0,#0]
        0x1fff61e4:    490e        .I      LDR      r1,[pc,#56] ; [0x1fff6220] = 0x1fff0a48
        0x1fff61e6:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff61e8:    4b0e        .K      LDR      r3,[pc,#56] ; [0x1fff6224] = 0x825
        0x1fff61ea:    06c9        ..      LSLS     r1,r1,#27
        0x1fff61ec:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff61ee:    18c9        ..      ADDS     r1,r1,r3
        0x1fff61f0:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff61f2:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff6228] = 0x1a6fc2f
        0x1fff61f4:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff61f6:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff61f8:    4000f040    @..@    DCD    1073803328
        0x1fff61fc:    1fff0a4c    L...    DCD    536808012
        0x1fff6200:    1fff0a4b    K...    DCD    536808011
        0x1fff6204:    40030080    ...@    DCD    1073938560
        0x1fff6208:    1fff0a4a    J...    DCD    536808010
        0x1fff620c:    20000bc0    ...     DCD    536873920
        0x1fff6210:    076a3e7a    z>j.    DCD    124403322
        0x1fff6214:    04890000    ....    DCD    76087296
        0x1fff6218:    04898000    ....    DCD    76120064
        0x1fff621c:    000024cc    .$..    DCD    9420
        0x1fff6220:    1fff0a48    H...    DCD    536808008
        0x1fff6224:    00000825    %...    DCD    2085
        0x1fff6228:    01a6fc2f    /...    DCD    27720751
    $t
    i.rf_phy_bb_cfg
    rf_phy_bb_cfg
        0x1fff622c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff622e:    0005        ..      MOVS     r5,r0
        0x1fff6230:    4a4c        LJ      LDR      r2,[pc,#304] ; [0x1fff6364] = 0x44500
        0x1fff6232:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff6368] = 0x400300c0
        0x1fff6234:    4b4d        MK      LDR      r3,[pc,#308] ; [0x1fff636c] = 0x1c0000
        0x1fff6236:    4c4e        NL      LDR      r4,[pc,#312] ; [0x1fff6370] = 0x1fff0a4b
        0x1fff6238:    494e        NI      LDR      r1,[pc,#312] ; [0x1fff6374] = 0x40030080
        0x1fff623a:    d036        6.      BEQ      0x1fff62aa ; rf_phy_bb_cfg + 126
        0x1fff623c:    2d02        .-      CMP      r5,#2
        0x1fff623e:    d034        4.      BEQ      0x1fff62aa ; rf_phy_bb_cfg + 126
        0x1fff6240:    1586        ..      ASRS     r6,r0,#22
        0x1fff6242:    02b7        ..      LSLS     r7,r6,#10
        0x1fff6244:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff6246:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff6248:    439e        .C      BICS     r6,r6,r3
        0x1fff624a:    19f3        ..      ADDS     r3,r6,r7
        0x1fff624c:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff624e:    7820         x      LDRB     r0,[r4,#0]
        0x1fff6250:    2800        .(      CMP      r0,#0
        0x1fff6252:    d035        5.      BEQ      0x1fff62c0 ; rf_phy_bb_cfg + 148
        0x1fff6254:    2011        .       MOVS     r0,#0x11
        0x1fff6256:    0340        @.      LSLS     r0,r0,#13
        0x1fff6258:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff625a:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff6378] = 0x1000002
        0x1fff625c:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff625e:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff637c] = 0x1fff0a44
        0x1fff6260:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff6262:    2201        ."      MOVS     r2,#1
        0x1fff6264:    0312        ..      LSLS     r2,r2,#12
        0x1fff6266:    1880        ..      ADDS     r0,r0,r2
        0x1fff6268:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff626a:    4e42        BN      LDR      r6,[pc,#264] ; [0x1fff6374] = 0x40030080
        0x1fff626c:    4c41        AL      LDR      r4,[pc,#260] ; [0x1fff6374] = 0x40030080
        0x1fff626e:    4b44        DK      LDR      r3,[pc,#272] ; [0x1fff6380] = 0xb2800
        0x1fff6270:    3e80        .>      SUBS     r6,r6,#0x80
        0x1fff6272:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff6274:    2d00        .-      CMP      r5,#0
        0x1fff6276:    d028        (.      BEQ      0x1fff62ca ; rf_phy_bb_cfg + 158
        0x1fff6278:    2165        e!      MOVS     r1,#0x65
        0x1fff627a:    4a42        BJ      LDR      r2,[pc,#264] ; [0x1fff6384] = 0x37555555
        0x1fff627c:    02c9        ..      LSLS     r1,r1,#11
        0x1fff627e:    4842        BH      LDR      r0,[pc,#264] ; [0x1fff6388] = 0x8e89bed6
        0x1fff6280:    2d01        .-      CMP      r5,#1
        0x1fff6282:    d02f        /.      BEQ      0x1fff62e4 ; rf_phy_bb_cfg + 184
        0x1fff6284:    2d02        .-      CMP      r5,#2
        0x1fff6286:    d032        2.      BEQ      0x1fff62ee ; rf_phy_bb_cfg + 194
        0x1fff6288:    2d03        .-      CMP      r5,#3
        0x1fff628a:    d05b        [.      BEQ      0x1fff6344 ; rf_phy_bb_cfg + 280
        0x1fff628c:    2d04        .-      CMP      r5,#4
        0x1fff628e:    d059        Y.      BEQ      0x1fff6344 ; rf_phy_bb_cfg + 280
        0x1fff6290:    493e        >I      LDR      r1,[pc,#248] ; [0x1fff638c] = 0x42068000
        0x1fff6292:    1869        i.      ADDS     r1,r5,r1
        0x1fff6294:    6031        1`      STR      r1,[r6,#0]
        0x1fff6296:    493e        >I      LDR      r1,[pc,#248] ; [0x1fff6390] = 0x555555
        0x1fff6298:    60a1        .`      STR      r1,[r4,#8]
        0x1fff629a:    6023        #`      STR      r3,[r4,#0]
        0x1fff629c:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff629e:    2102        .!      MOVS     r1,#2
        0x1fff62a0:    4608        .F      MOV      r0,r1
        0x1fff62a2:    f7fbfc17    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff62a6:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff6394] = 0x22085580
        0x1fff62a8:    e02c        ,.      B        0x1fff6304 ; rf_phy_bb_cfg + 216
        0x1fff62aa:    2680        .&      MOVS     r6,#0x80
        0x1fff62ac:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff62ae:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff62b0:    439e        .C      BICS     r6,r6,r3
        0x1fff62b2:    2301        .#      MOVS     r3,#1
        0x1fff62b4:    04db        ..      LSLS     r3,r3,#19
        0x1fff62b6:    18f3        ..      ADDS     r3,r6,r3
        0x1fff62b8:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff62ba:    7820         x      LDRB     r0,[r4,#0]
        0x1fff62bc:    2800        .(      CMP      r0,#0
        0x1fff62be:    d001        ..      BEQ      0x1fff62c4 ; rf_phy_bb_cfg + 152
        0x1fff62c0:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff62c2:    e7ca        ..      B        0x1fff625a ; rf_phy_bb_cfg + 46
        0x1fff62c4:    2087        .       MOVS     r0,#0x87
        0x1fff62c6:    0300        ..      LSLS     r0,r0,#12
        0x1fff62c8:    e7c6        ..      B        0x1fff6258 ; rf_phy_bb_cfg + 44
        0x1fff62ca:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff6398] = 0x78068000
        0x1fff62cc:    6030        0`      STR      r0,[r6,#0]
        0x1fff62ce:    2000        .       MOVS     r0,#0
        0x1fff62d0:    60a0        .`      STR      r0,[r4,#8]
        0x1fff62d2:    6023        #`      STR      r3,[r4,#0]
        0x1fff62d4:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff639c] = 0x3675ee07
        0x1fff62d6:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff62d8:    2103        .!      MOVS     r1,#3
        0x1fff62da:    4608        .F      MOV      r0,r1
        0x1fff62dc:    f7fbfbfa    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff62e0:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff63a0] = 0x22086680
        0x1fff62e2:    e00f        ..      B        0x1fff6304 ; rf_phy_bb_cfg + 216
        0x1fff62e4:    4b2f        /K      LDR      r3,[pc,#188] ; [0x1fff63a4] = 0x3d068001
        0x1fff62e6:    6033        3`      STR      r3,[r6,#0]
        0x1fff62e8:    60a2        .`      STR      r2,[r4,#8]
        0x1fff62ea:    6021        !`      STR      r1,[r4,#0]
        0x1fff62ec:    e7d6        ..      B        0x1fff629c ; rf_phy_bb_cfg + 112
        0x1fff62ee:    4b2d        -K      LDR      r3,[pc,#180] ; [0x1fff63a4] = 0x3d068001
        0x1fff62f0:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff62f2:    6033        3`      STR      r3,[r6,#0]
        0x1fff62f4:    60a2        .`      STR      r2,[r4,#8]
        0x1fff62f6:    6021        !`      STR      r1,[r4,#0]
        0x1fff62f8:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff62fa:    2102        .!      MOVS     r1,#2
        0x1fff62fc:    4608        .F      MOV      r0,r1
        0x1fff62fe:    f7fbfbe9    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1ad4
        0x1fff6302:    4829        )H      LDR      r0,[pc,#164] ; [0x1fff63a8] = 0x22084580
        0x1fff6304:    6120         a      STR      r0,[r4,#0x10]
        0x1fff6306:    68f0        .h      LDR      r0,[r6,#0xc]
        0x1fff6308:    21ff        .!      MOVS     r1,#0xff
        0x1fff630a:    4308        .C      ORRS     r0,r0,r1
        0x1fff630c:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff630e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63ac] = 0x545c9ca4
        0x1fff6310:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff6312:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63b0] = 0x4243444c
        0x1fff6314:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff6316:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63b4] = 0x464c5241
        0x1fff6318:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff631a:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63b8] = 0x2e343a40
        0x1fff631c:    6220         b      STR      r0,[r4,#0x20]
        0x1fff631e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63bc] = 0x557f0028
        0x1fff6320:    6260        `b      STR      r0,[r4,#0x24]
        0x1fff6322:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63c0] = 0x3d43494f
        0x1fff6324:    62a0        .b      STR      r0,[r4,#0x28]
        0x1fff6326:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63c4] = 0x4c2b3137
        0x1fff6328:    62e0        .b      STR      r0,[r4,#0x2c]
        0x1fff632a:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63c8] = 0x343a4046
        0x1fff632c:    6320         c      STR      r0,[r4,#0x30]
        0x1fff632e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff63cc] = 0x1c22282e
        0x1fff6330:    6360        `c      STR      r0,[r4,#0x34]
        0x1fff6332:    20e0        .       MOVS     r0,#0xe0
        0x1fff6334:    2d01        .-      CMP      r5,#1
        0x1fff6336:    d00d        ..      BEQ      0x1fff6354 ; rf_phy_bb_cfg + 296
        0x1fff6338:    6821        !h      LDR      r1,[r4,#0]
        0x1fff633a:    2d02        .-      CMP      r5,#2
        0x1fff633c:    d00e        ..      BEQ      0x1fff635c ; rf_phy_bb_cfg + 304
        0x1fff633e:    4381        .C      BICS     r1,r1,r0
        0x1fff6340:    6021        !`      STR      r1,[r4,#0]
        0x1fff6342:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff6344:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff63d0] = 0x98068000
        0x1fff6346:    18eb        ..      ADDS     r3,r5,r3
        0x1fff6348:    6033        3`      STR      r3,[r6,#0]
        0x1fff634a:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff63d4] = 0x50985a54
        0x1fff634c:    6073        s`      STR      r3,[r6,#4]
        0x1fff634e:    6021        !`      STR      r1,[r4,#0]
        0x1fff6350:    60a2        .`      STR      r2,[r4,#8]
        0x1fff6352:    e7a3        ..      B        0x1fff629c ; rf_phy_bb_cfg + 112
        0x1fff6354:    6821        !h      LDR      r1,[r4,#0]
        0x1fff6356:    4381        .C      BICS     r1,r1,r0
        0x1fff6358:    3120         1      ADDS     r1,r1,#0x20
        0x1fff635a:    e7f1        ..      B        0x1fff6340 ; rf_phy_bb_cfg + 276
        0x1fff635c:    4381        .C      BICS     r1,r1,r0
        0x1fff635e:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff6360:    e7ee        ..      B        0x1fff6340 ; rf_phy_bb_cfg + 276
    $d
        0x1fff6362:    0000        ..      DCW    0
        0x1fff6364:    00044500    .E..    DCD    279808
        0x1fff6368:    400300c0    ...@    DCD    1073938624
        0x1fff636c:    001c0000    ....    DCD    1835008
        0x1fff6370:    1fff0a4b    K...    DCD    536808011
        0x1fff6374:    40030080    ...@    DCD    1073938560
        0x1fff6378:    01000002    ....    DCD    16777218
        0x1fff637c:    1fff0a44    D...    DCD    536808004
        0x1fff6380:    000b2800    .(..    DCD    731136
        0x1fff6384:    37555555    UUU7    DCD    928339285
        0x1fff6388:    8e89bed6    ....    DCD    2391391958
        0x1fff638c:    42068000    ...B    DCD    1107722240
        0x1fff6390:    00555555    UUU.    DCD    5592405
        0x1fff6394:    22085580    .U."    DCD    570971520
        0x1fff6398:    78068000    ...x    DCD    2013691904
        0x1fff639c:    3675ee07    ..u6    DCD    913698311
        0x1fff63a0:    22086680    .f."    DCD    570975872
        0x1fff63a4:    3d068001    ...=    DCD    1023836161
        0x1fff63a8:    22084580    .E."    DCD    570967424
        0x1fff63ac:    545c9ca4    ..\T    DCD    1415355556
        0x1fff63b0:    4243444c    LDCB    DCD    1111704652
        0x1fff63b4:    464c5241    ARLF    DCD    1179406913
        0x1fff63b8:    2e343a40    @:4.    DCD    775174720
        0x1fff63bc:    557f0028    (..U    DCD    1434386472
        0x1fff63c0:    3d43494f    OIC=    DCD    1027819855
        0x1fff63c4:    4c2b3137    71+L    DCD    1277899063
        0x1fff63c8:    343a4046    F@:4    DCD    876232774
        0x1fff63cc:    1c22282e    .(".    DCD    472000558
        0x1fff63d0:    98068000    ....    DCD    2550562816
        0x1fff63d4:    50985a54    TZ.P    DCD    1352161876
    $t
    i.rf_phy_change_cfg0
    rf_phy_change_cfg0
        0x1fff63d8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff63da:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff6464] = 0x400300c0
        0x1fff63dc:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff6464] = 0x400300c0
        0x1fff63de:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff6464] = 0x400300c0
        0x1fff63e0:    2680        .&      MOVS     r6,#0x80
        0x1fff63e2:    4a20         J      LDR      r2,[pc,#128] ; [0x1fff6464] = 0x400300c0
        0x1fff63e4:    2707        .'      MOVS     r7,#7
        0x1fff63e6:    04bf        ..      LSLS     r7,r7,#18
        0x1fff63e8:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff63ea:    3dc0        .=      SUBS     r5,r5,#0xc0
        0x1fff63ec:    24e0        .$      MOVS     r4,#0xe0
        0x1fff63ee:    3980        .9      SUBS     r1,r1,#0x80
        0x1fff63f0:    2802        .(      CMP      r0,#2
        0x1fff63f2:    6216        .b      STR      r6,[r2,#0x20]
        0x1fff63f4:    6996        .i      LDR      r6,[r2,#0x18]
        0x1fff63f6:    d014        ..      BEQ      0x1fff6422 ; rf_phy_change_cfg0 + 74
        0x1fff63f8:    43be        .C      BICS     r6,r6,r7
        0x1fff63fa:    2701        .'      MOVS     r7,#1
        0x1fff63fc:    04bf        ..      LSLS     r7,r7,#18
        0x1fff63fe:    19f6        ..      ADDS     r6,r6,r7
        0x1fff6400:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff6402:    4a19        .J      LDR      r2,[pc,#100] ; [0x1fff6468] = 0x1fff0a4b
        0x1fff6404:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff6406:    2a00        .*      CMP      r2,#0
        0x1fff6408:    d01e        ..      BEQ      0x1fff6448 ; rf_phy_change_cfg0 + 112
        0x1fff640a:    107a        z.      ASRS     r2,r7,#1
        0x1fff640c:    611a        .a      STR      r2,[r3,#0x10]
        0x1fff640e:    2801        .(      CMP      r0,#1
        0x1fff6410:    d01e        ..      BEQ      0x1fff6450 ; rf_phy_change_cfg0 + 120
        0x1fff6412:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff646c] = 0x98068000
        0x1fff6414:    1880        ..      ADDS     r0,r0,r2
        0x1fff6416:    6028        (`      STR      r0,[r5,#0]
        0x1fff6418:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff6470] = 0x22085580
        0x1fff641a:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff641c:    6808        .h      LDR      r0,[r1,#0]
        0x1fff641e:    43a0        .C      BICS     r0,r0,r4
        0x1fff6420:    e014        ..      B        0x1fff644c ; rf_phy_change_cfg0 + 116
        0x1fff6422:    2001        .       MOVS     r0,#1
        0x1fff6424:    43be        .C      BICS     r6,r6,r7
        0x1fff6426:    04c0        ..      LSLS     r0,r0,#19
        0x1fff6428:    1836        6.      ADDS     r6,r6,r0
        0x1fff642a:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff642c:    4a0e        .J      LDR      r2,[pc,#56] ; [0x1fff6468] = 0x1fff0a4b
        0x1fff642e:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff6430:    2a00        .*      CMP      r2,#0
        0x1fff6432:    d000        ..      BEQ      0x1fff6436 ; rf_phy_change_cfg0 + 94
        0x1fff6434:    1040        @.      ASRS     r0,r0,#1
        0x1fff6436:    6118        .a      STR      r0,[r3,#0x10]
        0x1fff6438:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff6474] = 0x3d068002
        0x1fff643a:    6028        (`      STR      r0,[r5,#0]
        0x1fff643c:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff6478] = 0x22084580
        0x1fff643e:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff6440:    6808        .h      LDR      r0,[r1,#0]
        0x1fff6442:    43a0        .C      BICS     r0,r0,r4
        0x1fff6444:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff6446:    e001        ..      B        0x1fff644c ; rf_phy_change_cfg0 + 116
        0x1fff6448:    611f        .a      STR      r7,[r3,#0x10]
        0x1fff644a:    e7e0        ..      B        0x1fff640e ; rf_phy_change_cfg0 + 54
        0x1fff644c:    6008        .`      STR      r0,[r1,#0]
        0x1fff644e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff6450:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff6474] = 0x3d068002
        0x1fff6452:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6454:    6028        (`      STR      r0,[r5,#0]
        0x1fff6456:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff647c] = 0x22086680
        0x1fff6458:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff645a:    6808        .h      LDR      r0,[r1,#0]
        0x1fff645c:    43a0        .C      BICS     r0,r0,r4
        0x1fff645e:    3020         0      ADDS     r0,r0,#0x20
        0x1fff6460:    e7f4        ..      B        0x1fff644c ; rf_phy_change_cfg0 + 116
    $d
        0x1fff6462:    0000        ..      DCW    0
        0x1fff6464:    400300c0    ...@    DCD    1073938624
        0x1fff6468:    1fff0a4b    K...    DCD    536808011
        0x1fff646c:    98068000    ....    DCD    2550562816
        0x1fff6470:    22085580    .U."    DCD    570971520
        0x1fff6474:    3d068002    ...=    DCD    1023836162
        0x1fff6478:    22084580    .E."    DCD    570967424
        0x1fff647c:    22086680    .f."    DCD    570975872
    $t
    i.rf_phy_get_pktFoot
    rf_phy_get_pktFoot
        0x1fff6480:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff6482:    4b0a        .K      LDR      r3,[pc,#40] ; [0x1fff64ac] = 0x400300c0
        0x1fff6484:    6a5c        \j      LDR      r4,[r3,#0x24]
        0x1fff6486:    6a9d        .j      LDR      r5,[r3,#0x28]
        0x1fff6488:    05a3        ..      LSLS     r3,r4,#22
        0x1fff648a:    2601        .&      MOVS     r6,#1
        0x1fff648c:    0d9b        ..      LSRS     r3,r3,#22
        0x1fff648e:    0276        v.      LSLS     r6,r6,#9
        0x1fff6490:    42b3        .B      CMP      r3,r6
        0x1fff6492:    d901        ..      BLS      0x1fff6498 ; rf_phy_get_pktFoot + 24
        0x1fff6494:    1b9b        ..      SUBS     r3,r3,r6
        0x1fff6496:    e002        ..      B        0x1fff649e ; rf_phy_get_pktFoot + 30
        0x1fff6498:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff649a:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff649c:    3302        .3      ADDS     r3,#2
        0x1fff649e:    800b        ..      STRH     r3,[r1,#0]
        0x1fff64a0:    0e29        ).      LSRS     r1,r5,#24
        0x1fff64a2:    7001        .p      STRB     r1,[r0,#0]
        0x1fff64a4:    0e20         .      LSRS     r0,r4,#24
        0x1fff64a6:    7010        .p      STRB     r0,[r2,#0]
        0x1fff64a8:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff64aa:    0000        ..      DCW    0
        0x1fff64ac:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_phy_get_pktFoot_fromPkt
    rf_phy_get_pktFoot_fromPkt
        0x1fff64b0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff64b2:    0584        ..      LSLS     r4,r0,#22
        0x1fff64b4:    2601        .&      MOVS     r6,#1
        0x1fff64b6:    0da4        ..      LSRS     r4,r4,#22
        0x1fff64b8:    0276        v.      LSLS     r6,r6,#9
        0x1fff64ba:    9d04        ..      LDR      r5,[sp,#0x10]
        0x1fff64bc:    42b4        .B      CMP      r4,r6
        0x1fff64be:    d901        ..      BLS      0x1fff64c4 ; rf_phy_get_pktFoot_fromPkt + 20
        0x1fff64c0:    1ba4        ..      SUBS     r4,r4,r6
        0x1fff64c2:    e002        ..      B        0x1fff64ca ; rf_phy_get_pktFoot_fromPkt + 26
        0x1fff64c4:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff64c6:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff64c8:    3402        .4      ADDS     r4,#2
        0x1fff64ca:    0e09        ..      LSRS     r1,r1,#24
        0x1fff64cc:    801c        ..      STRH     r4,[r3,#0]
        0x1fff64ce:    7011        .p      STRB     r1,[r2,#0]
        0x1fff64d0:    0e00        ..      LSRS     r0,r0,#24
        0x1fff64d2:    7028        (p      STRB     r0,[r5,#0]
        0x1fff64d4:    bd70        p.      POP      {r4-r6,pc}
        0x1fff64d6:    0000        ..      MOVS     r0,r0
    i.rf_phy_ini
    rf_phy_ini
        0x1fff64d8:    b510        ..      PUSH     {r4,lr}
        0x1fff64da:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff6504] = 0x1fff0a4b
        0x1fff64dc:    2000        .       MOVS     r0,#0
        0x1fff64de:    7008        .p      STRB     r0,[r1,#0]
        0x1fff64e0:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff6508] = 0x1fff0a4c
        0x1fff64e2:    2002        .       MOVS     r0,#2
        0x1fff64e4:    7008        .p      STRB     r0,[r1,#0]
        0x1fff64e6:    f7fffe13    ....    BL       rf_phy_ana_cfg ; 0x1fff6110
        0x1fff64ea:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff650c] = 0x1fff0a48
        0x1fff64ec:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff64ee:    f000f811    ....    BL       rf_phy_set_txPower ; 0x1fff6514
        0x1fff64f2:    4c07        .L      LDR      r4,[pc,#28] ; [0x1fff6510] = 0x1fff0a49
        0x1fff64f4:    7820         x      LDRB     r0,[r4,#0]
        0x1fff64f6:    f7fffe99    ....    BL       rf_phy_bb_cfg ; 0x1fff622c
        0x1fff64fa:    7820         x      LDRB     r0,[r4,#0]
        0x1fff64fc:    f7fbfc52    ..R.    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff1da4
        0x1fff6500:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff6502:    0000        ..      DCW    0
        0x1fff6504:    1fff0a4b    K...    DCD    536808011
        0x1fff6508:    1fff0a4c    L...    DCD    536808012
        0x1fff650c:    1fff0a48    H...    DCD    536808008
        0x1fff6510:    1fff0a49    I...    DCD    536808009
    $t
    i.rf_phy_set_txPower
    rf_phy_set_txPower
        0x1fff6514:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff6516:    4a1a        .J      LDR      r2,[pc,#104] ; [0x1fff6580] = 0x4000f000
        0x1fff6518:    2303        .#      MOVS     r3,#3
        0x1fff651a:    2507        .%      MOVS     r5,#7
        0x1fff651c:    00d6        ..      LSLS     r6,r2,#3
        0x1fff651e:    4919        .I      LDR      r1,[pc,#100] ; [0x1fff6584] = 0x400300c0
        0x1fff6520:    029b        ..      LSLS     r3,r3,#10
        0x1fff6522:    2460        `$      MOVS     r4,#0x60
        0x1fff6524:    01ed        ..      LSLS     r5,r5,#7
        0x1fff6526:    6957        Wi      LDR      r7,[r2,#0x14]
        0x1fff6528:    283f        ?(      CMP      r0,#0x3f
        0x1fff652a:    d01a        ..      BEQ      0x1fff6562 ; rf_phy_set_txPower + 78
        0x1fff652c:    43b7        .C      BICS     r7,r7,r6
        0x1fff652e:    2605        .&      MOVS     r6,#5
        0x1fff6530:    0436        6.      LSLS     r6,r6,#16
        0x1fff6532:    19be        ..      ADDS     r6,r7,r6
        0x1fff6534:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff6536:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff6538:    439a        .C      BICS     r2,r2,r3
        0x1fff653a:    14cb        ..      ASRS     r3,r1,#19
        0x1fff653c:    18d2        ..      ADDS     r2,r2,r3
        0x1fff653e:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff6540:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6542:    43a2        .C      BICS     r2,r2,r4
        0x1fff6544:    3220         2      ADDS     r2,r2,#0x20
        0x1fff6546:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6548:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff654a:    43aa        .C      BICS     r2,r2,r5
        0x1fff654c:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff654e:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff6584] = 0x400300c0
        0x1fff6550:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff6552:    6b8a        .k      LDR      r2,[r1,#0x38]
        0x1fff6554:    06c0        ..      LSLS     r0,r0,#27
        0x1fff6556:    0512        ..      LSLS     r2,r2,#20
        0x1fff6558:    0d12        ..      LSRS     r2,r2,#20
        0x1fff655a:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff655c:    4302        .C      ORRS     r2,r2,r0
        0x1fff655e:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff6560:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff6562:    43b7        .C      BICS     r7,r7,r6
        0x1fff6564:    2601        .&      MOVS     r6,#1
        0x1fff6566:    04b6        ..      LSLS     r6,r6,#18
        0x1fff6568:    19be        ..      ADDS     r6,r7,r6
        0x1fff656a:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff656c:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff656e:    439a        .C      BICS     r2,r2,r3
        0x1fff6570:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff6572:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6574:    43a2        .C      BICS     r2,r2,r4
        0x1fff6576:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6578:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff657a:    43aa        .C      BICS     r2,r2,r5
        0x1fff657c:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff657e:    e7e5        ..      B        0x1fff654c ; rf_phy_set_txPower + 56
    $d
        0x1fff6580:    4000f000    ...@    DCD    1073803264
        0x1fff6584:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_tpCal_gen_cap_arrary
    rf_tpCal_gen_cap_arrary
        0x1fff6588:    b500        ..      PUSH     {lr}
        0x1fff658a:    2100        .!      MOVS     r1,#0
        0x1fff658c:    2002        .       MOVS     r0,#2
        0x1fff658e:    f000f821    ..!.    BL       rf_tp_cal ; 0x1fff65d4
        0x1fff6592:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff65c4] = 0x1fff0a44
        0x1fff6594:    1c80        ..      ADDS     r0,r0,#2
        0x1fff6596:    7008        .p      STRB     r0,[r1,#0]
        0x1fff6598:    2100        .!      MOVS     r1,#0
        0x1fff659a:    2042        B       MOVS     r0,#0x42
        0x1fff659c:    f000f81a    ....    BL       rf_tp_cal ; 0x1fff65d4
        0x1fff65a0:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff65c8] = 0x1fff0a45
        0x1fff65a2:    1c80        ..      ADDS     r0,r0,#2
        0x1fff65a4:    7008        .p      STRB     r0,[r1,#0]
        0x1fff65a6:    2101        .!      MOVS     r1,#1
        0x1fff65a8:    2002        .       MOVS     r0,#2
        0x1fff65aa:    f000f813    ....    BL       rf_tp_cal ; 0x1fff65d4
        0x1fff65ae:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff65cc] = 0x1fff0a46
        0x1fff65b0:    1c80        ..      ADDS     r0,r0,#2
        0x1fff65b2:    7008        .p      STRB     r0,[r1,#0]
        0x1fff65b4:    2101        .!      MOVS     r1,#1
        0x1fff65b6:    2042        B       MOVS     r0,#0x42
        0x1fff65b8:    f000f80c    ....    BL       rf_tp_cal ; 0x1fff65d4
        0x1fff65bc:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff65d0] = 0x1fff0a47
        0x1fff65be:    1c80        ..      ADDS     r0,r0,#2
        0x1fff65c0:    7008        .p      STRB     r0,[r1,#0]
        0x1fff65c2:    bd00        ..      POP      {pc}
    $d
        0x1fff65c4:    1fff0a44    D...    DCD    536808004
        0x1fff65c8:    1fff0a45    E...    DCD    536808005
        0x1fff65cc:    1fff0a46    F...    DCD    536808006
        0x1fff65d0:    1fff0a47    G...    DCD    536808007
    $t
    i.rf_tp_cal
    rf_tp_cal
        0x1fff65d4:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff65d6:    4c3b        ;L      LDR      r4,[pc,#236] ; [0x1fff66c4] = 0x40030040
        0x1fff65d8:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff66c0] = 0x30010
        0x1fff65da:    6022        "`      STR      r2,[r4,#0]
        0x1fff65dc:    4d39        9M      LDR      r5,[pc,#228] ; [0x1fff66c4] = 0x40030040
        0x1fff65de:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff66c4] = 0x40030040
        0x1fff65e0:    2307        .#      MOVS     r3,#7
        0x1fff65e2:    049b        ..      LSLS     r3,r3,#18
        0x1fff65e4:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff65e6:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff65e8:    2901        .)      CMP      r1,#1
        0x1fff65ea:    69a9        .i      LDR      r1,[r5,#0x18]
        0x1fff65ec:    d00e        ..      BEQ      0x1fff660c ; rf_tp_cal + 56
        0x1fff65ee:    4399        .C      BICS     r1,r1,r3
        0x1fff65f0:    2301        .#      MOVS     r3,#1
        0x1fff65f2:    049b        ..      LSLS     r3,r3,#18
        0x1fff65f4:    18c9        ..      ADDS     r1,r1,r3
        0x1fff65f6:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff65f8:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff66c8] = 0x73407f
        0x1fff65fa:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff65fc:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff66cc] = 0x1fff0a4b
        0x1fff65fe:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff6600:    2101        .!      MOVS     r1,#1
        0x1fff6602:    05c9        ..      LSLS     r1,r1,#23
        0x1fff6604:    4e32        2N      LDR      r6,[pc,#200] ; [0x1fff66d0] = 0x1fff0a4a
        0x1fff6606:    2b00        .+      CMP      r3,#0
        0x1fff6608:    d007        ..      BEQ      0x1fff661a ; rf_tp_cal + 70
        0x1fff660a:    e009        ..      B        0x1fff6620 ; rf_tp_cal + 76
        0x1fff660c:    4399        .C      BICS     r1,r1,r3
        0x1fff660e:    2301        .#      MOVS     r3,#1
        0x1fff6610:    04db        ..      LSLS     r3,r3,#19
        0x1fff6612:    18c9        ..      ADDS     r1,r1,r3
        0x1fff6614:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff6616:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff66d4] = 0x53407f
        0x1fff6618:    e7ef        ..      B        0x1fff65fa ; rf_tp_cal + 38
        0x1fff661a:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff661c:    2b03        .+      CMP      r3,#3
        0x1fff661e:    d014        ..      BEQ      0x1fff664a ; rf_tp_cal + 118
        0x1fff6620:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff6622:    438b        .C      BICS     r3,r3,r1
        0x1fff6624:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff6626:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff6628:    200e        .       MOVS     r0,#0xe
        0x1fff662a:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff662c:    2700        .'      MOVS     r7,#0
        0x1fff662e:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff6630:    20ff        .       MOVS     r0,#0xff
        0x1fff6632:    3015        .0      ADDS     r0,r0,#0x15
        0x1fff6634:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff6636:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff66d8] = 0x2710
        0x1fff6638:    9000        ..      STR      r0,[sp,#0]
        0x1fff663a:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff663c:    0003        ..      MOVS     r3,r0
        0x1fff663e:    f7fbfbb7    ....    BL       $Ven$TT$L$$__ARM_common_switch8 ; 0x1fff1db0
    $d
        0x1fff6642:    0705        ..      DCW    1797
        0x1fff6644:    0b090d07    ....    DCD    185142535
        0x1fff6648:    000d        ..      DCW    13
    $t
        0x1fff664a:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff664c:    430b        .C      ORRS     r3,r3,r1
        0x1fff664e:    e7e9        ..      B        0x1fff6624 ; rf_tp_cal + 80
        0x1fff6650:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff66dc] = 0x4e20
        0x1fff6652:    e002        ..      B        0x1fff665a ; rf_tp_cal + 134
        0x1fff6654:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff66e0] = 0x7530
        0x1fff6656:    e000        ..      B        0x1fff665a ; rf_tp_cal + 134
        0x1fff6658:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff66e4] = 0x9c40
        0x1fff665a:    9000        ..      STR      r0,[sp,#0]
        0x1fff665c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff665e:    1e43        C.      SUBS     r3,r0,#1
        0x1fff6660:    9300        ..      STR      r3,[sp,#0]
        0x1fff6662:    d2fb        ..      BCS      0x1fff665c ; rf_tp_cal + 136
        0x1fff6664:    6b68        hk      LDR      r0,[r5,#0x34]
        0x1fff6666:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff6668:    0200        ..      LSLS     r0,r0,#8
        0x1fff666a:    0e00        ..      LSRS     r0,r0,#24
        0x1fff666c:    6217        .b      STR      r7,[r2,#0x20]
        0x1fff666e:    4b1e        .K      LDR      r3,[pc,#120] ; [0x1fff66e8] = 0x104040
        0x1fff6670:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff6672:    23ff        .#      MOVS     r3,#0xff
        0x1fff6674:    3341        A3      ADDS     r3,r3,#0x41
        0x1fff6676:    6253        Sb      STR      r3,[r2,#0x24]
        0x1fff6678:    2365        e#      MOVS     r3,#0x65
        0x1fff667a:    02db        ..      LSLS     r3,r3,#11
        0x1fff667c:    6023        #`      STR      r3,[r4,#0]
        0x1fff667e:    4d1b        .M      LDR      r5,[pc,#108] ; [0x1fff66ec] = 0x1fff0a49
        0x1fff6680:    782f        /x      LDRB     r7,[r5,#0]
        0x1fff6682:    23e0        .#      MOVS     r3,#0xe0
        0x1fff6684:    2f01        ./      CMP      r7,#1
        0x1fff6686:    d00a        ..      BEQ      0x1fff669e ; rf_tp_cal + 202
        0x1fff6688:    782d        -x      LDRB     r5,[r5,#0]
        0x1fff668a:    2d02        .-      CMP      r5,#2
        0x1fff668c:    6825        %h      LDR      r5,[r4,#0]
        0x1fff668e:    d00a        ..      BEQ      0x1fff66a6 ; rf_tp_cal + 210
        0x1fff6690:    439d        .C      BICS     r5,r5,r3
        0x1fff6692:    6025        %`      STR      r5,[r4,#0]
        0x1fff6694:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff66cc] = 0x1fff0a4b
        0x1fff6696:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff6698:    2b00        .+      CMP      r3,#0
        0x1fff669a:    d007        ..      BEQ      0x1fff66ac ; rf_tp_cal + 216
        0x1fff669c:    e009        ..      B        0x1fff66b2 ; rf_tp_cal + 222
        0x1fff669e:    6825        %h      LDR      r5,[r4,#0]
        0x1fff66a0:    439d        .C      BICS     r5,r5,r3
        0x1fff66a2:    3520         5      ADDS     r5,r5,#0x20
        0x1fff66a4:    e7f5        ..      B        0x1fff6692 ; rf_tp_cal + 190
        0x1fff66a6:    439d        .C      BICS     r5,r5,r3
        0x1fff66a8:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff66aa:    e7f2        ..      B        0x1fff6692 ; rf_tp_cal + 190
        0x1fff66ac:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff66ae:    2b03        .+      CMP      r3,#3
        0x1fff66b0:    d003        ..      BEQ      0x1fff66ba ; rf_tp_cal + 230
        0x1fff66b2:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff66b4:    438b        .C      BICS     r3,r3,r1
        0x1fff66b6:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff66b8:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff66ba:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff66bc:    430b        .C      ORRS     r3,r3,r1
        0x1fff66be:    e7fa        ..      B        0x1fff66b6 ; rf_tp_cal + 226
    $d
        0x1fff66c0:    00030010    ....    DCD    196624
        0x1fff66c4:    40030040    @..@    DCD    1073938496
        0x1fff66c8:    0073407f    .@s.    DCD    7553151
        0x1fff66cc:    1fff0a4b    K...    DCD    536808011
        0x1fff66d0:    1fff0a4a    J...    DCD    536808010
        0x1fff66d4:    0053407f    .@S.    DCD    5455999
        0x1fff66d8:    00002710    .'..    DCD    10000
        0x1fff66dc:    00004e20     N..    DCD    20000
        0x1fff66e0:    00007530    0u..    DCD    30000
        0x1fff66e4:    00009c40    @...    DCD    40000
        0x1fff66e8:    00104040    @@..    DCD    1065024
        0x1fff66ec:    1fff0a49    I...    DCD    536808009
    $t
    i.rf_txack_check
    rf_txack_check
        0x1fff66f0:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff66f2:    0701        ..      LSLS     r1,r0,#28
        0x1fff66f4:    d507        ..      BPL      0x1fff6706 ; rf_txack_check + 22
        0x1fff66f6:    0741        A.      LSLS     r1,r0,#29
        0x1fff66f8:    d405        ..      BMI      0x1fff6706 ; rf_txack_check + 22
        0x1fff66fa:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff6710] = 0x1fff7064
        0x1fff66fc:    0780        ..      LSLS     r0,r0,#30
        0x1fff66fe:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff6700:    0f80        ..      LSRS     r0,r0,#30
        0x1fff6702:    4288        .B      CMP      r0,r1
        0x1fff6704:    d001        ..      BEQ      0x1fff670a ; rf_txack_check + 26
        0x1fff6706:    200a        .       MOVS     r0,#0xa
        0x1fff6708:    4770        pG      BX       lr
        0x1fff670a:    2000        .       MOVS     r0,#0
        0x1fff670c:    4770        pG      BX       lr
    $d
        0x1fff670e:    0000        ..      DCW    0
        0x1fff6710:    1fff7064    dp..    DCD    536834148
    $t
    i.show_phy_debug_info
    show_phy_debug_info
        0x1fff6714:    b510        ..      PUSH     {r4,lr}
        0x1fff6716:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff6740] = 0x1fff7bac
        0x1fff6718:    b088        ..      SUB      sp,sp,#0x20
        0x1fff671a:    c81e        ..      LDM      r0!,{r1-r4}
        0x1fff671c:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff671e:    3008        .0      ADDS     r0,r0,#8
        0x1fff6720:    9305        ..      STR      r3,[sp,#0x14]
        0x1fff6722:    9206        ..      STR      r2,[sp,#0x18]
        0x1fff6724:    9103        ..      STR      r1,[sp,#0xc]
        0x1fff6726:    c80e        ..      LDM      r0!,{r1-r3}
        0x1fff6728:    466c        lF      MOV      r4,sp
        0x1fff672a:    c40e        ..      STM      r4!,{r1-r3}
        0x1fff672c:    3814        .8      SUBS     r0,r0,#0x14
        0x1fff672e:    c80c        ..      LDM      r0!,{r2,r3}
        0x1fff6730:    3844        D8      SUBS     r0,r0,#0x44
        0x1fff6732:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff6734:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff6744] = 0x1fff6f18
        0x1fff6736:    f7fcff4d    ..M.    BL       dbg_printf ; 0x1fff35d4
        0x1fff673a:    b008        ..      ADD      sp,sp,#0x20
        0x1fff673c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff673e:    0000        ..      DCW    0
        0x1fff6740:    1fff7bac    .{..    DCD    536837036
        0x1fff6744:    1fff6f18    .o..    DCD    536833816
    $t
    i.skip_atoi
    skip_atoi
        0x1fff6748:    4601        .F      MOV      r1,r0
        0x1fff674a:    2000        .       MOVS     r0,#0
        0x1fff674c:    e006        ..      B        0x1fff675c ; skip_atoi + 20
        0x1fff674e:    1c53        S.      ADDS     r3,r2,#1
        0x1fff6750:    600b        .`      STR      r3,[r1,#0]
        0x1fff6752:    230a        .#      MOVS     r3,#0xa
        0x1fff6754:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff6756:    4358        XC      MULS     r0,r3,r0
        0x1fff6758:    3830        08      SUBS     r0,r0,#0x30
        0x1fff675a:    1810        ..      ADDS     r0,r2,r0
        0x1fff675c:    680a        .h      LDR      r2,[r1,#0]
        0x1fff675e:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff6760:    3b30        0;      SUBS     r3,r3,#0x30
        0x1fff6762:    2b09        .+      CMP      r3,#9
        0x1fff6764:    d9f3        ..      BLS      0x1fff674e ; skip_atoi + 6
        0x1fff6766:    4770        pG      BX       lr
    i.txmit_buf_polling
    txmit_buf_polling
        0x1fff6768:    b578        x.      PUSH     {r3-r6,lr}
        0x1fff676a:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff67c8] = 0x40004000
        0x1fff676c:    2801        .(      CMP      r0,#1
        0x1fff676e:    d100        ..      BNE      0x1fff6772 ; txmit_buf_polling + 10
        0x1fff6770:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff67cc] = 0x40009000
        0x1fff6772:    2400        .$      MOVS     r4,#0
        0x1fff6774:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff67d0] = 0x186a0
        0x1fff6776:    9400        ..      STR      r4,[sp,#0]
        0x1fff6778:    e004        ..      B        0x1fff6784 ; txmit_buf_polling + 28
        0x1fff677a:    9d00        ..      LDR      r5,[sp,#0]
        0x1fff677c:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff677e:    9600        ..      STR      r6,[sp,#0]
        0x1fff6780:    4285        .B      CMP      r5,r0
        0x1fff6782:    dc1a        ..      BGT      0x1fff67ba ; txmit_buf_polling + 82
        0x1fff6784:    6fdd        .o      LDR      r5,[r3,#0x7c]
        0x1fff6786:    07ed        ..      LSLS     r5,r5,#31
        0x1fff6788:    d1f7        ..      BNE      0x1fff677a ; txmit_buf_polling + 18
        0x1fff678a:    e00a        ..      B        0x1fff67a2 ; txmit_buf_polling + 58
        0x1fff678c:    9d00        ..      LDR      r5,[sp,#0]
        0x1fff678e:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff6790:    9600        ..      STR      r6,[sp,#0]
        0x1fff6792:    4285        .B      CMP      r5,r0
        0x1fff6794:    dc11        ..      BGT      0x1fff67ba ; txmit_buf_polling + 82
        0x1fff6796:    7d1d        .}      LDRB     r5,[r3,#0x14]
        0x1fff6798:    06ad        ..      LSLS     r5,r5,#26
        0x1fff679a:    d5f7        ..      BPL      0x1fff678c ; txmit_buf_polling + 36
        0x1fff679c:    780d        .x      LDRB     r5,[r1,#0]
        0x1fff679e:    701d        .p      STRB     r5,[r3,#0]
        0x1fff67a0:    1c49        I.      ADDS     r1,r1,#1
        0x1fff67a2:    4615        .F      MOV      r5,r2
        0x1fff67a4:    1e52        R.      SUBS     r2,r2,#1
        0x1fff67a6:    b292        ..      UXTH     r2,r2
        0x1fff67a8:    2d00        .-      CMP      r5,#0
        0x1fff67aa:    9400        ..      STR      r4,[sp,#0]
        0x1fff67ac:    d1f3        ..      BNE      0x1fff6796 ; txmit_buf_polling + 46
        0x1fff67ae:    e006        ..      B        0x1fff67be ; txmit_buf_polling + 86
        0x1fff67b0:    9900        ..      LDR      r1,[sp,#0]
        0x1fff67b2:    1c4a        J.      ADDS     r2,r1,#1
        0x1fff67b4:    9200        ..      STR      r2,[sp,#0]
        0x1fff67b6:    4281        .B      CMP      r1,r0
        0x1fff67b8:    dd01        ..      BLE      0x1fff67be ; txmit_buf_polling + 86
        0x1fff67ba:    200d        .       MOVS     r0,#0xd
        0x1fff67bc:    bd78        x.      POP      {r3-r6,pc}
        0x1fff67be:    7d19        .}      LDRB     r1,[r3,#0x14]
        0x1fff67c0:    0649        I.      LSLS     r1,r1,#25
        0x1fff67c2:    d5f5        ..      BPL      0x1fff67b0 ; txmit_buf_polling + 72
        0x1fff67c4:    2000        .       MOVS     r0,#0
        0x1fff67c6:    bd78        x.      POP      {r3-r6,pc}
    $d
        0x1fff67c8:    40004000    .@.@    DCD    1073758208
        0x1fff67cc:    40009000    ...@    DCD    1073778688
        0x1fff67d0:    000186a0    ....    DCD    100000
    $t
    i.txmit_buf_use_tx_buf
    txmit_buf_use_tx_buf
        0x1fff67d4:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff67d6:    4607        .F      MOV      r7,r0
        0x1fff67d8:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff6884] = 0x1fff7bd0
        0x1fff67da:    0140        @.      LSLS     r0,r0,#5
        0x1fff67dc:    1844        D.      ADDS     r4,r0,r1
        0x1fff67de:    4e2a        *N      LDR      r6,[pc,#168] ; [0x1fff6888] = 0x40004000
        0x1fff67e0:    1d24        $.      ADDS     r4,r4,#4
        0x1fff67e2:    4615        .F      MOV      r5,r2
        0x1fff67e4:    2a00        .*      CMP      r2,#0
        0x1fff67e6:    d010        ..      BEQ      0x1fff680a ; txmit_buf_use_tx_buf + 54
        0x1fff67e8:    9801        ..      LDR      r0,[sp,#4]
        0x1fff67ea:    2800        .(      CMP      r0,#0
        0x1fff67ec:    d00d        ..      BEQ      0x1fff680a ; txmit_buf_use_tx_buf + 54
        0x1fff67ee:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff67f0:    2900        .)      CMP      r1,#0
        0x1fff67f2:    d008        ..      BEQ      0x1fff6806 ; txmit_buf_use_tx_buf + 50
        0x1fff67f4:    88e0        ..      LDRH     r0,[r4,#6]
        0x1fff67f6:    42a8        .B      CMP      r0,r5
        0x1fff67f8:    d305        ..      BCC      0x1fff6806 ; txmit_buf_use_tx_buf + 50
        0x1fff67fa:    2901        .)      CMP      r1,#1
        0x1fff67fc:    d016        ..      BEQ      0x1fff682c ; txmit_buf_use_tx_buf + 88
        0x1fff67fe:    88a1        ..      LDRH     r1,[r4,#4]
        0x1fff6800:    1949        I.      ADDS     r1,r1,r5
        0x1fff6802:    4281        .B      CMP      r1,r0
        0x1fff6804:    d903        ..      BLS      0x1fff680e ; txmit_buf_use_tx_buf + 58
        0x1fff6806:    2003        .       MOVS     r0,#3
        0x1fff6808:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff680a:    2006        .       MOVS     r0,#6
        0x1fff680c:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff680e:    f7fbf877    ..w.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff6812:    88a1        ..      LDRH     r1,[r4,#4]
        0x1fff6814:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff6816:    462a        *F      MOV      r2,r5
        0x1fff6818:    1840        @.      ADDS     r0,r0,r1
        0x1fff681a:    9901        ..      LDR      r1,[sp,#4]
        0x1fff681c:    f7fbfa0e    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c3c
        0x1fff6820:    88a0        ..      LDRH     r0,[r4,#4]
        0x1fff6822:    1940        @.      ADDS     r0,r0,r5
        0x1fff6824:    80a0        ..      STRH     r0,[r4,#4]
        0x1fff6826:    f7fbf877    ..w.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff682a:    e027        '.      B        0x1fff687c ; txmit_buf_use_tx_buf + 168
        0x1fff682c:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff682e:    9901        ..      LDR      r1,[sp,#4]
        0x1fff6830:    f7fbfa04    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c3c
        0x1fff6834:    80a5        ..      STRH     r5,[r4,#4]
        0x1fff6836:    2000        .       MOVS     r0,#0
        0x1fff6838:    8060        `.      STRH     r0,[r4,#2]
        0x1fff683a:    2002        .       MOVS     r0,#2
        0x1fff683c:    7020         p      STRB     r0,[r4,#0]
        0x1fff683e:    68a1        .h      LDR      r1,[r4,#8]
        0x1fff6840:    2d10        .-      CMP      r5,#0x10
        0x1fff6842:    d900        ..      BLS      0x1fff6846 ; txmit_buf_use_tx_buf + 114
        0x1fff6844:    2510        .%      MOVS     r5,#0x10
        0x1fff6846:    2f01        ./      CMP      r7,#1
        0x1fff6848:    d100        ..      BNE      0x1fff684c ; txmit_buf_use_tx_buf + 120
        0x1fff684a:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff688c] = 0x40009000
        0x1fff684c:    6872        rh      LDR      r2,[r6,#4]
        0x1fff684e:    2002        .       MOVS     r0,#2
        0x1fff6850:    4382        .C      BICS     r2,r2,r0
        0x1fff6852:    6072        r`      STR      r2,[r6,#4]
        0x1fff6854:    e004        ..      B        0x1fff6860 ; txmit_buf_use_tx_buf + 140
        0x1fff6856:    8860        `.      LDRH     r0,[r4,#2]
        0x1fff6858:    1c42        B.      ADDS     r2,r0,#1
        0x1fff685a:    8062        b.      STRH     r2,[r4,#2]
        0x1fff685c:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff685e:    7030        0p      STRB     r0,[r6,#0]
        0x1fff6860:    4628        (F      MOV      r0,r5
        0x1fff6862:    1e6d        m.      SUBS     r5,r5,#1
        0x1fff6864:    b2ad        ..      UXTH     r5,r5
        0x1fff6866:    2800        .(      CMP      r0,#0
        0x1fff6868:    d1f5        ..      BNE      0x1fff6856 ; txmit_buf_use_tx_buf + 130
        0x1fff686a:    2f00        ./      CMP      r7,#0
        0x1fff686c:    d008        ..      BEQ      0x1fff6880 ; txmit_buf_use_tx_buf + 172
        0x1fff686e:    2019        .       MOVS     r0,#0x19
        0x1fff6870:    f7fdfc6a    ..j.    BL       hal_pwrmgr_lock ; 0x1fff4148
        0x1fff6874:    6870        ph      LDR      r0,[r6,#4]
        0x1fff6876:    2102        .!      MOVS     r1,#2
        0x1fff6878:    4308        .C      ORRS     r0,r0,r1
        0x1fff687a:    6070        p`      STR      r0,[r6,#4]
        0x1fff687c:    2000        .       MOVS     r0,#0
        0x1fff687e:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff6880:    2008        .       MOVS     r0,#8
        0x1fff6882:    e7f5        ..      B        0x1fff6870 ; txmit_buf_use_tx_buf + 156
    $d
        0x1fff6884:    1fff7bd0    .{..    DCD    536837072
        0x1fff6888:    40004000    .@.@    DCD    1073758208
        0x1fff688c:    40009000    ...@    DCD    1073778688
    $t
    i.uart_hw_deinit
    uart_hw_deinit
        0x1fff6890:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff6892:    4605        .F      MOV      r5,r0
        0x1fff6894:    2608        .&      MOVS     r6,#8
        0x1fff6896:    200b        .       MOVS     r0,#0xb
        0x1fff6898:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff68fc] = 0x40004000
        0x1fff689a:    2d01        .-      CMP      r5,#1
        0x1fff689c:    d102        ..      BNE      0x1fff68a4 ; uart_hw_deinit + 20
        0x1fff689e:    2619        .&      MOVS     r6,#0x19
        0x1fff68a0:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff6900] = 0x40009000
        0x1fff68a2:    2011        .       MOVS     r0,#0x11
        0x1fff68a4:    2201        ."      MOVS     r2,#1
        0x1fff68a6:    4082        .@      LSLS     r2,r2,r0
        0x1fff68a8:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff6904] = 0xe000e180
        0x1fff68aa:    6002        .`      STR      r2,[r0,#0]
        0x1fff68ac:    f3bf8f4f    ..O.    DSB      
        0x1fff68b0:    f3bf8f6f    ..o.    ISB      
        0x1fff68b4:    2080        .       MOVS     r0,#0x80
        0x1fff68b6:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff68b8:    2400        .$      MOVS     r4,#0
        0x1fff68ba:    710c        .q      STRB     r4,[r1,#4]
        0x1fff68bc:    700c        .p      STRB     r4,[r1,#0]
        0x1fff68be:    730c        .s      STRB     r4,[r1,#0xc]
        0x1fff68c0:    720c        .r      STRB     r4,[r1,#8]
        0x1fff68c2:    604c        L`      STR      r4,[r1,#4]
        0x1fff68c4:    4630        0F      MOV      r0,r6
        0x1fff68c6:    f7fdf883    ....    BL       hal_clk_reset ; 0x1fff39d0
        0x1fff68ca:    4630        0F      MOV      r0,r6
        0x1fff68cc:    f7fdf84c    ..L.    BL       hal_clk_gate_disable ; 0x1fff3968
        0x1fff68d0:    2d00        .-      CMP      r5,#0
        0x1fff68d2:    d00e        ..      BEQ      0x1fff68f2 ; uart_hw_deinit + 98
        0x1fff68d4:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff6908] = 0x1fff03c0
        0x1fff68d6:    6044        D`      STR      r4,[r0,#4]
        0x1fff68d8:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff690c] = 0x1fff7bd0
        0x1fff68da:    0169        i.      LSLS     r1,r5,#5
        0x1fff68dc:    180c        ..      ADDS     r4,r1,r0
        0x1fff68de:    7c20         |      LDRB     r0,[r4,#0x10]
        0x1fff68e0:    2100        .!      MOVS     r1,#0
        0x1fff68e2:    f7fdf8cf    ....    BL       hal_gpio_fmux ; 0x1fff3a84
        0x1fff68e6:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x1fff68e8:    2100        .!      MOVS     r1,#0
        0x1fff68ea:    f7fdf8cb    ....    BL       hal_gpio_fmux ; 0x1fff3a84
        0x1fff68ee:    2000        .       MOVS     r0,#0
        0x1fff68f0:    bd70        p.      POP      {r4-r6,pc}
        0x1fff68f2:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff6908] = 0x1fff03c0
        0x1fff68f4:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff68f6:    62c4        .b      STR      r4,[r0,#0x2c]
        0x1fff68f8:    e7ee        ..      B        0x1fff68d8 ; uart_hw_deinit + 72
    $d
        0x1fff68fa:    0000        ..      DCW    0
        0x1fff68fc:    40004000    .@.@    DCD    1073758208
        0x1fff6900:    40009000    ...@    DCD    1073778688
        0x1fff6904:    e000e180    ....    DCD    3758154112
        0x1fff6908:    1fff03c0    ....    DCD    536806336
        0x1fff690c:    1fff7bd0    .{..    DCD    536837072
    $t
    i.uart_hw_init
    uart_hw_init
        0x1fff6910:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff6912:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff6914:    4607        .F      MOV      r7,r0
        0x1fff6916:    f7fbfa51    ..Q.    BL       $Ven$TT$L$$clk_get_pclk ; 0x1fff1dbc
        0x1fff691a:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff691c:    2008        .       MOVS     r0,#8
        0x1fff691e:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff6920:    2004        .       MOVS     r0,#4
        0x1fff6922:    9000        ..      STR      r0,[sp,#0]
        0x1fff6924:    2005        .       MOVS     r0,#5
        0x1fff6926:    9002        ..      STR      r0,[sp,#8]
        0x1fff6928:    4c59        YL      LDR      r4,[pc,#356] ; [0x1fff6a90] = 0x40004000
        0x1fff692a:    260b        .&      MOVS     r6,#0xb
        0x1fff692c:    4638        8F      MOV      r0,r7
        0x1fff692e:    f7ffffaf    ....    BL       uart_hw_deinit ; 0x1fff6890
        0x1fff6932:    2f01        ./      CMP      r7,#1
        0x1fff6934:    d107        ..      BNE      0x1fff6946 ; uart_hw_init + 54
        0x1fff6936:    2019        .       MOVS     r0,#0x19
        0x1fff6938:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff693a:    2008        .       MOVS     r0,#8
        0x1fff693c:    2611        .&      MOVS     r6,#0x11
        0x1fff693e:    9000        ..      STR      r0,[sp,#0]
        0x1fff6940:    4c54        TL      LDR      r4,[pc,#336] ; [0x1fff6a94] = 0x40009000
        0x1fff6942:    2009        .       MOVS     r0,#9
        0x1fff6944:    9002        ..      STR      r0,[sp,#8]
        0x1fff6946:    4854        TH      LDR      r0,[pc,#336] ; [0x1fff6a98] = 0x1fff7bd0
        0x1fff6948:    0179        y.      LSLS     r1,r7,#5
        0x1fff694a:    180d        ..      ADDS     r5,r1,r0
        0x1fff694c:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff694e:    28ff        .(      CMP      r0,#0xff
        0x1fff6950:    d102        ..      BNE      0x1fff6958 ; uart_hw_init + 72
        0x1fff6952:    7c68        h|      LDRB     r0,[r5,#0x11]
        0x1fff6954:    28ff        .(      CMP      r0,#0xff
        0x1fff6956:    d02f        /.      BEQ      0x1fff69b8 ; uart_hw_init + 168
        0x1fff6958:    3510        .5      ADDS     r5,r5,#0x10
        0x1fff695a:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff695c:    f7fdf81e    ....    BL       hal_clk_gate_enable ; 0x1fff399c
        0x1fff6960:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff6962:    f7fdf835    ..5.    BL       hal_clk_reset ; 0x1fff39d0
        0x1fff6966:    2101        .!      MOVS     r1,#1
        0x1fff6968:    2012        .       MOVS     r0,#0x12
        0x1fff696a:    f7fdf951    ..Q.    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff696e:    2101        .!      MOVS     r1,#1
        0x1fff6970:    2012        .       MOVS     r0,#0x12
        0x1fff6972:    f7fdf94d    ..M.    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff6976:    2012        .       MOVS     r0,#0x12
        0x1fff6978:    9900        ..      LDR      r1,[sp,#0]
        0x1fff697a:    f7fdf893    ....    BL       hal_gpio_fmux_set ; 0x1fff3aa4
        0x1fff697e:    2012        .       MOVS     r0,#0x12
        0x1fff6980:    9902        ..      LDR      r1,[sp,#8]
        0x1fff6982:    f7fdf88f    ....    BL       hal_gpio_fmux_set ; 0x1fff3aa4
        0x1fff6986:    2000        .       MOVS     r0,#0
        0x1fff6988:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff698a:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff698c:    6869        ih      LDR      r1,[r5,#4]
        0x1fff698e:    1100        ..      ASRS     r0,r0,#4
        0x1fff6990:    084a        J.      LSRS     r2,r1,#1
        0x1fff6992:    1880        ..      ADDS     r0,r0,r2
        0x1fff6994:    f7fbf9b2    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cfc
        0x1fff6998:    2100        .!      MOVS     r1,#0
        0x1fff699a:    6121        !a      STR      r1,[r4,#0x10]
        0x1fff699c:    2180        .!      MOVS     r1,#0x80
        0x1fff699e:    7321        !s      STRB     r1,[r4,#0xc]
        0x1fff69a0:    0a01        ..      LSRS     r1,r0,#8
        0x1fff69a2:    7121        !q      STRB     r1,[r4,#4]
        0x1fff69a4:    7020         p      STRB     r0,[r4,#0]
        0x1fff69a6:    7ae8        .z      LDRB     r0,[r5,#0xb]
        0x1fff69a8:    2800        .(      CMP      r0,#0
        0x1fff69aa:    d052        R.      BEQ      0x1fff6a52 ; uart_hw_init + 322
        0x1fff69ac:    4938        8I      LDR      r1,[pc,#224] ; [0x1fff6a90] = 0x40004000
        0x1fff69ae:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff6a9c] = 0x1fff7098
        0x1fff69b0:    428c        .B      CMP      r4,r1
        0x1fff69b2:    d104        ..      BNE      0x1fff69be ; uart_hw_init + 174
        0x1fff69b4:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff69b6:    e003        ..      B        0x1fff69c0 ; uart_hw_init + 176
        0x1fff69b8:    2006        .       MOVS     r0,#6
        0x1fff69ba:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff69bc:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff69be:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff69c0:    2800        .(      CMP      r0,#0
        0x1fff69c2:    d001        ..      BEQ      0x1fff69c8 ; uart_hw_init + 184
        0x1fff69c4:    201b        .       MOVS     r0,#0x1b
        0x1fff69c6:    e000        ..      B        0x1fff69ca ; uart_hw_init + 186
        0x1fff69c8:    200b        .       MOVS     r0,#0xb
        0x1fff69ca:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff69cc:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff69ce:    2800        .(      CMP      r0,#0
        0x1fff69d0:    d000        ..      BEQ      0x1fff69d4 ; uart_hw_init + 196
        0x1fff69d2:    2087        .       MOVS     r0,#0x87
        0x1fff69d4:    7220         r      STRB     r0,[r4,#8]
        0x1fff69d6:    2001        .       MOVS     r0,#1
        0x1fff69d8:    6060        ``      STR      r0,[r4,#4]
        0x1fff69da:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff69dc:    2800        .(      CMP      r0,#0
        0x1fff69de:    d003        ..      BEQ      0x1fff69e8 ; uart_hw_init + 216
        0x1fff69e0:    6860        `h      LDR      r0,[r4,#4]
        0x1fff69e2:    2180        .!      MOVS     r1,#0x80
        0x1fff69e4:    4308        .C      ORRS     r0,r0,r1
        0x1fff69e6:    6060        ``      STR      r0,[r4,#4]
        0x1fff69e8:    7aa8        .z      LDRB     r0,[r5,#0xa]
        0x1fff69ea:    2800        .(      CMP      r0,#0
        0x1fff69ec:    d003        ..      BEQ      0x1fff69f6 ; uart_hw_init + 230
        0x1fff69ee:    6860        `h      LDR      r0,[r4,#4]
        0x1fff69f0:    2102        .!      MOVS     r1,#2
        0x1fff69f2:    4308        .C      ORRS     r0,r0,r1
        0x1fff69f4:    6060        ``      STR      r0,[r4,#4]
        0x1fff69f6:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff69f8:    2101        .!      MOVS     r1,#1
        0x1fff69fa:    f7fdf909    ....    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff69fe:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff6a00:    2101        .!      MOVS     r1,#1
        0x1fff6a02:    f7fdf905    ....    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff6a06:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff6a08:    9900        ..      LDR      r1,[sp,#0]
        0x1fff6a0a:    f7fdf84b    ..K.    BL       hal_gpio_fmux_set ; 0x1fff3aa4
        0x1fff6a0e:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff6a10:    9902        ..      LDR      r1,[sp,#8]
        0x1fff6a12:    f7fdf847    ..G.    BL       hal_gpio_fmux_set ; 0x1fff3aa4
        0x1fff6a16:    2100        .!      MOVS     r1,#0
        0x1fff6a18:    2012        .       MOVS     r0,#0x12
        0x1fff6a1a:    f7fdf833    ..3.    BL       hal_gpio_fmux ; 0x1fff3a84
        0x1fff6a1e:    2103        .!      MOVS     r1,#3
        0x1fff6a20:    2012        .       MOVS     r0,#0x12
        0x1fff6a22:    f7fdf8f5    ....    BL       hal_gpio_pull_set ; 0x1fff3c10
        0x1fff6a26:    2f00        ./      CMP      r7,#0
        0x1fff6a28:    d015        ..      BEQ      0x1fff6a56 ; uart_hw_init + 326
        0x1fff6a2a:    491e        .I      LDR      r1,[pc,#120] ; [0x1fff6aa4] = 0x1fff03c0
        0x1fff6a2c:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff6aa0] = 0x1fff38dd
        0x1fff6a2e:    6048        H`      STR      r0,[r1,#4]
        0x1fff6a30:    20ff        .       MOVS     r0,#0xff
        0x1fff6a32:    2e00        ..      CMP      r6,#0
        0x1fff6a34:    db14        ..      BLT      0x1fff6a60 ; uart_hw_init + 336
        0x1fff6a36:    08b2        ..      LSRS     r2,r6,#2
        0x1fff6a38:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff6aa8] = 0xe000e400
        0x1fff6a3a:    0092        ..      LSLS     r2,r2,#2
        0x1fff6a3c:    1851        Q.      ADDS     r1,r2,r1
        0x1fff6a3e:    680a        .h      LDR      r2,[r1,#0]
        0x1fff6a40:    07b3        ..      LSLS     r3,r6,#30
        0x1fff6a42:    0edb        ..      LSRS     r3,r3,#27
        0x1fff6a44:    4098        .@      LSLS     r0,r0,r3
        0x1fff6a46:    4382        .C      BICS     r2,r2,r0
        0x1fff6a48:    2080        .       MOVS     r0,#0x80
        0x1fff6a4a:    4098        .@      LSLS     r0,r0,r3
        0x1fff6a4c:    4302        .C      ORRS     r2,r2,r0
        0x1fff6a4e:    600a        .`      STR      r2,[r1,#0]
        0x1fff6a50:    e016        ..      B        0x1fff6a80 ; uart_hw_init + 368
        0x1fff6a52:    2003        .       MOVS     r0,#3
        0x1fff6a54:    e7b9        ..      B        0x1fff69ca ; uart_hw_init + 186
        0x1fff6a56:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff6aa4] = 0x1fff03c0
        0x1fff6a58:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff6aac] = 0x1fff3899
        0x1fff6a5a:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff6a5c:    62c8        .b      STR      r0,[r1,#0x2c]
        0x1fff6a5e:    e7e7        ..      B        0x1fff6a30 ; uart_hw_init + 288
        0x1fff6a60:    0731        1.      LSLS     r1,r6,#28
        0x1fff6a62:    0f09        ..      LSRS     r1,r1,#28
        0x1fff6a64:    3908        .9      SUBS     r1,r1,#8
        0x1fff6a66:    088a        ..      LSRS     r2,r1,#2
        0x1fff6a68:    4911        .I      LDR      r1,[pc,#68] ; [0x1fff6ab0] = 0xe000ed00
        0x1fff6a6a:    0092        ..      LSLS     r2,r2,#2
        0x1fff6a6c:    1851        Q.      ADDS     r1,r2,r1
        0x1fff6a6e:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6a70:    07b3        ..      LSLS     r3,r6,#30
        0x1fff6a72:    0edb        ..      LSRS     r3,r3,#27
        0x1fff6a74:    4098        .@      LSLS     r0,r0,r3
        0x1fff6a76:    4382        .C      BICS     r2,r2,r0
        0x1fff6a78:    2080        .       MOVS     r0,#0x80
        0x1fff6a7a:    4098        .@      LSLS     r0,r0,r3
        0x1fff6a7c:    4302        .C      ORRS     r2,r2,r0
        0x1fff6a7e:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6a80:    2e00        ..      CMP      r6,#0
        0x1fff6a82:    db03        ..      BLT      0x1fff6a8c ; uart_hw_init + 380
        0x1fff6a84:    2001        .       MOVS     r0,#1
        0x1fff6a86:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff6ab4] = 0xe000e100
        0x1fff6a88:    40b0        .@      LSLS     r0,r0,r6
        0x1fff6a8a:    6008        .`      STR      r0,[r1,#0]
        0x1fff6a8c:    2000        .       MOVS     r0,#0
        0x1fff6a8e:    e794        ..      B        0x1fff69ba ; uart_hw_init + 170
    $d
        0x1fff6a90:    40004000    .@.@    DCD    1073758208
        0x1fff6a94:    40009000    ...@    DCD    1073778688
        0x1fff6a98:    1fff7bd0    .{..    DCD    536837072
        0x1fff6a9c:    1fff7098    .p..    DCD    536834200
        0x1fff6aa0:    1fff38dd    .8..    DCD    536819933
        0x1fff6aa4:    1fff03c0    ....    DCD    536806336
        0x1fff6aa8:    e000e400    ....    DCD    3758154752
        0x1fff6aac:    1fff3899    .8..    DCD    536819865
        0x1fff6ab0:    e000ed00    ....    DCD    3758157056
        0x1fff6ab4:    e000e100    ....    DCD    3758153984
    $t
    i.uart_wakeup_process_0
    uart_wakeup_process_0
        0x1fff6ab8:    b510        ..      PUSH     {r4,lr}
        0x1fff6aba:    2000        .       MOVS     r0,#0
        0x1fff6abc:    f7ffff28    ..(.    BL       uart_hw_init ; 0x1fff6910
        0x1fff6ac0:    bd10        ..      POP      {r4,pc}
    i.uart_wakeup_process_1
    uart_wakeup_process_1
        0x1fff6ac2:    b510        ..      PUSH     {r4,lr}
        0x1fff6ac4:    2001        .       MOVS     r0,#1
        0x1fff6ac6:    f7ffff23    ..#.    BL       uart_hw_init ; 0x1fff6910
        0x1fff6aca:    bd10        ..      POP      {r4,pc}
    i.wakeupProcess1
    wakeupProcess1
        0x1fff6acc:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff6ace:    4c6e        nL      LDR      r4,[pc,#440] ; [0x1fff6c88] = 0x1fff70d8
        0x1fff6ad0:    21ff        .!      MOVS     r1,#0xff
        0x1fff6ad2:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff6ad4:    31d5        .1      ADDS     r1,r1,#0xd5
        0x1fff6ad6:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x1fff6c8c] = 0x1fff8000
        0x1fff6ad8:    5809        .X      LDR      r1,[r1,r0]
        0x1fff6ada:    6011        .`      STR      r1,[r2,#0]
        0x1fff6adc:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff6ade:    6880        .h      LDR      r0,[r0,#8]
        0x1fff6ae0:    f3808808    ....    MSR      MSP,r0
        0x1fff6ae4:    f7fbf904    ....    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff1cf0
        0x1fff6ae8:    4869        iH      LDR      r0,[pc,#420] ; [0x1fff6c90] = 0x1fff0a0c
        0x1fff6aea:    496a        jI      LDR      r1,[pc,#424] ; [0x1fff6c94] = 0x32141b6
        0x1fff6aec:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6aee:    2602        .&      MOVS     r6,#2
        0x1fff6af0:    4288        .B      CMP      r0,r1
        0x1fff6af2:    d006        ..      BEQ      0x1fff6b02 ; wakeupProcess1 + 54
        0x1fff6af4:    2000        .       MOVS     r0,#0
        0x1fff6af6:    f7fbf83b    ..;.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b70
        0x1fff6afa:    0770        p.      LSLS     r0,r6,#29
        0x1fff6afc:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff6afe:    43b1        .C      BICS     r1,r1,r6
        0x1fff6b00:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff6b02:    2000        .       MOVS     r0,#0
        0x1fff6b04:    f7fbf834    ..4.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b70
        0x1fff6b08:    f000f8ea    ....    BL       wakeup_init1 ; 0x1fff6ce0
        0x1fff6b0c:    4862        bH      LDR      r0,[pc,#392] ; [0x1fff6c98] = 0x1fff0a49
        0x1fff6b0e:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff6b10:    f7fbf948    ..H.    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff1da4
        0x1fff6b14:    4d61        aM      LDR      r5,[pc,#388] ; [0x1fff6c9c] = 0x40001000
        0x1fff6b16:    2700        .'      MOVS     r7,#0
        0x1fff6b18:    61ef        .a      STR      r7,[r5,#0x1c]
        0x1fff6b1a:    61ee        .a      STR      r6,[r5,#0x1c]
        0x1fff6b1c:    4860        `H      LDR      r0,[pc,#384] ; [0x1fff6ca0] = 0x9c3
        0x1fff6b1e:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff6b20:    2001        .       MOVS     r0,#1
        0x1fff6b22:    f7fbf81f    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff6b26:    2003        .       MOVS     r0,#3
        0x1fff6b28:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff6b2a:    f7fbf803    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b34
        0x1fff6b2e:    4606        .F      MOV      r6,r0
        0x1fff6b30:    f7faff40    ..@.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff6b34:    4605        .F      MOV      r5,r0
        0x1fff6b36:    f7fafffd    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b34
        0x1fff6b3a:    495a        ZI      LDR      r1,[pc,#360] ; [0x1fff6ca4] = 0x1fff0a10
        0x1fff6b3c:    6008        .`      STR      r0,[r1,#0]
        0x1fff6b3e:    f7fffccb    ....    BL       rf_phy_ini ; 0x1fff64d8
        0x1fff6b42:    4859        YH      LDR      r0,[pc,#356] ; [0x1fff6ca8] = 0x1fff0a34
        0x1fff6b44:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6b46:    4286        .B      CMP      r6,r0
        0x1fff6b48:    d901        ..      BLS      0x1fff6b4e ; wakeupProcess1 + 130
        0x1fff6b4a:    1a30        0.      SUBS     r0,r6,r0
        0x1fff6b4c:    e001        ..      B        0x1fff6b52 ; wakeupProcess1 + 134
        0x1fff6b4e:    1a30        0.      SUBS     r0,r6,r0
        0x1fff6b50:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6b52:    4956        VI      LDR      r1,[pc,#344] ; [0x1fff6cac] = 0x3fffff
        0x1fff6b54:    4288        .B      CMP      r0,r1
        0x1fff6b56:    d900        ..      BLS      0x1fff6b5a ; wakeupProcess1 + 142
        0x1fff6b58:    4008        .@      ANDS     r0,r0,r1
        0x1fff6b5a:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1fff6b5c:    8d8a        ..      LDRH     r2,[r1,#0x2c]
        0x1fff6b5e:    07d2        ..      LSLS     r2,r2,#31
        0x1fff6b60:    d009        ..      BEQ      0x1fff6b76 ; wakeupProcess1 + 170
        0x1fff6b62:    4a53        SJ      LDR      r2,[pc,#332] ; [0x1fff6cb0] = 0x1fff0a38
        0x1fff6b64:    0c03        ..      LSRS     r3,r0,#16
        0x1fff6b66:    6812        .h      LDR      r2,[r2,#0]
        0x1fff6b68:    b280        ..      UXTH     r0,r0
        0x1fff6b6a:    4353        SC      MULS     r3,r2,r3
        0x1fff6b6c:    4350        PC      MULS     r0,r2,r0
        0x1fff6b6e:    021b        ..      LSLS     r3,r3,#8
        0x1fff6b70:    0a00        ..      LSRS     r0,r0,#8
        0x1fff6b72:    1818        ..      ADDS     r0,r3,r0
        0x1fff6b74:    e00b        ..      B        0x1fff6b8e ; wakeupProcess1 + 194
        0x1fff6b76:    01c2        ..      LSLS     r2,r0,#7
        0x1fff6b78:    0083        ..      LSLS     r3,r0,#2
        0x1fff6b7a:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff6b7c:    0043        C.      LSLS     r3,r0,#1
        0x1fff6b7e:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff6b80:    00c3        ..      LSLS     r3,r0,#3
        0x1fff6b82:    1818        ..      ADDS     r0,r3,r0
        0x1fff6b84:    1c92        ..      ADDS     r2,r2,#2
        0x1fff6b86:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff6b88:    0892        ..      LSRS     r2,r2,#2
        0x1fff6b8a:    0a40        @.      LSRS     r0,r0,#9
        0x1fff6b8c:    1810        ..      ADDS     r0,r2,r0
        0x1fff6b8e:    6520         e      STR      r0,[r4,#0x50]
        0x1fff6b90:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff6b92:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff6cb4] = 0x1fff0a1c
        0x1fff6b94:    3101        .1      ADDS     r1,#1
        0x1fff6b96:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff6b98:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6b9a:    1809        ..      ADDS     r1,r1,r0
        0x1fff6b9c:    4846        FH      LDR      r0,[pc,#280] ; [0x1fff6cb8] = 0x1fff0a20
        0x1fff6b9e:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6ba0:    1a09        ..      SUBS     r1,r1,r0
        0x1fff6ba2:    483f        ?H      LDR      r0,[pc,#252] ; [0x1fff6ca0] = 0x9c3
        0x1fff6ba4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff6ba6:    1809        ..      ADDS     r1,r1,r0
        0x1fff6ba8:    088a        ..      LSRS     r2,r1,#2
        0x1fff6baa:    4844        DH      LDR      r0,[pc,#272] ; [0x1fff6cbc] = 0x1fff0a24
        0x1fff6bac:    078b        ..      LSLS     r3,r1,#30
        0x1fff6bae:    4944        DI      LDR      r1,[pc,#272] ; [0x1fff6cc0] = 0x1fff0a28
        0x1fff6bb0:    6002        .`      STR      r2,[r0,#0]
        0x1fff6bb2:    680e        .h      LDR      r6,[r1,#0]
        0x1fff6bb4:    0f9b        ..      LSRS     r3,r3,#30
        0x1fff6bb6:    199b        ..      ADDS     r3,r3,r6
        0x1fff6bb8:    600b        .`      STR      r3,[r1,#0]
        0x1fff6bba:    2b04        .+      CMP      r3,#4
        0x1fff6bbc:    d904        ..      BLS      0x1fff6bc8 ; wakeupProcess1 + 252
        0x1fff6bbe:    1c52        R.      ADDS     r2,r2,#1
        0x1fff6bc0:    6002        .`      STR      r2,[r0,#0]
        0x1fff6bc2:    079a        ..      LSLS     r2,r3,#30
        0x1fff6bc4:    0f92        ..      LSRS     r2,r2,#30
        0x1fff6bc6:    600a        .`      STR      r2,[r1,#0]
        0x1fff6bc8:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff6bca:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6bcc:    1808        ..      ADDS     r0,r1,r0
        0x1fff6bce:    493d        =I      LDR      r1,[pc,#244] ; [0x1fff6cc4] = 0x271
        0x1fff6bd0:    f7fbf894    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cfc
        0x1fff6bd4:    4602        .F      MOV      r2,r0
        0x1fff6bd6:    483c        <H      LDR      r0,[pc,#240] ; [0x1fff6cc8] = 0x1fff0860
        0x1fff6bd8:    4e3c        <N      LDR      r6,[pc,#240] ; [0x1fff6ccc] = 0x1fff0a2c
        0x1fff6bda:    6803        .h      LDR      r3,[r0,#0]
        0x1fff6bdc:    18d3        ..      ADDS     r3,r2,r3
        0x1fff6bde:    6003        .`      STR      r3,[r0,#0]
        0x1fff6be0:    6832        2h      LDR      r2,[r6,#0]
        0x1fff6be2:    188a        ..      ADDS     r2,r1,r2
        0x1fff6be4:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff6cc4] = 0x271
        0x1fff6be6:    6032        2`      STR      r2,[r6,#0]
        0x1fff6be8:    428a        .B      CMP      r2,r1
        0x1fff6bea:    d905        ..      BLS      0x1fff6bf8 ; wakeupProcess1 + 300
        0x1fff6bec:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff6bee:    6003        .`      STR      r3,[r0,#0]
        0x1fff6bf0:    4610        .F      MOV      r0,r2
        0x1fff6bf2:    f7fbf883    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1cfc
        0x1fff6bf6:    6031        1`      STR      r1,[r6,#0]
        0x1fff6bf8:    f7fbf8e6    ....    BL       $Ven$TT$L$$osalTimeUpdate ; 0x1fff1dc8
        0x1fff6bfc:    4834        4H      LDR      r0,[pc,#208] ; [0x1fff6cd0] = 0x1fff091c
        0x1fff6bfe:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff6c00:    2800        .(      CMP      r0,#0
        0x1fff6c02:    d010        ..      BEQ      0x1fff6c26 ; wakeupProcess1 + 346
        0x1fff6c04:    f7fafed6    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff6c08:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff6cd4] = 0x1fff08e4
        0x1fff6c0a:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff6c0c:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6c0e:    6812        .h      LDR      r2,[r2,#0]
        0x1fff6c10:    180b        ..      ADDS     r3,r1,r0
        0x1fff6c12:    4293        .B      CMP      r3,r2
        0x1fff6c14:    d202        ..      BCS      0x1fff6c1c ; wakeupProcess1 + 336
        0x1fff6c16:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff6c18:    1a09        ..      SUBS     r1,r1,r0
        0x1fff6c1a:    e001        ..      B        0x1fff6c20 ; wakeupProcess1 + 340
        0x1fff6c1c:    217d        }!      MOVS     r1,#0x7d
        0x1fff6c1e:    00c9        ..      LSLS     r1,r1,#3
        0x1fff6c20:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff6c9c] = 0x40001000
        0x1fff6c22:    f7fbf8d7    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff6c26:    4e2c        ,N      LDR      r6,[pc,#176] ; [0x1fff6cd8] = 0x1fff0b74
        0x1fff6c28:    7a30        0z      LDRB     r0,[r6,#8]
        0x1fff6c2a:    2800        .(      CMP      r0,#0
        0x1fff6c2c:    d010        ..      BEQ      0x1fff6c50 ; wakeupProcess1 + 388
        0x1fff6c2e:    f7fafec1    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff6c32:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff6c34:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6c36:    68f2        .h      LDR      r2,[r6,#0xc]
        0x1fff6c38:    180b        ..      ADDS     r3,r1,r0
        0x1fff6c3a:    429a        .B      CMP      r2,r3
        0x1fff6c3c:    d902        ..      BLS      0x1fff6c44 ; wakeupProcess1 + 376
        0x1fff6c3e:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff6c40:    1a09        ..      SUBS     r1,r1,r0
        0x1fff6c42:    e000        ..      B        0x1fff6c46 ; wakeupProcess1 + 378
        0x1fff6c44:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff6cdc] = 0x5dc
        0x1fff6c46:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff6c9c] = 0x40001000
        0x1fff6c48:    303c        <0      ADDS     r0,r0,#0x3c
        0x1fff6c4a:    f7fbf8c3    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff6c4e:    7237        7r      STRB     r7,[r6,#8]
        0x1fff6c50:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff6c52:    2800        .(      CMP      r0,#0
        0x1fff6c54:    d010        ..      BEQ      0x1fff6c78 ; wakeupProcess1 + 428
        0x1fff6c56:    f7fafead    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff6c5a:    1b41        A.      SUBS     r1,r0,r5
        0x1fff6c5c:    6d22        "m      LDR      r2,[r4,#0x50]
        0x1fff6c5e:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff6c9c] = 0x40001000
        0x1fff6c60:    6963        ci      LDR      r3,[r4,#0x14]
        0x1fff6c62:    1855        U.      ADDS     r5,r2,r1
        0x1fff6c64:    3050        P0      ADDS     r0,r0,#0x50
        0x1fff6c66:    429d        .B      CMP      r5,r3
        0x1fff6c68:    d202        ..      BCS      0x1fff6c70 ; wakeupProcess1 + 420
        0x1fff6c6a:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff6c6c:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff6c6e:    e000        ..      B        0x1fff6c72 ; wakeupProcess1 + 422
        0x1fff6c70:    491a        .I      LDR      r1,[pc,#104] ; [0x1fff6cdc] = 0x5dc
        0x1fff6c72:    f7fbf8af    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff6c76:    70a7        .p      STRB     r7,[r4,#2]
        0x1fff6c78:    f7fbf8b2    ....    BL       $Ven$TT$L$$app_wakeup_process ; 0x1fff1de0
        0x1fff6c7c:    2002        .       MOVS     r0,#2
        0x1fff6c7e:    f7fafe9f    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff6c82:    f7faff69    ..i.    BL       $Ven$TT$L$$osal_start_system ; 0x1fff1b58
        0x1fff6c86:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff6c88:    1fff70d8    .p..    DCD    536834264
        0x1fff6c8c:    1fff8000    ....    DCD    536838144
        0x1fff6c90:    1fff0a0c    ....    DCD    536807948
        0x1fff6c94:    032141b6    .A!.    DCD    52511158
        0x1fff6c98:    1fff0a49    I...    DCD    536808009
        0x1fff6c9c:    40001000    ...@    DCD    1073745920
        0x1fff6ca0:    000009c3    ....    DCD    2499
        0x1fff6ca4:    1fff0a10    ....    DCD    536807952
        0x1fff6ca8:    1fff0a34    4...    DCD    536807988
        0x1fff6cac:    003fffff    ..?.    DCD    4194303
        0x1fff6cb0:    1fff0a38    8...    DCD    536807992
        0x1fff6cb4:    1fff0a1c    ....    DCD    536807964
        0x1fff6cb8:    1fff0a20     ...    DCD    536807968
        0x1fff6cbc:    1fff0a24    $...    DCD    536807972
        0x1fff6cc0:    1fff0a28    (...    DCD    536807976
        0x1fff6cc4:    00000271    q...    DCD    625
        0x1fff6cc8:    1fff0860    `...    DCD    536807520
        0x1fff6ccc:    1fff0a2c    ,...    DCD    536807980
        0x1fff6cd0:    1fff091c    ....    DCD    536807708
        0x1fff6cd4:    1fff08e4    ....    DCD    536807652
        0x1fff6cd8:    1fff0b74    t...    DCD    536808308
        0x1fff6cdc:    000005dc    ....    DCD    1500
    $t
    i.wakeup_init1
    wakeup_init1
        0x1fff6ce0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff6ce2:    2001        .       MOVS     r0,#1
        0x1fff6ce4:    0781        ..      LSLS     r1,r0,#30
        0x1fff6ce6:    6288        .b      STR      r0,[r1,#0x28]
        0x1fff6ce8:    f7fcfc8c    ....    BL       efuse_init ; 0x1fff3604
        0x1fff6cec:    f7fcf850    ..P.    BL       __wdt_init ; 0x1fff2d90
        0x1fff6cf0:    2001        .       MOVS     r0,#1
        0x1fff6cf2:    9000        ..      STR      r0,[sp,#0]
        0x1fff6cf4:    f7fdfbb2    ....    BL       hal_system_clock_change_process ; 0x1fff445c
        0x1fff6cf8:    4e43        CN      LDR      r6,[pc,#268] ; [0x1fff6e08] = 0x1fff0a4a
        0x1fff6cfa:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff6cfc:    4c43        CL      LDR      r4,[pc,#268] ; [0x1fff6e0c] = 0x4000f040
        0x1fff6cfe:    2802        .(      CMP      r0,#2
        0x1fff6d00:    d010        ..      BEQ      0x1fff6d24 ; wakeup_init1 + 68
        0x1fff6d02:    f7faff17    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b34
        0x1fff6d06:    4605        .F      MOV      r5,r0
        0x1fff6d08:    200f        .       MOVS     r0,#0xf
        0x1fff6d0a:    f7faff2b    ..+.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff6d0e:    f7fcfa4f    ..O.    BL       check_16MXtal_by_rcTracking ; 0x1fff31b0
        0x1fff6d12:    2005        .       MOVS     r0,#5
        0x1fff6d14:    f7faff26    ..&.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff6d18:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff6d1a:    2801        .(      CMP      r0,#1
        0x1fff6d1c:    d008        ..      BEQ      0x1fff6d30 ; wakeup_init1 + 80
        0x1fff6d1e:    f7fcfaf1    ....    BL       check_96MXtal_by_rcTracking ; 0x1fff3304
        0x1fff6d22:    e01a        ..      B        0x1fff6d5a ; wakeup_init1 + 122
        0x1fff6d24:    483a        :H      LDR      r0,[pc,#232] ; [0x1fff6e10] = 0x1fff70d8
        0x1fff6d26:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff6d28:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff6d2a:    f7faff1b    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff6d2e:    e024        $.      B        0x1fff6d7a ; wakeup_init1 + 154
        0x1fff6d30:    4836        6H      LDR      r0,[pc,#216] ; [0x1fff6e0c] = 0x4000f040
        0x1fff6d32:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff6d34:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff6d36:    0740        @.      LSLS     r0,r0,#29
        0x1fff6d38:    0f40        @.      LSRS     r0,r0,#29
        0x1fff6d3a:    2801        .(      CMP      r0,#1
        0x1fff6d3c:    d102        ..      BNE      0x1fff6d44 ; wakeup_init1 + 100
        0x1fff6d3e:    2000        .       MOVS     r0,#0
        0x1fff6d40:    f7fcfb68    ..h.    BL       clk_init ; 0x1fff3414
        0x1fff6d44:    6860        `h      LDR      r0,[r4,#4]
        0x1fff6d46:    27ff        .'      MOVS     r7,#0xff
        0x1fff6d48:    3701        .7      ADDS     r7,#1
        0x1fff6d4a:    43b8        .C      BICS     r0,r0,r7
        0x1fff6d4c:    6060        ``      STR      r0,[r4,#4]
        0x1fff6d4e:    2002        .       MOVS     r0,#2
        0x1fff6d50:    f7faff08    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b64
        0x1fff6d54:    6860        `h      LDR      r0,[r4,#4]
        0x1fff6d56:    4338        8C      ORRS     r0,r0,r7
        0x1fff6d58:    6060        ``      STR      r0,[r4,#4]
        0x1fff6d5a:    f7fafeeb    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b34
        0x1fff6d5e:    42a8        .B      CMP      r0,r5
        0x1fff6d60:    d301        ..      BCC      0x1fff6d66 ; wakeup_init1 + 134
        0x1fff6d62:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6d64:    e001        ..      B        0x1fff6d6a ; wakeup_init1 + 138
        0x1fff6d66:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6d68:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6d6a:    4929        )I      LDR      r1,[pc,#164] ; [0x1fff6e10] = 0x1fff70d8
        0x1fff6d6c:    221e        ."      MOVS     r2,#0x1e
        0x1fff6d6e:    6348        Hc      STR      r0,[r1,#0x34]
        0x1fff6d70:    4350        PC      MULS     r0,r2,r0
        0x1fff6d72:    4a28        (J      LDR      r2,[pc,#160] ; [0x1fff6e14] = 0x672
        0x1fff6d74:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff6d76:    1880        ..      ADDS     r0,r0,r2
        0x1fff6d78:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff6d7a:    4928        (I      LDR      r1,[pc,#160] ; [0x1fff6e1c] = 0x40030000
        0x1fff6d7c:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff6e18] = 0x3d068001
        0x1fff6d7e:    6008        .`      STR      r0,[r1,#0]
        0x1fff6d80:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff6e1c] = 0x40030000
        0x1fff6d82:    4927        'I      LDR      r1,[pc,#156] ; [0x1fff6e20] = 0x834
        0x1fff6d84:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff6d86:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff6d88:    21ff        .!      MOVS     r1,#0xff
        0x1fff6d8a:    3141        A1      ADDS     r1,r1,#0x41
        0x1fff6d8c:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff6d8e:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff6d90:    f7fcfb40    ..@.    BL       clk_init ; 0x1fff3414
        0x1fff6d94:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff6e24] = 0x271
        0x1fff6d96:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff6e28] = 0x40001014
        0x1fff6d98:    f7fbf81c    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff6d9c:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff6e28] = 0x40001014
        0x1fff6d9e:    2100        .!      MOVS     r1,#0
        0x1fff6da0:    3814        .8      SUBS     r0,r0,#0x14
        0x1fff6da2:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6da4:    2102        .!      MOVS     r1,#2
        0x1fff6da6:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6da8:    4920         I      LDR      r1,[pc,#128] ; [0x1fff6e2c] = 0x9c3
        0x1fff6daa:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff6dac:    2103        .!      MOVS     r1,#3
        0x1fff6dae:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6db0:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff6e28] = 0x40001014
        0x1fff6db2:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff6e30] = 0x3fffff
        0x1fff6db4:    3014        .0      ADDS     r0,r0,#0x14
        0x1fff6db6:    f7fbf80d    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff6dba:    2004        .       MOVS     r0,#4
        0x1fff6dbc:    f7fbfd5a    ..Z.    BL       NVIC_EnableIRQ ; 0x1fff2874
        0x1fff6dc0:    2014        .       MOVS     r0,#0x14
        0x1fff6dc2:    f7fbfd57    ..W.    BL       NVIC_EnableIRQ ; 0x1fff2874
        0x1fff6dc6:    2015        .       MOVS     r0,#0x15
        0x1fff6dc8:    f7fbfd54    ..T.    BL       NVIC_EnableIRQ ; 0x1fff2874
        0x1fff6dcc:    20ff        .       MOVS     r0,#0xff
        0x1fff6dce:    f7faff77    ..w.    BL       $Ven$TT$L$$set_max_length ; 0x1fff1cc0
        0x1fff6dd2:    2001        .       MOVS     r0,#1
        0x1fff6dd4:    f7fbf80a    ....    BL       $Ven$TT$L$$ll_hw_set_empty_head ; 0x1fff1dec
        0x1fff6dd8:    20ff        .       MOVS     r0,#0xff
        0x1fff6dda:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff6ddc:    f7fafed4    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff1b88
        0x1fff6de0:    2058        X       MOVS     r0,#0x58
        0x1fff6de2:    f7fafe3b    ..;.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff6de6:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff6e34] = 0x7530
        0x1fff6de8:    f7faff58    ..X.    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff1c9c
        0x1fff6dec:    9800        ..      LDR      r0,[sp,#0]
        0x1fff6dee:    f7fbf803    ....    BL       $Ven$TT$L$$ll_hw_set_timing ; 0x1fff1df8
        0x1fff6df2:    2007        .       MOVS     r0,#7
        0x1fff6df4:    f7faff94    ....    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff1d20
        0x1fff6df8:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff6dfa:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff6e38] = 0xfffefe00
        0x1fff6dfc:    4008        .@      ANDS     r0,r0,r1
        0x1fff6dfe:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff6e00:    3009        .0      ADDS     r0,r0,#9
        0x1fff6e02:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff6e04:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff6e06:    0000        ..      DCW    0
        0x1fff6e08:    1fff0a4a    J...    DCD    536808010
        0x1fff6e0c:    4000f040    @..@    DCD    1073803328
        0x1fff6e10:    1fff70d8    .p..    DCD    536834264
        0x1fff6e14:    00000672    r...    DCD    1650
        0x1fff6e18:    3d068001    ...=    DCD    1023836161
        0x1fff6e1c:    40030000    ...@    DCD    1073938432
        0x1fff6e20:    00000834    4...    DCD    2100
        0x1fff6e24:    00000271    q...    DCD    625
        0x1fff6e28:    40001014    ...@    DCD    1073745940
        0x1fff6e2c:    000009c3    ....    DCD    2499
        0x1fff6e30:    003fffff    ..?.    DCD    4194303
        0x1fff6e34:    00007530    0u..    DCD    30000
        0x1fff6e38:    fffefe00    ....    DCD    4294901248
    $d.realdata
    .constdata
        0x1fff6e3c:    0801003b    ;...    DCD    134283323
        0x1fff6e40:    00030002    ....    DCD    196610
        0x1fff6e44:    02060205    ....    DCD    33948165
        0x1fff6e48:    03080307    ....    DCD    50856711
        0x1fff6e4c:    000a0309    ....    DCD    656137
        0x1fff6e50:    030d030c    ....    DCD    51184396
        0x1fff6e54:    03010300    ....    DCD    50397952
        0x1fff6e58:    000b0304    ....    DCD    721668
        0x1fff6e5c:    030f030e    ....    DCD    51315470
        0x1fff6e60:    03110310    ....    DCD    51446544
        0x1fff6e64:    03130312    ....    DCD    51577618
        0x1fff6e68:    03150314    ....    DCD    51708692
        0x1fff6e6c:    00000316    ....    DCD    790
    .constdata
        0x1fff6e70:    00000003    ....    DCD    3
        0x1fff6e74:    00000000    ....    DCD    0
        0x1fff6e78:    00000000    ....    DCD    0
    .constdata
    c_gpio_index
        0x1fff6e7c:    03020100    ....    DCD    50462976
        0x1fff6e80:    0b0a0907    ....    DCD    185207047
        0x1fff6e84:    11100f0e    ....    DCD    286265102
        0x1fff6e88:    18171412    ....    DCD    404165650
        0x1fff6e8c:    1f1b1a19    ....    DCD    521869849
        0x1fff6e90:    2120         !      DCW    8480
        0x1fff6e92:    22          "       DCB    34
    c_gpio_pull
        0x1fff6e93:    00          .       DCB    0
        0x1fff6e94:    05000102    ....    DCD    83886338
        0x1fff6e98:    07080004    ....    DCD    117964804
        0x1fff6e9c:    000a0b00    ....    DCD    658176
        0x1fff6ea0:    1d001617    ....    DCD    486544919
        0x1fff6ea4:    0102011c    ....    DCD    16908572
        0x1fff6ea8:    01040501    ....    DCD    17040641
        0x1fff6eac:    11010d0e    ....    DCD    285281550
        0x1fff6eb0:    13140110    ....    DCD    320078096
        0x1fff6eb4:    01161701    ....    DCD    18224897
        0x1fff6eb8:    0202191a    ....    DCD    33691930
        0x1fff6ebc:    0a0b0201    ....    DCD    168493569
        0x1fff6ec0:    020d0e02    ....    DCD    34409986
        0x1fff6ec4:    14021011    ....    DCD    335679505
        0x1fff6ec8:    16170213    ....    DCD    370606611
        0x1fff6ecc:    03040503    ....    DCD    50595075
        0x1fff6ed0:    0b030708    ....    DCD    184747784
        0x1fff6ed4:    0d0e030a    ....    DCD    219022090
    retention_reg
        0x1fff6ed8:    0e000d00    ....    DCD    234884352
        0x1fff6edc:    11001000    ....    DCD    285216768
        0x1fff6ee0:    14001300    ....    DCD    335549184
        0x1fff6ee4:    08010701    ....    DCD    134285057
        0x1fff6ee8:    0b010a01    ....    DCD    184617473
        0x1fff6eec:    1d011c01    ....    DCD    486611969
        0x1fff6ef0:    05020402    ....    DCD    84018178
        0x1fff6ef4:    08020702    ....    DCD    134350594
        0x1fff6ef8:    1a021902    ....    DCD    436345090
        0x1fff6efc:    1d021c02    ....    DCD    486677506
        0x1fff6f00:    02030103    ....    DCD    33751299
        0x1fff6f04:    00001703    ....    DCD    5891
    .constdata
        0x1fff6f08:    ffff0605    ....    DCD    4294903301
        0x1fff6f0c:    0001c200    ....    DCD    115200
        0x1fff6f10:    00000001    ....    DCD    1
        0x1fff6f14:    00000000    ....    DCD    0
    .conststring
        0x1fff6f18:    5948505b    [PHY    DCD    1497911387
        0x1fff6f1c:    47424420     DBG    DCD    1195525152
        0x1fff6f20:    2074735d    ]st     DCD    544502621
        0x1fff6f24:    78323025    %02x    DCD    2016555045
        0x1fff6f28:    58545b20     [TX    DCD    1481923360
        0x1fff6f2c:    7461645d    ]dat    DCD    1952539741
        0x1fff6f30:    20642520     %d     DCD    543434016
        0x1fff6f34:    206b6361    ack     DCD    543908705
        0x1fff6f38:    72206425    %d r    DCD    1914725413
        0x1fff6f3c:    25207974    ty %    DCD    622885236
        0x1fff6f40:    615b2064    d [a    DCD    1633362020
        0x1fff6f44:    5d546b63    ckT]    DCD    1565813603
        0x1fff6f48:    25206425    %d %    DCD    622879781
        0x1fff6f4c:    525b2064    d [R    DCD    1381703780
        0x1fff6f50:    61645d58    X]da    DCD    1633967448
        0x1fff6f54:    64252074    t %d    DCD    1680154740
        0x1fff6f58:    6b636120     ack    DCD    1801675040
        0x1fff6f5c:    63206425    %d c    DCD    1663067173
        0x1fff6f60:    25206372    rc %    DCD    622879602
        0x1fff6f64:    67692064    d ig    DCD    1734942820
        0x1fff6f68:    6425206e    n %d    DCD    1680154734
        0x1fff6f6c:    00000a20     ...    DCD    2592
        0x1fff6f70:    5948505b    [PHY    DCD    1497911387
        0x1fff6f74:    6e69205d    ] in    DCD    1852383325
        0x1fff6f78:    64207469    it d    DCD    1679848553
        0x1fff6f7c:    20656e6f    one     DCD    543518319
        0x1fff6f80:    72206425    %d r    DCD    1914725413
        0x1fff6f84:    6e686366    fchn    DCD    1852334950
        0x1fff6f88:    41206425    %d A    DCD    1092641829
        0x1fff6f8c:    416f7475    utoA    DCD    1097823349
        0x1fff6f90:    25206b63    ck %    DCD    622881635
        0x1fff6f94:    57532064    d SW    DCD    1465065572
        0x1fff6f98:    7838255b    [%8x    DCD    2016945499
        0x1fff6f9c:    5243205d    ] CR    DCD    1380130909
        0x1fff6fa0:    64255b43    C[%d    DCD    1680169795
        0x1fff6fa4:    78382520     %8x    DCD    2016945440
        0x1fff6fa8:    5457205d    ] WT    DCD    1414996061
        0x1fff6fac:    7832255b    [%2x    DCD    2016552283
        0x1fff6fb0:    00000a5d    ]...    DCD    2653
    .conststring
        0x1fff6fb4:    33323130    0123    DCD    858927408
        0x1fff6fb8:    37363534    4567    DCD    926299444
        0x1fff6fbc:    42413938    89AB    DCD    1111570744
        0x1fff6fc0:    46454443    CDEF    DCD    1178944579
        0x1fff6fc4:    4a494847    GHIJ    DCD    1246316615
        0x1fff6fc8:    4e4d4c4b    KLMN    DCD    1313688651
        0x1fff6fcc:    5251504f    OPQR    DCD    1381060687
        0x1fff6fd0:    56555453    STUV    DCD    1448432723
        0x1fff6fd4:    5a595857    WXYZ    DCD    1515804759
        0x1fff6fd8:    00000000    ....    DCD    0
        0x1fff6fdc:    33323130    0123    DCD    858927408
        0x1fff6fe0:    37363534    4567    DCD    926299444
        0x1fff6fe4:    62613938    89ab    DCD    1650538808
        0x1fff6fe8:    66656463    cdef    DCD    1717920867
        0x1fff6fec:    6a696867    ghij    DCD    1785292903
        0x1fff6ff0:    6e6d6c6b    klmn    DCD    1852664939
        0x1fff6ff4:    7271706f    opqr    DCD    1920036975
        0x1fff6ff8:    76757473    stuv    DCD    1987409011
        0x1fff6ffc:    7a797877    wxyz    DCD    2054781047
        0x1fff7000:    00000000    ....    DCD    0
    Region$$Table$$Base
        0x1fff7004:    1fff0400    ....    DCD    536806400
        0x1fff7008:    1fff714c    Lq..    DCD    536834380
        0x1fff700c:    0000000c    ....    DCD    12
        0x1fff7010:    1fff2d70    p-..    DCD    536817008
        0x1fff7014:    1fff714c    Lq..    DCD    536834380
        0x1fff7018:    1fff0400    ....    DCD    536806400
        0x1fff701c:    00000400    ....    DCD    1024
        0x1fff7020:    1fff18c4    ....    DCD    536811716
        0x1fff7024:    1fff714c    Lq..    DCD    536834380
        0x1fff7028:    1fff714c    Lq..    DCD    536834380
        0x1fff702c:    00001414    ....    DCD    5140
        0x1fff7030:    1fff2d80    .-..    DCD    536817024
    _section_sram_code_
    Region$$Table$$Limit
    tasksArr
        0x1fff7034:    1fff2ab9    .*..    DCD    536816313
        0x1fff7038:    1fff2bc1    .+..    DCD    536816577
    _section_sram_code_
    tasksCnt
        0x1fff703c:    00000002    ....    DCD    2

====================================

** Section #2

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff7040
    File Offset : 22588 (0x583c)
    Size        : 268 bytes (0x10c)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff7040:   00 00 00 00 00 00 00 00 00 00 01 00 02 01 06 09    ................
    0x1fff7050:   09 53 6d 61 72 54 6e 52 46 07 ff 04 05 02 02 00    .SmarTnRF.......
    0x1fff7060:   00 00 00 00 ff 00 00 00 00 00 00 00 4c 53 00 00    ............LS..
    0x1fff7070:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff7080:   00 00 00 00 04 03 02 01 06 05 00 00 00 00 00 00    ................
    0x1fff7090:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff70a0:   02 00 00 00 88 21 28 00 59 02 e0 01 00 00 00 00    .....!(.Y.......
    0x1fff70b0:   00 00 00 00 00 00 00 00 dc 6f ff 1f b4 6f ff 1f    .........o...o..
    0x1fff70c0:   00 00 00 00 3b 00 01 08 00 00 00 00 00 00 00 00    ....;...........
    0x1fff70d0:   00 00 00 00 40 78 7d 01 00 00 00 02 00 00 02 00    ....@x}.........
    0x1fff70e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff70f0:   00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00    ................
    0x1fff7100:   00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00    ................
    0x1fff7110:   00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00    ................
    0x1fff7120:   00 00 00 00 00 10 00 00 00 00 00 00 02 05 09 0e    ................
    0x1fff7130:   14 22 7e 00 00 1d 70 00 00 00 00 00 00 00 00 00    ."~...p.........
    0x1fff7140:   00 00 00 00 00 00 00 00 00 00 00 00                ............


====================================

** Section #3

    Name        : ER_IROM1
    Type        : SHT_NOBITS (0x00000008)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff714c
    File Offset : 22856 (0x5948)
    Size        : 5140 bytes (0x1414)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 8
    Entry Size  : 0


====================================

** Section #4

    Name        : JUMP_TABLE
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC (0x00000002)
    Addr        : 0x1fff0000
    File Offset : 22856 (0x5948)
    Size        : 1024 bytes (0x400)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff0000:   00 00 00 00 c1 55 ff 1f 34 70 ff 1f 3c 70 ff 1f    .....U..4p..<p..
    0x1fff0010:   44 70 ff 1f 00 00 00 00 00 00 00 00 00 00 00 00    Dp..............
    0x1fff0020:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0030:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0040:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0050:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0060:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0070:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0080:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0090:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0100:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0110:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0120:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0130:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0140:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0150:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0160:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0170:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0180:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0190:   f5 41 ff 1f 99 42 ff 1f d9 64 ff 1f 00 00 00 00    .A...B...d......
    0x1fff01a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0200:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0210:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0220:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0230:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0240:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0250:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0260:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0270:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0280:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0290:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0300:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0310:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0320:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0330:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0340:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0350:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0360:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0370:   55 18 ff 1f 00 00 00 00 00 00 00 00 00 00 00 00    U...............
    0x1fff0380:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0390:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03a0:   00 00 00 00 00 00 00 00 00 00 00 00 99 38 ff 1f    .............8..
    0x1fff03b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................


====================================

** Section #5

    Name        : GOLBAL_CONFIG
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff0400
    File Offset : 23880 (0x5d48)
    Size        : 12 bytes (0xc)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    Data section was compressed (Original size: 1024 bytes)

    0x1fff0400:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0410:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0420:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0430:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0440:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0450:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0460:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0470:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0480:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0490:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0500:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0510:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0520:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0530:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0540:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0550:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0560:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0570:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0580:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0590:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0600:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0610:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0620:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0630:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0640:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0650:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0660:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0670:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0680:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0690:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0700:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0710:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0720:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0730:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0740:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0750:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0760:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0770:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0780:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0790:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................


====================================

** Section #6

    Name        : .debug_abbrev
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 23892 (0x5d54)
    Size        : 1476 bytes (0x5c4)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #7

    Name        : .debug_frame
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 25368 (0x6318)
    Size        : 5380 bytes (0x1504)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #8

    Name        : .debug_info
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 30748 (0x781c)
    Size        : 73512 bytes (0x11f28)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #9

    Name        : .debug_line
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 104260 (0x19744)
    Size        : 26732 bytes (0x686c)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #10

    Name        : .debug_loc
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 130992 (0x1ffb0)
    Size        : 10312 bytes (0x2848)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #11

    Name        : .debug_macinfo
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 141304 (0x227f8)
    Size        : 40248 bytes (0x9d38)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #12

    Name        : .debug_pubnames
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 181552 (0x2c530)
    Size        : 4363 bytes (0x110b)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #13

    Name        : .symtab
    Type        : SHT_SYMTAB (0x00000002)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 185916 (0x2d63c)
    Size        : 35840 bytes (0x8c00)
    Link        : Section 14 (.strtab)
    Info        : Last local symbol no = 899
    Alignment   : 4
    Entry Size  : 16


====================================

** Section #14

    Name        : .strtab
    Type        : SHT_STRTAB (0x00000003)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 221756 (0x3623c)
    Size        : 32980 bytes (0x80d4)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #15

    Name        : .note
    Type        : SHT_NOTE (0x00000007)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 254736 (0x3e310)
    Size        : 36 bytes (0x24)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

        Section     Segment
    ====================================

              1           0
              2           0
              3           0
              4           1
              5           1

====================================

** Section #16

    Name        : .comment
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 254772 (0x3e334)
    Size        : 38796 bytes (0x978c)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0

    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    ArmLink --library_type=microlib --callgraph --load_addr_map_info --map --symbols --xref --diag_suppress=9931 --cpu=Cortex-M0 --list=.\Listings\smart_nrf.map --output=.\Objects\smart_nrf.axf --scatter=.\scatter_load.sct --keep=jump_table_base --keep=global_config --info=summarysizes,sizes,totals,unused,veneers

    E:\keil\ARM\ARMCC\Bin\..\lib\armlib\h_p.l
    E:\keil\ARM\ARMCC\Bin\..\lib\armlib\m_ps.l
    E:\keil\ARM\ARMCC\Bin\..\lib\armlib\mc_p.l
    E:\keil\ARM\ARMCC\Bin\..\lib\armlib\mf_p.l
    E:\keil\ARM\ARMCC\Bin\..\lib\armlib\vfpsupport.l
    Input Comments:
    
    main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\main.o --vfemode=force

    Input Comments:
    
    p3d30-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\main.o --depend=.\objects\main.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\main.crf main.c
    
    
    
    
    
    osal_phyplusphy.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\osal_phyplusphy.o --depend=.\objects\osal_phyplusphy.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\osal_phyplusphy.crf source\OSAL_PhyPlusPhy.c
    
    phyplusphy_main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\phyplusphy_main.o --vfemode=force

    Input Comments:
    
    p3b00-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    phyplusphy_main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\phyplusphy_main.o --depend=.\objects\phyplusphy_main.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\phyplusphy_main.crf source\PhyPlusPhy_main.c
    
    
    
    
    phy_plus_phy.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\phy_plus_phy.o --vfemode=force

    Input Comments:
    
    p4d70-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    phy_plus_phy.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\phy_plus_phy.o --depend=.\objects\phy_plus_phy.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\phy_plus_phy.crf ..\..\..\components\profiles\phy_plus_phy\phy_plus_phy.c
    
    
    
    uart.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\uart.o --vfemode=force

    Input Comments:
    
    p4ca0-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    uart.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\uart.o --depend=.\objects\uart.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\uart.crf ..\..\..\components\driver\uart\uart.c
    
    
    
    
    
    clock.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\clock.o --vfemode=force

    Input Comments:
    
    p178c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    clock.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\clock.o --depend=.\objects\clock.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\clock.crf ..\..\..\components\driver\clock\clock.c
    
    
    gpio.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gpio.o --vfemode=force

    Input Comments:
    
    p16d4-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    gpio.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\gpio.o --depend=.\objects\gpio.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\gpio.crf ..\..\..\components\driver\gpio\gpio.c
    
    
    
    
    
    timer.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\timer.o --vfemode=force

    Input Comments:
    
    pf14-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    timer.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\timer.o --depend=.\objects\timer.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\timer.crf ..\..\..\components\driver\timer\timer.c
    
    
    
    watchdog.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\watchdog.o --vfemode=force

    Input Comments:
    
    p5190-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    watchdog.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\watchdog.o --depend=.\objects\watchdog.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\watchdog.crf ..\..\..\components\driver\watchdog\watchdog.c
    
    
    
    
    
    pwrmgr.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\pwrmgr.o --vfemode=force

    Input Comments:
    
    p564c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    pwrmgr.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\pwrmgr.o --depend=.\objects\pwrmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\pwrmgr.crf ..\..\..\components\driver\pwrmgr\pwrmgr.c
    
    
    
    my_printf.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\my_printf.o --vfemode=force

    Input Comments:
    
    p5658-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    my_printf.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\my_printf.o --depend=.\objects\my_printf.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\my_printf.crf ..\..\..\components\driver\log\my_printf.c
    
    
    
    
    flash.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\flash.o --vfemode=force

    Input Comments:
    
    p5874-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    flash.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\flash.o --depend=.\objects\flash.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\flash.crf ..\..\..\components\driver\flash\flash.c
    
    
    jump_table.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\jump_table.o --vfemode=force

    Input Comments:
    
    p5910-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    jump_table.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\jump_table.o --depend=.\objects\jump_table.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\jump_table.crf ..\..\..\misc\jump_table.c
    
    
    
    fs.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\fs.o --vfemode=force

    Input Comments:
    
    p59a8-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    fs.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\fs.o --depend=.\objects\fs.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\fs.crf ..\..\..\components\libraries\fs\fs.c
    
    
    
    
    startup_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    ArmAsm --debug --xref --diag_suppress=9931 --cpu=Cortex-M0 --apcs=interwork --depend=.\objects\startup_armcm0.d  -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM
    
    
    system_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\system_armcm0.o --vfemode=force

    Input Comments:
    
    p5a60-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    system_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\system_armcm0.o --depend=.\objects\system_armcm0.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\watchdog -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I..\..\..\components\profiles\phy_plus_phy -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP -DDEF_PHYPLUS_TRX_SUPPORT=3 -DDEF_PHYPLUS_AUTOACK_SUPPORT=0 -DDEF_PHYPLUS_NRF_SUPPORT=0 -DDEF_PHYPLUS_MESH_SUPPORT=0 --omf_browse=.\objects\system_armcm0.crf RTE/Device/ARMCM0/system_ARMCM0.c
    
    
    
    
    
    patch.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\patch.o --vfemode=force

    Input Comments:
    
    p4e6c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    patch.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\patch.o --depend=.\objects\patch.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -D__BUILD_PATCH_CFG__=1 -DMTU_SIZE=247 source\patch.c
    
    
    
    
    
    rf_phy_driver.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\rf_phy_driver.o --vfemode=force

    Input Comments:
    
    p598c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    rf_phy_driver.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\rf_phy_driver.o --depend=.\objects\rf_phy_driver.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -D__BUILD_PATCH_CFG__=1 -DMTU_SIZE=247 ..\..\components\ble_src\controller\rf_phy_driver.c
    
    
    
    
    phy_sec_ext.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\phy_sec_ext.o --vfemode=force

    Input Comments:
    
    p1d30-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    phy_sec_ext.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\phy_sec_ext.o --depend=.\objects\phy_sec_ext.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DMTU_SIZE=247 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 source\phy_sec_ext.c
    
    
    
    lib_efuse3.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\lib_efuse3.o --depend=.\objects\lib_efuse3.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -I..\..\lib\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DMTU_SIZE=247 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 --omf_browse=.\objects\lib_efuse3.crf source\lib_efuse3.c
    
    aes.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\aes.o --vfemode=force

    Input Comments:
    
    p194c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    aes.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\aes.o --depend=.\objects\aes.d --cpu=Cortex-M0 --apcs=interwork -O0 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DMTU_SIZE=247 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 source\aes.c
    
    
    
    
    

====================================

** Section #17

    Name        : .shstrtab
    Type        : SHT_STRTAB (0x00000003)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 293568 (0x47ac0)
    Size        : 172 bytes (0xac)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

address     size       variable name                            type
0x1fff70d4  0x4        SystemCoreClock                          uint32_t

address     size       variable name                            type
0x1fff0400  0x400      global_config                            array[256] of uint32

address     size       variable name                            type
0x1fff0000  0x400      jump_table_base                          array[256] of const pointer to const uint32_t

address     size       variable name                            type
0x1fff70d0  0x4        trap_c_callback                          pointer to function 

address     size       variable name                            type
0x1fff70c8  0x7        g_chipMAddr                              chipMAddr_t
0x1fff70c8  0x1        g_chipMAddr.chipMAddrStatus              CHIP_ID_STATUS_e
0x1fff70c9  0x6        g_chipMAddr.mAddr                        array[6] of uint8_t

address     size       variable name                            type
0x1fff70c4  0x4        s_xflashCtx                              xflash_Ctx_t
0x1fff70c4  0x4        s_xflashCtx.rd_instr                     uint32_t

address     size       variable name                            type
0x1fff70c0  0x1        spif_dma_use                             _Bool

address     size       variable name                            type
0x1fff70b8  0x4        digits                                   pointer to const char

address     size       variable name                            type
0x1fff70bc  0x4        upper_digits                             pointer to const char

address     size       variable name                            type
0x1fff7d40  0x78       mCtx                                     array[10] of pwrmgr_Ctx_t

address     size       variable name                            type
0x1fff70a0  0x1        mPwrMode                                 uint8_t

address     size       variable name                            type
0x1fff70b4  0x1        pwroff_register_number                   uint8

address     size       variable name                            type
0x1fff70a4  0x4        s_config_swClk0                          uint32_t

address     size       variable name                            type
0x1fff70a8  0x4        s_config_swClk1                          uint32_t

address     size       variable name                            type
0x1fff70ac  0x4        s_gpio_wakeup_src_group1                 uint32_t

address     size       variable name                            type
0x1fff70b0  0x4        s_gpio_wakeup_src_group2                 uint32_t

address     size       variable name                            type
0x1fff70a1  0x1        s_pwrmgr_cfg                             PWRMGR_CFG_BIT
0x1fff70a1  0x1(5:3)   s_pwrmgr_cfg.sramRet_config              uint8_t
0x1fff70a1  0x1(0:5)   s_pwrmgr_cfg.moudle_num                  uint8_t

address     size       variable name                            type
0x1fff7db8  0xc        s_pwroff_cfg                             array[3] of pwroff_cfg_t

address     size       variable name                            type
0x00000000  0x8        TimerIndex                               array[2] of const pointer to AP_TIM_TypeDef

address     size       variable name                            type
0x1fff709c  0x4        s_ap_callback                            ap_tm_hdl_t

address     size       variable name                            type
0x1fff6e7c  0x17       c_gpio_index                             array[23] of const uint8_t

address     size       variable name                            type
0x1fff6e93  0x45       c_gpio_pull                              array[23] of const PULL_TypeDef

address     size       variable name                            type
0x1fff7c10  0x130      m_gpioCtx                                gpio_Ctx_t
0x1fff7c10  0x1        m_gpioCtx.state                          _Bool
0x1fff7c11  0x17       m_gpioCtx.pin_assignments                array[23] of uint8_t
0x1fff7c28  0x4        m_gpioCtx.pin_retention_status           uint32_t
0x1fff7c2c  0x114      m_gpioCtx.irq_ctx                        array[23] of gpioin_Ctx_t

address     size       variable name                            type
0x1fff6ed8  0x2e       retention_reg                            array[23] of array[2] of const signed char

address     size       variable name                            type
0x1fff7098  0x1        m_uart0_even_parity                      _Bool

address     size       variable name                            type
0x1fff7099  0x1        m_uart1_even_parity                      _Bool

address     size       variable name                            type
0x1fff7bd0  0x40       m_uartCtx                                array[2] of uart_Ctx_t

address     size       variable name                            type
0x1fff707c  0x4        BLE_IRQHandler_Restore                   uint32

address     size       variable name                            type
0x1fff7070  0x4        PHY_ISR_entry_time                       uint32

address     size       variable name                            type
0x1fff7067  0x1        PhyPlusPhy_TaskID                        uint8

address     size       variable name                            type
0x1fff706a  0x2        advHead                                  array[2] of uint8_t

address     size       variable name                            type
0x1fff7b4c  0x20       adv_buffer                               array[32] of uint8_t

address     size       variable name                            type
0x1fff7084  0x6        peer_addr                                array[6] of uint8_t

address     size       variable name                            type
0x1fff794c  0x100      phyBufRx                                 array[256] of uint8_t

address     size       variable name                            type
0x1fff7a4c  0x100      phyBufTx                                 array[256] of uint8_t

address     size       variable name                            type
0x1fff7065  0x1        phyCarrSens                              uint8

address     size       variable name                            type
0x1fff7068  0x2        phyFoff                                  uint16

address     size       variable name                            type
0x1fff7066  0x1        phyRssi                                  uint8

address     size       variable name                            type
0x1fff7074  0x4        phy_data_cbfunc                          phy_comm_cb_t

address     size       variable name                            type
0x1fff7078  0x4        phy_opcode_cbfunc                        phy_comm_cb_t

address     size       variable name                            type
0x1fff706c  0x3        s_chanHop                                chanHop_t
0x1fff706c  0x1        s_chanHop.chan_map                       array[1] of uint8_t
0x1fff706d  0x1        s_chanHop.wt_map                         array[1] of uint8_t
0x1fff706e  0x1        s_chanHop.curIdx                         uint8_t

address     size       variable name                            type
0x1fff7b80  0x2c       s_phy                                    phyCtx_t
0x1fff7b80  0x1      * s_phy.Status                             uint8_t
0x1fff7b84  0x4        s_phy.txIntv                             uint32_t
0x1fff7b88  0x4        s_phy.txDuration                         uint32_t
0x1fff7b8c  0x4        s_phy.rxIntv                             uint32_t
0x1fff7b90  0x4        s_phy.rxDuration                         uint32_t
0x1fff7b94  0x1      * s_phy.rfChn                              uint8_t
0x1fff7b98  0x4        s_phy.rxOnlyTO                           uint32_t
0x1fff7b9c  0x2      * s_phy.rxAckTO                            uint16_t
0x1fff7ba0  0x4        s_phy.rxScanT0                           uint32_t
0x1fff7ba4  0x1        s_phy.reTxCnt                            uint8_t
0x1fff7ba5  0x1        s_phy.reTxMax                            uint8_t
0x1fff7ba6  0x1      * s_phy.txAck                              uint8_t
0x1fff7ba8  0x2        s_phy.reTxDly                            uint16_t
0x1fff7baa  0x1        s_phy.enAutoAck                          uint8_t
0x1fff7bab  0x1        s_phy.phyMode                            uint8_t

address     size       variable name                            type
0x1fff7bac  0x24       s_phyDbg                                 phyDeubg_t
0x1fff7bac  0x4        s_phyDbg.rx_data_cnt                     uint32_t
0x1fff7bb0  0x4        s_phyDbg.rx_data_ign                     uint32_t
0x1fff7bb4  0x4        s_phyDbg.rx_crc_err                      uint32_t
0x1fff7bb8  0x4        s_phyDbg.rx_txack_cnt                    uint32_t
0x1fff7bbc  0x4        s_phyDbg.tx_data_cnt                     uint32_t
0x1fff7bc0  0x4        s_phyDbg.tx_ack_cnt                      uint32_t
0x1fff7bc4  0x4        s_phyDbg.tx_retry_cnt                    uint32_t
0x1fff7bc8  0x4        s_phyDbg.rx_txack_t0                     uint32_t
0x1fff7bcc  0x4        s_phyDbg.rx_txack_t1                     uint32_t

address     size       variable name                            type
0x1fff7090  0x8        s_phySch                                 phySch_t
0x1fff7090  0x4        s_phySch.txMargin                        uint32_t
0x1fff7094  0x4        s_phySch.rxMargin                        uint32_t

address     size       variable name                            type
0x1fff7b6c  0x14       s_pktCfg                                 pktCfg_t
0x1fff7b6c  0x1        s_pktCfg.pktFmt                          uint8_t
0x1fff7b6d  0x1        s_pktCfg.pduLen                          uint8_t
0x1fff7b6e  0x1        s_pktCfg.wtSeed                          uint8_t
0x1fff7b6f  0x1        s_pktCfg.crcFmt                          uint8_t
0x1fff7b70  0x4        s_pktCfg.crcSeed                         uint32_t
0x1fff7b74  0x4        s_pktCfg.syncWord                        uint32_t
0x1fff7b78  0x4        s_pktCfg.p_txBuf                         pointer to uint8_t
0x1fff7b7c  0x4        s_pktCfg.p_rxBuf                         pointer to uint8_t

address     size       variable name                            type
0x1fff708a  0x6        s_pubAddr                                array[6] of uint8_t

address     size       variable name                            type
0x1fff7064  0x1        s_rf_pid                                 uint8_t

address     size       variable name                            type
0x1fff7080  0x4        s_txT0                                   uint32_t

address     size       variable name                            type
0x1fff7049  0x1        Smart_nRF_TaskID                         uint8_t

address     size       variable name                            type
0x1fff704a  0x2        advCnt                                   uint16_t

address     size       variable name                            type
0x1fff7034  0x8        tasksArr                                 array[2] of const pTaskEventHandlerFn

address     size       variable name                            type
0x1fff703c  0x1        tasksCnt                                 const uint8

address     size       variable name                            type
0x1fff7044  0x4        tasksEvents                              pointer to uint16

address     size       variable name                            type
0x1fff7040  0x1        g_clk32K_config                          volatile uint8

address     size       variable name                            type
0x1fff714c  0x800      g_largeHeap                              array[2048] of uint8

address     size       variable name                            type
0x00000000  0x1        g_spif_clk_config                        volatile sysclk_t

