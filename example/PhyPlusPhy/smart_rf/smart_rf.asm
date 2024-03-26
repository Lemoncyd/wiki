
========================================================================

** ELF Header Information

    File Name: ./Objects/smart_rf.axf

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

    Program header offset: 258160 (0x0003f070)
    Section header offset: 258224 (0x0003f0b0)

    Section header string table index: 17

========================================================================

** Program header #0

    Type          : PT_LOAD (1)
    File Offset   : 21568 (0x5440)
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
    Size in file  : 21516 bytes (0x540c)
    Size in memory: 26592 bytes (0x67e0)
    Flags         : PF_X + PF_W + PF_R + PF_ARM_ENTRY (0x80000007)
    Alignment     : 8


========================================================================

** Section #1

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_EXECINSTR (0x00000006)
    Addr        : 0x1fff1838
    File Offset : 52 (0x34)
    Size        : 21312 bytes (0x5340)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    $d.realdata
    RESET
    __Vectors
        0x1fff1838:    1fff8018    ....    DCD    536838168
        0x1fff183c:    1fff188d    ....    DCD    536811661
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x1fff1840:    4803        .H      LDR      r0,__lit__00000000 ; [0x1fff1850] = 0x1fff8018
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
        0x1fff1848:    4800        .H      LDR      r0,[pc,#0] ; [0x1fff184c] = 0x1fff5421
        0x1fff184a:    4700        .G      BX       r0
    $d
        0x1fff184c:    1fff5421    !T..    DCD    536826913
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x1fff1850:    1fff8018    ....    DCD    536838168
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
        0x1fff1876:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff1884] = 0x1fff2ead
        0x1fff1878:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff1888] = 0x1fff1830
        0x1fff187a:    4695        .F      MOV      sp,r2
        0x1fff187c:    4708        .G      BX       r1
    $d
        0x1fff187e:    0000        ..      DCW    0
        0x1fff1880:    1fff0800    ....    DCD    536807424
        0x1fff1884:    1fff2ead    ....    DCD    536817325
        0x1fff1888:    1fff1830    0...    DCD    536811568
    $t
    .text
    Reset_Handler
        0x1fff188c:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff1898] = 0x1fff2c5d
        0x1fff188e:    4780        .G      BLX      r0
        0x1fff1890:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff189c] = 0x1fff1841
        0x1fff1892:    4700        .G      BX       r0
        0x1fff1894:    e7fe        ..      B        0x1fff1894 ; Reset_Handler + 8
    $d
        0x1fff1896:    0000        ..      DCW    0
        0x1fff1898:    1fff2c5d    ],..    DCD    536816733
        0x1fff189c:    1fff1841    A...    DCD    536811585
    $t
    .text
    __scatterload
    __scatterload_rt2
        0x1fff18a0:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff18bc] = 0x1fff6b40
        0x1fff18a2:    2501        .%      MOVS     r5,#1
        0x1fff18a4:    4e06        .N      LDR      r6,[pc,#24] ; [0x1fff18c0] = 0x1fff6b70
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
        0x1fff18bc:    1fff6b40    @k..    DCD    536832832
        0x1fff18c0:    1fff6b70    pk..    DCD    536832880
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
    $Ven$TT$L$$ll_hw_read_rfifo_pplus
        0x1fff1abc:    b403        ..      PUSH     {r0,r1}
        0x1fff1abe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ac4] = 0x10ee9
        0x1fff1ac0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ac2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ac4:    00010ee9    ....    DCD    69353
    $t
    $Ven$TT$L$$osal_set_event
        0x1fff1ac8:    b403        ..      PUSH     {r0,r1}
        0x1fff1aca:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ad0] = 0x1520d
        0x1fff1acc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ace:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ad0:    0001520d    .R..    DCD    86541
    $t
    $Ven$TT$L$$osal_start_timerEx
        0x1fff1ad4:    b403        ..      PUSH     {r0,r1}
        0x1fff1ad6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1adc] = 0x1528b
        0x1fff1ad8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ada:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1adc:    0001528b    .R..    DCD    86667
    $t
    $Ven$TT$L$$gpio_write
        0x1fff1ae0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ae2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ae8] = 0xb319
        0x1fff1ae4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ae6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ae8:    0000b319    ....    DCD    45849
    $t
    $Ven$TT$L$$efuse_read
        0x1fff1aec:    b403        ..      PUSH     {r0,r1}
        0x1fff1aee:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1af4] = 0xace1
        0x1fff1af0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1af2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1af4:    0000ace1    ....    DCD    44257
    $t
    $Ven$TT$L$$rom_uart_init
        0x1fff1af8:    b403        ..      PUSH     {r0,r1}
        0x1fff1afa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b00] = 0xb379
        0x1fff1afc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1afe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b00:    0000b379    y...    DCD    45945
    $t
    $Ven$TT$L$$log_printf
        0x1fff1b04:    b403        ..      PUSH     {r0,r1}
        0x1fff1b06:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b0c] = 0x13ae5
        0x1fff1b08:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b0a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b0c:    00013ae5    .:..    DCD    80613
    $t
    $Ven$TT$L$$rtc_get_counter
        0x1fff1b10:    b403        ..      PUSH     {r0,r1}
        0x1fff1b12:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b18] = 0x16b15
        0x1fff1b14:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b16:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b18:    00016b15    .k..    DCD    92949
    $t
    $Ven$TT$L$$osal_init_system
        0x1fff1b1c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b1e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b24] = 0x14aed
        0x1fff1b20:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b22:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b24:    00014aed    .J..    DCD    84717
    $t
    $Ven$TT$L$$osal_pwrmgr_device
        0x1fff1b28:    b403        ..      PUSH     {r0,r1}
        0x1fff1b2a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b30] = 0x14fa5
        0x1fff1b2c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b2e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b30:    00014fa5    .O..    DCD    85925
    $t
    $Ven$TT$L$$osal_start_system
        0x1fff1b34:    b403        ..      PUSH     {r0,r1}
        0x1fff1b36:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b3c] = 0x15285
        0x1fff1b38:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b3a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b3c:    00015285    .R..    DCD    86661
    $t
    $Ven$TT$L$$WaitRTCCount
        0x1fff1b40:    b403        ..      PUSH     {r0,r1}
        0x1fff1b42:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b48] = 0x8901
        0x1fff1b44:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b46:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b48:    00008901    ....    DCD    35073
    $t
    $Ven$TT$L$$set_sleep_flag
        0x1fff1b4c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b4e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b54] = 0x16c01
        0x1fff1b50:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b52:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b54:    00016c01    .l..    DCD    93185
    $t
    $Ven$TT$L$$read_LL_remainder_time
        0x1fff1b58:    b403        ..      PUSH     {r0,r1}
        0x1fff1b5a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b60] = 0x15cbd
        0x1fff1b5c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b5e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b60:    00015cbd    .\..    DCD    89277
    $t
    $Ven$TT$L$$ll_hw_set_rx_timeout_1st
        0x1fff1b64:    b403        ..      PUSH     {r0,r1}
        0x1fff1b66:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b6c] = 0x11285
        0x1fff1b68:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b6a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b6c:    00011285    ....    DCD    70277
    $t
    $Ven$TT$L$$enterSleepProcess0
        0x1fff1b70:    b403        ..      PUSH     {r0,r1}
        0x1fff1b72:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b78] = 0xaed1
        0x1fff1b74:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b76:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b78:    0000aed1    ....    DCD    44753
    $t
    $Ven$TT$L$$LL_ENC_AES128_Encrypt
        0x1fff1b7c:    b403        ..      PUSH     {r0,r1}
        0x1fff1b7e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b84] = 0x3fc5
        0x1fff1b80:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b82:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b84:    00003fc5    .?..    DCD    16325
    $t
    $Ven$TT$L$$osal_memcmp
        0x1fff1b88:    b403        ..      PUSH     {r0,r1}
        0x1fff1b8a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b90] = 0x14ccd
        0x1fff1b8c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b8e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b90:    00014ccd    .L..    DCD    85197
    $t
    $Ven$TT$L$$__aeabi_memclr4
        0x1fff1b94:    b403        ..      PUSH     {r0,r1}
        0x1fff1b96:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1b9c] = 0xeb3
        0x1fff1b98:    9001        ..      STR      r0,[sp,#4]
        0x1fff1b9a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1b9c:    00000eb3    ....    DCD    3763
    $t
    $Ven$TT$L$$__aeabi_memcpy4
        0x1fff1ba0:    b403        ..      PUSH     {r0,r1}
        0x1fff1ba2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ba8] = 0xe81
        0x1fff1ba4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ba6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ba8:    00000e81    ....    DCD    3713
    $t
    $Ven$TT$L$$disableSleep
        0x1fff1bac:    b403        ..      PUSH     {r0,r1}
        0x1fff1bae:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bb4] = 0xa921
        0x1fff1bb0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bb2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bb4:    0000a921    !...    DCD    43297
    $t
    $Ven$TT$L$$osal_mem_set_heap
        0x1fff1bb8:    b403        ..      PUSH     {r0,r1}
        0x1fff1bba:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bc0] = 0x14cb5
        0x1fff1bbc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bbe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bc0:    00014cb5    .L..    DCD    85173
    $t
    $Ven$TT$L$$spif_config
        0x1fff1bc4:    b403        ..      PUSH     {r0,r1}
        0x1fff1bc6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bcc] = 0x16dc5
        0x1fff1bc8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bca:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bcc:    00016dc5    .m..    DCD    93637
    $t
    $Ven$TT$L$$spif_read_id
        0x1fff1bd0:    b403        ..      PUSH     {r0,r1}
        0x1fff1bd2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bd8] = 0x17209
        0x1fff1bd4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bd6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bd8:    00017209    .r..    DCD    94729
    $t
    $Ven$TT$L$$llProcessTxData0
        0x1fff1bdc:    b403        ..      PUSH     {r0,r1}
        0x1fff1bde:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1be4] = 0xd4e9
        0x1fff1be0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1be2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1be4:    0000d4e9    ....    DCD    54505
    $t
    $Ven$TT$L$$llReleaseConnId0
        0x1fff1be8:    b403        ..      PUSH     {r0,r1}
        0x1fff1bea:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bf0] = 0xd579
        0x1fff1bec:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bee:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bf0:    0000d579    y...    DCD    54649
    $t
    $Ven$TT$L$$llSlaveEvt_TaskEndOk0
        0x1fff1bf4:    b403        ..      PUSH     {r0,r1}
        0x1fff1bf6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1bfc] = 0xffad
        0x1fff1bf8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1bfa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1bfc:    0000ffad    ....    DCD    65453
    $t
    $Ven$TT$L$$getTxBufferFree
        0x1fff1c00:    b403        ..      PUSH     {r0,r1}
        0x1fff1c02:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c08] = 0xb05d
        0x1fff1c04:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c06:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c08:    0000b05d    ]...    DCD    45149
    $t
    $Ven$TT$L$$get_tx_write_ptr
        0x1fff1c0c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c0e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c14] = 0xb0e1
        0x1fff1c10:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c12:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c14:    0000b0e1    ....    DCD    45281
    $t
    $Ven$TT$L$$LL_ENC_Encrypt
        0x1fff1c18:    b403        ..      PUSH     {r0,r1}
        0x1fff1c1a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c20] = 0x4261
        0x1fff1c1c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c1e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c20:    00004261    aB..    DCD    16993
    $t
    $Ven$TT$L$$__aeabi_memcpy
        0x1fff1c24:    b403        ..      PUSH     {r0,r1}
        0x1fff1c26:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c2c] = 0xe81
        0x1fff1c28:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c2a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c2c:    00000e81    ....    DCD    3713
    $t
    $Ven$TT$L$$update_tx_write_ptr
        0x1fff1c30:    b403        ..      PUSH     {r0,r1}
        0x1fff1c32:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c38] = 0x17685
        0x1fff1c34:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c36:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c38:    00017685    .v..    DCD    95877
    $t
    $Ven$TT$L$$ll_hw_write_tfifo
        0x1fff1c3c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c3e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c44] = 0x115c1
        0x1fff1c40:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c42:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c44:    000115c1    ....    DCD    71105
    $t
    $Ven$TT$L$$ll_hw_get_tfifo_wrptr
        0x1fff1c48:    b403        ..      PUSH     {r0,r1}
        0x1fff1c4a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c50] = 0x10ccd
        0x1fff1c4c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c4e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c50:    00010ccd    ....    DCD    68813
    $t
    $Ven$TT$L$$getTxBufferSize
        0x1fff1c54:    b403        ..      PUSH     {r0,r1}
        0x1fff1c56:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c5c] = 0xb071
        0x1fff1c58:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c5a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c5c:    0000b071    q...    DCD    45169
    $t
    $Ven$TT$L$$get_tx_read_ptr
        0x1fff1c60:    b403        ..      PUSH     {r0,r1}
        0x1fff1c62:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c68] = 0xb0d9
        0x1fff1c64:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c66:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c68:    0000b0d9    ....    DCD    45273
    $t
    $Ven$TT$L$$update_tx_read_ptr
        0x1fff1c6c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c6e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c74] = 0x17659
        0x1fff1c70:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c72:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c74:    00017659    Yv..    DCD    95833
    $t
    $Ven$TT$L$$llEnqueueCtrlPkt
        0x1fff1c78:    b403        ..      PUSH     {r0,r1}
        0x1fff1c7a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c80] = 0xb953
        0x1fff1c7c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c7e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c80:    0000b953    S...    DCD    47443
    $t
    $Ven$TT$L$$ll_hw_set_loop_timeout
        0x1fff1c84:    b403        ..      PUSH     {r0,r1}
        0x1fff1c86:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c8c] = 0x1118d
        0x1fff1c88:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c8a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c8c:    0001118d    ....    DCD    70029
    $t
    $Ven$TT$L$$get_rx_write_ptr
        0x1fff1c90:    b403        ..      PUSH     {r0,r1}
        0x1fff1c92:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1c98] = 0xb0b9
        0x1fff1c94:    9001        ..      STR      r0,[sp,#4]
        0x1fff1c96:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1c98:    0000b0b9    ....    DCD    45241
    $t
    $Ven$TT$L$$getRxBufferFree
        0x1fff1c9c:    b403        ..      PUSH     {r0,r1}
        0x1fff1c9e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ca4] = 0xb01d
        0x1fff1ca0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1ca2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ca4:    0000b01d    ....    DCD    45085
    $t
    $Ven$TT$L$$set_max_length
        0x1fff1ca8:    b403        ..      PUSH     {r0,r1}
        0x1fff1caa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cb0] = 0x16bed
        0x1fff1cac:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cae:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cb0:    00016bed    .k..    DCD    93165
    $t
    $Ven$TT$L$$ll_hw_read_tfifo_packet
        0x1fff1cb4:    b403        ..      PUSH     {r0,r1}
        0x1fff1cb6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cbc] = 0x10fad
        0x1fff1cb8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cba:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cbc:    00010fad    ....    DCD    69549
    $t
    $Ven$TT$L$$osal_mem_alloc
        0x1fff1cc0:    b403        ..      PUSH     {r0,r1}
        0x1fff1cc2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cc8] = 0x14b3d
        0x1fff1cc4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cc6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cc8:    00014b3d    =K..    DCD    84797
    $t
    $Ven$TT$L$$ll_read_rxfifo0
        0x1fff1ccc:    b403        ..      PUSH     {r0,r1}
        0x1fff1cce:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cd4] = 0x136cd
        0x1fff1cd0:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cd2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cd4:    000136cd    .6..    DCD    79565
    $t
    $Ven$TT$L$$drv_irq_init
        0x1fff1cd8:    b403        ..      PUSH     {r0,r1}
        0x1fff1cda:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1ce0] = 0xa9c9
        0x1fff1cdc:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cde:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1ce0:    0000a9c9    ....    DCD    43465
    $t
    $Ven$TT$L$$__aeabi_uidivmod
        0x1fff1ce4:    b403        ..      PUSH     {r0,r1}
        0x1fff1ce6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cec] = 0xe09
        0x1fff1ce8:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cea:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cec:    00000e09    ....    DCD    3593
    $t
    $Ven$TT$L$$osal_memset
        0x1fff1cf0:    b403        ..      PUSH     {r0,r1}
        0x1fff1cf2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1cf8] = 0x14d15
        0x1fff1cf4:    9001        ..      STR      r0,[sp,#4]
        0x1fff1cf6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1cf8:    00014d15    .M..    DCD    85269
    $t
    $Ven$TT$L$$osal_pwrmgr_powerconserve0
        0x1fff1cfc:    b403        ..      PUSH     {r0,r1}
        0x1fff1cfe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d04] = 0x14fd9
        0x1fff1d00:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d02:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d04:    00014fd9    .O..    DCD    85977
    $t
    $Ven$TT$L$$ll_hw_set_crc_fmt
        0x1fff1d08:    b403        ..      PUSH     {r0,r1}
        0x1fff1d0a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d10] = 0x1112d
        0x1fff1d0c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d0e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d10:    0001112d    -...    DCD    69933
    $t
    $Ven$TT$L$$ll_hw_ign_rfifo
        0x1fff1d14:    b403        ..      PUSH     {r0,r1}
        0x1fff1d16:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d1c] = 0x10df9
        0x1fff1d18:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d1a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d1c:    00010df9    ....    DCD    69113
    $t
    $Ven$TT$L$$ll_hw_set_pplus_pktfmt
        0x1fff1d20:    b403        ..      PUSH     {r0,r1}
        0x1fff1d22:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1d28] = 0x111a1
        0x1fff1d24:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d26:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1d28:    000111a1    ....    DCD    70049
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
    $Ven$TT$L$$osal_memcpy
        0x1fff1d98:    b403        ..      PUSH     {r0,r1}
        0x1fff1d9a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff1da0] = 0x14ce9
        0x1fff1d9c:    9001        ..      STR      r0,[sp,#4]
        0x1fff1d9e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff1da0:    00014ce9    .L..    DCD    85225
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
        0x1fff1f02:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff1fd0] = 0x1fff7688
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
        0x1fff1f46:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff1fd0] = 0x1fff7688
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
        0x1fff1f92:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff1fd4] = 0x1fff6a48
        0x1fff1f94:    466d        mF      MOV      r5,sp
        0x1fff1f96:    cb0d        ..      LDM      r3,{r0,r2,r3}
        0x1fff1f98:    c50d        ..      STM      r5!,{r0,r2,r3}
        0x1fff1f9a:    4668        hF      MOV      r0,sp
        0x1fff1f9c:    4788        .G      BLX      r1
        0x1fff1f9e:    2c00        .,      CMP      r4,#0
        0x1fff1fa0:    d003        ..      BEQ      0x1fff1faa ; irq_tx_empty_handler + 106
        0x1fff1fa2:    2019        .       MOVS     r0,#0x19
        0x1fff1fa4:    f002f97a    ..z.    BL       hal_pwrmgr_unlock ; 0x1fff429c
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
        0x1fff1fd0:    1fff7688    .v..    DCD    536835720
        0x1fff1fd4:    1fff6a48    Hj..    DCD    536832584
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
        0x1fff1fee:    f002f8ad    ....    BL       hal_pwrmgr_RAM_retention_clr ; 0x1fff414c
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
    _section_sram_code_
    spif_lock
        0x1fff200c:    b510        ..      PUSH     {r4,lr}
        0x1fff200e:    f7fffc77    ..w.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff2012:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff2048] = 0xe000e100
        0x1fff2014:    6804        .h      LDR      r4,[r0,#0]
        0x1fff2016:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff2048] = 0xe000e100
        0x1fff2018:    1741        A.      ASRS     r1,r0,#29
        0x1fff201a:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff201c:    6011        .`      STR      r1,[r2,#0]
        0x1fff201e:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff204c] = 0x100010
        0x1fff2020:    6001        .`      STR      r1,[r0,#0]
        0x1fff2022:    2000        .       MOVS     r0,#0
        0x1fff2024:    f003f808    ....    BL       ll_patch_restore ; 0x1fff5038
        0x1fff2028:    f7fffc76    ..v.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff202c:    4620         F      MOV      r0,r4
        0x1fff202e:    bd10        ..      POP      {r4,pc}
    spif_unlock
        0x1fff2030:    b510        ..      PUSH     {r4,lr}
        0x1fff2032:    4604        .F      MOV      r4,r0
        0x1fff2034:    f7fffc64    ..d.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff2038:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff2048] = 0xe000e100
        0x1fff203a:    6004        .`      STR      r4,[r0,#0]
        0x1fff203c:    2001        .       MOVS     r0,#1
        0x1fff203e:    f002fffb    ....    BL       ll_patch_restore ; 0x1fff5038
        0x1fff2042:    f7fffc69    ..i.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff2046:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff2048:    e000e100    ....    DCD    3758153984
        0x1fff204c:    00100010    ....    DCD    1048592
    $t
    _section_xip_code_
    LL_CreateConnCancel1
        0x1fff2050:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2052:    f7fffc55    ..U.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff2056:    4c90        .L      LDR      r4,[pc,#576] ; [0x1fff2298] = 0x1fff0998
        0x1fff2058:    2000        .       MOVS     r0,#0
        0x1fff205a:    6825        %h      LDR      r5,[r4,#0]
        0x1fff205c:    6020         `      STR      r0,[r4,#0]
        0x1fff205e:    f7fffc7f    ....    BL       $Ven$TT$L$$LL_CreateConnCancel0 ; 0x1fff1960
        0x1fff2062:    4606        .F      MOV      r6,r0
        0x1fff2064:    6025        %`      STR      r5,[r4,#0]
        0x1fff2066:    f7fffc57    ..W.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff206a:    4630        0F      MOV      r0,r6
        0x1fff206c:    bd70        p.      POP      {r4-r6,pc}
    global_config_maxscanrsplen
        0x1fff206e:    498b        .I      LDR      r1,[pc,#556] ; [0x1fff229c] = 0x1fff6bd0
        0x1fff2070:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff2072:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff2074:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff2076:    6588        .e      STR      r0,[r1,#0x58]
        0x1fff2078:    4770        pG      BX       lr
    init_config
        0x1fff207a:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff207c:    f001f834    ..4.    BL       _rom_efuse_version_init ; 0x1fff30e8
        0x1fff2080:    4d86        .M      LDR      r5,[pc,#536] ; [0x1fff229c] = 0x1fff6bd0
        0x1fff2082:    4a87        .J      LDR      r2,[pc,#540] ; [0x1fff22a0] = 0x1fff0a4a
        0x1fff2084:    7268        hr      STRB     r0,[r5,#9]
        0x1fff2086:    7811        .x      LDRB     r1,[r2,#0]
        0x1fff2088:    2902        .)      CMP      r1,#2
        0x1fff208a:    d903        ..      BLS      0x1fff2094 ; init_config + 26
        0x1fff208c:    2800        .(      CMP      r0,#0
        0x1fff208e:    d101        ..      BNE      0x1fff2094 ; init_config + 26
        0x1fff2090:    2001        .       MOVS     r0,#1
        0x1fff2092:    7010        .p      STRB     r0,[r2,#0]
        0x1fff2094:    4983        .I      LDR      r1,[pc,#524] ; [0x1fff22a4] = 0x1fff0400
        0x1fff2096:    2000        .       MOVS     r0,#0
        0x1fff2098:    4604        .F      MOV      r4,r0
        0x1fff209a:    60e9        .`      STR      r1,[r5,#0xc]
        0x1fff209c:    0083        ..      LSLS     r3,r0,#2
        0x1fff209e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff20a0:    50cc        .P      STR      r4,[r1,r3]
        0x1fff20a2:    28ff        .(      CMP      r0,#0xff
        0x1fff20a4:    ddfa        ..      BLE      0x1fff209c ; init_config + 34
        0x1fff20a6:    68e8        .h      LDR      r0,[r5,#0xc]
        0x1fff20a8:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff22a8] = 0x1fff8018
        0x1fff20aa:    2388        .#      MOVS     r3,#0x88
        0x1fff20ac:    5019        .P      STR      r1,[r3,r0]
        0x1fff20ae:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff22ac] = 0x46e
        0x1fff20b0:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff20b2:    497f        .I      LDR      r1,[pc,#508] ; [0x1fff22b0] = 0x1fff6b78
        0x1fff20b4:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff20b6:    2900        .)      CMP      r1,#0
        0x1fff20b8:    d002        ..      BEQ      0x1fff20c0 ; init_config + 70
        0x1fff20ba:    497c        |I      LDR      r1,[pc,#496] ; [0x1fff22ac] = 0x46e
        0x1fff20bc:    3111        .1      ADDS     r1,r1,#0x11
        0x1fff20be:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff20c0:    210a        .!      MOVS     r1,#0xa
        0x1fff20c2:    6501        .e      STR      r1,[r0,#0x50]
        0x1fff20c4:    7811        .x      LDRB     r1,[r2,#0]
        0x1fff20c6:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff20c8:    497a        zI      LDR      r1,[pc,#488] ; [0x1fff22b4] = 0x73a
        0x1fff20ca:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff20cc:    f001fb5a    ..Z.    BL       global_config_hclk_related ; 0x1fff3784
        0x1fff20d0:    68e9        .h      LDR      r1,[r5,#0xc]
        0x1fff20d2:    4879        yH      LDR      r0,[pc,#484] ; [0x1fff22b8] = 0x1c9c380
        0x1fff20d4:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff20d6:    2019        .       MOVS     r0,#0x19
        0x1fff20d8:    0180        ..      LSLS     r0,r0,#6
        0x1fff20da:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff20dc:    4608        .F      MOV      r0,r1
        0x1fff20de:    2237        7"      MOVS     r2,#0x37
        0x1fff20e0:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff20e2:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff20e4:    2308        .#      MOVS     r3,#8
        0x1fff20e6:    2236        6"      MOVS     r2,#0x36
        0x1fff20e8:    640b        .d      STR      r3,[r1,#0x40]
        0x1fff20ea:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff20ec:    221e        ."      MOVS     r2,#0x1e
        0x1fff20ee:    644a        Jd      STR      r2,[r1,#0x44]
        0x1fff20f0:    2236        6"      MOVS     r2,#0x36
        0x1fff20f2:    6042        B`      STR      r2,[r0,#4]
        0x1fff20f4:    2232        2"      MOVS     r2,#0x32
        0x1fff20f6:    6002        .`      STR      r2,[r0,#0]
        0x1fff20f8:    223b        ;"      MOVS     r2,#0x3b
        0x1fff20fa:    6403        .d      STR      r3,[r0,#0x40]
        0x1fff20fc:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff20fe:    2228        ("      MOVS     r2,#0x28
        0x1fff2100:    6442        Bd      STR      r2,[r0,#0x44]
        0x1fff2102:    2241        A"      MOVS     r2,#0x41
        0x1fff2104:    64c2        .d      STR      r2,[r0,#0x4c]
        0x1fff2106:    2239        9"      MOVS     r2,#0x39
        0x1fff2108:    6482        .d      STR      r2,[r0,#0x48]
        0x1fff210a:    2232        2"      MOVS     r2,#0x32
        0x1fff210c:    6543        Ce      STR      r3,[r0,#0x54]
        0x1fff210e:    6502        .e      STR      r2,[r0,#0x50]
        0x1fff2110:    2228        ("      MOVS     r2,#0x28
        0x1fff2112:    6582        .e      STR      r2,[r0,#0x58]
        0x1fff2114:    2202        ."      MOVS     r2,#2
        0x1fff2116:    6602        .f      STR      r2,[r0,#0x60]
        0x1fff2118:    2242        B"      MOVS     r2,#0x42
        0x1fff211a:    65c2        .e      STR      r2,[r0,#0x5c]
        0x1fff211c:    221e        ."      MOVS     r2,#0x1e
        0x1fff211e:    6683        .f      STR      r3,[r0,#0x68]
        0x1fff2120:    6642        Bf      STR      r2,[r0,#0x64]
        0x1fff2122:    2228        ("      MOVS     r2,#0x28
        0x1fff2124:    66c2        .f      STR      r2,[r0,#0x6c]
        0x1fff2126:    2220         "      MOVS     r2,#0x20
        0x1fff2128:    6742        Bg      STR      r2,[r0,#0x74]
        0x1fff212a:    2242        B"      MOVS     r2,#0x42
        0x1fff212c:    6702        .g      STR      r2,[r0,#0x70]
        0x1fff212e:    225a        Z"      MOVS     r2,#0x5a
        0x1fff2130:    6143        Ca      STR      r3,[r0,#0x14]
        0x1fff2132:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff2134:    223c        <"      MOVS     r2,#0x3c
        0x1fff2136:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff2138:    2219        ."      MOVS     r2,#0x19
        0x1fff213a:    0192        ..      LSLS     r2,r2,#6
        0x1fff213c:    600a        .`      STR      r2,[r1,#0]
        0x1fff213e:    4a5f        _J      LDR      r2,[pc,#380] ; [0x1fff22bc] = 0x29a
        0x1fff2140:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff2142:    22ff        ."      MOVS     r2,#0xff
        0x1fff2144:    322d        -2      ADDS     r2,r2,#0x2d
        0x1fff2146:    608a        .`      STR      r2,[r1,#8]
        0x1fff2148:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff214a:    22ff        ."      MOVS     r2,#0xff
        0x1fff214c:    32f5        .2      ADDS     r2,r2,#0xf5
        0x1fff214e:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff2150:    4a5b        [J      LDR      r2,[pc,#364] ; [0x1fff22c0] = 0xc350
        0x1fff2152:    648a        .d      STR      r2,[r1,#0x48]
        0x1fff2154:    227d        }"      MOVS     r2,#0x7d
        0x1fff2156:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2158:    4e5a        ZN      LDR      r6,[pc,#360] ; [0x1fff22c4] = 0xa28
        0x1fff215a:    67c2        .g      STR      r2,[r0,#0x7c]
        0x1fff215c:    64ce        .d      STR      r6,[r1,#0x4c]
        0x1fff215e:    624a        Jb      STR      r2,[r1,#0x24]
        0x1fff2160:    4a59        YJ      LDR      r2,[pc,#356] ; [0x1fff22c8] = 0x186a
        0x1fff2162:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff2164:    2232        2"      MOVS     r2,#0x32
        0x1fff2166:    65ca        .e      STR      r2,[r1,#0x5c]
        0x1fff2168:    2206        ."      MOVS     r2,#6
        0x1fff216a:    654a        Je      STR      r2,[r1,#0x54]
        0x1fff216c:    658a        .e      STR      r2,[r1,#0x58]
        0x1fff216e:    1dca        ..      ADDS     r2,r1,#7
        0x1fff2170:    32f9        .2      ADDS     r2,r2,#0xf9
        0x1fff2172:    2502        .%      MOVS     r5,#2
        0x1fff2174:    6013        .`      STR      r3,[r2,#0]
        0x1fff2176:    664d        Mf      STR      r5,[r1,#0x64]
        0x1fff2178:    254b        K%      MOVS     r5,#0x4b
        0x1fff217a:    00ed        ..      LSLS     r5,r5,#3
        0x1fff217c:    668d        .f      STR      r5,[r1,#0x68]
        0x1fff217e:    2509        .%      MOVS     r5,#9
        0x1fff2180:    66cd        .f      STR      r5,[r1,#0x6c]
        0x1fff2182:    4d52        RM      LDR      r5,[pc,#328] ; [0x1fff22cc] = 0x4e20
        0x1fff2184:    670d        .g      STR      r5,[r1,#0x70]
        0x1fff2186:    678c        .g      STR      r4,[r1,#0x78]
        0x1fff2188:    674b        Kg      STR      r3,[r1,#0x74]
        0x1fff218a:    10ab        ..      ASRS     r3,r5,#2
        0x1fff218c:    67cb        .g      STR      r3,[r1,#0x7c]
        0x1fff218e:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff22d0] = 0x1fff09f0
        0x1fff2190:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff2192:    603e        >`      STR      r6,[r7,#0]
        0x1fff2194:    4e4a        JN      LDR      r6,[pc,#296] ; [0x1fff22c0] = 0xc350
        0x1fff2196:    6286        .b      STR      r6,[r0,#0x28]
        0x1fff2198:    267d        }&      MOVS     r6,#0x7d
        0x1fff219a:    00f6        ..      LSLS     r6,r6,#3
        0x1fff219c:    6786        .g      STR      r6,[r0,#0x78]
        0x1fff219e:    2664        d&      MOVS     r6,#0x64
        0x1fff21a0:    6246        Fb      STR      r6,[r0,#0x24]
        0x1fff21a2:    2605        .&      MOVS     r6,#5
        0x1fff21a4:    62c6        .b      STR      r6,[r0,#0x2c]
        0x1fff21a6:    2602        .&      MOVS     r6,#2
        0x1fff21a8:    6306        .c      STR      r6,[r0,#0x30]
        0x1fff21aa:    26c8        .&      MOVS     r6,#0xc8
        0x1fff21ac:    6346        Fc      STR      r6,[r0,#0x34]
        0x1fff21ae:    6384        .c      STR      r4,[r0,#0x38]
        0x1fff21b0:    2038        8       MOVS     r0,#0x38
        0x1fff21b2:    6050        P`      STR      r0,[r2,#4]
        0x1fff21b4:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff22d4] = 0x11004000
        0x1fff21b6:    6410        .d      STR      r0,[r2,#0x40]
        0x1fff21b8:    204b        K       MOVS     r0,#0x4b
        0x1fff21ba:    0180        ..      LSLS     r0,r0,#6
        0x1fff21bc:    6190        .a      STR      r0,[r2,#0x18]
        0x1fff21be:    00b0        ..      LSLS     r0,r6,#2
        0x1fff21c0:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff21c2:    1058        X.      ASRS     r0,r3,#1
        0x1fff21c4:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff21c6:    207d        }       MOVS     r0,#0x7d
        0x1fff21c8:    0100        ..      LSLS     r0,r0,#4
        0x1fff21ca:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff21cc:    66d4        .f      STR      r4,[r2,#0x6c]
        0x1fff21ce:    6595        .e      STR      r5,[r2,#0x58]
        0x1fff21d0:    6613        .f      STR      r3,[r2,#0x60]
        0x1fff21d2:    6453        Sd      STR      r3,[r2,#0x44]
        0x1fff21d4:    65d5        .e      STR      r5,[r2,#0x5c]
        0x1fff21d6:    6714        .g      STR      r4,[r2,#0x70]
        0x1fff21d8:    6753        Sg      STR      r3,[r2,#0x74]
        0x1fff21da:    201e        .       MOVS     r0,#0x1e
        0x1fff21dc:    6690        .f      STR      r0,[r2,#0x68]
        0x1fff21de:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff22d8] = 0x5dc
        0x1fff21e0:    6790        .g      STR      r0,[r2,#0x78]
        0x1fff21e2:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff22dc] = 0xf4240
        0x1fff21e4:    005b        [.      LSLS     r3,r3,#1
        0x1fff21e6:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff21e8:    67d0        .g      STR      r0,[r2,#0x7c]
        0x1fff21ea:    600b        .`      STR      r3,[r1,#0]
        0x1fff21ec:    608b        .`      STR      r3,[r1,#8]
        0x1fff21ee:    6048        H`      STR      r0,[r1,#4]
        0x1fff21f0:    20ff        .       MOVS     r0,#0xff
        0x1fff21f2:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff21f4:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff21f6:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff21f8:    204b        K       MOVS     r0,#0x4b
        0x1fff21fa:    00c0        ..      LSLS     r0,r0,#3
        0x1fff21fc:    6310        .c      STR      r0,[r2,#0x30]
        0x1fff21fe:    650e        .e      STR      r6,[r1,#0x50]
        0x1fff2200:    4838        8H      LDR      r0,[pc,#224] ; [0x1fff22e4] = 0x1fff0100
        0x1fff2202:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff22e0] = 0x1fff4b9d
        0x1fff2204:    4a27        'J      LDR      r2,[pc,#156] ; [0x1fff22a4] = 0x1fff0400
        0x1fff2206:    6081        .`      STR      r1,[r0,#8]
        0x1fff2208:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff22e8] = 0x1fff2649
        0x1fff220a:    3a80        .:      SUBS     r2,r2,#0x80
        0x1fff220c:    6111        .a      STR      r1,[r2,#0x10]
        0x1fff220e:    4935        5I      LDR      r1,[pc,#212] ; [0x1fff22e4] = 0x1fff0100
        0x1fff2210:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22ec] = 0x1fff5d35
        0x1fff2212:    3180        .1      ADDS     r1,r1,#0x80
        0x1fff2214:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff2216:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22f0] = 0x1fff6009
        0x1fff2218:    62ca        .b      STR      r2,[r1,#0x2c]
        0x1fff221a:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22f4] = 0x1fff2355
        0x1fff221c:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff221e:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22f8] = 0x1fff24e9
        0x1fff2220:    62c2        .b      STR      r2,[r0,#0x2c]
        0x1fff2222:    4a36        6J      LDR      r2,[pc,#216] ; [0x1fff22fc] = 0x1fff2371
        0x1fff2224:    6302        .c      STR      r2,[r0,#0x30]
        0x1fff2226:    4a2f        /J      LDR      r2,[pc,#188] ; [0x1fff22e4] = 0x1fff0100
        0x1fff2228:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff2300] = 0x1fff36b5
        0x1fff222a:    3a40        @:      SUBS     r2,r2,#0x40
        0x1fff222c:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff222e:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff2304] = 0x1fff3475
        0x1fff2230:    63d0        .c      STR      r0,[r2,#0x3c]
        0x1fff2232:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff2308] = 0x1fff68b9
        0x1fff2234:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff2236:    4835        5H      LDR      r0,[pc,#212] ; [0x1fff230c] = 0x1fff66a5
        0x1fff2238:    6390        .c      STR      r0,[r2,#0x38]
        0x1fff223a:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff22e4] = 0x1fff0100
        0x1fff223c:    4834        4H      LDR      r0,[pc,#208] ; [0x1fff2310] = 0x1fff4615
        0x1fff223e:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff2240:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff2242:    4935        5I      LDR      r1,[pc,#212] ; [0x1fff2318] = 0x1fff0200
        0x1fff2244:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff2314] = 0x1fff1e21
        0x1fff2246:    6088        .`      STR      r0,[r1,#8]
        0x1fff2248:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff22e4] = 0x1fff0100
        0x1fff224a:    4934        4I      LDR      r1,[pc,#208] ; [0x1fff231c] = 0x1fff46d1
        0x1fff224c:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff224e:    6041        A`      STR      r1,[r0,#4]
        0x1fff2250:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff2320] = 0x1fff4921
        0x1fff2252:    4a24        $J      LDR      r2,[pc,#144] ; [0x1fff22e4] = 0x1fff0100
        0x1fff2254:    6341        Ac      STR      r1,[r0,#0x34]
        0x1fff2256:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff2324] = 0x1fff2871
        0x1fff2258:    3ac0        .:      SUBS     r2,r2,#0xc0
        0x1fff225a:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff225c:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff232c] = 0x1fff0000
        0x1fff225e:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff2328] = 0x1fff1e05
        0x1fff2260:    4c20         L      LDR      r4,[pc,#128] ; [0x1fff22e4] = 0x1fff0100
        0x1fff2262:    63cb        .c      STR      r3,[r1,#0x3c]
        0x1fff2264:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff2330] = 0x1fff5679
        0x1fff2266:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff2268:    6323        #c      STR      r3,[r4,#0x30]
        0x1fff226a:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff2334] = 0x1fff47e5
        0x1fff226c:    6293        .b      STR      r3,[r2,#0x28]
        0x1fff226e:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2338] = 0x1fff4e79
        0x1fff2270:    63c2        .c      STR      r2,[r0,#0x3c]
        0x1fff2272:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff233c] = 0x1fff481d
        0x1fff2274:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff2276:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2340] = 0x1fff2859
        0x1fff2278:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff227a:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2344] = 0x1fff4725
        0x1fff227c:    60e2        .`      STR      r2,[r4,#0xc]
        0x1fff227e:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff2348] = 0x1fff1e51
        0x1fff2280:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff2282:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff234c] = 0x1fff2805
        0x1fff2284:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff2286:    4932        2I      LDR      r1,[pc,#200] ; [0x1fff2350] = 0x1fff5135
        0x1fff2288:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff228a:    f7fffb6f    ..o.    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff228e:    2001        .       MOVS     r0,#1
        0x1fff2290:    f7fffb72    ..r.    BL       $Ven$TT$L$$setSleepMode ; 0x1fff1978
        0x1fff2294:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff2296:    0000        ..      DCW    0
        0x1fff2298:    1fff0998    ....    DCD    536807832
        0x1fff229c:    1fff6bd0    .k..    DCD    536832976
        0x1fff22a0:    1fff0a4a    J...    DCD    536808010
        0x1fff22a4:    1fff0400    ....    DCD    536806400
        0x1fff22a8:    1fff8018    ....    DCD    536838168
        0x1fff22ac:    0000046e    n...    DCD    1134
        0x1fff22b0:    1fff6b78    xk..    DCD    536832888
        0x1fff22b4:    0000073a    :...    DCD    1850
        0x1fff22b8:    01c9c380    ....    DCD    30000000
        0x1fff22bc:    0000029a    ....    DCD    666
        0x1fff22c0:    0000c350    P...    DCD    50000
        0x1fff22c4:    00000a28    (...    DCD    2600
        0x1fff22c8:    0000186a    j...    DCD    6250
        0x1fff22cc:    00004e20     N..    DCD    20000
        0x1fff22d0:    1fff09f0    ....    DCD    536807920
        0x1fff22d4:    11004000    .@..    DCD    285229056
        0x1fff22d8:    000005dc    ....    DCD    1500
        0x1fff22dc:    000f4240    @B..    DCD    1000000
        0x1fff22e0:    1fff4b9d    .K..    DCD    536824733
        0x1fff22e4:    1fff0100    ....    DCD    536805632
        0x1fff22e8:    1fff2649    I&..    DCD    536815177
        0x1fff22ec:    1fff5d35    5]..    DCD    536829237
        0x1fff22f0:    1fff6009    .`..    DCD    536829961
        0x1fff22f4:    1fff2355    U#..    DCD    536814421
        0x1fff22f8:    1fff24e9    .$..    DCD    536814825
        0x1fff22fc:    1fff2371    q#..    DCD    536814449
        0x1fff2300:    1fff36b5    .6..    DCD    536819381
        0x1fff2304:    1fff3475    u4..    DCD    536818805
        0x1fff2308:    1fff68b9    .h..    DCD    536832185
        0x1fff230c:    1fff66a5    .f..    DCD    536831653
        0x1fff2310:    1fff4615    .F..    DCD    536823317
        0x1fff2314:    1fff1e21    !...    DCD    536813089
        0x1fff2318:    1fff0200    ....    DCD    536805888
        0x1fff231c:    1fff46d1    .F..    DCD    536823505
        0x1fff2320:    1fff4921    !I..    DCD    536824097
        0x1fff2324:    1fff2871    q(..    DCD    536815729
        0x1fff2328:    1fff1e05    ....    DCD    536813061
        0x1fff232c:    1fff0000    ....    DCD    536805376
        0x1fff2330:    1fff5679    yV..    DCD    536827513
        0x1fff2334:    1fff47e5    .G..    DCD    536823781
        0x1fff2338:    1fff4e79    yN..    DCD    536825465
        0x1fff233c:    1fff481d    .H..    DCD    536823837
        0x1fff2340:    1fff2859    Y(..    DCD    536815705
        0x1fff2344:    1fff4725    %G..    DCD    536823589
        0x1fff2348:    1fff1e51    Q...    DCD    536813137
        0x1fff234c:    1fff2805    .(..    DCD    536815621
        0x1fff2350:    1fff5135    5Q..    DCD    536826165
    $t
    i.LL_ENC_AES128_Encrypt1
    LL_ENC_AES128_Encrypt1
        0x1fff2354:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2356:    2401        .$      MOVS     r4,#1
        0x1fff2358:    07a4        ..      LSLS     r4,r4,#30
        0x1fff235a:    68a3        .h      LDR      r3,[r4,#8]
        0x1fff235c:    2510        .%      MOVS     r5,#0x10
        0x1fff235e:    432b        +C      ORRS     r3,r3,r5
        0x1fff2360:    60a3        .`      STR      r3,[r4,#8]
        0x1fff2362:    f7fffb0f    ....    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt0 ; 0x1fff1984
        0x1fff2366:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff2368:    43a8        .C      BICS     r0,r0,r5
        0x1fff236a:    60a0        .`      STR      r0,[r4,#8]
        0x1fff236c:    bd70        p.      POP      {r4-r6,pc}
        0x1fff236e:    0000        ..      MOVS     r0,r0
    i.LL_ENC_Decrypt1
    LL_ENC_Decrypt1
        0x1fff2370:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff2372:    4606        .F      MOV      r6,r0
        0x1fff2374:    2001        .       MOVS     r0,#1
        0x1fff2376:    0780        ..      LSLS     r0,r0,#30
        0x1fff2378:    6881        .h      LDR      r1,[r0,#8]
        0x1fff237a:    b081        ..      SUB      sp,sp,#4
        0x1fff237c:    461d        .F      MOV      r5,r3
        0x1fff237e:    2210        ."      MOVS     r2,#0x10
        0x1fff2380:    4311        .C      ORRS     r1,r1,r2
        0x1fff2382:    6081        .`      STR      r1,[r0,#8]
        0x1fff2384:    4f55        UO      LDR      r7,[pc,#340] ; [0x1fff24dc] = 0x40040000
        0x1fff2386:    2000        .       MOVS     r0,#0
        0x1fff2388:    6038        8`      STR      r0,[r7,#0]
        0x1fff238a:    4630        0F      MOV      r0,r6
        0x1fff238c:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff238e:    f7fffaff    ....    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff1990
        0x1fff2392:    209d        .       MOVS     r0,#0x9d
        0x1fff2394:    0080        ..      LSLS     r0,r0,#2
        0x1fff2396:    4634        4F      MOV      r4,r6
        0x1fff2398:    5980        .Y      LDR      r0,[r0,r6]
        0x1fff239a:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff239c:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff239e:    3601        .6      ADDS     r6,#1
        0x1fff23a0:    2800        .(      CMP      r0,#0
        0x1fff23a2:    6830        0h      LDR      r0,[r6,#0]
        0x1fff23a4:    4622        "F      MOV      r2,r4
        0x1fff23a6:    d02c        ,.      BEQ      0x1fff2402 ; LL_ENC_Decrypt1 + 146
        0x1fff23a8:    2101        .!      MOVS     r1,#1
        0x1fff23aa:    f7fffaf7    ....    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff199c
        0x1fff23ae:    4f4b        KO      LDR      r7,[pc,#300] ; [0x1fff24dc] = 0x40040000
        0x1fff23b0:    7820         x      LDRB     r0,[r4,#0]
        0x1fff23b2:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff23b4:    1c64        d.      ADDS     r4,r4,#1
        0x1fff23b6:    4620         F      MOV      r0,r4
        0x1fff23b8:    f7fffaf6    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23bc:    ba00        ..      REV      r0,r0
        0x1fff23be:    0a00        ..      LSRS     r0,r0,#8
        0x1fff23c0:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff23c2:    0200        ..      LSLS     r0,r0,#8
        0x1fff23c4:    4308        .C      ORRS     r0,r0,r1
        0x1fff23c6:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff23c8:    1d24        $.      ADDS     r4,r4,#4
        0x1fff23ca:    4620         F      MOV      r0,r4
        0x1fff23cc:    f7fffaec    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23d0:    ba00        ..      REV      r0,r0
        0x1fff23d2:    0a00        ..      LSRS     r0,r0,#8
        0x1fff23d4:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff23d6:    0200        ..      LSLS     r0,r0,#8
        0x1fff23d8:    4308        .C      ORRS     r0,r0,r1
        0x1fff23da:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff23dc:    1d24        $.      ADDS     r4,r4,#4
        0x1fff23de:    4620         F      MOV      r0,r4
        0x1fff23e0:    f7fffae2    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff23e4:    ba00        ..      REV      r0,r0
        0x1fff23e6:    0a00        ..      LSRS     r0,r0,#8
        0x1fff23e8:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff23ea:    0200        ..      LSLS     r0,r0,#8
        0x1fff23ec:    4308        .C      ORRS     r0,r0,r1
        0x1fff23ee:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff23f0:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff23f2:    9902        ..      LDR      r1,[sp,#8]
        0x1fff23f4:    0200        ..      LSLS     r0,r0,#8
        0x1fff23f6:    4308        .C      ORRS     r0,r0,r1
        0x1fff23f8:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff23fa:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff23fc:    2400        .$      MOVS     r4,#0
        0x1fff23fe:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff2400:    e00e        ..      B        0x1fff2420 ; LL_ENC_Decrypt1 + 176
        0x1fff2402:    2100        .!      MOVS     r1,#0
        0x1fff2404:    e7d1        ..      B        0x1fff23aa ; LL_ENC_Decrypt1 + 58
        0x1fff2406:    1928        (.      ADDS     r0,r5,r4
        0x1fff2408:    1c40        @.      ADDS     r0,r0,#1
        0x1fff240a:    f7fffacd    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff240e:    0201        ..      LSLS     r1,r0,#8
        0x1fff2410:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff2412:    4301        .C      ORRS     r1,r1,r0
        0x1fff2414:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff24e0] = 0x40040100
        0x1fff2416:    1820         .      ADDS     r0,r4,r0
        0x1fff2418:    6001        .`      STR      r1,[r0,#0]
        0x1fff241a:    1d24        $.      ADDS     r4,r4,#4
        0x1fff241c:    b2a4        ..      UXTH     r4,r4
        0x1fff241e:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff2420:    2f04        ./      CMP      r7,#4
        0x1fff2422:    daf0        ..      BGE      0x1fff2406 ; LL_ENC_Decrypt1 + 150
        0x1fff2424:    2f03        ./      CMP      r7,#3
        0x1fff2426:    d004        ..      BEQ      0x1fff2432 ; LL_ENC_Decrypt1 + 194
        0x1fff2428:    2f02        ./      CMP      r7,#2
        0x1fff242a:    d008        ..      BEQ      0x1fff243e ; LL_ENC_Decrypt1 + 206
        0x1fff242c:    2f01        ./      CMP      r7,#1
        0x1fff242e:    d00c        ..      BEQ      0x1fff244a ; LL_ENC_Decrypt1 + 218
        0x1fff2430:    e011        ..      B        0x1fff2456 ; LL_ENC_Decrypt1 + 230
        0x1fff2432:    1928        (.      ADDS     r0,r5,r4
        0x1fff2434:    f7fffab8    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2438:    0201        ..      LSLS     r1,r0,#8
        0x1fff243a:    0a09        ..      LSRS     r1,r1,#8
        0x1fff243c:    e006        ..      B        0x1fff244c ; LL_ENC_Decrypt1 + 220
        0x1fff243e:    1929        ).      ADDS     r1,r5,r4
        0x1fff2440:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff2442:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff2444:    0201        ..      LSLS     r1,r0,#8
        0x1fff2446:    4311        .C      ORRS     r1,r1,r2
        0x1fff2448:    e000        ..      B        0x1fff244c ; LL_ENC_Decrypt1 + 220
        0x1fff244a:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff244c:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff24e0] = 0x40040100
        0x1fff244e:    1820         .      ADDS     r0,r4,r0
        0x1fff2450:    6001        .`      STR      r1,[r0,#0]
        0x1fff2452:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2454:    b2a4        ..      UXTH     r4,r4
        0x1fff2456:    2100        .!      MOVS     r1,#0
        0x1fff2458:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff24e0] = 0x40040100
        0x1fff245a:    e002        ..      B        0x1fff2462 ; LL_ENC_Decrypt1 + 242
        0x1fff245c:    19e0        ..      ADDS     r0,r4,r7
        0x1fff245e:    6001        .`      STR      r1,[r0,#0]
        0x1fff2460:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2462:    2cff        .,      CMP      r4,#0xff
        0x1fff2464:    ddfa        ..      BLE      0x1fff245c ; LL_ENC_Decrypt1 + 236
        0x1fff2466:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff24dc] = 0x40040000
        0x1fff2468:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff24e4] = 0xf08
        0x1fff246a:    6042        B`      STR      r2,[r0,#4]
        0x1fff246c:    220f        ."      MOVS     r2,#0xf
        0x1fff246e:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff2470:    2201        ."      MOVS     r2,#1
        0x1fff2472:    6002        .`      STR      r2,[r0,#0]
        0x1fff2474:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff2476:    2a00        .*      CMP      r2,#0
        0x1fff2478:    d0fc        ..      BEQ      0x1fff2474 ; LL_ENC_Decrypt1 + 260
        0x1fff247a:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff247c:    0793        ..      LSLS     r3,r2,#30
        0x1fff247e:    d401        ..      BMI      0x1fff2484 ; LL_ENC_Decrypt1 + 276
        0x1fff2480:    0752        R.      LSLS     r2,r2,#29
        0x1fff2482:    d408        ..      BMI      0x1fff2496 ; LL_ENC_Decrypt1 + 294
        0x1fff2484:    2001        .       MOVS     r0,#1
        0x1fff2486:    0780        ..      LSLS     r0,r0,#30
        0x1fff2488:    6882        .h      LDR      r2,[r0,#8]
        0x1fff248a:    2110        .!      MOVS     r1,#0x10
        0x1fff248c:    438a        .C      BICS     r2,r2,r1
        0x1fff248e:    6082        .`      STR      r2,[r0,#8]
        0x1fff2490:    2000        .       MOVS     r0,#0
        0x1fff2492:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2494:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff2496:    6001        .`      STR      r1,[r0,#0]
        0x1fff2498:    2000        .       MOVS     r0,#0
        0x1fff249a:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff249c:    e011        ..      B        0x1fff24c2 ; LL_ENC_Decrypt1 + 338
        0x1fff249e:    19c1        ..      ADDS     r1,r0,r7
        0x1fff24a0:    6809        .h      LDR      r1,[r1,#0]
        0x1fff24a2:    5429        )T      STRB     r1,[r5,r0]
        0x1fff24a4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24a6:    b280        ..      UXTH     r0,r0
        0x1fff24a8:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff24aa:    542b        +T      STRB     r3,[r5,r0]
        0x1fff24ac:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24ae:    0c0b        ..      LSRS     r3,r1,#16
        0x1fff24b0:    b280        ..      UXTH     r0,r0
        0x1fff24b2:    542b        +T      STRB     r3,[r5,r0]
        0x1fff24b4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24b6:    b280        ..      UXTH     r0,r0
        0x1fff24b8:    0e09        ..      LSRS     r1,r1,#24
        0x1fff24ba:    5429        )T      STRB     r1,[r5,r0]
        0x1fff24bc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24be:    b280        ..      UXTH     r0,r0
        0x1fff24c0:    1f12        ..      SUBS     r2,r2,#4
        0x1fff24c2:    2a00        .*      CMP      r2,#0
        0x1fff24c4:    dceb        ..      BGT      0x1fff249e ; LL_ENC_Decrypt1 + 302
        0x1fff24c6:    6830        0h      LDR      r0,[r6,#0]
        0x1fff24c8:    1c40        @.      ADDS     r0,r0,#1
        0x1fff24ca:    6030        0`      STR      r0,[r6,#0]
        0x1fff24cc:    2001        .       MOVS     r0,#1
        0x1fff24ce:    0780        ..      LSLS     r0,r0,#30
        0x1fff24d0:    6882        .h      LDR      r2,[r0,#8]
        0x1fff24d2:    2110        .!      MOVS     r1,#0x10
        0x1fff24d4:    438a        .C      BICS     r2,r2,r1
        0x1fff24d6:    6082        .`      STR      r2,[r0,#8]
        0x1fff24d8:    2001        .       MOVS     r0,#1
        0x1fff24da:    e7da        ..      B        0x1fff2492 ; LL_ENC_Decrypt1 + 290
    $d
        0x1fff24dc:    40040000    ...@    DCD    1074003968
        0x1fff24e0:    40040100    ...@    DCD    1074004224
        0x1fff24e4:    00000f08    ....    DCD    3848
    $t
    i.LL_ENC_Encrypt1
    LL_ENC_Encrypt1
        0x1fff24e8:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff24ea:    4605        .F      MOV      r5,r0
        0x1fff24ec:    2001        .       MOVS     r0,#1
        0x1fff24ee:    0780        ..      LSLS     r0,r0,#30
        0x1fff24f0:    6881        .h      LDR      r1,[r0,#8]
        0x1fff24f2:    b081        ..      SUB      sp,sp,#4
        0x1fff24f4:    461e        .F      MOV      r6,r3
        0x1fff24f6:    2210        ."      MOVS     r2,#0x10
        0x1fff24f8:    4311        .C      ORRS     r1,r1,r2
        0x1fff24fa:    6081        .`      STR      r1,[r0,#8]
        0x1fff24fc:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff2640] = 0x40040000
        0x1fff24fe:    2000        .       MOVS     r0,#0
        0x1fff2500:    6038        8`      STR      r0,[r7,#0]
        0x1fff2502:    4628        (F      MOV      r0,r5
        0x1fff2504:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff2506:    f7fffa43    ..C.    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff1990
        0x1fff250a:    209d        .       MOVS     r0,#0x9d
        0x1fff250c:    0080        ..      LSLS     r0,r0,#2
        0x1fff250e:    462c        ,F      MOV      r4,r5
        0x1fff2510:    5940        @Y      LDR      r0,[r0,r5]
        0x1fff2512:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff2514:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff2516:    2800        .(      CMP      r0,#0
        0x1fff2518:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff251a:    4622        "F      MOV      r2,r4
        0x1fff251c:    d02b        +.      BEQ      0x1fff2576 ; LL_ENC_Encrypt1 + 142
        0x1fff251e:    2100        .!      MOVS     r1,#0
        0x1fff2520:    f7fffa3c    ..<.    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff199c
        0x1fff2524:    4f46        FO      LDR      r7,[pc,#280] ; [0x1fff2640] = 0x40040000
        0x1fff2526:    7820         x      LDRB     r0,[r4,#0]
        0x1fff2528:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff252a:    1c64        d.      ADDS     r4,r4,#1
        0x1fff252c:    4620         F      MOV      r0,r4
        0x1fff252e:    f7fffa3b    ..;.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2532:    ba00        ..      REV      r0,r0
        0x1fff2534:    0a00        ..      LSRS     r0,r0,#8
        0x1fff2536:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2538:    0200        ..      LSLS     r0,r0,#8
        0x1fff253a:    4308        .C      ORRS     r0,r0,r1
        0x1fff253c:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff253e:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2540:    4620         F      MOV      r0,r4
        0x1fff2542:    f7fffa31    ..1.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2546:    ba00        ..      REV      r0,r0
        0x1fff2548:    0a00        ..      LSRS     r0,r0,#8
        0x1fff254a:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff254c:    0200        ..      LSLS     r0,r0,#8
        0x1fff254e:    4308        .C      ORRS     r0,r0,r1
        0x1fff2550:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff2552:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2554:    4620         F      MOV      r0,r4
        0x1fff2556:    f7fffa27    ..'.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff255a:    ba00        ..      REV      r0,r0
        0x1fff255c:    0a00        ..      LSRS     r0,r0,#8
        0x1fff255e:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff2560:    0200        ..      LSLS     r0,r0,#8
        0x1fff2562:    4308        .C      ORRS     r0,r0,r1
        0x1fff2564:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff2566:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff2568:    9902        ..      LDR      r1,[sp,#8]
        0x1fff256a:    0200        ..      LSLS     r0,r0,#8
        0x1fff256c:    4308        .C      ORRS     r0,r0,r1
        0x1fff256e:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff2570:    2400        .$      MOVS     r4,#0
        0x1fff2572:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff2574:    e00e        ..      B        0x1fff2594 ; LL_ENC_Encrypt1 + 172
        0x1fff2576:    2101        .!      MOVS     r1,#1
        0x1fff2578:    e7d2        ..      B        0x1fff2520 ; LL_ENC_Encrypt1 + 56
        0x1fff257a:    1930        0.      ADDS     r0,r6,r4
        0x1fff257c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff257e:    f7fffa13    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff2582:    0201        ..      LSLS     r1,r0,#8
        0x1fff2584:    5d30        0]      LDRB     r0,[r6,r4]
        0x1fff2586:    4301        .C      ORRS     r1,r1,r0
        0x1fff2588:    482e        .H      LDR      r0,[pc,#184] ; [0x1fff2644] = 0x40040100
        0x1fff258a:    1820         .      ADDS     r0,r4,r0
        0x1fff258c:    6001        .`      STR      r1,[r0,#0]
        0x1fff258e:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2590:    b2a4        ..      UXTH     r4,r4
        0x1fff2592:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff2594:    2f04        ./      CMP      r7,#4
        0x1fff2596:    daf0        ..      BGE      0x1fff257a ; LL_ENC_Encrypt1 + 146
        0x1fff2598:    2f03        ./      CMP      r7,#3
        0x1fff259a:    d004        ..      BEQ      0x1fff25a6 ; LL_ENC_Encrypt1 + 190
        0x1fff259c:    2f02        ./      CMP      r7,#2
        0x1fff259e:    d008        ..      BEQ      0x1fff25b2 ; LL_ENC_Encrypt1 + 202
        0x1fff25a0:    2f01        ./      CMP      r7,#1
        0x1fff25a2:    d00f        ..      BEQ      0x1fff25c4 ; LL_ENC_Encrypt1 + 220
        0x1fff25a4:    e014        ..      B        0x1fff25d0 ; LL_ENC_Encrypt1 + 232
        0x1fff25a6:    1930        0.      ADDS     r0,r6,r4
        0x1fff25a8:    f7fff9fe    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff19a8
        0x1fff25ac:    0201        ..      LSLS     r1,r0,#8
        0x1fff25ae:    0a09        ..      LSRS     r1,r1,#8
        0x1fff25b0:    e009        ..      B        0x1fff25c6 ; LL_ENC_Encrypt1 + 222
        0x1fff25b2:    1931        1.      ADDS     r1,r6,r4
        0x1fff25b4:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff25b6:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff25b8:    0200        ..      LSLS     r0,r0,#8
        0x1fff25ba:    4308        .C      ORRS     r0,r0,r1
        0x1fff25bc:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff2644] = 0x40040100
        0x1fff25be:    1861        a.      ADDS     r1,r4,r1
        0x1fff25c0:    6008        .`      STR      r0,[r1,#0]
        0x1fff25c2:    e003        ..      B        0x1fff25cc ; LL_ENC_Encrypt1 + 228
        0x1fff25c4:    5d31        1]      LDRB     r1,[r6,r4]
        0x1fff25c6:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff2644] = 0x40040100
        0x1fff25c8:    1820         .      ADDS     r0,r4,r0
        0x1fff25ca:    6001        .`      STR      r1,[r0,#0]
        0x1fff25cc:    1d24        $.      ADDS     r4,r4,#4
        0x1fff25ce:    b2a4        ..      UXTH     r4,r4
        0x1fff25d0:    2100        .!      MOVS     r1,#0
        0x1fff25d2:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff2644] = 0x40040100
        0x1fff25d4:    e002        ..      B        0x1fff25dc ; LL_ENC_Encrypt1 + 244
        0x1fff25d6:    18e0        ..      ADDS     r0,r4,r3
        0x1fff25d8:    6001        .`      STR      r1,[r0,#0]
        0x1fff25da:    1d24        $.      ADDS     r4,r4,#4
        0x1fff25dc:    2cff        .,      CMP      r4,#0xff
        0x1fff25de:    ddfa        ..      BLE      0x1fff25d6 ; LL_ENC_Encrypt1 + 238
        0x1fff25e0:    220f        ."      MOVS     r2,#0xf
        0x1fff25e2:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff2640] = 0x40040000
        0x1fff25e4:    0212        ..      LSLS     r2,r2,#8
        0x1fff25e6:    6042        B`      STR      r2,[r0,#4]
        0x1fff25e8:    220f        ."      MOVS     r2,#0xf
        0x1fff25ea:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff25ec:    2201        ."      MOVS     r2,#1
        0x1fff25ee:    6002        .`      STR      r2,[r0,#0]
        0x1fff25f0:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff25f2:    2a00        .*      CMP      r2,#0
        0x1fff25f4:    d0fc        ..      BEQ      0x1fff25f0 ; LL_ENC_Encrypt1 + 264
        0x1fff25f6:    6001        .`      STR      r1,[r0,#0]
        0x1fff25f8:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff25fa:    2000        .       MOVS     r0,#0
        0x1fff25fc:    1d12        ..      ADDS     r2,r2,#4
        0x1fff25fe:    e011        ..      B        0x1fff2624 ; LL_ENC_Encrypt1 + 316
        0x1fff2600:    18c1        ..      ADDS     r1,r0,r3
        0x1fff2602:    6809        .h      LDR      r1,[r1,#0]
        0x1fff2604:    5431        1T      STRB     r1,[r6,r0]
        0x1fff2606:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2608:    b280        ..      UXTH     r0,r0
        0x1fff260a:    0a0c        ..      LSRS     r4,r1,#8
        0x1fff260c:    5434        4T      STRB     r4,[r6,r0]
        0x1fff260e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2610:    0c0c        ..      LSRS     r4,r1,#16
        0x1fff2612:    b280        ..      UXTH     r0,r0
        0x1fff2614:    5434        4T      STRB     r4,[r6,r0]
        0x1fff2616:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2618:    b280        ..      UXTH     r0,r0
        0x1fff261a:    0e09        ..      LSRS     r1,r1,#24
        0x1fff261c:    5431        1T      STRB     r1,[r6,r0]
        0x1fff261e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2620:    b280        ..      UXTH     r0,r0
        0x1fff2622:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2624:    2a00        .*      CMP      r2,#0
        0x1fff2626:    dceb        ..      BGT      0x1fff2600 ; LL_ENC_Encrypt1 + 280
        0x1fff2628:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff262a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff262c:    67e8        .g      STR      r0,[r5,#0x7c]
        0x1fff262e:    2001        .       MOVS     r0,#1
        0x1fff2630:    0780        ..      LSLS     r0,r0,#30
        0x1fff2632:    6882        .h      LDR      r2,[r0,#8]
        0x1fff2634:    2110        .!      MOVS     r1,#0x10
        0x1fff2636:    438a        .C      BICS     r2,r2,r1
        0x1fff2638:    6082        .`      STR      r2,[r0,#8]
        0x1fff263a:    b005        ..      ADD      sp,sp,#0x14
        0x1fff263c:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff263e:    0000        ..      DCW    0
        0x1fff2640:    40040000    ...@    DCD    1074003968
        0x1fff2644:    40040100    ...@    DCD    1074004224
    $t
    i.LL_IRQHandler1
    LL_IRQHandler1
        0x1fff2648:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff264a:    f7fff9b3    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff264e:    4964        dI      LDR      r1,[pc,#400] ; [0x1fff27e0] = 0x1fff099c
        0x1fff2650:    6008        .`      STR      r0,[r1,#0]
        0x1fff2652:    2004        .       MOVS     r0,#4
        0x1fff2654:    f7fff9b4    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff2658:    f7fff9b8    ....    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff19cc
        0x1fff265c:    4605        .F      MOV      r5,r0
        0x1fff265e:    07c0        ..      LSLS     r0,r0,#31
        0x1fff2660:    d015        ..      BEQ      0x1fff268e ; LL_IRQHandler1 + 70
        0x1fff2662:    4960        `I      LDR      r1,[pc,#384] ; [0x1fff27e4] = 0x1fff0998
        0x1fff2664:    2000        .       MOVS     r0,#0
        0x1fff2666:    6008        .`      STR      r0,[r1,#0]
        0x1fff2668:    485f        _H      LDR      r0,[pc,#380] ; [0x1fff27e8] = 0x1fff0990
        0x1fff266a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff266c:    2801        .(      CMP      r0,#1
        0x1fff266e:    d011        ..      BEQ      0x1fff2694 ; LL_IRQHandler1 + 76
        0x1fff2670:    2803        .(      CMP      r0,#3
        0x1fff2672:    d013        ..      BEQ      0x1fff269c ; LL_IRQHandler1 + 84
        0x1fff2674:    2804        .(      CMP      r0,#4
        0x1fff2676:    d015        ..      BEQ      0x1fff26a4 ; LL_IRQHandler1 + 92
        0x1fff2678:    2802        .(      CMP      r0,#2
        0x1fff267a:    d017        ..      BEQ      0x1fff26ac ; LL_IRQHandler1 + 100
        0x1fff267c:    2805        .(      CMP      r0,#5
        0x1fff267e:    d019        ..      BEQ      0x1fff26b4 ; LL_IRQHandler1 + 108
        0x1fff2680:    f7fff9aa    ....    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff2684:    4f59        YO      LDR      r7,[pc,#356] ; [0x1fff27ec] = 0x1fff091c
        0x1fff2686:    4604        .F      MOV      r4,r0
        0x1fff2688:    2801        .(      CMP      r0,#1
        0x1fff268a:    d01a        ..      BEQ      0x1fff26c2 ; LL_IRQHandler1 + 122
        0x1fff268c:    e01e        ..      B        0x1fff26cc ; LL_IRQHandler1 + 132
        0x1fff268e:    f7fff9a9    ....    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff2692:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2694:    4628        (F      MOV      r0,r5
        0x1fff2696:    f7fff9ab    ....    BL       $Ven$TT$L$$ll_processExtAdvIRQ ; 0x1fff19f0
        0x1fff269a:    e00e        ..      B        0x1fff26ba ; LL_IRQHandler1 + 114
        0x1fff269c:    4628        (F      MOV      r0,r5
        0x1fff269e:    f7fff9ad    ....    BL       $Ven$TT$L$$ll_processExtScanIRQ ; 0x1fff19fc
        0x1fff26a2:    e00a        ..      B        0x1fff26ba ; LL_IRQHandler1 + 114
        0x1fff26a4:    4628        (F      MOV      r0,r5
        0x1fff26a6:    f7fff9af    ....    BL       $Ven$TT$L$$ll_processExtInitIRQ ; 0x1fff1a08
        0x1fff26aa:    e006        ..      B        0x1fff26ba ; LL_IRQHandler1 + 114
        0x1fff26ac:    4628        (F      MOV      r0,r5
        0x1fff26ae:    f7fff9b1    ....    BL       $Ven$TT$L$$ll_processPrdAdvIRQ ; 0x1fff1a14
        0x1fff26b2:    e002        ..      B        0x1fff26ba ; LL_IRQHandler1 + 114
        0x1fff26b4:    4628        (F      MOV      r0,r5
        0x1fff26b6:    f7fff9b3    ....    BL       $Ven$TT$L$$ll_processPrdScanIRQ ; 0x1fff1a20
        0x1fff26ba:    b240        @.      SXTB     r0,r0
        0x1fff26bc:    2801        .(      CMP      r0,#1
        0x1fff26be:    d0e8        ..      BEQ      0x1fff2692 ; LL_IRQHandler1 + 74
        0x1fff26c0:    e05f        _.      B        0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff26c2:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff26c4:    2805        .(      CMP      r0,#5
        0x1fff26c6:    d009        ..      BEQ      0x1fff26dc ; LL_IRQHandler1 + 148
        0x1fff26c8:    2806        .(      CMP      r0,#6
        0x1fff26ca:    d007        ..      BEQ      0x1fff26dc ; LL_IRQHandler1 + 148
        0x1fff26cc:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff27f0] = 0x1fff0923
        0x1fff26ce:    4e49        IN      LDR      r6,[pc,#292] ; [0x1fff27f4] = 0x1fff0ba6
        0x1fff26d0:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff26d2:    2802        .(      CMP      r0,#2
        0x1fff26d4:    d006        ..      BEQ      0x1fff26e4 ; LL_IRQHandler1 + 156
        0x1fff26d6:    2805        .(      CMP      r0,#5
        0x1fff26d8:    d004        ..      BEQ      0x1fff26e4 ; LL_IRQHandler1 + 156
        0x1fff26da:    e009        ..      B        0x1fff26f0 ; LL_IRQHandler1 + 168
        0x1fff26dc:    4628        (F      MOV      r0,r5
        0x1fff26de:    f002fcd5    ....    BL       ll_processBasicIRQ_SRX ; 0x1fff508c
        0x1fff26e2:    e04e        N.      B        0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff26e4:    2c00        .,      CMP      r4,#0
        0x1fff26e6:    d006        ..      BEQ      0x1fff26f6 ; LL_IRQHandler1 + 174
        0x1fff26e8:    2802        .(      CMP      r0,#2
        0x1fff26ea:    d008        ..      BEQ      0x1fff26fe ; LL_IRQHandler1 + 182
        0x1fff26ec:    2805        .(      CMP      r0,#5
        0x1fff26ee:    d006        ..      BEQ      0x1fff26fe ; LL_IRQHandler1 + 182
        0x1fff26f0:    2c02        .,      CMP      r4,#2
        0x1fff26f2:    d00e        ..      BEQ      0x1fff2712 ; LL_IRQHandler1 + 202
        0x1fff26f4:    e005        ..      B        0x1fff2702 ; LL_IRQHandler1 + 186
        0x1fff26f6:    4628        (F      MOV      r0,r5
        0x1fff26f8:    f002fcec    ....    BL       ll_processBasicIRQ_secondaryAdvSTX ; 0x1fff50d4
        0x1fff26fc:    e041        A.      B        0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff26fe:    2c02        .,      CMP      r4,#2
        0x1fff2700:    d002        ..      BEQ      0x1fff2708 ; LL_IRQHandler1 + 192
        0x1fff2702:    2c01        .,      CMP      r4,#1
        0x1fff2704:    d013        ..      BEQ      0x1fff272e ; LL_IRQHandler1 + 230
        0x1fff2706:    e016        ..      B        0x1fff2736 ; LL_IRQHandler1 + 238
        0x1fff2708:    7bb1        .{      LDRB     r1,[r6,#0xe]
        0x1fff270a:    2900        .)      CMP      r1,#0
        0x1fff270c:    d007        ..      BEQ      0x1fff271e ; LL_IRQHandler1 + 214
        0x1fff270e:    2902        .)      CMP      r1,#2
        0x1fff2710:    d005        ..      BEQ      0x1fff271e ; LL_IRQHandler1 + 214
        0x1fff2712:    7839        9x      LDRB     r1,[r7,#0]
        0x1fff2714:    2905        .)      CMP      r1,#5
        0x1fff2716:    d006        ..      BEQ      0x1fff2726 ; LL_IRQHandler1 + 222
        0x1fff2718:    2801        .(      CMP      r0,#1
        0x1fff271a:    d01a        ..      BEQ      0x1fff2752 ; LL_IRQHandler1 + 266
        0x1fff271c:    e00b        ..      B        0x1fff2736 ; LL_IRQHandler1 + 238
        0x1fff271e:    4628        (F      MOV      r0,r5
        0x1fff2720:    f002fce4    ....    BL       ll_processBasicIRQ_secondaryAdvTRX ; 0x1fff50ec
        0x1fff2724:    e018        ..      B        0x1fff2758 ; LL_IRQHandler1 + 272
        0x1fff2726:    4628        (F      MOV      r0,r5
        0x1fff2728:    f002fcbc    ....    BL       ll_processBasicIRQ_ScanTRX ; 0x1fff50a4
        0x1fff272c:    e014        ..      B        0x1fff2758 ; LL_IRQHandler1 + 272
        0x1fff272e:    2801        .(      CMP      r0,#1
        0x1fff2730:    d007        ..      BEQ      0x1fff2742 ; LL_IRQHandler1 + 250
        0x1fff2732:    2806        .(      CMP      r0,#6
        0x1fff2734:    d009        ..      BEQ      0x1fff274a ; LL_IRQHandler1 + 258
        0x1fff2736:    4628        (F      MOV      r0,r5
        0x1fff2738:    f7fff978    ..x.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff273c:    2c02        .,      CMP      r4,#2
        0x1fff273e:    d00b        ..      BEQ      0x1fff2758 ; LL_IRQHandler1 + 272
        0x1fff2740:    e01f        ..      B        0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff2742:    4628        (F      MOV      r0,r5
        0x1fff2744:    f002fcea    ....    BL       ll_processBasicIRQ_secondaryScanSRX ; 0x1fff511c
        0x1fff2748:    e01b        ..      B        0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff274a:    4628        (F      MOV      r0,r5
        0x1fff274c:    f002fcda    ....    BL       ll_processBasicIRQ_secondaryInitSRX ; 0x1fff5104
        0x1fff2750:    e017        ..      B        0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff2752:    4628        (F      MOV      r0,r5
        0x1fff2754:    f002fcb2    ....    BL       ll_processBasicIRQ_secScanTRX ; 0x1fff50bc
        0x1fff2758:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff275a:    2801        .(      CMP      r0,#1
        0x1fff275c:    d111        ..      BNE      0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff275e:    0568        h.      LSLS     r0,r5,#21
        0x1fff2760:    d40f        ..      BMI      0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff2762:    7b70        p{      LDRB     r0,[r6,#0xd]
        0x1fff2764:    07c1        ..      LSLS     r1,r0,#31
        0x1fff2766:    d001        ..      BEQ      0x1fff276c ; LL_IRQHandler1 + 292
        0x1fff2768:    2025        %       MOVS     r0,#0x25
        0x1fff276a:    e004        ..      B        0x1fff2776 ; LL_IRQHandler1 + 302
        0x1fff276c:    0780        ..      LSLS     r0,r0,#30
        0x1fff276e:    d501        ..      BPL      0x1fff2774 ; LL_IRQHandler1 + 300
        0x1fff2770:    2026        &       MOVS     r0,#0x26
        0x1fff2772:    e000        ..      B        0x1fff2776 ; LL_IRQHandler1 + 302
        0x1fff2774:    2027        '       MOVS     r0,#0x27
        0x1fff2776:    7d31        1}      LDRB     r1,[r6,#0x14]
        0x1fff2778:    4281        .B      CMP      r1,r0
        0x1fff277a:    d902        ..      BLS      0x1fff2782 ; LL_IRQHandler1 + 314
        0x1fff277c:    2032        2       MOVS     r0,#0x32
        0x1fff277e:    f7fff95b    ..[.    BL       $Ven$TT$L$$ll_schedule_next_event ; 0x1fff1a38
        0x1fff2782:    4c1b        .L      LDR      r4,[pc,#108] ; [0x1fff27f0] = 0x1fff0923
        0x1fff2784:    7820         x      LDRB     r0,[r4,#0]
        0x1fff2786:    2804        .(      CMP      r0,#4
        0x1fff2788:    d004        ..      BEQ      0x1fff2794 ; LL_IRQHandler1 + 332
        0x1fff278a:    2803        .(      CMP      r0,#3
        0x1fff278c:    d01a        ..      BEQ      0x1fff27c4 ; LL_IRQHandler1 + 380
        0x1fff278e:    2807        .(      CMP      r0,#7
        0x1fff2790:    d01d        ..      BEQ      0x1fff27ce ; LL_IRQHandler1 + 390
        0x1fff2792:    e020         .      B        0x1fff27d6 ; LL_IRQHandler1 + 398
        0x1fff2794:    f7fff956    ..V.    BL       $Ven$TT$L$$llSecAdvAllow ; 0x1fff1a44
        0x1fff2798:    2800        .(      CMP      r0,#0
        0x1fff279a:    d01c        ..      BEQ      0x1fff27d6 ; LL_IRQHandler1 + 398
        0x1fff279c:    f7fff958    ..X.    BL       $Ven$TT$L$$llSetupSecAdvEvt ; 0x1fff1a50
        0x1fff27a0:    2058        X       MOVS     r0,#0x58
        0x1fff27a2:    f7fff95b    ..[.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff27a6:    7820         x      LDRB     r0,[r4,#0]
        0x1fff27a8:    2800        .(      CMP      r0,#0
        0x1fff27aa:    d001        ..      BEQ      0x1fff27b0 ; LL_IRQHandler1 + 360
        0x1fff27ac:    2002        .       MOVS     r0,#2
        0x1fff27ae:    7020         p      STRB     r0,[r4,#0]
        0x1fff27b0:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff27f8] = 0x1fff6bd0
        0x1fff27b2:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff27b4:    2800        .(      CMP      r0,#0
        0x1fff27b6:    d00e        ..      BEQ      0x1fff27d6 ; LL_IRQHandler1 + 398
        0x1fff27b8:    7820         x      LDRB     r0,[r4,#0]
        0x1fff27ba:    2800        .(      CMP      r0,#0
        0x1fff27bc:    d10b        ..      BNE      0x1fff27d6 ; LL_IRQHandler1 + 398
        0x1fff27be:    2003        .       MOVS     r0,#3
        0x1fff27c0:    7020         p      STRB     r0,[r4,#0]
        0x1fff27c2:    e008        ..      B        0x1fff27d6 ; LL_IRQHandler1 + 398
        0x1fff27c4:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff27fc] = 0x1fff0bbc
        0x1fff27c6:    7c80        .|      LDRB     r0,[r0,#0x12]
        0x1fff27c8:    f7fff94e    ..N.    BL       $Ven$TT$L$$llSetupSecScan ; 0x1fff1a68
        0x1fff27cc:    e003        ..      B        0x1fff27d6 ; LL_IRQHandler1 + 398
        0x1fff27ce:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff2800] = 0x1fff0bd4
        0x1fff27d0:    7b80        .{      LDRB     r0,[r0,#0xe]
        0x1fff27d2:    f7fff94f    ..O.    BL       $Ven$TT$L$$llSetupSecInit ; 0x1fff1a74
        0x1fff27d6:    2003        .       MOVS     r0,#3
        0x1fff27d8:    f7fff8f2    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff27dc:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff27de:    0000        ..      DCW    0
        0x1fff27e0:    1fff099c    ....    DCD    536807836
        0x1fff27e4:    1fff0998    ....    DCD    536807832
        0x1fff27e8:    1fff0990    ....    DCD    536807824
        0x1fff27ec:    1fff091c    ....    DCD    536807708
        0x1fff27f0:    1fff0923    #...    DCD    536807715
        0x1fff27f4:    1fff0ba6    ....    DCD    536808358
        0x1fff27f8:    1fff6bd0    .k..    DCD    536832976
        0x1fff27fc:    1fff0bbc    ....    DCD    536808380
        0x1fff2800:    1fff0bd4    ....    DCD    536808404
    $t
    i.LL_ProcessEvent1
    LL_ProcessEvent1
        0x1fff2804:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff2806:    460c        .F      MOV      r4,r1
        0x1fff2808:    4910        .I      LDR      r1,[pc,#64] ; [0x1fff284c] = 0x9de
        0x1fff280a:    420c        .B      TST      r4,r1
        0x1fff280c:    d11a        ..      BNE      0x1fff2844 ; LL_ProcessEvent1 + 64
        0x1fff280e:    0561        a.      LSLS     r1,r4,#21
        0x1fff2810:    d518        ..      BPL      0x1fff2844 ; LL_ProcessEvent1 + 64
        0x1fff2812:    2500        .%      MOVS     r5,#0
        0x1fff2814:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff2850] = 0x1fff7ba8
        0x1fff2816:    00af        ..      LSLS     r7,r5,#2
        0x1fff2818:    183e        >.      ADDS     r6,r7,r0
        0x1fff281a:    7871        qx      LDRB     r1,[r6,#1]
        0x1fff281c:    2901        .)      CMP      r1,#1
        0x1fff281e:    d109        ..      BNE      0x1fff2834 ; LL_ProcessEvent1 + 48
        0x1fff2820:    5dc1        .]      LDRB     r1,[r0,r7]
        0x1fff2822:    8870        p.      LDRH     r0,[r6,#2]
        0x1fff2824:    f7fff92c    ..,.    BL       $Ven$TT$L$$LL_DisconnectCback ; 0x1fff1a80
        0x1fff2828:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff2854] = 0xffff
        0x1fff282a:    8070        p.      STRH     r0,[r6,#2]
        0x1fff282c:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff2850] = 0x1fff7ba8
        0x1fff282e:    2000        .       MOVS     r0,#0
        0x1fff2830:    55c8        .U      STRB     r0,[r1,r7]
        0x1fff2832:    7070        pp      STRB     r0,[r6,#1]
        0x1fff2834:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff2836:    b2ed        ..      UXTB     r5,r5
        0x1fff2838:    2d10        .-      CMP      r5,#0x10
        0x1fff283a:    d3eb        ..      BCC      0x1fff2814 ; LL_ProcessEvent1 + 16
        0x1fff283c:    2001        .       MOVS     r0,#1
        0x1fff283e:    0280        ..      LSLS     r0,r0,#10
        0x1fff2840:    4060        `@      EORS     r0,r0,r4
        0x1fff2842:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2844:    4621        !F      MOV      r1,r4
        0x1fff2846:    f7fff921    ..!.    BL       $Ven$TT$L$$LL_ProcessEvent0 ; 0x1fff1a8c
        0x1fff284a:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff284c:    000009de    ....    DCD    2526
        0x1fff2850:    1fff7ba8    .{..    DCD    536837032
        0x1fff2854:    0000ffff    ....    DCD    65535
    $t
    i.LL_Reset1
    LL_Reset1
        0x1fff2858:    b510        ..      PUSH     {r4,lr}
        0x1fff285a:    2001        .       MOVS     r0,#1
        0x1fff285c:    f002ff34    ..4.    BL       patch_linkBuf_init ; 0x1fff56c8
        0x1fff2860:    f7fff91a    ....    BL       $Ven$TT$L$$LL_Reset0 ; 0x1fff1a98
        0x1fff2864:    4604        .F      MOV      r4,r0
        0x1fff2866:    2000        .       MOVS     r0,#0
        0x1fff2868:    f002ff2e    ....    BL       patch_linkBuf_init ; 0x1fff56c8
        0x1fff286c:    4620         F      MOV      r0,r4
        0x1fff286e:    bd10        ..      POP      {r4,pc}
    i.LL_set_default_conn_params1
    LL_set_default_conn_params1
        0x1fff2870:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff2872:    4604        .F      MOV      r4,r0
        0x1fff2874:    f7fff916    ....    BL       $Ven$TT$L$$LL_set_default_conn_params0 ; 0x1fff1aa4
        0x1fff2878:    1de2        ..      ADDS     r2,r4,#7
        0x1fff287a:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff287c:    32fa        .2      ADDS     r2,r2,#0xfa
        0x1fff287e:    6fd0        .o      LDR      r0,[r2,#0x7c]
        0x1fff2880:    2100        .!      MOVS     r1,#0
        0x1fff2882:    0c00        ..      LSRS     r0,r0,#16
        0x1fff2884:    0400        ..      LSLS     r0,r0,#16
        0x1fff2886:    67d0        .g      STR      r0,[r2,#0x7c]
        0x1fff2888:    4610        .F      MOV      r0,r2
        0x1fff288a:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff288c:    008b        ..      LSLS     r3,r1,#2
        0x1fff288e:    191b        ..      ADDS     r3,r3,r4
        0x1fff2890:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff2892:    3301        .3      ADDS     r3,#1
        0x1fff2894:    6ac5        .j      LDR      r5,[r0,#0x2c]
        0x1fff2896:    1c49        I.      ADDS     r1,r1,#1
        0x1fff2898:    66dd        .f      STR      r5,[r3,#0x6c]
        0x1fff289a:    2908        .)      CMP      r1,#8
        0x1fff289c:    dbf6        ..      BLT      0x1fff288c ; LL_set_default_conn_params1 + 28
        0x1fff289e:    2100        .!      MOVS     r1,#0
        0x1fff28a0:    008b        ..      LSLS     r3,r1,#2
        0x1fff28a2:    191b        ..      ADDS     r3,r3,r4
        0x1fff28a4:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff28a6:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff28a8:    6ac5        .j      LDR      r5,[r0,#0x2c]
        0x1fff28aa:    1c49        I.      ADDS     r1,r1,#1
        0x1fff28ac:    60dd        .`      STR      r5,[r3,#0xc]
        0x1fff28ae:    2908        .)      CMP      r1,#8
        0x1fff28b0:    dbf6        ..      BLT      0x1fff28a0 ; LL_set_default_conn_params1 + 48
        0x1fff28b2:    2001        .       MOVS     r0,#1
        0x1fff28b4:    64d0        .d      STR      r0,[r2,#0x4c]
        0x1fff28b6:    bd70        p.      POP      {r4-r6,pc}
    i.NVIC_EnableIRQ
    NVIC_EnableIRQ
        0x1fff28b8:    06c1        ..      LSLS     r1,r0,#27
        0x1fff28ba:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff28bc:    2001        .       MOVS     r0,#1
        0x1fff28be:    4088        .@      LSLS     r0,r0,r1
        0x1fff28c0:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff28c8] = 0xe000e100
        0x1fff28c2:    6008        .`      STR      r0,[r1,#0]
        0x1fff28c4:    4770        pG      BX       lr
    $d
        0x1fff28c6:    0000        ..      DCW    0
        0x1fff28c8:    e000e100    ....    DCD    3758153984
    $t
    i.PLUSPHY_IRQHandler
    PLUSPHY_IRQHandler
        0x1fff28cc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff28ce:    b085        ..      SUB      sp,sp,#0x14
        0x1fff28d0:    f7fff870    ..p.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff28d4:    4d3c        <M      LDR      r5,[pc,#240] ; [0x1fff29c8] = 0x1fff6b80
        0x1fff28d6:    60a8        .`      STR      r0,[r5,#8]
        0x1fff28d8:    f7fff878    ..x.    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff19cc
        0x1fff28dc:    4604        .F      MOV      r4,r0
        0x1fff28de:    07c0        ..      LSLS     r0,r0,#31
        0x1fff28e0:    d011        ..      BEQ      0x1fff2906 ; PLUSPHY_IRQHandler + 58
        0x1fff28e2:    493a        :I      LDR      r1,[pc,#232] ; [0x1fff29cc] = 0x1fff0998
        0x1fff28e4:    2000        .       MOVS     r0,#0
        0x1fff28e6:    6008        .`      STR      r0,[r1,#0]
        0x1fff28e8:    f7fff80a    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff28ec:    f7fff874    ..t.    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff28f0:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff29d0] = 0x1fff7670
        0x1fff28f2:    2800        .(      CMP      r0,#0
        0x1fff28f4:    d00b        ..      BEQ      0x1fff290e ; PLUSPHY_IRQHandler + 66
        0x1fff28f6:    460f        .F      MOV      r7,r1
        0x1fff28f8:    3f0c        .?      SUBS     r7,r7,#0xc
        0x1fff28fa:    462e        .F      MOV      r6,r5
        0x1fff28fc:    2801        .(      CMP      r0,#1
        0x1fff28fe:    d00b        ..      BEQ      0x1fff2918 ; PLUSPHY_IRQHandler + 76
        0x1fff2900:    2802        .(      CMP      r0,#2
        0x1fff2902:    d031        1.      BEQ      0x1fff2968 ; PLUSPHY_IRQHandler + 156
        0x1fff2904:    e051        Q.      B        0x1fff29aa ; PLUSPHY_IRQHandler + 222
        0x1fff2906:    f7fff86d    ..m.    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff290a:    b005        ..      ADD      sp,sp,#0x14
        0x1fff290c:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff290e:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff2910:    2800        .(      CMP      r0,#0
        0x1fff2912:    d14a        J.      BNE      0x1fff29aa ; PLUSPHY_IRQHandler + 222
        0x1fff2914:    2104        .!      MOVS     r1,#4
        0x1fff2916:    e045        E.      B        0x1fff29a4 ; PLUSPHY_IRQHandler + 216
        0x1fff2918:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff291a:    2801        .(      CMP      r0,#1
        0x1fff291c:    d145        E.      BNE      0x1fff29aa ; PLUSPHY_IRQHandler + 222
        0x1fff291e:    4a2a        *J      LDR      r2,[pc,#168] ; [0x1fff29c8] = 0x1fff6b80
        0x1fff2920:    1d11        ..      ADDS     r1,r2,#4
        0x1fff2922:    1ec8        ..      SUBS     r0,r1,#3
        0x1fff2924:    f003fbc4    ....    BL       rf_phy_get_pktFoot ; 0x1fff60b0
        0x1fff2928:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff292a:    2800        .(      CMP      r0,#0
        0x1fff292c:    d013        ..      BEQ      0x1fff2956 ; PLUSPHY_IRQHandler + 138
        0x1fff292e:    0560        `.      LSLS     r0,r4,#21
        0x1fff2930:    d50f        ..      BPL      0x1fff2952 ; PLUSPHY_IRQHandler + 134
        0x1fff2932:    ab02        ..      ADD      r3,sp,#8
        0x1fff2934:    aa01        ..      ADD      r2,sp,#4
        0x1fff2936:    a903        ..      ADD      r1,sp,#0xc
        0x1fff2938:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff29d4] = 0x1fff7444
        0x1fff293a:    f7fff8b9    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo ; 0x1fff1ab0
        0x1fff293e:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff29c8] = 0x1fff6b80
        0x1fff2940:    9600        ..      STR      r6,[sp,#0]
        0x1fff2942:    1d1b        ..      ADDS     r3,r3,#4
        0x1fff2944:    1eda        ..      SUBS     r2,r3,#3
        0x1fff2946:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2948:    9801        ..      LDR      r0,[sp,#4]
        0x1fff294a:    f003fbc9    ....    BL       rf_phy_get_pktFoot_fromPkt ; 0x1fff60e0
        0x1fff294e:    f003f867    ..g.    BL       phy_rx_data_check ; 0x1fff5a20
        0x1fff2952:    2108        .!      MOVS     r1,#8
        0x1fff2954:    e026        &.      B        0x1fff29a4 ; PLUSPHY_IRQHandler + 216
        0x1fff2956:    0760        `.      LSLS     r0,r4,#29
        0x1fff2958:    d4fb        ..      BMI      0x1fff2952 ; PLUSPHY_IRQHandler + 134
        0x1fff295a:    ab02        ..      ADD      r3,sp,#8
        0x1fff295c:    aa01        ..      ADD      r2,sp,#4
        0x1fff295e:    a903        ..      ADD      r1,sp,#0xc
        0x1fff2960:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff29d4] = 0x1fff7444
        0x1fff2962:    f7fff8ab    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo_pplus ; 0x1fff1abc
        0x1fff2966:    e7ea        ..      B        0x1fff293e ; PLUSPHY_IRQHandler + 114
        0x1fff2968:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff296a:    2802        .(      CMP      r0,#2
        0x1fff296c:    d11d        ..      BNE      0x1fff29aa ; PLUSPHY_IRQHandler + 222
        0x1fff296e:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff29c8] = 0x1fff6b80
        0x1fff2970:    1d11        ..      ADDS     r1,r2,#4
        0x1fff2972:    1ec8        ..      SUBS     r0,r1,#3
        0x1fff2974:    f003fb9c    ....    BL       rf_phy_get_pktFoot ; 0x1fff60b0
        0x1fff2978:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff297a:    2800        .(      CMP      r0,#0
        0x1fff297c:    d01a        ..      BEQ      0x1fff29b4 ; PLUSPHY_IRQHandler + 232
        0x1fff297e:    0560        `.      LSLS     r0,r4,#21
        0x1fff2980:    d50f        ..      BPL      0x1fff29a2 ; PLUSPHY_IRQHandler + 214
        0x1fff2982:    ab02        ..      ADD      r3,sp,#8
        0x1fff2984:    aa01        ..      ADD      r2,sp,#4
        0x1fff2986:    a903        ..      ADD      r1,sp,#0xc
        0x1fff2988:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff29d4] = 0x1fff7444
        0x1fff298a:    f7fff891    ....    BL       $Ven$TT$L$$ll_hw_read_rfifo ; 0x1fff1ab0
        0x1fff298e:    4b0e        .K      LDR      r3,[pc,#56] ; [0x1fff29c8] = 0x1fff6b80
        0x1fff2990:    9600        ..      STR      r6,[sp,#0]
        0x1fff2992:    1d1b        ..      ADDS     r3,r3,#4
        0x1fff2994:    1eda        ..      SUBS     r2,r3,#3
        0x1fff2996:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2998:    9801        ..      LDR      r0,[sp,#4]
        0x1fff299a:    f003fba1    ....    BL       rf_phy_get_pktFoot_fromPkt ; 0x1fff60e0
        0x1fff299e:    f003f83f    ..?.    BL       phy_rx_data_check ; 0x1fff5a20
        0x1fff29a2:    2110        .!      MOVS     r1,#0x10
        0x1fff29a4:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff29a6:    f7fff88f    ....    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1ac8
        0x1fff29aa:    f7fff81b    ....    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff19e4
        0x1fff29ae:    f7feffb3    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff29b2:    e7aa        ..      B        0x1fff290a ; PLUSPHY_IRQHandler + 62
        0x1fff29b4:    0760        `.      LSLS     r0,r4,#29
        0x1fff29b6:    d4f4        ..      BMI      0x1fff29a2 ; PLUSPHY_IRQHandler + 214
        0x1fff29b8:    ab02        ..      ADD      r3,sp,#8
        0x1fff29ba:    aa01        ..      ADD      r2,sp,#4
        0x1fff29bc:    a903        ..      ADD      r1,sp,#0xc
        0x1fff29be:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff29d4] = 0x1fff7444
        0x1fff29c0:    f7fff87c    ..|.    BL       $Ven$TT$L$$ll_hw_read_rfifo_pplus ; 0x1fff1abc
        0x1fff29c4:    e7e3        ..      B        0x1fff298e ; PLUSPHY_IRQHandler + 194
    $d
        0x1fff29c6:    0000        ..      DCW    0
        0x1fff29c8:    1fff6b80    .k..    DCD    536832896
        0x1fff29cc:    1fff0998    ....    DCD    536807832
        0x1fff29d0:    1fff7670    pv..    DCD    536835696
        0x1fff29d4:    1fff7444    Dt..    DCD    536835140
    $t
    i.PhyPlusPhy_Init
    PhyPlusPhy_Init
        0x1fff29d8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff29da:    4f4d        MO      LDR      r7,[pc,#308] ; [0x1fff2b10] = 0x1fff6b80
        0x1fff29dc:    b085        ..      SUB      sp,sp,#0x14
        0x1fff29de:    70f8        .p      STRB     r0,[r7,#3]
        0x1fff29e0:    494d        MI      LDR      r1,[pc,#308] ; [0x1fff2b18] = 0x1fff0380
        0x1fff29e2:    484c        LH      LDR      r0,[pc,#304] ; [0x1fff2b14] = 0x1fff28cd
        0x1fff29e4:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff29e6:    2206        ."      MOVS     r2,#6
        0x1fff29e8:    a903        ..      ADD      r1,sp,#0xc
        0x1fff29ea:    484c        LH      LDR      r0,[pc,#304] ; [0x1fff2b1c] = 0x11004000
        0x1fff29ec:    f001f81e    ....    BL       hal_flash_read ; 0x1fff3a2c
        0x1fff29f0:    4669        iF      MOV      r1,sp
        0x1fff29f2:    4638        8F      MOV      r0,r7
        0x1fff29f4:    7b09        .{      LDRB     r1,[r1,#0xc]
        0x1fff29f6:    300c        .0      ADDS     r0,r0,#0xc
        0x1fff29f8:    70c1        .p      STRB     r1,[r0,#3]
        0x1fff29fa:    4669        iF      MOV      r1,sp
        0x1fff29fc:    7b49        I{      LDRB     r1,[r1,#0xd]
        0x1fff29fe:    7081        .p      STRB     r1,[r0,#2]
        0x1fff2a00:    4669        iF      MOV      r1,sp
        0x1fff2a02:    7b89        .{      LDRB     r1,[r1,#0xe]
        0x1fff2a04:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff2a06:    4669        iF      MOV      r1,sp
        0x1fff2a08:    7bc9        .{      LDRB     r1,[r1,#0xf]
        0x1fff2a0a:    7001        .p      STRB     r1,[r0,#0]
        0x1fff2a0c:    4669        iF      MOV      r1,sp
        0x1fff2a0e:    7c09        .|      LDRB     r1,[r1,#0x10]
        0x1fff2a10:    7141        Aq      STRB     r1,[r0,#5]
        0x1fff2a12:    4669        iF      MOV      r1,sp
        0x1fff2a14:    7c49        I|      LDRB     r1,[r1,#0x11]
        0x1fff2a16:    7101        .q      STRB     r1,[r0,#4]
        0x1fff2a18:    2000        .       MOVS     r0,#0
        0x1fff2a1a:    4a41        AJ      LDR      r2,[pc,#260] ; [0x1fff2b20] = 0x1fff7544
        0x1fff2a1c:    4601        .F      MOV      r1,r0
        0x1fff2a1e:    5411        .T      STRB     r1,[r2,r0]
        0x1fff2a20:    1c40        @.      ADDS     r0,r0,#1
        0x1fff2a22:    b2c0        ..      UXTB     r0,r0
        0x1fff2a24:    28ff        .(      CMP      r0,#0xff
        0x1fff2a26:    d3fa        ..      BCC      0x1fff2a1e ; PhyPlusPhy_Init + 70
        0x1fff2a28:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff2b24] = 0x1fff7644
        0x1fff2a2a:    2402        .$      MOVS     r4,#2
        0x1fff2a2c:    7004        .p      STRB     r4,[r0,#0]
        0x1fff2a2e:    2501        .%      MOVS     r5,#1
        0x1fff2a30:    7045        Ep      STRB     r5,[r0,#1]
        0x1fff2a32:    2206        ."      MOVS     r2,#6
        0x1fff2a34:    7082        .p      STRB     r2,[r0,#2]
        0x1fff2a36:    221b        ."      MOVS     r2,#0x1b
        0x1fff2a38:    70c2        .p      STRB     r2,[r0,#3]
        0x1fff2a3a:    26ff        .&      MOVS     r6,#0xff
        0x1fff2a3c:    7106        .q      STRB     r6,[r0,#4]
        0x1fff2a3e:    2204        ."      MOVS     r2,#4
        0x1fff2a40:    7142        Bq      STRB     r2,[r0,#5]
        0x1fff2a42:    2205        ."      MOVS     r2,#5
        0x1fff2a44:    7182        .q      STRB     r2,[r0,#6]
        0x1fff2a46:    71c5        .q      STRB     r5,[r0,#7]
        0x1fff2a48:    7204        .r      STRB     r4,[r0,#8]
        0x1fff2a4a:    2203        ."      MOVS     r2,#3
        0x1fff2a4c:    7242        Br      STRB     r2,[r0,#9]
        0x1fff2a4e:    23cc        .#      MOVS     r3,#0xcc
        0x1fff2a50:    7283        .r      STRB     r3,[r0,#0xa]
        0x1fff2a52:    72c1        .r      STRB     r1,[r0,#0xb]
        0x1fff2a54:    7302        .s      STRB     r2,[r0,#0xc]
        0x1fff2a56:    23aa        .#      MOVS     r3,#0xaa
        0x1fff2a58:    7343        Cs      STRB     r3,[r0,#0xd]
        0x1fff2a5a:    7381        .s      STRB     r1,[r0,#0xe]
        0x1fff2a5c:    2193        .!      MOVS     r1,#0x93
        0x1fff2a5e:    73c1        .s      STRB     r1,[r0,#0xf]
        0x1fff2a60:    7403        .t      STRB     r3,[r0,#0x10]
        0x1fff2a62:    2167        g!      MOVS     r1,#0x67
        0x1fff2a64:    7441        At      STRB     r1,[r0,#0x11]
        0x1fff2a66:    21f7        .!      MOVS     r1,#0xf7
        0x1fff2a68:    7481        .t      STRB     r1,[r0,#0x12]
        0x1fff2a6a:    21db        .!      MOVS     r1,#0xdb
        0x1fff2a6c:    74c1        .t      STRB     r1,[r0,#0x13]
        0x1fff2a6e:    2134        4!      MOVS     r1,#0x34
        0x1fff2a70:    7501        .u      STRB     r1,[r0,#0x14]
        0x1fff2a72:    21c4        .!      MOVS     r1,#0xc4
        0x1fff2a74:    7541        Au      STRB     r1,[r0,#0x15]
        0x1fff2a76:    7582        .u      STRB     r2,[r0,#0x16]
        0x1fff2a78:    218e        .!      MOVS     r1,#0x8e
        0x1fff2a7a:    75c1        .u      STRB     r1,[r0,#0x17]
        0x1fff2a7c:    215c        \!      MOVS     r1,#0x5c
        0x1fff2a7e:    7601        .v      STRB     r1,[r0,#0x18]
        0x1fff2a80:    210b        .!      MOVS     r1,#0xb
        0x1fff2a82:    7641        Av      STRB     r1,[r0,#0x19]
        0x1fff2a84:    7683        .v      STRB     r3,[r0,#0x1a]
        0x1fff2a86:    2197        .!      MOVS     r1,#0x97
        0x1fff2a88:    76c1        .v      STRB     r1,[r0,#0x1b]
        0x1fff2a8a:    2130        0!      MOVS     r1,#0x30
        0x1fff2a8c:    7701        .w      STRB     r1,[r0,#0x1c]
        0x1fff2a8e:    2156        V!      MOVS     r1,#0x56
        0x1fff2a90:    7741        Aw      STRB     r1,[r0,#0x1d]
        0x1fff2a92:    21e6        .!      MOVS     r1,#0xe6
        0x1fff2a94:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff2a96:    a024        $.      ADR      r0,{pc}+0x92 ; 0x1fff2b28
        0x1fff2a98:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2a9a:    9000        ..      STR      r0,[sp,#0]
        0x1fff2a9c:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff2b10] = 0x1fff6b80
        0x1fff2a9e:    231f        .#      MOVS     r3,#0x1f
        0x1fff2aa0:    4a20         J      LDR      r2,[pc,#128] ; [0x1fff2b24] = 0x1fff7644
        0x1fff2aa2:    4669        iF      MOV      r1,sp
        0x1fff2aa4:    300c        .0      ADDS     r0,r0,#0xc
        0x1fff2aa6:    f003f853    ..S.    BL       phy_tx_buf_updata ; 0x1fff5b50
        0x1fff2aaa:    4630        0F      MOV      r0,r6
        0x1fff2aac:    4e1d        .N      LDR      r6,[pc,#116] ; [0x1fff2b24] = 0x1fff7644
        0x1fff2aae:    4a22        "J      LDR      r2,[pc,#136] ; [0x1fff2b38] = 0x9c4
        0x1fff2ab0:    362c        ,6      ADDS     r6,r6,#0x2c
        0x1fff2ab2:    7030        0p      STRB     r0,[r6,#0]
        0x1fff2ab4:    2064        d       MOVS     r0,#0x64
        0x1fff2ab6:    6070        p`      STR      r0,[r6,#4]
        0x1fff2ab8:    2041        A       MOVS     r0,#0x41
        0x1fff2aba:    60b0        .`      STR      r0,[r6,#8]
        0x1fff2abc:    20ff        .       MOVS     r0,#0xff
        0x1fff2abe:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff2ac0:    8230        0.      STRH     r0,[r6,#0x10]
        0x1fff2ac2:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff2b2c] = 0x4e20
        0x1fff2ac4:    81f0        ..      STRH     r0,[r6,#0xe]
        0x1fff2ac6:    4628        (F      MOV      r0,r5
        0x1fff2ac8:    4635        5F      MOV      r5,r6
        0x1fff2aca:    7334        4s      STRB     r4,[r6,#0xc]
        0x1fff2acc:    3d0c        .=      SUBS     r5,r5,#0xc
        0x1fff2ace:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2ad0:    2025        %       MOVS     r0,#0x25
        0x1fff2ad2:    7068        hp      STRB     r0,[r5,#1]
        0x1fff2ad4:    70ec        .p      STRB     r4,[r5,#3]
        0x1fff2ad6:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff2b30] = 0x555555
        0x1fff2ad8:    6068        h`      STR      r0,[r5,#4]
        0x1fff2ada:    2053        S       MOVS     r0,#0x53
        0x1fff2adc:    70a8        .p      STRB     r0,[r5,#2]
        0x1fff2ade:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff2b34] = 0x8e89bed6
        0x1fff2ae0:    60a8        .`      STR      r0,[r5,#8]
        0x1fff2ae2:    2102        .!      MOVS     r1,#2
        0x1fff2ae4:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff2ae6:    f7fefff5    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1ad4
        0x1fff2aea:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff2aec:    78aa        .x      LDRB     r2,[r5,#2]
        0x1fff2aee:    466b        kF      MOV      r3,sp
        0x1fff2af0:    6869        ih      LDR      r1,[r5,#4]
        0x1fff2af2:    c307        ..      STM      r3!,{r0-r2}
        0x1fff2af4:    7b32        2{      LDRB     r2,[r6,#0xc]
        0x1fff2af6:    7831        1x      LDRB     r1,[r6,#0]
        0x1fff2af8:    a010        ..      ADR      r0,{pc}+0x44 ; 0x1fff2b3c
        0x1fff2afa:    68ab        .h      LDR      r3,[r5,#8]
        0x1fff2afc:    f000fd5a    ..Z.    BL       dbg_printf ; 0x1fff35b4
        0x1fff2b00:    220a        ."      MOVS     r2,#0xa
        0x1fff2b02:    2110        .!      MOVS     r1,#0x10
        0x1fff2b04:    78f8        .x      LDRB     r0,[r7,#3]
        0x1fff2b06:    f7feffe5    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1ad4
        0x1fff2b0a:    b005        ..      ADD      sp,sp,#0x14
        0x1fff2b0c:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2b0e:    0000        ..      DCW    0
        0x1fff2b10:    1fff6b80    .k..    DCD    536832896
        0x1fff2b14:    1fff28cd    .(..    DCD    536815821
        0x1fff2b18:    1fff0380    ....    DCD    536806272
        0x1fff2b1c:    11004000    .@..    DCD    285229056
        0x1fff2b20:    1fff7544    Du..    DCD    536835396
        0x1fff2b24:    1fff7644    Dv..    DCD    536835652
        0x1fff2b28:    00002500    .%..    DCD    9472
        0x1fff2b2c:    00004e20     N..    DCD    20000
        0x1fff2b30:    00555555    UUU.    DCD    5592405
        0x1fff2b34:    8e89bed6    ....    DCD    2391391958
        0x1fff2b38:    000009c4    ....    DCD    2500
        0x1fff2b3c:    5948505b    [PHY    DCD    1497911387
        0x1fff2b40:    6e69205d    ] in    DCD    1852383325
        0x1fff2b44:    64207469    it d    DCD    1679848553
        0x1fff2b48:    20656e6f    one     DCD    543518319
        0x1fff2b4c:    72206425    %d r    DCD    1914725413
        0x1fff2b50:    6e686366    fchn    DCD    1852334950
        0x1fff2b54:    53206425    %d S    DCD    1394631717
        0x1fff2b58:    38255b57    W[%8    DCD    941972311
        0x1fff2b5c:    43205d78    x] C    DCD    1126194552
        0x1fff2b60:    255b4352    RC[%    DCD    626738002
        0x1fff2b64:    38252064    d %8    DCD    941957220
        0x1fff2b68:    57205d78    x] W    DCD    1461738872
        0x1fff2b6c:    32255b54    T[%2    DCD    841309012
        0x1fff2b70:    000a5d78    x]..    DCD    679288
    $t
    i.PhyPlusPhy_ProcessEvent
    PhyPlusPhy_ProcessEvent
        0x1fff2b74:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff2b76:    4e37        7N      LDR      r6,[pc,#220] ; [0x1fff2c54] = 0x1fff6b80
        0x1fff2b78:    4d37        7M      LDR      r5,[pc,#220] ; [0x1fff2c58] = 0x1fff7670
        0x1fff2b7a:    460c        .F      MOV      r4,r1
        0x1fff2b7c:    07ca        ..      LSLS     r2,r1,#31
        0x1fff2b7e:    4f34        4O      LDR      r7,[pc,#208] ; [0x1fff2c50] = 0x1fff7664
        0x1fff2b80:    7829        )x      LDRB     r1,[r5,#0]
        0x1fff2b82:    78f0        .x      LDRB     r0,[r6,#3]
        0x1fff2b84:    d013        ..      BEQ      0x1fff2bae ; PhyPlusPhy_ProcessEvent + 58
        0x1fff2b86:    29ff        .)      CMP      r1,#0xff
        0x1fff2b88:    d005        ..      BEQ      0x1fff2b96 ; PhyPlusPhy_ProcessEvent + 34
        0x1fff2b8a:    2214        ."      MOVS     r2,#0x14
        0x1fff2b8c:    2101        .!      MOVS     r1,#1
        0x1fff2b8e:    f7feffa1    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1ad4
        0x1fff2b92:    2001        .       MOVS     r0,#1
        0x1fff2b94:    e058        X.      B        0x1fff2c48 ; PhyPlusPhy_ProcessEvent + 212
        0x1fff2b96:    2000        .       MOVS     r0,#0
        0x1fff2b98:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2b9a:    2002        .       MOVS     r0,#2
        0x1fff2b9c:    7328        (s      STRB     r0,[r5,#0xc]
        0x1fff2b9e:    2053        S       MOVS     r0,#0x53
        0x1fff2ba0:    70b8        .p      STRB     r0,[r7,#2]
        0x1fff2ba2:    f002ff09    ....    BL       phy_rf_tx ; 0x1fff59b8
        0x1fff2ba6:    2101        .!      MOVS     r1,#1
        0x1fff2ba8:    78f0        .x      LDRB     r0,[r6,#3]
        0x1fff2baa:    686a        jh      LDR      r2,[r5,#4]
        0x1fff2bac:    e7ef        ..      B        0x1fff2b8e ; PhyPlusPhy_ProcessEvent + 26
        0x1fff2bae:    07a2        ..      LSLS     r2,r4,#30
        0x1fff2bb0:    d516        ..      BPL      0x1fff2be0 ; PhyPlusPhy_ProcessEvent + 108
        0x1fff2bb2:    29ff        .)      CMP      r1,#0xff
        0x1fff2bb4:    d005        ..      BEQ      0x1fff2bc2 ; PhyPlusPhy_ProcessEvent + 78
        0x1fff2bb6:    2205        ."      MOVS     r2,#5
        0x1fff2bb8:    2102        .!      MOVS     r1,#2
        0x1fff2bba:    f7feff8b    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1ad4
        0x1fff2bbe:    2002        .       MOVS     r0,#2
        0x1fff2bc0:    e042        B.      B        0x1fff2c48 ; PhyPlusPhy_ProcessEvent + 212
        0x1fff2bc2:    2001        .       MOVS     r0,#1
        0x1fff2bc4:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2bc6:    2002        .       MOVS     r0,#2
        0x1fff2bc8:    7328        (s      STRB     r0,[r5,#0xc]
        0x1fff2bca:    f7fefef3    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff2bce:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff2bd0:    2053        S       MOVS     r0,#0x53
        0x1fff2bd2:    70b8        .p      STRB     r0,[r7,#2]
        0x1fff2bd4:    f002feca    ....    BL       phy_rf_rx ; 0x1fff596c
        0x1fff2bd8:    2102        .!      MOVS     r1,#2
        0x1fff2bda:    78f0        .x      LDRB     r0,[r6,#3]
        0x1fff2bdc:    68aa        .h      LDR      r2,[r5,#8]
        0x1fff2bde:    e7ec        ..      B        0x1fff2bba ; PhyPlusPhy_ProcessEvent + 70
        0x1fff2be0:    06a0        ..      LSLS     r0,r4,#26
        0x1fff2be2:    d503        ..      BPL      0x1fff2bec ; PhyPlusPhy_ProcessEvent + 120
        0x1fff2be4:    f002ff2e    ....    BL       phy_rx_data_process ; 0x1fff5a44
        0x1fff2be8:    2020                MOVS     r0,#0x20
        0x1fff2bea:    e02d        -.      B        0x1fff2c48 ; PhyPlusPhy_ProcessEvent + 212
        0x1fff2bec:    0760        `.      LSLS     r0,r4,#29
        0x1fff2bee:    d516        ..      BPL      0x1fff2c1e ; PhyPlusPhy_ProcessEvent + 170
        0x1fff2bf0:    7b28        ({      LDRB     r0,[r5,#0xc]
        0x1fff2bf2:    2802        .(      CMP      r0,#2
        0x1fff2bf4:    d004        ..      BEQ      0x1fff2c00 ; PhyPlusPhy_ProcessEvent + 140
        0x1fff2bf6:    281a        .(      CMP      r0,#0x1a
        0x1fff2bf8:    d006        ..      BEQ      0x1fff2c08 ; PhyPlusPhy_ProcessEvent + 148
        0x1fff2bfa:    2850        P(      CMP      r0,#0x50
        0x1fff2bfc:    d00b        ..      BEQ      0x1fff2c16 ; PhyPlusPhy_ProcessEvent + 162
        0x1fff2bfe:    e00c        ..      B        0x1fff2c1a ; PhyPlusPhy_ProcessEvent + 166
        0x1fff2c00:    201a        .       MOVS     r0,#0x1a
        0x1fff2c02:    7328        (s      STRB     r0,[r5,#0xc]
        0x1fff2c04:    2033        3       MOVS     r0,#0x33
        0x1fff2c06:    e002        ..      B        0x1fff2c0e ; PhyPlusPhy_ProcessEvent + 154
        0x1fff2c08:    2050        P       MOVS     r0,#0x50
        0x1fff2c0a:    7328        (s      STRB     r0,[r5,#0xc]
        0x1fff2c0c:    2073        s       MOVS     r0,#0x73
        0x1fff2c0e:    70b8        .p      STRB     r0,[r7,#2]
        0x1fff2c10:    f002fed2    ....    BL       phy_rf_tx ; 0x1fff59b8
        0x1fff2c14:    e001        ..      B        0x1fff2c1a ; PhyPlusPhy_ProcessEvent + 166
        0x1fff2c16:    20ff        .       MOVS     r0,#0xff
        0x1fff2c18:    7028        (p      STRB     r0,[r5,#0]
        0x1fff2c1a:    2004        .       MOVS     r0,#4
        0x1fff2c1c:    e014        ..      B        0x1fff2c48 ; PhyPlusPhy_ProcessEvent + 212
        0x1fff2c1e:    0720         .      LSLS     r0,r4,#28
        0x1fff2c20:    d503        ..      BPL      0x1fff2c2a ; PhyPlusPhy_ProcessEvent + 182
        0x1fff2c22:    f002ffe9    ....    BL       process_rx_done_evt ; 0x1fff5bf8
        0x1fff2c26:    2008        .       MOVS     r0,#8
        0x1fff2c28:    e00e        ..      B        0x1fff2c48 ; PhyPlusPhy_ProcessEvent + 212
        0x1fff2c2a:    06e0        ..      LSLS     r0,r4,#27
        0x1fff2c2c:    d50e        ..      BPL      0x1fff2c4c ; PhyPlusPhy_ProcessEvent + 216
        0x1fff2c2e:    78b0        .x      LDRB     r0,[r6,#2]
        0x1fff2c30:    43c0        .C      MVNS     r0,r0
        0x1fff2c32:    b2c1        ..      UXTB     r1,r0
        0x1fff2c34:    70b1        .p      STRB     r1,[r6,#2]
        0x1fff2c36:    2013        .       MOVS     r0,#0x13
        0x1fff2c38:    f7feff52    ..R.    BL       $Ven$TT$L$$gpio_write ; 0x1fff1ae0
        0x1fff2c3c:    220a        ."      MOVS     r2,#0xa
        0x1fff2c3e:    2110        .!      MOVS     r1,#0x10
        0x1fff2c40:    78f0        .x      LDRB     r0,[r6,#3]
        0x1fff2c42:    f7feff47    ..G.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff1ad4
        0x1fff2c46:    2010        .       MOVS     r0,#0x10
        0x1fff2c48:    4060        `@      EORS     r0,r0,r4
        0x1fff2c4a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff2c4c:    2000        .       MOVS     r0,#0
        0x1fff2c4e:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff2c50:    1fff7664    dv..    DCD    536835684
        0x1fff2c54:    1fff6b80    .k..    DCD    536832896
        0x1fff2c58:    1fff7670    pv..    DCD    536835696
    $t
    i.SystemInit
    SystemInit
        0x1fff2c5c:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff2c68] = 0x1fff6bcc
        0x1fff2c5e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2c64] = 0x17d7840
        0x1fff2c60:    6008        .`      STR      r0,[r1,#0]
        0x1fff2c62:    4770        pG      BX       lr
    $d
        0x1fff2c64:    017d7840    @x}.    DCD    25000000
        0x1fff2c68:    1fff6bcc    .k..    DCD    536832972
    $t
    i.__NVIC_EnableIRQ
    __NVIC_EnableIRQ
        0x1fff2c6c:    2800        .(      CMP      r0,#0
        0x1fff2c6e:    db05        ..      BLT      0x1fff2c7c ; __NVIC_EnableIRQ + 16
        0x1fff2c70:    06c1        ..      LSLS     r1,r0,#27
        0x1fff2c72:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff2c74:    2001        .       MOVS     r0,#1
        0x1fff2c76:    4088        .@      LSLS     r0,r0,r1
        0x1fff2c78:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff2c80] = 0xe000e100
        0x1fff2c7a:    6008        .`      STR      r0,[r1,#0]
        0x1fff2c7c:    4770        pG      BX       lr
    $d
        0x1fff2c7e:    0000        ..      DCW    0
        0x1fff2c80:    e000e100    ....    DCD    3758153984
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2c84:    0783        ..      LSLS     r3,r0,#30
        0x1fff2c86:    22ff        ."      MOVS     r2,#0xff
        0x1fff2c88:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2c8a:    409a        .@      LSLS     r2,r2,r3
        0x1fff2c8c:    0789        ..      LSLS     r1,r1,#30
        0x1fff2c8e:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2c90:    4099        .@      LSLS     r1,r1,r3
        0x1fff2c92:    2800        .(      CMP      r0,#0
        0x1fff2c94:    db08        ..      BLT      0x1fff2ca8 ; __NVIC_SetPriority + 36
        0x1fff2c96:    0883        ..      LSRS     r3,r0,#2
        0x1fff2c98:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2cc0] = 0xe000e400
        0x1fff2c9a:    009b        ..      LSLS     r3,r3,#2
        0x1fff2c9c:    181b        ..      ADDS     r3,r3,r0
        0x1fff2c9e:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2ca0:    4390        .C      BICS     r0,r0,r2
        0x1fff2ca2:    4308        .C      ORRS     r0,r0,r1
        0x1fff2ca4:    6018        .`      STR      r0,[r3,#0]
        0x1fff2ca6:    4770        pG      BX       lr
        0x1fff2ca8:    0700        ..      LSLS     r0,r0,#28
        0x1fff2caa:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2cac:    3808        .8      SUBS     r0,r0,#8
        0x1fff2cae:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cb0:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2cc4] = 0xe000ed00
        0x1fff2cb2:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cb4:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cb6:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2cb8:    4390        .C      BICS     r0,r0,r2
        0x1fff2cba:    4308        .C      ORRS     r0,r0,r1
        0x1fff2cbc:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2cbe:    4770        pG      BX       lr
    $d
        0x1fff2cc0:    e000e400    ....    DCD    3758154752
        0x1fff2cc4:    e000ed00    ....    DCD    3758157056
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2cc8:    0783        ..      LSLS     r3,r0,#30
        0x1fff2cca:    22ff        ."      MOVS     r2,#0xff
        0x1fff2ccc:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2cce:    409a        .@      LSLS     r2,r2,r3
        0x1fff2cd0:    0789        ..      LSLS     r1,r1,#30
        0x1fff2cd2:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2cd4:    4099        .@      LSLS     r1,r1,r3
        0x1fff2cd6:    2800        .(      CMP      r0,#0
        0x1fff2cd8:    db08        ..      BLT      0x1fff2cec ; __NVIC_SetPriority + 36
        0x1fff2cda:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cdc:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2d04] = 0xe000e400
        0x1fff2cde:    009b        ..      LSLS     r3,r3,#2
        0x1fff2ce0:    181b        ..      ADDS     r3,r3,r0
        0x1fff2ce2:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2ce4:    4390        .C      BICS     r0,r0,r2
        0x1fff2ce6:    4308        .C      ORRS     r0,r0,r1
        0x1fff2ce8:    6018        .`      STR      r0,[r3,#0]
        0x1fff2cea:    4770        pG      BX       lr
        0x1fff2cec:    0700        ..      LSLS     r0,r0,#28
        0x1fff2cee:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2cf0:    3808        .8      SUBS     r0,r0,#8
        0x1fff2cf2:    0883        ..      LSRS     r3,r0,#2
        0x1fff2cf4:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2d08] = 0xe000ed00
        0x1fff2cf6:    009b        ..      LSLS     r3,r3,#2
        0x1fff2cf8:    181b        ..      ADDS     r3,r3,r0
        0x1fff2cfa:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2cfc:    4390        .C      BICS     r0,r0,r2
        0x1fff2cfe:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d00:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2d02:    4770        pG      BX       lr
    $d
        0x1fff2d04:    e000e400    ....    DCD    3758154752
        0x1fff2d08:    e000ed00    ....    DCD    3758157056
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x1fff2d0c:    0783        ..      LSLS     r3,r0,#30
        0x1fff2d0e:    22ff        ."      MOVS     r2,#0xff
        0x1fff2d10:    0edb        ..      LSRS     r3,r3,#27
        0x1fff2d12:    409a        .@      LSLS     r2,r2,r3
        0x1fff2d14:    0789        ..      LSLS     r1,r1,#30
        0x1fff2d16:    0e09        ..      LSRS     r1,r1,#24
        0x1fff2d18:    4099        .@      LSLS     r1,r1,r3
        0x1fff2d1a:    2800        .(      CMP      r0,#0
        0x1fff2d1c:    db08        ..      BLT      0x1fff2d30 ; __NVIC_SetPriority + 36
        0x1fff2d1e:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d20:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2d48] = 0xe000e400
        0x1fff2d22:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d24:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d26:    6818        .h      LDR      r0,[r3,#0]
        0x1fff2d28:    4390        .C      BICS     r0,r0,r2
        0x1fff2d2a:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d2c:    6018        .`      STR      r0,[r3,#0]
        0x1fff2d2e:    4770        pG      BX       lr
        0x1fff2d30:    0700        ..      LSLS     r0,r0,#28
        0x1fff2d32:    0f00        ..      LSRS     r0,r0,#28
        0x1fff2d34:    3808        .8      SUBS     r0,r0,#8
        0x1fff2d36:    0883        ..      LSRS     r3,r0,#2
        0x1fff2d38:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff2d4c] = 0xe000ed00
        0x1fff2d3a:    009b        ..      LSLS     r3,r3,#2
        0x1fff2d3c:    181b        ..      ADDS     r3,r3,r0
        0x1fff2d3e:    69d8        .i      LDR      r0,[r3,#0x1c]
        0x1fff2d40:    4390        .C      BICS     r0,r0,r2
        0x1fff2d42:    4308        .C      ORRS     r0,r0,r1
        0x1fff2d44:    61d8        .a      STR      r0,[r3,#0x1c]
        0x1fff2d46:    4770        pG      BX       lr
    $d
        0x1fff2d48:    e000e400    ....    DCD    3758154752
        0x1fff2d4c:    e000ed00    ....    DCD    3758157056
    $t
    i.__scatterload_copy
    __scatterload_copy
        0x1fff2d50:    e002        ..      B        0x1fff2d58 ; __scatterload_copy + 8
        0x1fff2d52:    c808        ..      LDM      r0!,{r3}
        0x1fff2d54:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2d56:    c108        ..      STM      r1!,{r3}
        0x1fff2d58:    2a00        .*      CMP      r2,#0
        0x1fff2d5a:    d1fa        ..      BNE      0x1fff2d52 ; __scatterload_copy + 2
        0x1fff2d5c:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x1fff2d5e:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x1fff2d60:    2000        .       MOVS     r0,#0
        0x1fff2d62:    e001        ..      B        0x1fff2d68 ; __scatterload_zeroinit + 8
        0x1fff2d64:    c101        ..      STM      r1!,{r0}
        0x1fff2d66:    1f12        ..      SUBS     r2,r2,#4
        0x1fff2d68:    2a00        .*      CMP      r2,#0
        0x1fff2d6a:    d1fb        ..      BNE      0x1fff2d64 ; __scatterload_zeroinit + 4
        0x1fff2d6c:    4770        pG      BX       lr
        0x1fff2d6e:    0000        ..      MOVS     r0,r0
    i.__wdt_init
    __wdt_init
        0x1fff2d70:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff2d7c] = 0x1fff0340
        0x1fff2d72:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x1fff2d74:    2800        .(      CMP      r0,#0
        0x1fff2d76:    d000        ..      BEQ      0x1fff2d7a ; __wdt_init + 10
        0x1fff2d78:    4700        .G      BX       r0
        0x1fff2d7a:    4770        pG      BX       lr
    $d
        0x1fff2d7c:    1fff0340    @...    DCD    536806208
    $t
    i._clk_apply_setting1
    _clk_apply_setting1
        0x1fff2d80:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff2d82:    4607        .F      MOV      r7,r0
        0x1fff2d84:    2001        .       MOVS     r0,#1
        0x1fff2d86:    0780        ..      LSLS     r0,r0,#30
        0x1fff2d88:    6881        .h      LDR      r1,[r0,#8]
        0x1fff2d8a:    b083        ..      SUB      sp,sp,#0xc
        0x1fff2d8c:    461c        .F      MOV      r4,r3
        0x1fff2d8e:    4615        .F      MOV      r5,r2
        0x1fff2d90:    9102        ..      STR      r1,[sp,#8]
        0x1fff2d92:    6946        Fi      LDR      r6,[r0,#0x14]
        0x1fff2d94:    4939        9I      LDR      r1,[pc,#228] ; [0x1fff2e7c] = 0xe000e100
        0x1fff2d96:    6809        .h      LDR      r1,[r1,#0]
        0x1fff2d98:    4a38        8J      LDR      r2,[pc,#224] ; [0x1fff2e7c] = 0xe000e100
        0x1fff2d9a:    0049        I.      LSLS     r1,r1,#1
        0x1fff2d9c:    0849        I.      LSRS     r1,r1,#1
        0x1fff2d9e:    9101        ..      STR      r1,[sp,#4]
        0x1fff2da0:    2100        .!      MOVS     r1,#0
        0x1fff2da2:    43c9        .C      MVNS     r1,r1
        0x1fff2da4:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2da6:    6011        .`      STR      r1,[r2,#0]
        0x1fff2da8:    4a35        5J      LDR      r2,[pc,#212] ; [0x1fff2e80] = 0xe000e200
        0x1fff2daa:    6812        .h      LDR      r2,[r2,#0]
        0x1fff2dac:    0052        R.      LSLS     r2,r2,#1
        0x1fff2dae:    0852        R.      LSRS     r2,r2,#1
        0x1fff2db0:    9200        ..      STR      r2,[sp,#0]
        0x1fff2db2:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff2e80] = 0xe000e200
        0x1fff2db4:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff2db6:    6011        .`      STR      r1,[r2,#0]
        0x1fff2db8:    4932        2I      LDR      r1,[pc,#200] ; [0x1fff2e84] = 0x80001
        0x1fff2dba:    6081        .`      STR      r1,[r0,#8]
        0x1fff2dbc:    2121        !!      MOVS     r1,#0x21
        0x1fff2dbe:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff2dc0:    201f        .       MOVS     r0,#0x1f
        0x1fff2dc2:    f7fffd79    ..y.    BL       NVIC_EnableIRQ ; 0x1fff28b8
        0x1fff2dc6:    07e2        ..      LSLS     r2,r4,#31
        0x1fff2dc8:    2180        .!      MOVS     r1,#0x80
        0x1fff2dca:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff2e88] = 0x4000f040
        0x1fff2dcc:    2a00        .*      CMP      r2,#0
        0x1fff2dce:    d002        ..      BEQ      0x1fff2dd6 ; _clk_apply_setting1 + 86
        0x1fff2dd0:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2dd2:    430a        .C      ORRS     r2,r2,r1
        0x1fff2dd4:    6042        B`      STR      r2,[r0,#4]
        0x1fff2dd6:    07a2        ..      LSLS     r2,r4,#30
        0x1fff2dd8:    d504        ..      BPL      0x1fff2de4 ; _clk_apply_setting1 + 100
        0x1fff2dda:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2ddc:    23ff        .#      MOVS     r3,#0xff
        0x1fff2dde:    3301        .3      ADDS     r3,#1
        0x1fff2de0:    431a        .C      ORRS     r2,r2,r3
        0x1fff2de2:    6042        B`      STR      r2,[r0,#4]
        0x1fff2de4:    2d00        .-      CMP      r5,#0
        0x1fff2de6:    d00c        ..      BEQ      0x1fff2e02 ; _clk_apply_setting1 + 130
        0x1fff2de8:    072a        *.      LSLS     r2,r5,#28
        0x1fff2dea:    0f52        R.      LSRS     r2,r2,#29
        0x1fff2dec:    d004        ..      BEQ      0x1fff2df8 ; _clk_apply_setting1 + 120
        0x1fff2dee:    2201        ."      MOVS     r2,#1
        0x1fff2df0:    4314        .C      ORRS     r4,r4,r2
        0x1fff2df2:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff2df4:    430a        .C      ORRS     r2,r2,r1
        0x1fff2df6:    6042        B`      STR      r2,[r0,#4]
        0x1fff2df8:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2dfa:    072a        *.      LSLS     r2,r5,#28
        0x1fff2dfc:    0bd2        ..      LSRS     r2,r2,#15
        0x1fff2dfe:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e00:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e02:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff2e88] = 0x4000f040
        0x1fff2e04:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff2e06:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e08:    0152        R.      LSLS     r2,r2,#5
        0x1fff2e0a:    0f52        R.      LSRS     r2,r2,#29
        0x1fff2e0c:    42ba        .B      CMP      r2,r7
        0x1fff2e0e:    d006        ..      BEQ      0x1fff2e1e ; _clk_apply_setting1 + 158
        0x1fff2e10:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e12:    2307        .#      MOVS     r3,#7
        0x1fff2e14:    061b        ..      LSLS     r3,r3,#24
        0x1fff2e16:    439a        .C      BICS     r2,r2,r3
        0x1fff2e18:    063b        ;.      LSLS     r3,r7,#24
        0x1fff2e1a:    431a        .C      ORRS     r2,r2,r3
        0x1fff2e1c:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff2e1e:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e20:    0753        S.      LSLS     r3,r2,#29
        0x1fff2e22:    9a04        ..      LDR      r2,[sp,#0x10]
        0x1fff2e24:    0f5b        [.      LSRS     r3,r3,#29
        0x1fff2e26:    4293        .B      CMP      r3,r2
        0x1fff2e28:    d005        ..      BEQ      0x1fff2e36 ; _clk_apply_setting1 + 182
        0x1fff2e2a:    6bca        .k      LDR      r2,[r1,#0x3c]
        0x1fff2e2c:    9b04        ..      LDR      r3,[sp,#0x10]
        0x1fff2e2e:    08d2        ..      LSRS     r2,r2,#3
        0x1fff2e30:    00d2        ..      LSLS     r2,r2,#3
        0x1fff2e32:    431a        .C      ORRS     r2,r2,r3
        0x1fff2e34:    63ca        .c      STR      r2,[r1,#0x3c]
        0x1fff2e36:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e38:    22ff        ."      MOVS     r2,#0xff
        0x1fff2e3a:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff2e3c:    4391        .C      BICS     r1,r1,r2
        0x1fff2e3e:    01e2        ..      LSLS     r2,r4,#7
        0x1fff2e40:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e42:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e44:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2e46:    220f        ."      MOVS     r2,#0xf
        0x1fff2e48:    0352        R.      LSLS     r2,r2,#13
        0x1fff2e4a:    4391        .C      BICS     r1,r1,r2
        0x1fff2e4c:    036a        j.      LSLS     r2,r5,#13
        0x1fff2e4e:    4311        .C      ORRS     r1,r1,r2
        0x1fff2e50:    6041        A`      STR      r1,[r0,#4]
        0x1fff2e52:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff2e84] = 0x80001
        0x1fff2e54:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2e56:    4301        .C      ORRS     r1,r1,r0
        0x1fff2e58:    0780        ..      LSLS     r0,r0,#30
        0x1fff2e5a:    6081        .`      STR      r1,[r0,#8]
        0x1fff2e5c:    2101        .!      MOVS     r1,#1
        0x1fff2e5e:    430e        .C      ORRS     r6,r6,r1
        0x1fff2e60:    6146        Fa      STR      r6,[r0,#0x14]
        0x1fff2e62:    0041        A.      LSLS     r1,r0,#1
        0x1fff2e64:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff2e7c] = 0xe000e100
        0x1fff2e66:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff2e68:    6001        .`      STR      r1,[r0,#0]
        0x1fff2e6a:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff2e80] = 0xe000e200
        0x1fff2e6c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff2e6e:    6008        .`      STR      r0,[r1,#0]
        0x1fff2e70:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff2e7c] = 0xe000e100
        0x1fff2e72:    9801        ..      LDR      r0,[sp,#4]
        0x1fff2e74:    6008        .`      STR      r0,[r1,#0]
        0x1fff2e76:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff2e78:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff2e7a:    0000        ..      DCW    0
        0x1fff2e7c:    e000e100    ....    DCD    3758153984
        0x1fff2e80:    e000e200    ....    DCD    3758154240
        0x1fff2e84:    00080001    ....    DCD    524289
        0x1fff2e88:    4000f040    @..@    DCD    1073803328
    $t
    i._efuse_chip_version_check
    _efuse_chip_version_check
        0x1fff2e8c:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff2e8e:    4669        iF      MOV      r1,sp
        0x1fff2e90:    2001        .       MOVS     r0,#1
        0x1fff2e92:    f7fefe2b    ..+.    BL       $Ven$TT$L$$efuse_read ; 0x1fff1aec
        0x1fff2e96:    2001        .       MOVS     r0,#1
        0x1fff2e98:    9000        ..      STR      r0,[sp,#0]
        0x1fff2e9a:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff2ea8] = 0xbbb
        0x1fff2e9c:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e9e:    f000fc2b    ..+.    BL       finidv ; 0x1fff36f8
        0x1fff2ea2:    2001        .       MOVS     r0,#1
        0x1fff2ea4:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff2ea6:    0000        ..      DCW    0
        0x1fff2ea8:    00000bbb    ....    DCD    3003
    $t
    i._hard_fault
    _hard_fault
        0x1fff2eac:    b508        ..      PUSH     {r3,lr}
        0x1fff2eae:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff2f7c] = 0x1fff0000
        0x1fff2eb0:    4604        .F      MOV      r4,r0
        0x1fff2eb2:    68f8        .h      LDR      r0,[r7,#0xc]
        0x1fff2eb4:    2500        .%      MOVS     r5,#0
        0x1fff2eb6:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff2eb8:    20e1        .       MOVS     r0,#0xe1
        0x1fff2eba:    462b        +F      MOV      r3,r5
        0x1fff2ebc:    2212        ."      MOVS     r2,#0x12
        0x1fff2ebe:    2105        .!      MOVS     r1,#5
        0x1fff2ec0:    0240        @.      LSLS     r0,r0,#9
        0x1fff2ec2:    f7fefe19    ....    BL       $Ven$TT$L$$rom_uart_init ; 0x1fff1af8
        0x1fff2ec6:    a02e        ..      ADR      r0,{pc}+0xba ; 0x1fff2f80
        0x1fff2ec8:    f7fefe1c    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2ecc:    6b20         k      LDR      r0,[r4,#0x30]
        0x1fff2ece:    9000        ..      STR      r0,[sp,#0]
        0x1fff2ed0:    4621        !F      MOV      r1,r4
        0x1fff2ed2:    3124        $1      ADDS     r1,r1,#0x24
        0x1fff2ed4:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2ed6:    a030        0.      ADR      r0,{pc}+0xc2 ; 0x1fff2f98
        0x1fff2ed8:    f7fefe14    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2edc:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff2ede:    9000        ..      STR      r0,[sp,#0]
        0x1fff2ee0:    1d21        !.      ADDS     r1,r4,#4
        0x1fff2ee2:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2ee4:    a037        7.      ADR      r0,{pc}+0xe0 ; 0x1fff2fc4
        0x1fff2ee6:    f7fefe0d    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2eea:    6a20         j      LDR      r0,[r4,#0x20]
        0x1fff2eec:    9000        ..      STR      r0,[sp,#0]
        0x1fff2eee:    4621        !F      MOV      r1,r4
        0x1fff2ef0:    3114        .1      ADDS     r1,r1,#0x14
        0x1fff2ef2:    c90e        ..      LDM      r1,{r1-r3}
        0x1fff2ef4:    a03e        >.      ADR      r0,{pc}+0xfc ; 0x1fff2ff0
        0x1fff2ef6:    f7fefe05    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2efa:    6be0        .k      LDR      r0,[r4,#0x3c]
        0x1fff2efc:    9000        ..      STR      r0,[sp,#0]
        0x1fff2efe:    a047        G.      ADR      r0,{pc}+0x11e ; 0x1fff301c
        0x1fff2f00:    6ba3        .k      LDR      r3,[r4,#0x38]
        0x1fff2f02:    6822        "h      LDR      r2,[r4,#0]
        0x1fff2f04:    6b61        ak      LDR      r1,[r4,#0x34]
        0x1fff2f06:    f7fefdfd    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2f0a:    a04f        O.      ADR      r0,{pc}+0x13e ; 0x1fff3048
        0x1fff2f0c:    6c21        !l      LDR      r1,[r4,#0x40]
        0x1fff2f0e:    f7fefdf9    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2f12:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff3058] = 0xe000ed00
        0x1fff2f14:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff2f16:    a051        Q.      ADR      r0,{pc}+0x146 ; 0x1fff305c
        0x1fff2f18:    f7fefdf4    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2f1c:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff306c] = 0x1fff08b4
        0x1fff2f1e:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff2f20:    42b1        .B      CMP      r1,r6
        0x1fff2f22:    d202        ..      BCS      0x1fff2f2a ; _hard_fault + 126
        0x1fff2f24:    68b8        .h      LDR      r0,[r7,#8]
        0x1fff2f26:    008a        ..      LSLS     r2,r1,#2
        0x1fff2f28:    5885        .X      LDR      r5,[r0,r2]
        0x1fff2f2a:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff3070] = 0x1fff0860
        0x1fff2f2c:    460e        .F      MOV      r6,r1
        0x1fff2f2e:    6807        .h      LDR      r7,[r0,#0]
        0x1fff2f30:    f7fefdee    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b10
        0x1fff2f34:    9000        ..      STR      r0,[sp,#0]
        0x1fff2f36:    463b        ;F      MOV      r3,r7
        0x1fff2f38:    462a        *F      MOV      r2,r5
        0x1fff2f3a:    4631        1F      MOV      r1,r6
        0x1fff2f3c:    a04d        M.      ADR      r0,{pc}+0x138 ; 0x1fff3074
        0x1fff2f3e:    f7fefde1    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2f42:    a059        Y.      ADR      r0,{pc}+0x166 ; 0x1fff30a8
        0x1fff2f44:    f7fefdde    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2f48:    4e61        aN      LDR      r6,[pc,#388] ; [0x1fff30d0] = 0x1ffffffc
        0x1fff2f4a:    6825        %h      LDR      r5,[r4,#0]
        0x1fff2f4c:    4035        5@      ANDS     r5,r5,r6
        0x1fff2f4e:    2400        .$      MOVS     r4,#0
        0x1fff2f50:    1929        ).      ADDS     r1,r5,r4
        0x1fff2f52:    42b1        .B      CMP      r1,r6
        0x1fff2f54:    d80b        ..      BHI      0x1fff2f6e ; _hard_fault + 194
        0x1fff2f56:    0720         .      LSLS     r0,r4,#28
        0x1fff2f58:    d102        ..      BNE      0x1fff2f60 ; _hard_fault + 180
        0x1fff2f5a:    a05e        ^.      ADR      r0,{pc}+0x17a ; 0x1fff30d4
        0x1fff2f5c:    f7fefdd2    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2f60:    5929        )Y      LDR      r1,[r5,r4]
        0x1fff2f62:    a05e        ^.      ADR      r0,{pc}+0x17a ; 0x1fff30dc
        0x1fff2f64:    f7fefdce    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff1b04
        0x1fff2f68:    1d24        $.      ADDS     r4,r4,#4
        0x1fff2f6a:    2cff        .,      CMP      r4,#0xff
        0x1fff2f6c:    ddf0        ..      BLE      0x1fff2f50 ; _hard_fault + 164
        0x1fff2f6e:    485d        ]H      LDR      r0,[pc,#372] ; [0x1fff30e4] = 0x1fff6bc8
        0x1fff2f70:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2f72:    2800        .(      CMP      r0,#0
        0x1fff2f74:    d000        ..      BEQ      0x1fff2f78 ; _hard_fault + 204
        0x1fff2f76:    4780        .G      BLX      r0
        0x1fff2f78:    e7fe        ..      B        0x1fff2f78 ; _hard_fault + 204
    $d
        0x1fff2f7a:    0000        ..      DCW    0
        0x1fff2f7c:    1fff0000    ....    DCD    536805376
        0x1fff2f80:    61485b0a    .[Ha    DCD    1632131850
        0x1fff2f84:    66206472    rd f    DCD    1713398898
        0x1fff2f88:    746c7561    ault    DCD    1953264993
        0x1fff2f8c:    6e616820     han    DCD    1851877408
        0x1fff2f90:    72656c64    dler    DCD    1919249508
        0x1fff2f94:    00000a5d    ]...    DCD    2653
        0x1fff2f98:    522d3052    R0-R    DCD    1378693202
        0x1fff2f9c:    20202033    3       DCD    538976307
        0x1fff2fa0:    20202020            DCD    538976288
        0x1fff2fa4:    30203d20     = 0    DCD    807419168
        0x1fff2fa8:    38302578    x%08    DCD    942679416
        0x1fff2fac:    78302078    x 0x    DCD    2016419960
        0x1fff2fb0:    78383025    %08x    DCD    2016948261
        0x1fff2fb4:    25783020     0x%    DCD    628633632
        0x1fff2fb8:    20783830    08x     DCD    544749616
        0x1fff2fbc:    30257830    0x%0    DCD    807761968
        0x1fff2fc0:    000a7838    8x..    DCD    686136
        0x1fff2fc4:    522d3452    R4-R    DCD    1378694226
        0x1fff2fc8:    20202037    7       DCD    538976311
        0x1fff2fcc:    20202020            DCD    538976288
        0x1fff2fd0:    30203d20     = 0    DCD    807419168
        0x1fff2fd4:    38302578    x%08    DCD    942679416
        0x1fff2fd8:    78302078    x 0x    DCD    2016419960
        0x1fff2fdc:    78383025    %08x    DCD    2016948261
        0x1fff2fe0:    25783020     0x%    DCD    628633632
        0x1fff2fe4:    20783830    08x     DCD    544749616
        0x1fff2fe8:    30257830    0x%0    DCD    807761968
        0x1fff2fec:    000a7838    8x..    DCD    686136
        0x1fff2ff0:    522d3852    R8-R    DCD    1378695250
        0x1fff2ff4:    20203131    11      DCD    538980657
        0x1fff2ff8:    20202020            DCD    538976288
        0x1fff2ffc:    30203d20     = 0    DCD    807419168
        0x1fff3000:    38302578    x%08    DCD    942679416
        0x1fff3004:    78302078    x 0x    DCD    2016419960
        0x1fff3008:    78383025    %08x    DCD    2016948261
        0x1fff300c:    25783020     0x%    DCD    628633632
        0x1fff3010:    20783830    08x     DCD    544749616
        0x1fff3014:    30257830    0x%0    DCD    807761968
        0x1fff3018:    000a7838    8x..    DCD    686136
        0x1fff301c:    2c323152    R12,    DCD    741486930
        0x1fff3020:    4c2c5053    SP,L    DCD    1277972563
        0x1fff3024:    43502c52    R,PC    DCD    1129327698
        0x1fff3028:    30203d20     = 0    DCD    807419168
        0x1fff302c:    38302578    x%08    DCD    942679416
        0x1fff3030:    78302078    x 0x    DCD    2016419960
        0x1fff3034:    78383025    %08x    DCD    2016948261
        0x1fff3038:    25783020     0x%    DCD    628633632
        0x1fff303c:    20783830    08x     DCD    544749616
        0x1fff3040:    30257830    0x%0    DCD    807761968
        0x1fff3044:    000a7838    8x..    DCD    686136
        0x1fff3048:    20525350    PSR     DCD    542266192
        0x1fff304c:    30203d20     = 0    DCD    807419168
        0x1fff3050:    38302578    x%08    DCD    942679416
        0x1fff3054:    00202078    x  .    DCD    2105464
        0x1fff3058:    e000ed00    ....    DCD    3758157056
        0x1fff305c:    52534349    ICSR    DCD    1381188425
        0x1fff3060:    30203d20     = 0    DCD    807419168
        0x1fff3064:    38302578    x%08    DCD    942679416
        0x1fff3068:    00000a78    x...    DCD    2680
        0x1fff306c:    1fff08b4    ....    DCD    536807604
        0x1fff3070:    1fff0860    `...    DCD    536807520
        0x1fff3074:    41534f5b    [OSA    DCD    1095978843
        0x1fff3078:    64695d4c    L]id    DCD    1684626764
        0x1fff307c:    64252078    x %d    DCD    1680154744
        0x1fff3080:    6e754620     Fun    DCD    1853179424
        0x1fff3084:    78302063    c 0x    DCD    2016419939
        0x1fff3088:    78383025    %08x    DCD    2016948261
        0x1fff308c:    73797320     sys    DCD    1937339168
        0x1fff3090:    6b636974    tick    DCD    1801677172
        0x1fff3094:    38302520     %08    DCD    942679328
        0x1fff3098:    74722078    x rt    DCD    1953636472
        0x1fff309c:    30252063    c %0    DCD    807739491
        0x1fff30a0:    200a7838    8x.     DCD    537557048
        0x1fff30a4:    00000000    ....    DCD    0
        0x1fff30a8:    2d2d2d2d    ----    DCD    757935405
        0x1fff30ac:    2d2d2d2d    ----    DCD    757935405
        0x1fff30b0:    642d2d2d    ---d    DCD    1680682285
        0x1fff30b4:    20706d75    ump     DCD    544238965
        0x1fff30b8:    63617473    stac    DCD    1667331187
        0x1fff30bc:    2d2d2d6b    k---    DCD    757935467
        0x1fff30c0:    2d2d2d2d    ----    DCD    757935405
        0x1fff30c4:    2d2d2d2d    ----    DCD    757935405
        0x1fff30c8:    0a2d2d2d    ---.    DCD    170732845
        0x1fff30cc:    00000000    ....    DCD    0
        0x1fff30d0:    1ffffffc    ....    DCD    536870908
        0x1fff30d4:    30255b0a    .[%0    DCD    807754506
        0x1fff30d8:    005d5838    8X].    DCD    6117432
        0x1fff30dc:    78383025    %08x    DCD    2016948261
        0x1fff30e0:    00000020     ...    DCD    32
        0x1fff30e4:    1fff6bc8    .k..    DCD    536832968
    $t
    i._rom_efuse_version_init
    _rom_efuse_version_init
        0x1fff30e8:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff30ea:    4669        iF      MOV      r1,sp
        0x1fff30ec:    2003        .       MOVS     r0,#3
        0x1fff30ee:    f7fefcfd    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff1aec
        0x1fff30f2:    4668        hF      MOV      r0,sp
        0x1fff30f4:    f001fa90    ....    BL       lib_efuse_load ; 0x1fff4618
        0x1fff30f8:    9800        ..      LDR      r0,[sp,#0]
        0x1fff30fa:    2800        .(      CMP      r0,#0
        0x1fff30fc:    d102        ..      BNE      0x1fff3104 ; _rom_efuse_version_init + 28
        0x1fff30fe:    9801        ..      LDR      r0,[sp,#4]
        0x1fff3100:    2800        .(      CMP      r0,#0
        0x1fff3102:    d000        ..      BEQ      0x1fff3106 ; _rom_efuse_version_init + 30
        0x1fff3104:    2001        .       MOVS     r0,#1
        0x1fff3106:    bd1c        ..      POP      {r2-r4,pc}
    i._rom_sec_boot_init
    _rom_sec_boot_init
        0x1fff3108:    b510        ..      PUSH     {r4,lr}
        0x1fff310a:    f000fa6b    ..k.    BL       efuse_init ; 0x1fff35e4
        0x1fff310e:    f7fffebd    ....    BL       _efuse_chip_version_check ; 0x1fff2e8c
        0x1fff3112:    2800        .(      CMP      r0,#0
        0x1fff3114:    d002        ..      BEQ      0x1fff311c ; _rom_sec_boot_init + 20
        0x1fff3116:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff3120] = 0xa2e1
        0x1fff3118:    4780        .G      BLX      r0
        0x1fff311a:    bd10        ..      POP      {r4,pc}
        0x1fff311c:    e7fe        ..      B        0x1fff311c ; _rom_sec_boot_init + 20
    $d
        0x1fff311e:    0000        ..      DCW    0
        0x1fff3120:    0000a2e1    ....    DCD    41697
    $t
    i._uart_putc
    _uart_putc
        0x1fff3124:    460a        .F      MOV      r2,r1
        0x1fff3126:    b510        ..      PUSH     {r4,lr}
        0x1fff3128:    4601        .F      MOV      r1,r0
        0x1fff312a:    2000        .       MOVS     r0,#0
        0x1fff312c:    f001fa06    ....    BL       hal_uart_send_buff ; 0x1fff453c
        0x1fff3130:    bd10        ..      POP      {r4,pc}
        0x1fff3132:    0000        ..      MOVS     r0,r0
    i.aon_register_init
    aon_register_init
        0x1fff3134:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff3170] = 0x4000f000
        0x1fff3136:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff316c] = 0x6000c00
        0x1fff3138:    6081        .`      STR      r1,[r0,#8]
        0x1fff313a:    2100        .!      MOVS     r1,#0
        0x1fff313c:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff313e:    221b        ."      MOVS     r2,#0x1b
        0x1fff3140:    0352        R.      LSLS     r2,r2,#13
        0x1fff3142:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff3144:    224d        M"      MOVS     r2,#0x4d
        0x1fff3146:    03d2        ..      LSLS     r2,r2,#15
        0x1fff3148:    6142        Ba      STR      r2,[r0,#0x14]
        0x1fff314a:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff3174] = 0x1064040
        0x1fff314c:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff314e:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff3178] = 0x1ffab
        0x1fff3150:    61c2        .a      STR      r2,[r0,#0x1c]
        0x1fff3152:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff3154:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff3156:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff3158:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff315a:    6341        Ac      STR      r1,[r0,#0x34]
        0x1fff315c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3170] = 0x4000f000
        0x1fff315e:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff3160:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff3162:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff3164:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff3166:    2101        .!      MOVS     r1,#1
        0x1fff3168:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff316a:    4770        pG      BX       lr
    $d
        0x1fff316c:    06000c00    ....    DCD    100666368
        0x1fff3170:    4000f000    ...@    DCD    1073803264
        0x1fff3174:    01064040    @@..    DCD    17186880
        0x1fff3178:    0001ffab    ....    DCD    130987
    $t
    i.app_main
    app_main
        0x1fff317c:    b510        ..      PUSH     {r4,lr}
        0x1fff317e:    f7fefccd    ....    BL       $Ven$TT$L$$osal_init_system ; 0x1fff1b1c
        0x1fff3182:    2001        .       MOVS     r0,#1
        0x1fff3184:    f7fefcd0    ....    BL       $Ven$TT$L$$osal_pwrmgr_device ; 0x1fff1b28
        0x1fff3188:    f7fefcd4    ....    BL       $Ven$TT$L$$osal_start_system ; 0x1fff1b34
        0x1fff318c:    2000        .       MOVS     r0,#0
        0x1fff318e:    bd10        ..      POP      {r4,pc}
    i.check_16MXtal_by_rcTracking
    check_16MXtal_by_rcTracking
        0x1fff3190:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3192:    484e        NH      LDR      r0,[pc,#312] ; [0x1fff32cc] = 0x4000f0c0
        0x1fff3194:    6840        @h      LDR      r0,[r0,#4]
        0x1fff3196:    43c0        .C      MVNS     r0,r0
        0x1fff3198:    0600        ..      LSLS     r0,r0,#24
        0x1fff319a:    d503        ..      BPL      0x1fff31a4 ; check_16MXtal_by_rcTracking + 20
        0x1fff319c:    203c        <       MOVS     r0,#0x3c
        0x1fff319e:    f7fefccf    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff31a2:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff31a4:    f7fefcb4    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b10
        0x1fff31a8:    4d48        HM      LDR      r5,[pc,#288] ; [0x1fff32cc] = 0x4000f0c0
        0x1fff31aa:    9000        ..      STR      r0,[sp,#0]
        0x1fff31ac:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff31ae:    6828        (h      LDR      r0,[r5,#0]
        0x1fff31b0:    2101        .!      MOVS     r1,#1
        0x1fff31b2:    0489        ..      LSLS     r1,r1,#18
        0x1fff31b4:    4308        .C      ORRS     r0,r0,r1
        0x1fff31b6:    6028        (`      STR      r0,[r5,#0]
        0x1fff31b8:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff31ba:    4945        EI      LDR      r1,[pc,#276] ; [0x1fff32d0] = 0xfffefe00
        0x1fff31bc:    4008        .@      ANDS     r0,r0,r1
        0x1fff31be:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff31c0:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff31c2:    2003        .       MOVS     r0,#3
        0x1fff31c4:    f7fefcbc    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff31c8:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31ca:    03c7        ..      LSLS     r7,r0,#15
        0x1fff31cc:    0bff        ..      LSRS     r7,r7,#15
        0x1fff31ce:    2003        .       MOVS     r0,#3
        0x1fff31d0:    f7fefcb6    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff31d4:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31d6:    03c4        ..      LSLS     r4,r0,#15
        0x1fff31d8:    0be4        ..      LSRS     r4,r4,#15
        0x1fff31da:    2003        .       MOVS     r0,#3
        0x1fff31dc:    f7fefcb0    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff31e0:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff31e2:    03c6        ..      LSLS     r6,r0,#15
        0x1fff31e4:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff31e6:    42a7        .B      CMP      r7,r4
        0x1fff31e8:    d301        ..      BCC      0x1fff31ee ; check_16MXtal_by_rcTracking + 94
        0x1fff31ea:    4620         F      MOV      r0,r4
        0x1fff31ec:    e000        ..      B        0x1fff31f0 ; check_16MXtal_by_rcTracking + 96
        0x1fff31ee:    4638        8F      MOV      r0,r7
        0x1fff31f0:    42b0        .B      CMP      r0,r6
        0x1fff31f2:    d300        ..      BCC      0x1fff31f6 ; check_16MXtal_by_rcTracking + 102
        0x1fff31f4:    4630        0F      MOV      r0,r6
        0x1fff31f6:    42a7        .B      CMP      r7,r4
        0x1fff31f8:    d301        ..      BCC      0x1fff31fe ; check_16MXtal_by_rcTracking + 110
        0x1fff31fa:    4639        9F      MOV      r1,r7
        0x1fff31fc:    e000        ..      B        0x1fff3200 ; check_16MXtal_by_rcTracking + 112
        0x1fff31fe:    4621        !F      MOV      r1,r4
        0x1fff3200:    42b1        .B      CMP      r1,r6
        0x1fff3202:    d200        ..      BCS      0x1fff3206 ; check_16MXtal_by_rcTracking + 118
        0x1fff3204:    4631        1F      MOV      r1,r6
        0x1fff3206:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff32d4] = 0xfffffc91
        0x1fff3208:    18ba        ..      ADDS     r2,r7,r2
        0x1fff320a:    2ac3        .*      CMP      r2,#0xc3
        0x1fff320c:    d226        &.      BCS      0x1fff325c ; check_16MXtal_by_rcTracking + 204
        0x1fff320e:    4b31        1K      LDR      r3,[pc,#196] ; [0x1fff32d4] = 0xfffffc91
        0x1fff3210:    43db        .C      MVNS     r3,r3
        0x1fff3212:    429c        .B      CMP      r4,r3
        0x1fff3214:    d922        ".      BLS      0x1fff325c ; check_16MXtal_by_rcTracking + 204
        0x1fff3216:    4a30        0J      LDR      r2,[pc,#192] ; [0x1fff32d8] = 0x432
        0x1fff3218:    4294        .B      CMP      r4,r2
        0x1fff321a:    d21f        ..      BCS      0x1fff325c ; check_16MXtal_by_rcTracking + 204
        0x1fff321c:    429e        .B      CMP      r6,r3
        0x1fff321e:    d91d        ..      BLS      0x1fff325c ; check_16MXtal_by_rcTracking + 204
        0x1fff3220:    4296        .B      CMP      r6,r2
        0x1fff3222:    d21b        ..      BCS      0x1fff325c ; check_16MXtal_by_rcTracking + 204
        0x1fff3224:    1a08        ..      SUBS     r0,r1,r0
        0x1fff3226:    2813        .(      CMP      r0,#0x13
        0x1fff3228:    d218        ..      BCS      0x1fff325c ; check_16MXtal_by_rcTracking + 204
        0x1fff322a:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff32cc] = 0x4000f0c0
        0x1fff322c:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff322e:    210c        .!      MOVS     r1,#0xc
        0x1fff3230:    438a        .C      BICS     r2,r2,r1
        0x1fff3232:    6042        B`      STR      r2,[r0,#4]
        0x1fff3234:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3236:    22ff        ."      MOVS     r2,#0xff
        0x1fff3238:    0212        ..      LSLS     r2,r2,#8
        0x1fff323a:    4391        .C      BICS     r1,r1,r2
        0x1fff323c:    6041        A`      STR      r1,[r0,#4]
        0x1fff323e:    2014        .       MOVS     r0,#0x14
        0x1fff3240:    f7fefc7e    ..~.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff3244:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff32cc] = 0x4000f0c0
        0x1fff3246:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff3248:    6a41        Aj      LDR      r1,[r0,#0x24]
        0x1fff324a:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff324c:    03c9        ..      LSLS     r1,r1,#15
        0x1fff324e:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff3250:    2308        .#      MOVS     r3,#8
        0x1fff3252:    439a        .C      BICS     r2,r2,r3
        0x1fff3254:    61c2        .a      STR      r2,[r0,#0x1c]
        0x1fff3256:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff32dc] = 0x1fff6bd0
        0x1fff3258:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff325a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff325c:    4627        'F      MOV      r7,r4
        0x1fff325e:    4634        4F      MOV      r4,r6
        0x1fff3260:    2003        .       MOVS     r0,#3
        0x1fff3262:    f7fefc6d    ..m.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff3266:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff32cc] = 0x4000f0c0
        0x1fff3268:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff326a:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff326c:    03c6        ..      LSLS     r6,r0,#15
        0x1fff326e:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff3270:    f7fefc4e    ..N.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b10
        0x1fff3274:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3276:    4288        .B      CMP      r0,r1
        0x1fff3278:    d301        ..      BCC      0x1fff327e ; check_16MXtal_by_rcTracking + 238
        0x1fff327a:    1a40        @.      SUBS     r0,r0,r1
        0x1fff327c:    e001        ..      B        0x1fff3282 ; check_16MXtal_by_rcTracking + 242
        0x1fff327e:    1a40        @.      SUBS     r0,r0,r1
        0x1fff3280:    1e40        @.      SUBS     r0,r0,#1
        0x1fff3282:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff32e0] = 0xce4
        0x1fff3284:    4288        .B      CMP      r0,r1
        0x1fff3286:    d3ae        ..      BCC      0x1fff31e6 ; check_16MXtal_by_rcTracking + 86
        0x1fff3288:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff32cc] = 0x4000f0c0
        0x1fff328a:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff328c:    0409        ..      LSLS     r1,r1,#16
        0x1fff328e:    0e0d        ..      LSRS     r5,r1,#24
        0x1fff3290:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3292:    22ff        ."      MOVS     r2,#0xff
        0x1fff3294:    0212        ..      LSLS     r2,r2,#8
        0x1fff3296:    4391        .C      BICS     r1,r1,r2
        0x1fff3298:    1c6a        j.      ADDS     r2,r5,#1
        0x1fff329a:    0612        ..      LSLS     r2,r2,#24
        0x1fff329c:    0c12        ..      LSRS     r2,r2,#16
        0x1fff329e:    4311        .C      ORRS     r1,r1,r2
        0x1fff32a0:    6041        A`      STR      r1,[r0,#4]
        0x1fff32a2:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff32a4:    220c        ."      MOVS     r2,#0xc
        0x1fff32a6:    4391        .C      BICS     r1,r1,r2
        0x1fff32a8:    1d09        ..      ADDS     r1,r1,#4
        0x1fff32aa:    6041        A`      STR      r1,[r0,#4]
        0x1fff32ac:    2000        .       MOVS     r0,#0
        0x1fff32ae:    f7fefc4d    ..M.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b4c
        0x1fff32b2:    2d64        d-      CMP      r5,#0x64
        0x1fff32b4:    d302        ..      BCC      0x1fff32bc ; check_16MXtal_by_rcTracking + 300
        0x1fff32b6:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff32cc] = 0x4000f0c0
        0x1fff32b8:    2100        .!      MOVS     r1,#0
        0x1fff32ba:    6041        A`      STR      r1,[r0,#4]
        0x1fff32bc:    2d06        .-      CMP      r5,#6
        0x1fff32be:    d300        ..      BCC      0x1fff32c2 ; check_16MXtal_by_rcTracking + 306
        0x1fff32c0:    2506        .%      MOVS     r5,#6
        0x1fff32c2:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff32e0] = 0xce4
        0x1fff32c4:    40a8        .@      LSLS     r0,r0,r5
        0x1fff32c6:    f7fefe87    ....    BL       hal_pwrmgr_enter_sleep_rtc_reset ; 0x1fff1fd8
        0x1fff32ca:    e78c        ..      B        0x1fff31e6 ; check_16MXtal_by_rcTracking + 86
    $d
        0x1fff32cc:    4000f0c0    ...@    DCD    1073803456
        0x1fff32d0:    fffefe00    ....    DCD    4294901248
        0x1fff32d4:    fffffc91    ....    DCD    4294966417
        0x1fff32d8:    00000432    2...    DCD    1074
        0x1fff32dc:    1fff6bd0    .k..    DCD    536832976
        0x1fff32e0:    00000ce4    ....    DCD    3300
    $t
    i.check_96MXtal_by_rcTracking
    check_96MXtal_by_rcTracking
        0x1fff32e4:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff32e6:    483d        =H      LDR      r0,[pc,#244] ; [0x1fff33dc] = 0x4000f0c0
        0x1fff32e8:    6840        @h      LDR      r0,[r0,#4]
        0x1fff32ea:    4c3c        <L      LDR      r4,[pc,#240] ; [0x1fff33dc] = 0x4000f0c0
        0x1fff32ec:    0600        ..      LSLS     r0,r0,#24
        0x1fff32ee:    3c80        .<      SUBS     r4,r4,#0x80
        0x1fff32f0:    2180        .!      MOVS     r1,#0x80
        0x1fff32f2:    2800        .(      CMP      r0,#0
        0x1fff32f4:    db06        ..      BLT      0x1fff3304 ; check_96MXtal_by_rcTracking + 32
        0x1fff32f6:    6860        `h      LDR      r0,[r4,#4]
        0x1fff32f8:    4308        .C      ORRS     r0,r0,r1
        0x1fff32fa:    6060        ``      STR      r0,[r4,#4]
        0x1fff32fc:    2003        .       MOVS     r0,#3
        0x1fff32fe:    f7fefc1f    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff3302:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3304:    4d36        6M      LDR      r5,[pc,#216] ; [0x1fff33e0] = 0x1fff6bd0
        0x1fff3306:    2000        .       MOVS     r0,#0
        0x1fff3308:    6328        (c      STR      r0,[r5,#0x30]
        0x1fff330a:    6820         h      LDR      r0,[r4,#0]
        0x1fff330c:    2201        ."      MOVS     r2,#1
        0x1fff330e:    0492        ..      LSLS     r2,r2,#18
        0x1fff3310:    4310        .C      ORRS     r0,r0,r2
        0x1fff3312:    6020         `      STR      r0,[r4,#0]
        0x1fff3314:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff33e4] = 0xfffefe00
        0x1fff3316:    6860        `h      LDR      r0,[r4,#4]
        0x1fff3318:    2180        .!      MOVS     r1,#0x80
        0x1fff331a:    4308        .C      ORRS     r0,r0,r1
        0x1fff331c:    6060        ``      STR      r0,[r4,#4]
        0x1fff331e:    2003        .       MOVS     r0,#3
        0x1fff3320:    f7fefc0e    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff3324:    6b28        (k      LDR      r0,[r5,#0x30]
        0x1fff3326:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3328:    6328        (c      STR      r0,[r5,#0x30]
        0x1fff332a:    6860        `h      LDR      r0,[r4,#4]
        0x1fff332c:    2101        .!      MOVS     r1,#1
        0x1fff332e:    0409        ..      LSLS     r1,r1,#16
        0x1fff3330:    4308        .C      ORRS     r0,r0,r1
        0x1fff3332:    6060        ``      STR      r0,[r4,#4]
        0x1fff3334:    2600        .&      MOVS     r6,#0
        0x1fff3336:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff3338:    492b        +I      LDR      r1,[pc,#172] ; [0x1fff33e8] = 0x10028
        0x1fff333a:    4038        8@      ANDS     r0,r0,r7
        0x1fff333c:    1840        @.      ADDS     r0,r0,r1
        0x1fff333e:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff3340:    2003        .       MOVS     r0,#3
        0x1fff3342:    f7fefbfd    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff3346:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff3348:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff334a:    03c0        ..      LSLS     r0,r0,#15
        0x1fff334c:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff334e:    2208        ."      MOVS     r2,#8
        0x1fff3350:    4391        .C      BICS     r1,r1,r2
        0x1fff3352:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff3354:    6aa9        .j      LDR      r1,[r5,#0x28]
        0x1fff3356:    2206        ."      MOVS     r2,#6
        0x1fff3358:    4351        QC      MULS     r1,r2,r1
        0x1fff335a:    4281        .B      CMP      r1,r0
        0x1fff335c:    d301        ..      BCC      0x1fff3362 ; check_96MXtal_by_rcTracking + 126
        0x1fff335e:    1a09        ..      SUBS     r1,r1,r0
        0x1fff3360:    e000        ..      B        0x1fff3364 ; check_96MXtal_by_rcTracking + 128
        0x1fff3362:    1a41        A.      SUBS     r1,r0,r1
        0x1fff3364:    293c        <)      CMP      r1,#0x3c
        0x1fff3366:    d209        ..      BCS      0x1fff337c ; check_96MXtal_by_rcTracking + 152
        0x1fff3368:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x1fff336a:    2101        .!      MOVS     r1,#1
        0x1fff336c:    0409        ..      LSLS     r1,r1,#16
        0x1fff336e:    438a        .C      BICS     r2,r2,r1
        0x1fff3370:    61e2        .a      STR      r2,[r4,#0x1c]
        0x1fff3372:    6862        bh      LDR      r2,[r4,#4]
        0x1fff3374:    438a        .C      BICS     r2,r2,r1
        0x1fff3376:    6062        b`      STR      r2,[r4,#4]
        0x1fff3378:    62e8        .b      STR      r0,[r5,#0x2c]
        0x1fff337a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff337c:    1c76        v.      ADDS     r6,r6,#1
        0x1fff337e:    b2f6        ..      UXTB     r6,r6
        0x1fff3380:    2e05        ..      CMP      r6,#5
        0x1fff3382:    d3d8        ..      BCC      0x1fff3336 ; check_96MXtal_by_rcTracking + 82
        0x1fff3384:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff3386:    2001        .       MOVS     r0,#1
        0x1fff3388:    0400        ..      LSLS     r0,r0,#16
        0x1fff338a:    4381        .C      BICS     r1,r1,r0
        0x1fff338c:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff338e:    6861        ah      LDR      r1,[r4,#4]
        0x1fff3390:    4381        .C      BICS     r1,r1,r0
        0x1fff3392:    6061        a`      STR      r1,[r4,#4]
        0x1fff3394:    6b28        (k      LDR      r0,[r5,#0x30]
        0x1fff3396:    462e        .F      MOV      r6,r5
        0x1fff3398:    2805        .(      CMP      r0,#5
        0x1fff339a:    d307        ..      BCC      0x1fff33ac ; check_96MXtal_by_rcTracking + 200
        0x1fff339c:    f3bf8f4f    ..O.    DSB      
        0x1fff33a0:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff33f0] = 0xe000ed00
        0x1fff33a2:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff33ec] = 0x5fa0004
        0x1fff33a4:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff33a6:    f3bf8f4f    ..O.    DSB      
        0x1fff33aa:    e7fe        ..      B        0x1fff33aa ; check_96MXtal_by_rcTracking + 198
        0x1fff33ac:    6860        `h      LDR      r0,[r4,#4]
        0x1fff33ae:    2180        .!      MOVS     r1,#0x80
        0x1fff33b0:    4388        .C      BICS     r0,r0,r1
        0x1fff33b2:    6060        ``      STR      r0,[r4,#4]
        0x1fff33b4:    2003        .       MOVS     r0,#3
        0x1fff33b6:    f7fefbc3    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff33ba:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff33bc:    4038        8@      ANDS     r0,r0,r7
        0x1fff33be:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff33c0:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff33c2:    2003        .       MOVS     r0,#3
        0x1fff33c4:    f7fefbbc    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff33c8:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff33ca:    03c0        ..      LSLS     r0,r0,#15
        0x1fff33cc:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff33ce:    62b0        .b      STR      r0,[r6,#0x28]
        0x1fff33d0:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff33d2:    2008        .       MOVS     r0,#8
        0x1fff33d4:    4381        .C      BICS     r1,r1,r0
        0x1fff33d6:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff33d8:    e79d        ..      B        0x1fff3316 ; check_96MXtal_by_rcTracking + 50
    $d
        0x1fff33da:    0000        ..      DCW    0
        0x1fff33dc:    4000f0c0    ...@    DCD    1073803456
        0x1fff33e0:    1fff6bd0    .k..    DCD    536832976
        0x1fff33e4:    fffefe00    ....    DCD    4294901248
        0x1fff33e8:    00010028    (...    DCD    65576
        0x1fff33ec:    05fa0004    ....    DCD    100270084
        0x1fff33f0:    e000ed00    ....    DCD    3758157056
    $t
    i.clk_init
    clk_init
        0x1fff33f4:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff33f6:    4604        .F      MOV      r4,r0
        0x1fff33f8:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff3460] = 0x4000f000
        0x1fff33fa:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff33fc:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff3464] = 0x17be0
        0x1fff33fe:    0749        I.      LSLS     r1,r1,#29
        0x1fff3400:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff3402:    5869        iX      LDR      r1,[r5,r1]
        0x1fff3404:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3460] = 0x4000f000
        0x1fff3406:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff3408:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff340a:    9100        ..      STR      r1,[sp,#0]
        0x1fff340c:    6811        .h      LDR      r1,[r2,#0]
        0x1fff340e:    0349        I.      LSLS     r1,r1,#13
        0x1fff3410:    d404        ..      BMI      0x1fff341c ; clk_init + 40
        0x1fff3412:    6811        .h      LDR      r1,[r2,#0]
        0x1fff3414:    2301        .#      MOVS     r3,#1
        0x1fff3416:    049b        ..      LSLS     r3,r3,#18
        0x1fff3418:    4319        .C      ORRS     r1,r1,r3
        0x1fff341a:    6011        .`      STR      r1,[r2,#0]
        0x1fff341c:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff341e:    2218        ."      MOVS     r2,#0x18
        0x1fff3420:    4311        .C      ORRS     r1,r1,r2
        0x1fff3422:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff3424:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff3426:    4f10        .O      LDR      r7,[pc,#64] ; [0x1fff3468] = 0x8c01
        0x1fff3428:    0140        @.      LSLS     r0,r0,#5
        0x1fff342a:    0f40        @.      LSRS     r0,r0,#29
        0x1fff342c:    9001        ..      STR      r0,[sp,#4]
        0x1fff342e:    47b8        .G      BLX      r7
        0x1fff3430:    4606        .F      MOV      r6,r0
        0x1fff3432:    4620         F      MOV      r0,r4
        0x1fff3434:    47b8        .G      BLX      r7
        0x1fff3436:    4306        .C      ORRS     r6,r6,r0
        0x1fff3438:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff346c] = 0x8aa9
        0x1fff343a:    07f0        ..      LSLS     r0,r6,#31
        0x1fff343c:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff343e:    4788        .G      BLX      r1
        0x1fff3440:    4603        .F      MOV      r3,r0
        0x1fff3442:    00a0        ..      LSLS     r0,r4,#2
        0x1fff3444:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff3470] = 0x1fff0874
        0x1fff3446:    5828        (X      LDR      r0,[r5,r0]
        0x1fff3448:    6008        .`      STR      r0,[r1,#0]
        0x1fff344a:    9800        ..      LDR      r0,[sp,#0]
        0x1fff344c:    1e41        A.      SUBS     r1,r0,#1
        0x1fff344e:    9100        ..      STR      r1,[sp,#0]
        0x1fff3450:    d2fb        ..      BCS      0x1fff344a ; clk_init + 86
        0x1fff3452:    4632        2F      MOV      r2,r6
        0x1fff3454:    4621        !F      MOV      r1,r4
        0x1fff3456:    9801        ..      LDR      r0,[sp,#4]
        0x1fff3458:    f7fffc92    ....    BL       _clk_apply_setting1 ; 0x1fff2d80
        0x1fff345c:    2000        .       MOVS     r0,#0
        0x1fff345e:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff3460:    4000f000    ...@    DCD    1073803264
        0x1fff3464:    00017be0    .{..    DCD    97248
        0x1fff3468:    00008c01    ....    DCD    35841
        0x1fff346c:    00008aa9    ....    DCD    35497
        0x1fff3470:    1fff0874    t...    DCD    536807540
    $t
    i.config_RTC1
    config_RTC1
        0x1fff3474:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3476:    4606        .F      MOV      r6,r0
        0x1fff3478:    2001        .       MOVS     r0,#1
        0x1fff347a:    f7fefb61    ..a.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff347e:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff3504] = 0x1fff091c
        0x1fff3480:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff3508] = 0x1fff6bd0
        0x1fff3482:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff3484:    4c21        !L      LDR      r4,[pc,#132] ; [0x1fff350c] = 0x1fff08e4
        0x1fff3486:    2800        .(      CMP      r0,#0
        0x1fff3488:    d016        ..      BEQ      0x1fff34b8 ; config_RTC1 + 68
        0x1fff348a:    f7fefb65    ..e.    BL       $Ven$TT$L$$read_LL_remainder_time ; 0x1fff1b58
        0x1fff348e:    6020         `      STR      r0,[r4,#0]
        0x1fff3490:    f001f8b8    ....    BL       isTimer5Running ; 0x1fff4604
        0x1fff3494:    2800        .(      CMP      r0,#0
        0x1fff3496:    d002        ..      BEQ      0x1fff349e ; config_RTC1 + 42
        0x1fff3498:    f002fc46    ..F.    BL       read_TIM5_remainder_timer ; 0x1fff5d28
        0x1fff349c:    6178        xa      STR      r0,[r7,#0x14]
        0x1fff349e:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff3510] = 0x4000f000
        0x1fff34a0:    6a8b        .j      LDR      r3,[r1,#0x28]
        0x1fff34a2:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff3514] = 0x1fff0a34
        0x1fff34a4:    6003        .`      STR      r3,[r0,#0]
        0x1fff34a6:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff3518] = 0x40001000
        0x1fff34a8:    6ac7        .j      LDR      r7,[r0,#0x2c]
        0x1fff34aa:    4a1c        .J      LDR      r2,[pc,#112] ; [0x1fff351c] = 0x1fff0a18
        0x1fff34ac:    6812        .h      LDR      r2,[r2,#0]
        0x1fff34ae:    4297        .B      CMP      r7,r2
        0x1fff34b0:    d205        ..      BCS      0x1fff34be ; config_RTC1 + 74
        0x1fff34b2:    6ac0        .j      LDR      r0,[r0,#0x2c]
        0x1fff34b4:    1a10        ..      SUBS     r0,r2,r0
        0x1fff34b6:    e003        ..      B        0x1fff34c0 ; config_RTC1 + 76
        0x1fff34b8:    68f8        .h      LDR      r0,[r7,#0xc]
        0x1fff34ba:    6940        @i      LDR      r0,[r0,#0x14]
        0x1fff34bc:    e7e7        ..      B        0x1fff348e ; config_RTC1 + 26
        0x1fff34be:    2000        .       MOVS     r0,#0
        0x1fff34c0:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff3520] = 0x1fff0a1c
        0x1fff34c2:    6010        .`      STR      r0,[r2,#0]
        0x1fff34c4:    1998        ..      ADDS     r0,r3,r6
        0x1fff34c6:    62c8        .b      STR      r0,[r1,#0x2c]
        0x1fff34c8:    6a48        Hj      LDR      r0,[r1,#0x24]
        0x1fff34ca:    2229        )"      MOVS     r2,#0x29
        0x1fff34cc:    03d2        ..      LSLS     r2,r2,#15
        0x1fff34ce:    4310        .C      ORRS     r0,r0,r2
        0x1fff34d0:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff34d2:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff34d4:    2800        .(      CMP      r0,#0
        0x1fff34d6:    d012        ..      BEQ      0x1fff34fe ; config_RTC1 + 138
        0x1fff34d8:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff3524] = 0x1fff0a4a
        0x1fff34da:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff34dc:    2902        .)      CMP      r1,#2
        0x1fff34de:    d008        ..      BEQ      0x1fff34f2 ; config_RTC1 + 126
        0x1fff34e0:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff34e2:    2901        .)      CMP      r1,#1
        0x1fff34e4:    d008        ..      BEQ      0x1fff34f8 ; config_RTC1 + 132
        0x1fff34e6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff34e8:    2803        .(      CMP      r0,#3
        0x1fff34ea:    6820         h      LDR      r0,[r4,#0]
        0x1fff34ec:    d008        ..      BEQ      0x1fff3500 ; config_RTC1 + 140
        0x1fff34ee:    1ec0        ..      SUBS     r0,r0,#3
        0x1fff34f0:    e004        ..      B        0x1fff34fc ; config_RTC1 + 136
        0x1fff34f2:    6820         h      LDR      r0,[r4,#0]
        0x1fff34f4:    380f        .8      SUBS     r0,r0,#0xf
        0x1fff34f6:    e001        ..      B        0x1fff34fc ; config_RTC1 + 136
        0x1fff34f8:    6820         h      LDR      r0,[r4,#0]
        0x1fff34fa:    3808        .8      SUBS     r0,r0,#8
        0x1fff34fc:    6020         `      STR      r0,[r4,#0]
        0x1fff34fe:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3500:    1f40        @.      SUBS     r0,r0,#5
        0x1fff3502:    e7fb        ..      B        0x1fff34fc ; config_RTC1 + 136
    $d
        0x1fff3504:    1fff091c    ....    DCD    536807708
        0x1fff3508:    1fff6bd0    .k..    DCD    536832976
        0x1fff350c:    1fff08e4    ....    DCD    536807652
        0x1fff3510:    4000f000    ...@    DCD    1073803264
        0x1fff3514:    1fff0a34    4...    DCD    536807988
        0x1fff3518:    40001000    ...@    DCD    1073745920
        0x1fff351c:    1fff0a18    ....    DCD    536807960
        0x1fff3520:    1fff0a1c    ....    DCD    536807964
        0x1fff3524:    1fff0a4a    J...    DCD    536808010
    $t
    i.cusum_advance_slave_rx_window
    cusum_advance_slave_rx_window
        0x1fff3528:    b510        ..      PUSH     {r4,lr}
        0x1fff352a:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff35a4] = 0x1fff0d30
        0x1fff352c:    21a1        .!      MOVS     r1,#0xa1
        0x1fff352e:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff3530:    0089        ..      LSLS     r1,r1,#2
        0x1fff3532:    4348        HC      MULS     r0,r1,r0
        0x1fff3534:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff35a8] = 0x1fff0934
        0x1fff3536:    23a1        .#      MOVS     r3,#0xa1
        0x1fff3538:    6809        .h      LDR      r1,[r1,#0]
        0x1fff353a:    009b        ..      LSLS     r3,r3,#2
        0x1fff353c:    1844        D.      ADDS     r4,r0,r1
        0x1fff353e:    2191        .!      MOVS     r1,#0x91
        0x1fff3540:    0089        ..      LSLS     r1,r1,#2
        0x1fff3542:    590a        .Y      LDR      r2,[r1,r4]
        0x1fff3544:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff35a4] = 0x1fff0d30
        0x1fff3546:    2000        .       MOVS     r0,#0
        0x1fff3548:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff354a:    4359        YC      MULS     r1,r3,r1
        0x1fff354c:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff35a8] = 0x1fff0934
        0x1fff354e:    681b        .h      LDR      r3,[r3,#0]
        0x1fff3550:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3552:    8ec9        ..      LDRH     r1,[r1,#0x36]
        0x1fff3554:    2a00        .*      CMP      r2,#0
        0x1fff3556:    d01e        ..      BEQ      0x1fff3596 ; cusum_advance_slave_rx_window + 110
        0x1fff3558:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff35ac] = 0x1fff6bd0
        0x1fff355a:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff355c:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff355e:    3001        .0      ADDS     r0,#1
        0x1fff3560:    2a01        .*      CMP      r2,#1
        0x1fff3562:    d00c        ..      BEQ      0x1fff357e ; cusum_advance_slave_rx_window + 86
        0x1fff3564:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff35ac] = 0x1fff6bd0
        0x1fff3566:    68db        .h      LDR      r3,[r3,#0xc]
        0x1fff3568:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff356a:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff356c:    2a06        .*      CMP      r2,#6
        0x1fff356e:    d808        ..      BHI      0x1fff3582 ; cusum_advance_slave_rx_window + 90
        0x1fff3570:    7964        dy      LDRB     r4,[r4,#5]
        0x1fff3572:    2c01        .,      CMP      r4,#1
        0x1fff3574:    d005        ..      BEQ      0x1fff3582 ; cusum_advance_slave_rx_window + 90
        0x1fff3576:    4c0d        .L      LDR      r4,[pc,#52] ; [0x1fff35ac] = 0x1fff6bd0
        0x1fff3578:    3452        R4      ADDS     r4,r4,#0x52
        0x1fff357a:    5d12        .]      LDRB     r2,[r2,r4]
        0x1fff357c:    e004        ..      B        0x1fff3588 ; cusum_advance_slave_rx_window + 96
        0x1fff357e:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3580:    e009        ..      B        0x1fff3596 ; cusum_advance_slave_rx_window + 110
        0x1fff3582:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff35ac] = 0x1fff6bd0
        0x1fff3584:    3254        T2      ADDS     r2,r2,#0x54
        0x1fff3586:    7912        .y      LDRB     r2,[r2,#4]
        0x1fff3588:    6d1b        .m      LDR      r3,[r3,#0x50]
        0x1fff358a:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff358c:    435a        ZC      MULS     r2,r3,r2
        0x1fff358e:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff3590:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff3592:    435a        ZC      MULS     r2,r3,r2
        0x1fff3594:    1810        ..      ADDS     r0,r2,r0
        0x1fff3596:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff35b0] = 0x753
        0x1fff3598:    08c9        ..      LSRS     r1,r1,#3
        0x1fff359a:    4351        QC      MULS     r1,r2,r1
        0x1fff359c:    4281        .B      CMP      r1,r0
        0x1fff359e:    d800        ..      BHI      0x1fff35a2 ; cusum_advance_slave_rx_window + 122
        0x1fff35a0:    4608        .F      MOV      r0,r1
        0x1fff35a2:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff35a4:    1fff0d30    0...    DCD    536808752
        0x1fff35a8:    1fff0934    4...    DCD    536807732
        0x1fff35ac:    1fff6bd0    .k..    DCD    536832976
        0x1fff35b0:    00000753    S...    DCD    1875
    $t
    i.dbg_printf
    dbg_printf
        0x1fff35b4:    b40f        ..      PUSH     {r0-r3}
        0x1fff35b6:    b510        ..      PUSH     {r4,lr}
        0x1fff35b8:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff35ba:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff35cc] = 0x1fff3125
        0x1fff35bc:    9902        ..      LDR      r1,[sp,#8]
        0x1fff35be:    f001fdfb    ....    BL       log_vsprintf ; 0x1fff51b8
        0x1fff35c2:    bc10        ..      POP      {r4}
        0x1fff35c4:    bc08        ..      POP      {r3}
        0x1fff35c6:    b004        ..      ADD      sp,sp,#0x10
        0x1fff35c8:    4718        .G      BX       r3
    $d
        0x1fff35ca:    0000        ..      DCW    0
        0x1fff35cc:    1fff3125    %1..    DCD    536817957
    $t
    i.dbg_printf_init
    dbg_printf_init
        0x1fff35d0:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff35d2:    4b03        .K      LDR      r3,[pc,#12] ; [0x1fff35e0] = 0x1fff6ae0
        0x1fff35d4:    2400        .$      MOVS     r4,#0
        0x1fff35d6:    cb0f        ..      LDM      r3,{r0-r3}
        0x1fff35d8:    9400        ..      STR      r4,[sp,#0]
        0x1fff35da:    f000ff7d    ..}.    BL       hal_uart_init ; 0x1fff44d8
        0x1fff35de:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x1fff35e0:    1fff6ae0    .j..    DCD    536832736
    $t
    i.efuse_init
    efuse_init
        0x1fff35e4:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff35f4] = 0x4000f040
        0x1fff35e6:    2000        .       MOVS     r0,#0
        0x1fff35e8:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff35ea:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff35f8] = 0x4000f140
        0x1fff35ec:    6008        .`      STR      r0,[r1,#0]
        0x1fff35ee:    6048        H`      STR      r0,[r1,#4]
        0x1fff35f0:    4770        pG      BX       lr
    $d
        0x1fff35f2:    0000        ..      DCW    0
        0x1fff35f4:    4000f040    @..@    DCD    1073803328
        0x1fff35f8:    4000f140    @..@    DCD    1073803584
    $t
    i.enlarge_rx_timeout_1st
    enlarge_rx_timeout_1st
        0x1fff35fc:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff35fe:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff369c] = 0x1fff0d30
        0x1fff3600:    21a1        .!      MOVS     r1,#0xa1
        0x1fff3602:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff3604:    0089        ..      LSLS     r1,r1,#2
        0x1fff3606:    4348        HC      MULS     r0,r1,r0
        0x1fff3608:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff36a0] = 0x1fff0934
        0x1fff360a:    6809        .h      LDR      r1,[r1,#0]
        0x1fff360c:    1844        D.      ADDS     r4,r0,r1
        0x1fff360e:    4825        %H      LDR      r0,[pc,#148] ; [0x1fff36a4] = 0x40031000
        0x1fff3610:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff3612:    b280        ..      UXTH     r0,r0
        0x1fff3614:    9000        ..      STR      r0,[sp,#0]
        0x1fff3616:    2091        .       MOVS     r0,#0x91
        0x1fff3618:    0080        ..      LSLS     r0,r0,#2
        0x1fff361a:    5901        .Y      LDR      r1,[r0,r4]
        0x1fff361c:    2900        .)      CMP      r1,#0
        0x1fff361e:    d00f        ..      BEQ      0x1fff3640 ; enlarge_rx_timeout_1st + 68
        0x1fff3620:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff36a8] = 0x1fff6bd0
        0x1fff3622:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3624:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff3626:    3001        .0      ADDS     r0,#1
        0x1fff3628:    2901        .)      CMP      r1,#1
        0x1fff362a:    d00e        ..      BEQ      0x1fff364a ; enlarge_rx_timeout_1st + 78
        0x1fff362c:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff36a8] = 0x1fff6bd0
        0x1fff362e:    68d2        .h      LDR      r2,[r2,#0xc]
        0x1fff3630:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff3632:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff3634:    2906        .)      CMP      r1,#6
        0x1fff3636:    d80a        ..      BHI      0x1fff364e ; enlarge_rx_timeout_1st + 82
        0x1fff3638:    4b1b        .K      LDR      r3,[pc,#108] ; [0x1fff36a8] = 0x1fff6bd0
        0x1fff363a:    3352        R3      ADDS     r3,r3,#0x52
        0x1fff363c:    5cc9        .\      LDRB     r1,[r1,r3]
        0x1fff363e:    e009        ..      B        0x1fff3654 ; enlarge_rx_timeout_1st + 88
        0x1fff3640:    8c60        `.      LDRH     r0,[r4,#0x22]
        0x1fff3642:    8ee1        ..      LDRH     r1,[r4,#0x36]
        0x1fff3644:    4348        HC      MULS     r0,r1,r0
        0x1fff3646:    1040        @.      ASRS     r0,r0,#1
        0x1fff3648:    e00d        ..      B        0x1fff3666 ; enlarge_rx_timeout_1st + 106
        0x1fff364a:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff364c:    e00a        ..      B        0x1fff3664 ; enlarge_rx_timeout_1st + 104
        0x1fff364e:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff36a8] = 0x1fff6bd0
        0x1fff3650:    3154        T1      ADDS     r1,r1,#0x54
        0x1fff3652:    7909        .y      LDRB     r1,[r1,#4]
        0x1fff3654:    6d12        .m      LDR      r2,[r2,#0x50]
        0x1fff3656:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff3658:    4351        QC      MULS     r1,r2,r1
        0x1fff365a:    8ee2        ..      LDRH     r2,[r4,#0x36]
        0x1fff365c:    0a12        ..      LSRS     r2,r2,#8
        0x1fff365e:    1c52        R.      ADDS     r2,r2,#1
        0x1fff3660:    4351        QC      MULS     r1,r2,r1
        0x1fff3662:    1808        ..      ADDS     r0,r1,r0
        0x1fff3664:    0040        @.      LSLS     r0,r0,#1
        0x1fff3666:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3668:    1840        @.      ADDS     r0,r0,r1
        0x1fff366a:    9000        ..      STR      r0,[sp,#0]
        0x1fff366c:    f7ffff5c    ..\.    BL       cusum_advance_slave_rx_window ; 0x1fff3528
        0x1fff3670:    9001        ..      STR      r0,[sp,#4]
        0x1fff3672:    9901        ..      LDR      r1,[sp,#4]
        0x1fff3674:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3676:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff36ac] = 0x753
        0x1fff3678:    1a42        B.      SUBS     r2,r0,r1
        0x1fff367a:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff367c:    08c1        ..      LSRS     r1,r0,#3
        0x1fff367e:    4359        YC      MULS     r1,r3,r1
        0x1fff3680:    428a        .B      CMP      r2,r1
        0x1fff3682:    d801        ..      BHI      0x1fff3688 ; enlarge_rx_timeout_1st + 140
        0x1fff3684:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3686:    e005        ..      B        0x1fff3694 ; enlarge_rx_timeout_1st + 152
        0x1fff3688:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff36b0] = 0x271
        0x1fff368a:    0840        @.      LSRS     r0,r0,#1
        0x1fff368c:    4348        HC      MULS     r0,r1,r0
        0x1fff368e:    9901        ..      LDR      r1,[sp,#4]
        0x1fff3690:    1840        @.      ADDS     r0,r0,r1
        0x1fff3692:    9000        ..      STR      r0,[sp,#0]
        0x1fff3694:    f7fefa66    ..f.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff1b64
        0x1fff3698:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff369a:    0000        ..      DCW    0
        0x1fff369c:    1fff0d30    0...    DCD    536808752
        0x1fff36a0:    1fff0934    4...    DCD    536807732
        0x1fff36a4:    40031000    ...@    DCD    1073942528
        0x1fff36a8:    1fff6bd0    .k..    DCD    536832976
        0x1fff36ac:    00000753    S...    DCD    1875
        0x1fff36b0:    00000271    q...    DCD    625
    $t
    i.enterSleepProcess1
    enterSleepProcess1
        0x1fff36b4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff36b6:    4c0d        .L      LDR      r4,[pc,#52] ; [0x1fff36ec] = 0x1fff6bd0
        0x1fff36b8:    4605        .F      MOV      r5,r0
        0x1fff36ba:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff36bc:    8d80        ..      LDRH     r0,[r0,#0x2c]
        0x1fff36be:    0540        @.      LSLS     r0,r0,#21
        0x1fff36c0:    d505        ..      BPL      0x1fff36ce ; enterSleepProcess1 + 26
        0x1fff36c2:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff36f0] = 0x4000f040
        0x1fff36c4:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff36c6:    03c0        ..      LSLS     r0,r0,#15
        0x1fff36c8:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff36ca:    f002fb01    ....    BL       rc32k_cap_cal ; 0x1fff5cd0
        0x1fff36ce:    2000        .       MOVS     r0,#0
        0x1fff36d0:    f001ffde    ....    BL       osal_search_active_task ; 0x1fff5690
        0x1fff36d4:    2800        .(      CMP      r0,#0
        0x1fff36d6:    d008        ..      BEQ      0x1fff36ea ; enterSleepProcess1 + 54
        0x1fff36d8:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff36f4] = 0x1fff8000
        0x1fff36da:    6801        .h      LDR      r1,[r0,#0]
        0x1fff36dc:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff36de:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff36e0:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff36e2:    6541        Ae      STR      r1,[r0,#0x54]
        0x1fff36e4:    4628        (F      MOV      r0,r5
        0x1fff36e6:    f7fefa43    ..C.    BL       $Ven$TT$L$$enterSleepProcess0 ; 0x1fff1b70
        0x1fff36ea:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff36ec:    1fff6bd0    .k..    DCD    536832976
        0x1fff36f0:    4000f040    @..@    DCD    1073803328
        0x1fff36f4:    1fff8000    ....    DCD    536838144
    $t
    i.finidv
    finidv
        0x1fff36f8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff36fa:    b08a        ..      SUB      sp,sp,#0x28
        0x1fff36fc:    2400        .$      MOVS     r4,#0
        0x1fff36fe:    4d1e        .M      LDR      r5,[pc,#120] ; [0x1fff3778] = 0x1fff6c39
        0x1fff3700:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff3702:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff3704:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff3706:    2801        .(      CMP      r0,#1
        0x1fff3708:    d006        ..      BEQ      0x1fff3718 ; finidv + 32
        0x1fff370a:    a904        ..      ADD      r1,sp,#0x10
        0x1fff370c:    2001        .       MOVS     r0,#1
        0x1fff370e:    f7fef9ed    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff1aec
        0x1fff3712:    2800        .(      CMP      r0,#0
        0x1fff3714:    d002        ..      BEQ      0x1fff371c ; finidv + 36
        0x1fff3716:    2000        .       MOVS     r0,#0
        0x1fff3718:    b00a        ..      ADD      sp,sp,#0x28
        0x1fff371a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff371c:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff371e:    9000        ..      STR      r0,[sp,#0]
        0x1fff3720:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff3722:    9001        ..      STR      r0,[sp,#4]
        0x1fff3724:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff377c] = 0x11002900
        0x1fff3726:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3728:    9102        ..      STR      r1,[sp,#8]
        0x1fff372a:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff372c:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff377c] = 0x11002900
        0x1fff372e:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff3730:    aa06        ..      ADD      r2,sp,#0x18
        0x1fff3732:    3110        .1      ADDS     r1,r1,#0x10
        0x1fff3734:    4668        hF      MOV      r0,sp
        0x1fff3736:    f7fefa21    ..!.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x1fff1b7c
        0x1fff373a:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff377c] = 0x11002900
        0x1fff373c:    2210        ."      MOVS     r2,#0x10
        0x1fff373e:    3620         6      ADDS     r6,r6,#0x20
        0x1fff3740:    4631        1F      MOV      r1,r6
        0x1fff3742:    a806        ..      ADD      r0,sp,#0x18
        0x1fff3744:    f7fefa20    .. .    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1b88
        0x1fff3748:    2800        .(      CMP      r0,#0
        0x1fff374a:    d011        ..      BEQ      0x1fff3770 ; finidv + 120
        0x1fff374c:    2001        .       MOVS     r0,#1
        0x1fff374e:    7028        (p      STRB     r0,[r5,#0]
        0x1fff3750:    4a0b        .J      LDR      r2,[pc,#44] ; [0x1fff3780] = 0x1fff7c08
        0x1fff3752:    4631        1F      MOV      r1,r6
        0x1fff3754:    4668        hF      MOV      r0,sp
        0x1fff3756:    f7fefa11    ....    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x1fff1b7c
        0x1fff375a:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff375c:    2000        .       MOVS     r0,#0
        0x1fff375e:    4669        iF      MOV      r1,sp
        0x1fff3760:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff3762:    0082        ..      LSLS     r2,r0,#2
        0x1fff3764:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3766:    508c        .P      STR      r4,[r1,r2]
        0x1fff3768:    2804        .(      CMP      r0,#4
        0x1fff376a:    dbfa        ..      BLT      0x1fff3762 ; finidv + 106
        0x1fff376c:    2001        .       MOVS     r0,#1
        0x1fff376e:    e7d3        ..      B        0x1fff3718 ; finidv + 32
        0x1fff3770:    20ff        .       MOVS     r0,#0xff
        0x1fff3772:    7028        (p      STRB     r0,[r5,#0]
        0x1fff3774:    e7cf        ..      B        0x1fff3716 ; finidv + 30
    $d
        0x1fff3776:    0000        ..      DCW    0
        0x1fff3778:    1fff6c39    9l..    DCD    536833081
        0x1fff377c:    11002900    .)..    DCD    285223168
        0x1fff3780:    1fff7c08    .|..    DCD    536837128
    $t
    i.global_config_hclk_related
    global_config_hclk_related
        0x1fff3784:    b510        ..      PUSH     {r4,lr}
        0x1fff3786:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff3810] = 0x1fff0a4a
        0x1fff3788:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff378a:    4922        "I      LDR      r1,[pc,#136] ; [0x1fff3814] = 0x1fff6bd0
        0x1fff378c:    2210        ."      MOVS     r2,#0x10
        0x1fff378e:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff3790:    2b02        .+      CMP      r3,#2
        0x1fff3792:    d008        ..      BEQ      0x1fff37a6 ; global_config_hclk_related + 34
        0x1fff3794:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff3796:    2b01        .+      CMP      r3,#1
        0x1fff3798:    d005        ..      BEQ      0x1fff37a6 ; global_config_hclk_related + 34
        0x1fff379a:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff379c:    2b03        .+      CMP      r3,#3
        0x1fff379e:    d002        ..      BEQ      0x1fff37a6 ; global_config_hclk_related + 34
        0x1fff37a0:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff37a2:    2b04        .+      CMP      r3,#4
        0x1fff37a4:    d100        ..      BNE      0x1fff37a8 ; global_config_hclk_related + 36
        0x1fff37a6:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff37a8:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37aa:    230e        .#      MOVS     r3,#0xe
        0x1fff37ac:    2c02        .,      CMP      r4,#2
        0x1fff37ae:    d009        ..      BEQ      0x1fff37c4 ; global_config_hclk_related + 64
        0x1fff37b0:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37b2:    2c01        .,      CMP      r4,#1
        0x1fff37b4:    d008        ..      BEQ      0x1fff37c8 ; global_config_hclk_related + 68
        0x1fff37b6:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37b8:    2c03        .,      CMP      r4,#3
        0x1fff37ba:    d007        ..      BEQ      0x1fff37cc ; global_config_hclk_related + 72
        0x1fff37bc:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37be:    2c04        .,      CMP      r4,#4
        0x1fff37c0:    d006        ..      BEQ      0x1fff37d0 ; global_config_hclk_related + 76
        0x1fff37c2:    e007        ..      B        0x1fff37d4 ; global_config_hclk_related + 80
        0x1fff37c4:    241b        .$      MOVS     r4,#0x1b
        0x1fff37c6:    e004        ..      B        0x1fff37d2 ; global_config_hclk_related + 78
        0x1fff37c8:    2412        .$      MOVS     r4,#0x12
        0x1fff37ca:    e002        ..      B        0x1fff37d2 ; global_config_hclk_related + 78
        0x1fff37cc:    604b        K`      STR      r3,[r1,#4]
        0x1fff37ce:    e001        ..      B        0x1fff37d4 ; global_config_hclk_related + 80
        0x1fff37d0:    240c        .$      MOVS     r4,#0xc
        0x1fff37d2:    604c        L`      STR      r4,[r1,#4]
        0x1fff37d4:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37d6:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff3814] = 0x1fff6bd0
        0x1fff37d8:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff37da:    3180        .1      ADDS     r1,r1,#0x80
        0x1fff37dc:    2c02        .,      CMP      r4,#2
        0x1fff37de:    d00b        ..      BEQ      0x1fff37f8 ; global_config_hclk_related + 116
        0x1fff37e0:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37e2:    2c01        .,      CMP      r4,#1
        0x1fff37e4:    d00c        ..      BEQ      0x1fff3800 ; global_config_hclk_related + 124
        0x1fff37e6:    7804        .x      LDRB     r4,[r0,#0]
        0x1fff37e8:    2c03        .,      CMP      r4,#3
        0x1fff37ea:    d00e        ..      BEQ      0x1fff380a ; global_config_hclk_related + 134
        0x1fff37ec:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff37ee:    2804        .(      CMP      r0,#4
        0x1fff37f0:    d101        ..      BNE      0x1fff37f6 ; global_config_hclk_related + 114
        0x1fff37f2:    61cb        .a      STR      r3,[r1,#0x1c]
        0x1fff37f4:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff37f6:    bd10        ..      POP      {r4,pc}
        0x1fff37f8:    201f        .       MOVS     r0,#0x1f
        0x1fff37fa:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff37fc:    2021        !       MOVS     r0,#0x21
        0x1fff37fe:    e002        ..      B        0x1fff3806 ; global_config_hclk_related + 130
        0x1fff3800:    2014        .       MOVS     r0,#0x14
        0x1fff3802:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff3804:    2018        .       MOVS     r0,#0x18
        0x1fff3806:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff3808:    bd10        ..      POP      {r4,pc}
        0x1fff380a:    2013        .       MOVS     r0,#0x13
        0x1fff380c:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff380e:    e7fa        ..      B        0x1fff3806 ; global_config_hclk_related + 130
    $d
        0x1fff3810:    1fff0a4a    J...    DCD    536808010
        0x1fff3814:    1fff6bd0    .k..    DCD    536832976
    $t
    i.hal_GPIO_IRQHandler
    hal_GPIO_IRQHandler
    __tagsym$$used
        0x1fff3818:    b510        ..      PUSH     {r4,lr}
        0x1fff381a:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff382c] = 0x40008000
        0x1fff381c:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff381e:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff382c] = 0x40008000
        0x1fff3820:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff3822:    6810        .h      LDR      r0,[r2,#0]
        0x1fff3824:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff3826:    f000fbf7    ....    BL       hal_gpioin_event ; 0x1fff4018
        0x1fff382a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff382c:    40008000    ...@    DCD    1073774592
    $t
    i.hal_TIMER5_IRQHandler
    hal_TIMER5_IRQHandler
    __tagsym$$used
        0x1fff3830:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff384c] = 0x40001040
        0x1fff3832:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff3834:    07c0        ..      LSLS     r0,r0,#31
        0x1fff3836:    d008        ..      BEQ      0x1fff384a ; hal_TIMER5_IRQHandler + 26
        0x1fff3838:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff384c] = 0x40001040
        0x1fff383a:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff383c:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff383e:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3850] = 0x1fff6b94
        0x1fff3840:    6801        .h      LDR      r1,[r0,#0]
        0x1fff3842:    2900        .)      CMP      r1,#0
        0x1fff3844:    d001        ..      BEQ      0x1fff384a ; hal_TIMER5_IRQHandler + 26
        0x1fff3846:    2005        .       MOVS     r0,#5
        0x1fff3848:    4708        .G      BX       r1
        0x1fff384a:    4770        pG      BX       lr
    $d
        0x1fff384c:    40001040    @..@    DCD    1073745984
        0x1fff3850:    1fff6b94    .k..    DCD    536832916
    $t
    i.hal_TIMER6_IRQHandler
    hal_TIMER6_IRQHandler
    __tagsym$$used
        0x1fff3854:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff3870] = 0x40001040
        0x1fff3856:    6b40        @k      LDR      r0,[r0,#0x34]
        0x1fff3858:    07c0        ..      LSLS     r0,r0,#31
        0x1fff385a:    d008        ..      BEQ      0x1fff386e ; hal_TIMER6_IRQHandler + 26
        0x1fff385c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3870] = 0x40001040
        0x1fff385e:    3024        $0      ADDS     r0,r0,#0x24
        0x1fff3860:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff3862:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff3874] = 0x1fff6b94
        0x1fff3864:    6801        .h      LDR      r1,[r0,#0]
        0x1fff3866:    2900        .)      CMP      r1,#0
        0x1fff3868:    d001        ..      BEQ      0x1fff386e ; hal_TIMER6_IRQHandler + 26
        0x1fff386a:    2006        .       MOVS     r0,#6
        0x1fff386c:    4708        .G      BX       r1
        0x1fff386e:    4770        pG      BX       lr
    $d
        0x1fff3870:    40001040    @..@    DCD    1073745984
        0x1fff3874:    1fff6b94    .k..    DCD    536832916
    $t
    i.hal_UART0_IRQHandler
    hal_UART0_IRQHandler
    __tagsym$$used
        0x1fff3878:    b510        ..      PUSH     {r4,lr}
        0x1fff387a:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff38b8] = 0x40004000
        0x1fff387c:    6880        .h      LDR      r0,[r0,#8]
        0x1fff387e:    0700        ..      LSLS     r0,r0,#28
        0x1fff3880:    0f00        ..      LSRS     r0,r0,#28
        0x1fff3882:    2806        .(      CMP      r0,#6
        0x1fff3884:    d008        ..      BEQ      0x1fff3898 ; hal_UART0_IRQHandler + 32
        0x1fff3886:    dc08        ..      BGT      0x1fff389a ; hal_UART0_IRQHandler + 34
        0x1fff3888:    2802        .(      CMP      r0,#2
        0x1fff388a:    d00c        ..      BEQ      0x1fff38a6 ; hal_UART0_IRQHandler + 46
        0x1fff388c:    2804        .(      CMP      r0,#4
        0x1fff388e:    d103        ..      BNE      0x1fff3898 ; hal_UART0_IRQHandler + 32
        0x1fff3890:    2101        .!      MOVS     r1,#1
        0x1fff3892:    2000        .       MOVS     r0,#0
        0x1fff3894:    f7fefb2e    ....    BL       irq_rx_handler ; 0x1fff1ef4
        0x1fff3898:    bd10        ..      POP      {r4,pc}
        0x1fff389a:    2807        .(      CMP      r0,#7
        0x1fff389c:    d007        ..      BEQ      0x1fff38ae ; hal_UART0_IRQHandler + 54
        0x1fff389e:    280c        .(      CMP      r0,#0xc
        0x1fff38a0:    d1fa        ..      BNE      0x1fff3898 ; hal_UART0_IRQHandler + 32
        0x1fff38a2:    2102        .!      MOVS     r1,#2
        0x1fff38a4:    e7f5        ..      B        0x1fff3892 ; hal_UART0_IRQHandler + 26
        0x1fff38a6:    2000        .       MOVS     r0,#0
        0x1fff38a8:    f7fefb4a    ..J.    BL       irq_tx_empty_handler ; 0x1fff1f40
        0x1fff38ac:    bd10        ..      POP      {r4,pc}
        0x1fff38ae:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff38b8] = 0x40004000
        0x1fff38b0:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff38b2:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff38b4:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff38b6:    0000        ..      DCW    0
        0x1fff38b8:    40004000    .@.@    DCD    1073758208
    $t
    i.hal_UART1_IRQHandler
    hal_UART1_IRQHandler
    __tagsym$$used
        0x1fff38bc:    b510        ..      PUSH     {r4,lr}
        0x1fff38be:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff38fc] = 0x40009000
        0x1fff38c0:    6880        .h      LDR      r0,[r0,#8]
        0x1fff38c2:    0700        ..      LSLS     r0,r0,#28
        0x1fff38c4:    0f00        ..      LSRS     r0,r0,#28
        0x1fff38c6:    2806        .(      CMP      r0,#6
        0x1fff38c8:    d008        ..      BEQ      0x1fff38dc ; hal_UART1_IRQHandler + 32
        0x1fff38ca:    dc08        ..      BGT      0x1fff38de ; hal_UART1_IRQHandler + 34
        0x1fff38cc:    2802        .(      CMP      r0,#2
        0x1fff38ce:    d00c        ..      BEQ      0x1fff38ea ; hal_UART1_IRQHandler + 46
        0x1fff38d0:    2804        .(      CMP      r0,#4
        0x1fff38d2:    d103        ..      BNE      0x1fff38dc ; hal_UART1_IRQHandler + 32
        0x1fff38d4:    2101        .!      MOVS     r1,#1
        0x1fff38d6:    2001        .       MOVS     r0,#1
        0x1fff38d8:    f7fefb0c    ....    BL       irq_rx_handler ; 0x1fff1ef4
        0x1fff38dc:    bd10        ..      POP      {r4,pc}
        0x1fff38de:    2807        .(      CMP      r0,#7
        0x1fff38e0:    d007        ..      BEQ      0x1fff38f2 ; hal_UART1_IRQHandler + 54
        0x1fff38e2:    280c        .(      CMP      r0,#0xc
        0x1fff38e4:    d1fa        ..      BNE      0x1fff38dc ; hal_UART1_IRQHandler + 32
        0x1fff38e6:    2102        .!      MOVS     r1,#2
        0x1fff38e8:    e7f5        ..      B        0x1fff38d6 ; hal_UART1_IRQHandler + 26
        0x1fff38ea:    2001        .       MOVS     r0,#1
        0x1fff38ec:    f7fefb28    ..(.    BL       irq_tx_empty_handler ; 0x1fff1f40
        0x1fff38f0:    bd10        ..      POP      {r4,pc}
        0x1fff38f2:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff38fc] = 0x40009000
        0x1fff38f4:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff38f6:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff38f8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff38fa:    0000        ..      DCW    0
        0x1fff38fc:    40009000    ...@    DCD    1073778688
    $t
    i.hal_cache_tag_flush
    hal_cache_tag_flush
        0x1fff3900:    b538        8.      PUSH     {r3-r5,lr}
        0x1fff3902:    f7fdfffd    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff3906:    2201        ."      MOVS     r2,#1
        0x1fff3908:    0792        ..      LSLS     r2,r2,#30
        0x1fff390a:    6a93        .j      LDR      r3,[r2,#0x28]
        0x1fff390c:    2408        .$      MOVS     r4,#8
        0x1fff390e:    9400        ..      STR      r4,[sp,#0]
        0x1fff3910:    2b00        .+      CMP      r3,#0
        0x1fff3912:    d101        ..      BNE      0x1fff3918 ; hal_cache_tag_flush + 24
        0x1fff3914:    2001        .       MOVS     r0,#1
        0x1fff3916:    6290        .b      STR      r0,[r2,#0x28]
        0x1fff3918:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3944] = 0x4000c000
        0x1fff391a:    2102        .!      MOVS     r1,#2
        0x1fff391c:    6001        .`      STR      r1,[r0,#0]
        0x1fff391e:    9900        ..      LDR      r1,[sp,#0]
        0x1fff3920:    1e4d        M.      SUBS     r5,r1,#1
        0x1fff3922:    9500        ..      STR      r5,[sp,#0]
        0x1fff3924:    d2fb        ..      BCS      0x1fff391e ; hal_cache_tag_flush + 30
        0x1fff3926:    2103        .!      MOVS     r1,#3
        0x1fff3928:    6001        .`      STR      r1,[r0,#0]
        0x1fff392a:    9400        ..      STR      r4,[sp,#0]
        0x1fff392c:    1e64        d.      SUBS     r4,r4,#1
        0x1fff392e:    9400        ..      STR      r4,[sp,#0]
        0x1fff3930:    d2fc        ..      BCS      0x1fff392c ; hal_cache_tag_flush + 44
        0x1fff3932:    2100        .!      MOVS     r1,#0
        0x1fff3934:    6001        .`      STR      r1,[r0,#0]
        0x1fff3936:    2b00        .+      CMP      r3,#0
        0x1fff3938:    d100        ..      BNE      0x1fff393c ; hal_cache_tag_flush + 60
        0x1fff393a:    6291        .b      STR      r1,[r2,#0x28]
        0x1fff393c:    f7fdffec    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff3940:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x1fff3942:    0000        ..      DCW    0
        0x1fff3944:    4000c000    ...@    DCD    1073790976
    $t
    i.hal_clk_gate_disable
    hal_clk_gate_disable
        0x1fff3948:    2101        .!      MOVS     r1,#1
        0x1fff394a:    0789        ..      LSLS     r1,r1,#30
        0x1fff394c:    2201        ."      MOVS     r2,#1
        0x1fff394e:    2820         (      CMP      r0,#0x20
        0x1fff3950:    d204        ..      BCS      0x1fff395c ; hal_clk_gate_disable + 20
        0x1fff3952:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3954:    4082        .@      LSLS     r2,r2,r0
        0x1fff3956:    4393        .C      BICS     r3,r3,r2
        0x1fff3958:    608b        .`      STR      r3,[r1,#8]
        0x1fff395a:    4770        pG      BX       lr
        0x1fff395c:    2840        @(      CMP      r0,#0x40
        0x1fff395e:    d205        ..      BCS      0x1fff396c ; hal_clk_gate_disable + 36
        0x1fff3960:    694b        Ki      LDR      r3,[r1,#0x14]
        0x1fff3962:    3820         8      SUBS     r0,r0,#0x20
        0x1fff3964:    4082        .@      LSLS     r2,r2,r0
        0x1fff3966:    4393        .C      BICS     r3,r3,r2
        0x1fff3968:    614b        Ka      STR      r3,[r1,#0x14]
        0x1fff396a:    4770        pG      BX       lr
        0x1fff396c:    2860        `(      CMP      r0,#0x60
        0x1fff396e:    d2fc        ..      BCS      0x1fff396a ; hal_clk_gate_disable + 34
        0x1fff3970:    6a0b        .j      LDR      r3,[r1,#0x20]
        0x1fff3972:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff3974:    4082        .@      LSLS     r2,r2,r0
        0x1fff3976:    4393        .C      BICS     r3,r3,r2
        0x1fff3978:    620b        .b      STR      r3,[r1,#0x20]
        0x1fff397a:    4770        pG      BX       lr
    i.hal_clk_gate_enable
    hal_clk_gate_enable
        0x1fff397c:    2201        ."      MOVS     r2,#1
        0x1fff397e:    0792        ..      LSLS     r2,r2,#30
        0x1fff3980:    2101        .!      MOVS     r1,#1
        0x1fff3982:    2820         (      CMP      r0,#0x20
        0x1fff3984:    d204        ..      BCS      0x1fff3990 ; hal_clk_gate_enable + 20
        0x1fff3986:    6893        .h      LDR      r3,[r2,#8]
        0x1fff3988:    4081        .@      LSLS     r1,r1,r0
        0x1fff398a:    430b        .C      ORRS     r3,r3,r1
        0x1fff398c:    6093        .`      STR      r3,[r2,#8]
        0x1fff398e:    4770        pG      BX       lr
        0x1fff3990:    2840        @(      CMP      r0,#0x40
        0x1fff3992:    d205        ..      BCS      0x1fff39a0 ; hal_clk_gate_enable + 36
        0x1fff3994:    6953        Si      LDR      r3,[r2,#0x14]
        0x1fff3996:    3820         8      SUBS     r0,r0,#0x20
        0x1fff3998:    4081        .@      LSLS     r1,r1,r0
        0x1fff399a:    430b        .C      ORRS     r3,r3,r1
        0x1fff399c:    6153        Sa      STR      r3,[r2,#0x14]
        0x1fff399e:    4770        pG      BX       lr
        0x1fff39a0:    2860        `(      CMP      r0,#0x60
        0x1fff39a2:    d2fc        ..      BCS      0x1fff399e ; hal_clk_gate_enable + 34
        0x1fff39a4:    6a13        .j      LDR      r3,[r2,#0x20]
        0x1fff39a6:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff39a8:    4081        .@      LSLS     r1,r1,r0
        0x1fff39aa:    430b        .C      ORRS     r3,r3,r1
        0x1fff39ac:    6213        .b      STR      r3,[r2,#0x20]
        0x1fff39ae:    4770        pG      BX       lr
    i.hal_clk_reset
    hal_clk_reset
        0x1fff39b0:    2101        .!      MOVS     r1,#1
        0x1fff39b2:    b510        ..      PUSH     {r4,lr}
        0x1fff39b4:    0789        ..      LSLS     r1,r1,#30
        0x1fff39b6:    2201        ."      MOVS     r2,#1
        0x1fff39b8:    2820         (      CMP      r0,#0x20
        0x1fff39ba:    d213        ..      BCS      0x1fff39e4 ; hal_clk_reset + 52
        0x1fff39bc:    4603        .F      MOV      r3,r0
        0x1fff39be:    3b15        .;      SUBS     r3,r3,#0x15
        0x1fff39c0:    2b01        .+      CMP      r3,#1
        0x1fff39c2:    d807        ..      BHI      0x1fff39d4 ; hal_clk_reset + 36
        0x1fff39c4:    680a        .h      LDR      r2,[r1,#0]
        0x1fff39c6:    2020                MOVS     r0,#0x20
        0x1fff39c8:    4382        .C      BICS     r2,r2,r0
        0x1fff39ca:    600a        .`      STR      r2,[r1,#0]
        0x1fff39cc:    680a        .h      LDR      r2,[r1,#0]
        0x1fff39ce:    4302        .C      ORRS     r2,r2,r0
        0x1fff39d0:    600a        .`      STR      r2,[r1,#0]
        0x1fff39d2:    bd10        ..      POP      {r4,pc}
        0x1fff39d4:    680b        .h      LDR      r3,[r1,#0]
        0x1fff39d6:    4082        .@      LSLS     r2,r2,r0
        0x1fff39d8:    4393        .C      BICS     r3,r3,r2
        0x1fff39da:    600b        .`      STR      r3,[r1,#0]
        0x1fff39dc:    6808        .h      LDR      r0,[r1,#0]
        0x1fff39de:    4310        .C      ORRS     r0,r0,r2
        0x1fff39e0:    6008        .`      STR      r0,[r1,#0]
        0x1fff39e2:    bd10        ..      POP      {r4,pc}
        0x1fff39e4:    2840        @(      CMP      r0,#0x40
        0x1fff39e6:    d214        ..      BCS      0x1fff3a12 ; hal_clk_reset + 98
        0x1fff39e8:    4603        .F      MOV      r3,r0
        0x1fff39ea:    3b35        5;      SUBS     r3,r3,#0x35
        0x1fff39ec:    2b03        .+      CMP      r3,#3
        0x1fff39ee:    d807        ..      BHI      0x1fff3a00 ; hal_clk_reset + 80
        0x1fff39f0:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff39f2:    2010        .       MOVS     r0,#0x10
        0x1fff39f4:    4382        .C      BICS     r2,r2,r0
        0x1fff39f6:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff39f8:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff39fa:    4302        .C      ORRS     r2,r2,r0
        0x1fff39fc:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff39fe:    bd10        ..      POP      {r4,pc}
        0x1fff3a00:    68cb        .h      LDR      r3,[r1,#0xc]
        0x1fff3a02:    3820         8      SUBS     r0,r0,#0x20
        0x1fff3a04:    4082        .@      LSLS     r2,r2,r0
        0x1fff3a06:    4393        .C      BICS     r3,r3,r2
        0x1fff3a08:    60cb        .`      STR      r3,[r1,#0xc]
        0x1fff3a0a:    68c8        .h      LDR      r0,[r1,#0xc]
        0x1fff3a0c:    4310        .C      ORRS     r0,r0,r2
        0x1fff3a0e:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff3a10:    bd10        ..      POP      {r4,pc}
        0x1fff3a12:    2860        `(      CMP      r0,#0x60
        0x1fff3a14:    d2fc        ..      BCS      0x1fff3a10 ; hal_clk_reset + 96
        0x1fff3a16:    6a4b        Kj      LDR      r3,[r1,#0x24]
        0x1fff3a18:    2442        B$      MOVS     r4,#0x42
        0x1fff3a1a:    1a20         .      SUBS     r0,r4,r0
        0x1fff3a1c:    4082        .@      LSLS     r2,r2,r0
        0x1fff3a1e:    4393        .C      BICS     r3,r3,r2
        0x1fff3a20:    624b        Kb      STR      r3,[r1,#0x24]
        0x1fff3a22:    6a48        Hj      LDR      r0,[r1,#0x24]
        0x1fff3a24:    4310        .C      ORRS     r0,r0,r2
        0x1fff3a26:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff3a28:    bd10        ..      POP      {r4,pc}
        0x1fff3a2a:    0000        ..      MOVS     r0,r0
    i.hal_flash_read
    hal_flash_read
        0x1fff3a2c:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff3a2e:    b084        ..      SUB      sp,sp,#0x10
        0x1fff3a30:    4617        .F      MOV      r7,r2
        0x1fff3a32:    4604        .F      MOV      r4,r0
        0x1fff3a34:    f7fefaea    ....    BL       spif_lock ; 0x1fff200c
        0x1fff3a38:    9002        ..      STR      r0,[sp,#8]
        0x1fff3a3a:    0360        `.      LSLS     r0,r4,#13
        0x1fff3a3c:    2111        .!      MOVS     r1,#0x11
        0x1fff3a3e:    0b40        @.      LSRS     r0,r0,#13
        0x1fff3a40:    0609        ..      LSLS     r1,r1,#24
        0x1fff3a42:    1840        @.      ADDS     r0,r0,r1
        0x1fff3a44:    018d        ..      LSLS     r5,r1,#6
        0x1fff3a46:    9001        ..      STR      r0,[sp,#4]
        0x1fff3a48:    6aae        .j      LDR      r6,[r5,#0x28]
        0x1fff3a4a:    0220         .      LSLS     r0,r4,#8
        0x1fff3a4c:    0a00        ..      LSRS     r0,r0,#8
        0x1fff3a4e:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff3ad4] = 0x7ffff
        0x1fff3a50:    9000        ..      STR      r0,[sp,#0]
        0x1fff3a52:    4288        .B      CMP      r0,r1
        0x1fff3a54:    d909        ..      BLS      0x1fff3a6a ; hal_flash_read + 62
        0x1fff3a56:    201f        .       MOVS     r0,#0x1f
        0x1fff3a58:    04c0        ..      LSLS     r0,r0,#19
        0x1fff3a5a:    4004        .@      ANDS     r4,r4,r0
        0x1fff3a5c:    d005        ..      BEQ      0x1fff3a6a ; hal_flash_read + 62
        0x1fff3a5e:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff3ad8] = 0x4000c800
        0x1fff3a60:    6244        Db      STR      r4,[r0,#0x24]
        0x1fff3a62:    6801        .h      LDR      r1,[r0,#0]
        0x1fff3a64:    13aa        ..      ASRS     r2,r5,#14
        0x1fff3a66:    4311        .C      ORRS     r1,r1,r2
        0x1fff3a68:    6001        .`      STR      r1,[r0,#0]
        0x1fff3a6a:    2e00        ..      CMP      r6,#0
        0x1fff3a6c:    d109        ..      BNE      0x1fff3a82 ; hal_flash_read + 86
        0x1fff3a6e:    f7fdff47    ..G.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff3a72:    491a        .I      LDR      r1,[pc,#104] ; [0x1fff3adc] = 0x4000c000
        0x1fff3a74:    2002        .       MOVS     r0,#2
        0x1fff3a76:    6008        .`      STR      r0,[r1,#0]
        0x1fff3a78:    6268        hb      STR      r0,[r5,#0x24]
        0x1fff3a7a:    2001        .       MOVS     r0,#1
        0x1fff3a7c:    62a8        .b      STR      r0,[r5,#0x28]
        0x1fff3a7e:    f7fdff4b    ..K.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff3a82:    2000        .       MOVS     r0,#0
        0x1fff3a84:    e004        ..      B        0x1fff3a90 ; hal_flash_read + 100
        0x1fff3a86:    9901        ..      LDR      r1,[sp,#4]
        0x1fff3a88:    5c0a        .\      LDRB     r2,[r1,r0]
        0x1fff3a8a:    9905        ..      LDR      r1,[sp,#0x14]
        0x1fff3a8c:    540a        .T      STRB     r2,[r1,r0]
        0x1fff3a8e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3a90:    42b8        .B      CMP      r0,r7
        0x1fff3a92:    d3f8        ..      BCC      0x1fff3a86 ; hal_flash_read + 90
        0x1fff3a94:    2700        .'      MOVS     r7,#0
        0x1fff3a96:    2e00        ..      CMP      r6,#0
        0x1fff3a98:    d108        ..      BNE      0x1fff3aac ; hal_flash_read + 128
        0x1fff3a9a:    f7fdff31    ..1.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff3a9e:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff3adc] = 0x4000c000
        0x1fff3aa0:    6007        .`      STR      r7,[r0,#0]
        0x1fff3aa2:    2003        .       MOVS     r0,#3
        0x1fff3aa4:    6268        hb      STR      r0,[r5,#0x24]
        0x1fff3aa6:    62af        .b      STR      r7,[r5,#0x28]
        0x1fff3aa8:    f7fdff36    ..6.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff3aac:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff3ad4] = 0x7ffff
        0x1fff3aae:    9800        ..      LDR      r0,[sp,#0]
        0x1fff3ab0:    4288        .B      CMP      r0,r1
        0x1fff3ab2:    d908        ..      BLS      0x1fff3ac6 ; hal_flash_read + 154
        0x1fff3ab4:    2c00        .,      CMP      r4,#0
        0x1fff3ab6:    d006        ..      BEQ      0x1fff3ac6 ; hal_flash_read + 154
        0x1fff3ab8:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff3ad8] = 0x4000c800
        0x1fff3aba:    6247        Gb      STR      r7,[r0,#0x24]
        0x1fff3abc:    6802        .h      LDR      r2,[r0,#0]
        0x1fff3abe:    2101        .!      MOVS     r1,#1
        0x1fff3ac0:    0409        ..      LSLS     r1,r1,#16
        0x1fff3ac2:    438a        .C      BICS     r2,r2,r1
        0x1fff3ac4:    6002        .`      STR      r2,[r0,#0]
        0x1fff3ac6:    9802        ..      LDR      r0,[sp,#8]
        0x1fff3ac8:    f7fefab2    ....    BL       spif_unlock ; 0x1fff2030
        0x1fff3acc:    2000        .       MOVS     r0,#0
        0x1fff3ace:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff3ad0:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff3ad2:    0000        ..      DCW    0
        0x1fff3ad4:    0007ffff    ....    DCD    524287
        0x1fff3ad8:    4000c800    ...@    DCD    1073793024
        0x1fff3adc:    4000c000    ...@    DCD    1073790976
    $t
    i.hal_gpio_cfg_analog_io
    hal_gpio_cfg_analog_io
        0x1fff3ae0:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff3ae2:    1fc2        ..      SUBS     r2,r0,#7
        0x1fff3ae4:    2a0a        .*      CMP      r2,#0xa
        0x1fff3ae6:    d301        ..      BCC      0x1fff3aec ; hal_gpio_cfg_analog_io + 12
        0x1fff3ae8:    2006        .       MOVS     r0,#6
        0x1fff3aea:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3aec:    2816        .(      CMP      r0,#0x16
        0x1fff3aee:    d901        ..      BLS      0x1fff3af4 ; hal_gpio_cfg_analog_io + 20
        0x1fff3af0:    2005        .       MOVS     r0,#5
        0x1fff3af2:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3af4:    2401        .$      MOVS     r4,#1
        0x1fff3af6:    4d07        .M      LDR      r5,[pc,#28] ; [0x1fff3b14] = 0x40003800
        0x1fff3af8:    4094        .@      LSLS     r4,r4,r2
        0x1fff3afa:    2900        .)      CMP      r1,#0
        0x1fff3afc:    d005        ..      BEQ      0x1fff3b0a ; hal_gpio_cfg_analog_io + 42
        0x1fff3afe:    2100        .!      MOVS     r1,#0
        0x1fff3b00:    f000f8d0    ....    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff3b04:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3b06:    4320         C      ORRS     r0,r0,r4
        0x1fff3b08:    e001        ..      B        0x1fff3b0e ; hal_gpio_cfg_analog_io + 46
        0x1fff3b0a:    6828        (h      LDR      r0,[r5,#0]
        0x1fff3b0c:    43a0        .C      BICS     r0,r0,r4
        0x1fff3b0e:    6028        (`      STR      r0,[r5,#0]
        0x1fff3b10:    2000        .       MOVS     r0,#0
        0x1fff3b12:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff3b14:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_fmux
    hal_gpio_fmux
        0x1fff3b18:    2816        .(      CMP      r0,#0x16
        0x1fff3b1a:    d809        ..      BHI      0x1fff3b30 ; hal_gpio_fmux + 24
        0x1fff3b1c:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff3b34] = 0x40003800
        0x1fff3b1e:    2301        .#      MOVS     r3,#1
        0x1fff3b20:    4083        .@      LSLS     r3,r3,r0
        0x1fff3b22:    68d0        .h      LDR      r0,[r2,#0xc]
        0x1fff3b24:    2900        .)      CMP      r1,#0
        0x1fff3b26:    d001        ..      BEQ      0x1fff3b2c ; hal_gpio_fmux + 20
        0x1fff3b28:    4318        .C      ORRS     r0,r0,r3
        0x1fff3b2a:    e000        ..      B        0x1fff3b2e ; hal_gpio_fmux + 22
        0x1fff3b2c:    4398        .C      BICS     r0,r0,r3
        0x1fff3b2e:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff3b30:    4770        pG      BX       lr
    $d
        0x1fff3b32:    0000        ..      DCW    0
        0x1fff3b34:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_fmux_set
    hal_gpio_fmux_set
        0x1fff3b38:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff3b3a:    4606        .F      MOV      r6,r0
        0x1fff3b3c:    28ff        .(      CMP      r0,#0xff
        0x1fff3b3e:    d019        ..      BEQ      0x1fff3b74 ; hal_gpio_fmux_set + 60
        0x1fff3b40:    07b0        ..      LSLS     r0,r6,#30
        0x1fff3b42:    0ec4        ..      LSRS     r4,r0,#27
        0x1fff3b44:    08b7        ..      LSRS     r7,r6,#2
        0x1fff3b46:    1d65        e.      ADDS     r5,r4,#5
        0x1fff3b48:    4630        0F      MOV      r0,r6
        0x1fff3b4a:    f000fa0b    ....    BL       hal_gpioin_disable ; 0x1fff3f64
        0x1fff3b4e:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3b78] = 0x40003800
        0x1fff3b50:    00b9        ..      LSLS     r1,r7,#2
        0x1fff3b52:    1809        ..      ADDS     r1,r1,r0
        0x1fff3b54:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff3b56:    1b2b        +.      SUBS     r3,r5,r4
        0x1fff3b58:    2201        ."      MOVS     r2,#1
        0x1fff3b5a:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff3b5c:    409a        .@      LSLS     r2,r2,r3
        0x1fff3b5e:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3b60:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3b62:    4390        .C      BICS     r0,r0,r2
        0x1fff3b64:    9a01        ..      LDR      r2,[sp,#4]
        0x1fff3b66:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3b68:    4310        .C      ORRS     r0,r0,r2
        0x1fff3b6a:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff3b6c:    2101        .!      MOVS     r1,#1
        0x1fff3b6e:    4630        0F      MOV      r0,r6
        0x1fff3b70:    f7ffffd2    ....    BL       hal_gpio_fmux ; 0x1fff3b18
        0x1fff3b74:    bdfc        ..      POP      {r2-r7,pc}
    $d
        0x1fff3b76:    0000        ..      DCW    0
        0x1fff3b78:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_init
    hal_gpio_init
        0x1fff3b7c:    b510        ..      PUSH     {r4,lr}
        0x1fff3b7e:    4c11        .L      LDR      r4,[pc,#68] ; [0x1fff3bc4] = 0x1fff76c8
        0x1fff3b80:    7820         x      LDRB     r0,[r4,#0]
        0x1fff3b82:    2800        .(      CMP      r0,#0
        0x1fff3b84:    d001        ..      BEQ      0x1fff3b8a ; hal_gpio_init + 14
        0x1fff3b86:    2007        .       MOVS     r0,#7
        0x1fff3b88:    bd10        ..      POP      {r4,pc}
        0x1fff3b8a:    21ff        .!      MOVS     r1,#0xff
        0x1fff3b8c:    3131        11      ADDS     r1,r1,#0x31
        0x1fff3b8e:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff3bc4] = 0x1fff76c8
        0x1fff3b90:    f7fef800    ....    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1b94
        0x1fff3b94:    2001        .       MOVS     r0,#1
        0x1fff3b96:    7020         p      STRB     r0,[r4,#0]
        0x1fff3b98:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff3bc8] = 0x40008000
        0x1fff3b9a:    2000        .       MOVS     r0,#0
        0x1fff3b9c:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff3b9e:    6348        Hc      STR      r0,[r1,#0x34]
        0x1fff3ba0:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff3bcc] = 0x4000f080
        0x1fff3ba2:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff3ba4:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff3ba6:    2102        .!      MOVS     r1,#2
        0x1fff3ba8:    2010        .       MOVS     r0,#0x10
        0x1fff3baa:    f7fff88d    ....    BL       __NVIC_SetPriority ; 0x1fff2cc8
        0x1fff3bae:    2010        .       MOVS     r0,#0x10
        0x1fff3bb0:    f7fff85c    ..\.    BL       __NVIC_EnableIRQ ; 0x1fff2c6c
        0x1fff3bb4:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3bd0] = 0x1fff3e29
        0x1fff3bb6:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3bd4] = 0x1fff3d91
        0x1fff3bb8:    200d        .       MOVS     r0,#0xd
        0x1fff3bba:    f000fb27    ..'.    BL       hal_pwrmgr_register ; 0x1fff420c
        0x1fff3bbe:    2000        .       MOVS     r0,#0
        0x1fff3bc0:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3bc2:    0000        ..      DCW    0
        0x1fff3bc4:    1fff76c8    .v..    DCD    536835784
        0x1fff3bc8:    40008000    ...@    DCD    1073774592
        0x1fff3bcc:    4000f080    ...@    DCD    1073803392
        0x1fff3bd0:    1fff3e29    )>..    DCD    536821289
        0x1fff3bd4:    1fff3d91    .=..    DCD    536821137
    $t
    i.hal_gpio_interrupt_enable
    hal_gpio_interrupt_enable
        0x1fff3bd8:    b510        ..      PUSH     {r4,lr}
        0x1fff3bda:    2816        .(      CMP      r0,#0x16
        0x1fff3bdc:    d901        ..      BLS      0x1fff3be2 ; hal_gpio_interrupt_enable + 10
        0x1fff3bde:    2005        .       MOVS     r0,#5
        0x1fff3be0:    bd10        ..      POP      {r4,pc}
        0x1fff3be2:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff3c14] = 0x40008000
        0x1fff3be4:    6b9c        .k      LDR      r4,[r3,#0x38]
        0x1fff3be6:    2201        ."      MOVS     r2,#1
        0x1fff3be8:    4082        .@      LSLS     r2,r2,r0
        0x1fff3bea:    4610        .F      MOV      r0,r2
        0x1fff3bec:    4320         C      ORRS     r0,r0,r4
        0x1fff3bee:    6398        .c      STR      r0,[r3,#0x38]
        0x1fff3bf0:    6b58        Xk      LDR      r0,[r3,#0x34]
        0x1fff3bf2:    4390        .C      BICS     r0,r0,r2
        0x1fff3bf4:    6358        Xc      STR      r0,[r3,#0x34]
        0x1fff3bf6:    6bdc        .k      LDR      r4,[r3,#0x3c]
        0x1fff3bf8:    2901        .)      CMP      r1,#1
        0x1fff3bfa:    d007        ..      BEQ      0x1fff3c0c ; hal_gpio_interrupt_enable + 52
        0x1fff3bfc:    4620         F      MOV      r0,r4
        0x1fff3bfe:    4390        .C      BICS     r0,r0,r2
        0x1fff3c00:    63d8        .c      STR      r0,[r3,#0x3c]
        0x1fff3c02:    6b18        .k      LDR      r0,[r3,#0x30]
        0x1fff3c04:    4302        .C      ORRS     r2,r2,r0
        0x1fff3c06:    631a        .c      STR      r2,[r3,#0x30]
        0x1fff3c08:    2000        .       MOVS     r0,#0
        0x1fff3c0a:    bd10        ..      POP      {r4,pc}
        0x1fff3c0c:    4610        .F      MOV      r0,r2
        0x1fff3c0e:    4320         C      ORRS     r0,r0,r4
        0x1fff3c10:    e7f6        ..      B        0x1fff3c00 ; hal_gpio_interrupt_enable + 40
    $d
        0x1fff3c12:    0000        ..      DCW    0
        0x1fff3c14:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_pin2pin3_control
    hal_gpio_pin2pin3_control
        0x1fff3c18:    4b05        .K      LDR      r3,[pc,#20] ; [0x1fff3c30] = 0x40003800
        0x1fff3c1a:    2201        ."      MOVS     r2,#1
        0x1fff3c1c:    1e80        ..      SUBS     r0,r0,#2
        0x1fff3c1e:    4082        .@      LSLS     r2,r2,r0
        0x1fff3c20:    6958        Xi      LDR      r0,[r3,#0x14]
        0x1fff3c22:    2900        .)      CMP      r1,#0
        0x1fff3c24:    d001        ..      BEQ      0x1fff3c2a ; hal_gpio_pin2pin3_control + 18
        0x1fff3c26:    4310        .C      ORRS     r0,r0,r2
        0x1fff3c28:    e000        ..      B        0x1fff3c2c ; hal_gpio_pin2pin3_control + 20
        0x1fff3c2a:    4390        .C      BICS     r0,r0,r2
        0x1fff3c2c:    6158        Xa      STR      r0,[r3,#0x14]
        0x1fff3c2e:    4770        pG      BX       lr
    $d
        0x1fff3c30:    40003800    .8.@    DCD    1073756160
    $t
    i.hal_gpio_pin_init
    hal_gpio_pin_init
        0x1fff3c34:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff3c36:    460e        .F      MOV      r6,r1
        0x1fff3c38:    4604        .F      MOV      r4,r0
        0x1fff3c3a:    2816        .(      CMP      r0,#0x16
        0x1fff3c3c:    d901        ..      BLS      0x1fff3c42 ; hal_gpio_pin_init + 14
        0x1fff3c3e:    2005        .       MOVS     r0,#5
        0x1fff3c40:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3c42:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff3c9c] = 0x1fff76c8
        0x1fff3c44:    2501        .%      MOVS     r5,#1
        0x1fff3c46:    1907        ..      ADDS     r7,r0,r4
        0x1fff3c48:    7879        yx      LDRB     r1,[r7,#1]
        0x1fff3c4a:    40a5        .@      LSLS     r5,r5,r4
        0x1fff3c4c:    2901        .)      CMP      r1,#1
        0x1fff3c4e:    d104        ..      BNE      0x1fff3c5a ; hal_gpio_pin_init + 38
        0x1fff3c50:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff3c52:    4228        (B      TST      r0,r5
        0x1fff3c54:    d001        ..      BEQ      0x1fff3c5a ; hal_gpio_pin_init + 38
        0x1fff3c56:    2e00        ..      CMP      r6,#0
        0x1fff3c58:    d008        ..      BEQ      0x1fff3c6c ; hal_gpio_pin_init + 56
        0x1fff3c5a:    2100        .!      MOVS     r1,#0
        0x1fff3c5c:    4620         F      MOV      r0,r4
        0x1fff3c5e:    f7ffff5b    ..[.    BL       hal_gpio_fmux ; 0x1fff3b18
        0x1fff3c62:    2c02        .,      CMP      r4,#2
        0x1fff3c64:    d004        ..      BEQ      0x1fff3c70 ; hal_gpio_pin_init + 60
        0x1fff3c66:    2c03        .,      CMP      r4,#3
        0x1fff3c68:    d002        ..      BEQ      0x1fff3c70 ; hal_gpio_pin_init + 60
        0x1fff3c6a:    e005        ..      B        0x1fff3c78 ; hal_gpio_pin_init + 68
        0x1fff3c6c:    2006        .       MOVS     r0,#6
        0x1fff3c6e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3c70:    2101        .!      MOVS     r1,#1
        0x1fff3c72:    4620         F      MOV      r0,r4
        0x1fff3c74:    f7ffffd0    ....    BL       hal_gpio_pin2pin3_control ; 0x1fff3c18
        0x1fff3c78:    2100        .!      MOVS     r1,#0
        0x1fff3c7a:    4620         F      MOV      r0,r4
        0x1fff3c7c:    f7ffff30    ..0.    BL       hal_gpio_cfg_analog_io ; 0x1fff3ae0
        0x1fff3c80:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff3ca0] = 0x40008000
        0x1fff3c82:    2e01        ..      CMP      r6,#1
        0x1fff3c84:    d004        ..      BEQ      0x1fff3c90 ; hal_gpio_pin_init + 92
        0x1fff3c86:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff3c88:    43a9        .C      BICS     r1,r1,r5
        0x1fff3c8a:    6041        A`      STR      r1,[r0,#4]
        0x1fff3c8c:    2000        .       MOVS     r0,#0
        0x1fff3c8e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3c90:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff3c92:    2101        .!      MOVS     r1,#1
        0x1fff3c94:    432a        *C      ORRS     r2,r2,r5
        0x1fff3c96:    6042        B`      STR      r2,[r0,#4]
        0x1fff3c98:    7079        yp      STRB     r1,[r7,#1]
        0x1fff3c9a:    e7f7        ..      B        0x1fff3c8c ; hal_gpio_pin_init + 88
    $d
        0x1fff3c9c:    1fff76c8    .v..    DCD    536835784
        0x1fff3ca0:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_pull_set
    hal_gpio_pull_set
        0x1fff3ca4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3ca6:    2816        .(      CMP      r0,#0x16
        0x1fff3ca8:    d816        ..      BHI      0x1fff3cd8 ; hal_gpio_pull_set + 52
        0x1fff3caa:    0042        B.      LSLS     r2,r0,#1
        0x1fff3cac:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff3cf0] = 0x1fff6a6b
        0x1fff3cae:    1882        ..      ADDS     r2,r0,r2
        0x1fff3cb0:    5c9e        .\      LDRB     r6,[r3,r2]
        0x1fff3cb2:    18d2        ..      ADDS     r2,r2,r3
        0x1fff3cb4:    7854        Tx      LDRB     r4,[r2,#1]
        0x1fff3cb6:    7893        .x      LDRB     r3,[r2,#2]
        0x1fff3cb8:    4d0e        .M      LDR      r5,[pc,#56] ; [0x1fff3cf4] = 0x4000f000
        0x1fff3cba:    2201        ."      MOVS     r2,#1
        0x1fff3cbc:    2813        .(      CMP      r0,#0x13
        0x1fff3cbe:    d20c        ..      BCS      0x1fff3cda ; hal_gpio_pull_set + 54
        0x1fff3cc0:    00b0        ..      LSLS     r0,r6,#2
        0x1fff3cc2:    1945        E.      ADDS     r5,r0,r5
        0x1fff3cc4:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff3cc6:    1ae4        ..      SUBS     r4,r4,r3
        0x1fff3cc8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3cca:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3ccc:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3cce:    409a        .@      LSLS     r2,r2,r3
        0x1fff3cd0:    4390        .C      BICS     r0,r0,r2
        0x1fff3cd2:    4099        .@      LSLS     r1,r1,r3
        0x1fff3cd4:    4308        .C      ORRS     r0,r0,r1
        0x1fff3cd6:    60a8        .`      STR      r0,[r5,#8]
        0x1fff3cd8:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3cda:    6968        hi      LDR      r0,[r5,#0x14]
        0x1fff3cdc:    1ae4        ..      SUBS     r4,r4,r3
        0x1fff3cde:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3ce0:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3ce2:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3ce4:    409a        .@      LSLS     r2,r2,r3
        0x1fff3ce6:    4390        .C      BICS     r0,r0,r2
        0x1fff3ce8:    4099        .@      LSLS     r1,r1,r3
        0x1fff3cea:    4308        .C      ORRS     r0,r0,r1
        0x1fff3cec:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff3cee:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3cf0:    1fff6a6b    kj..    DCD    536832619
        0x1fff3cf4:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_gpio_read
    hal_gpio_read
        0x1fff3cf8:    2816        .(      CMP      r0,#0x16
        0x1fff3cfa:    d901        ..      BLS      0x1fff3d00 ; hal_gpio_read + 8
        0x1fff3cfc:    2001        .       MOVS     r0,#1
        0x1fff3cfe:    4770        pG      BX       lr
        0x1fff3d00:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3d20] = 0x40008000
        0x1fff3d02:    684a        Jh      LDR      r2,[r1,#4]
        0x1fff3d04:    2301        .#      MOVS     r3,#1
        0x1fff3d06:    4083        .@      LSLS     r3,r3,r0
        0x1fff3d08:    421a        .B      TST      r2,r3
        0x1fff3d0a:    d001        ..      BEQ      0x1fff3d10 ; hal_gpio_read + 24
        0x1fff3d0c:    6809        .h      LDR      r1,[r1,#0]
        0x1fff3d0e:    e002        ..      B        0x1fff3d16 ; hal_gpio_read + 30
        0x1fff3d10:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff3d20] = 0x40008000
        0x1fff3d12:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff3d14:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff3d16:    40c1        .@      LSRS     r1,r1,r0
        0x1fff3d18:    07c8        ..      LSLS     r0,r1,#31
        0x1fff3d1a:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff3d1c:    4770        pG      BX       lr
    $d
        0x1fff3d1e:    0000        ..      DCW    0
        0x1fff3d20:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpio_retention_enable
    hal_gpio_retention_enable
        0x1fff3d24:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3d26:    2816        .(      CMP      r0,#0x16
        0x1fff3d28:    d827        '.      BHI      0x1fff3d7a ; hal_gpio_retention_enable + 86
        0x1fff3d2a:    4c18        .L      LDR      r4,[pc,#96] ; [0x1fff3d8c] = 0x1fff6ab0
        0x1fff3d2c:    0046        F.      LSLS     r6,r0,#1
        0x1fff3d2e:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3d88] = 0x4000f000
        0x1fff3d30:    1935        5.      ADDS     r5,r6,r4
        0x1fff3d32:    2301        .#      MOVS     r3,#1
        0x1fff3d34:    2900        .)      CMP      r1,#0
        0x1fff3d36:    d012        ..      BEQ      0x1fff3d5e ; hal_gpio_retention_enable + 58
        0x1fff3d38:    2814        .(      CMP      r0,#0x14
        0x1fff3d3a:    d00b        ..      BEQ      0x1fff3d54 ; hal_gpio_retention_enable + 48
        0x1fff3d3c:    2815        .(      CMP      r0,#0x15
        0x1fff3d3e:    d009        ..      BEQ      0x1fff3d54 ; hal_gpio_retention_enable + 48
        0x1fff3d40:    2816        .(      CMP      r0,#0x16
        0x1fff3d42:    d007        ..      BEQ      0x1fff3d54 ; hal_gpio_retention_enable + 48
        0x1fff3d44:    57a0        .W      LDRSB    r0,[r4,r6]
        0x1fff3d46:    0080        ..      LSLS     r0,r0,#2
        0x1fff3d48:    1880        ..      ADDS     r0,r0,r2
        0x1fff3d4a:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3d4c:    786a        jx      LDRB     r2,[r5,#1]
        0x1fff3d4e:    4093        .@      LSLS     r3,r3,r2
        0x1fff3d50:    4319        .C      ORRS     r1,r1,r3
        0x1fff3d52:    e011        ..      B        0x1fff3d78 ; hal_gpio_retention_enable + 84
        0x1fff3d54:    6950        Pi      LDR      r0,[r2,#0x14]
        0x1fff3d56:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff3d58:    408b        .@      LSLS     r3,r3,r1
        0x1fff3d5a:    4318        .C      ORRS     r0,r0,r3
        0x1fff3d5c:    e012        ..      B        0x1fff3d84 ; hal_gpio_retention_enable + 96
        0x1fff3d5e:    2814        .(      CMP      r0,#0x14
        0x1fff3d60:    d00c        ..      BEQ      0x1fff3d7c ; hal_gpio_retention_enable + 88
        0x1fff3d62:    2815        .(      CMP      r0,#0x15
        0x1fff3d64:    d00a        ..      BEQ      0x1fff3d7c ; hal_gpio_retention_enable + 88
        0x1fff3d66:    2816        .(      CMP      r0,#0x16
        0x1fff3d68:    d008        ..      BEQ      0x1fff3d7c ; hal_gpio_retention_enable + 88
        0x1fff3d6a:    57a0        .W      LDRSB    r0,[r4,r6]
        0x1fff3d6c:    0080        ..      LSLS     r0,r0,#2
        0x1fff3d6e:    1880        ..      ADDS     r0,r0,r2
        0x1fff3d70:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3d72:    786a        jx      LDRB     r2,[r5,#1]
        0x1fff3d74:    4093        .@      LSLS     r3,r3,r2
        0x1fff3d76:    4399        .C      BICS     r1,r1,r3
        0x1fff3d78:    6081        .`      STR      r1,[r0,#8]
        0x1fff3d7a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3d7c:    6950        Pi      LDR      r0,[r2,#0x14]
        0x1fff3d7e:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff3d80:    408b        .@      LSLS     r3,r3,r1
        0x1fff3d82:    4398        .C      BICS     r0,r0,r3
        0x1fff3d84:    6150        Pa      STR      r0,[r2,#0x14]
        0x1fff3d86:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3d88:    4000f000    ...@    DCD    1073803264
        0x1fff3d8c:    1fff6ab0    .j..    DCD    536832688
    $t
    i.hal_gpio_sleep_handler
    hal_gpio_sleep_handler
        0x1fff3d90:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3d92:    2400        .$      MOVS     r4,#0
        0x1fff3d94:    4d12        .M      LDR      r5,[pc,#72] ; [0x1fff3de0] = 0x1fff76c8
        0x1fff3d96:    2601        .&      MOVS     r6,#1
        0x1fff3d98:    192f        /.      ADDS     r7,r5,r4
        0x1fff3d9a:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3d9c:    2801        .(      CMP      r0,#1
        0x1fff3d9e:    d108        ..      BNE      0x1fff3db2 ; hal_gpio_sleep_handler + 34
        0x1fff3da0:    4631        1F      MOV      r1,r6
        0x1fff3da2:    69a8        .i      LDR      r0,[r5,#0x18]
        0x1fff3da4:    40a1        .@      LSLS     r1,r1,r4
        0x1fff3da6:    4208        .B      TST      r0,r1
        0x1fff3da8:    d016        ..      BEQ      0x1fff3dd8 ; hal_gpio_sleep_handler + 72
        0x1fff3daa:    b2e0        ..      UXTB     r0,r4
        0x1fff3dac:    2101        .!      MOVS     r1,#1
        0x1fff3dae:    f7ffffb9    ....    BL       hal_gpio_retention_enable ; 0x1fff3d24
        0x1fff3db2:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3db4:    2802        .(      CMP      r0,#2
        0x1fff3db6:    d10f        ..      BNE      0x1fff3dd8 ; hal_gpio_sleep_handler + 72
        0x1fff3db8:    b2e0        ..      UXTB     r0,r4
        0x1fff3dba:    f7ffff9d    ....    BL       hal_gpio_read ; 0x1fff3cf8
        0x1fff3dbe:    4070        p@      EORS     r0,r0,r6
        0x1fff3dc0:    b2e2        ..      UXTB     r2,r4
        0x1fff3dc2:    4601        .F      MOV      r1,r0
        0x1fff3dc4:    4610        .F      MOV      r0,r2
        0x1fff3dc6:    f000f87b    ..{.    BL       hal_gpio_wakeup_set ; 0x1fff3ec0
        0x1fff3dca:    b2e0        ..      UXTB     r0,r4
        0x1fff3dcc:    f7ffff94    ....    BL       hal_gpio_read ; 0x1fff3cf8
        0x1fff3dd0:    210c        .!      MOVS     r1,#0xc
        0x1fff3dd2:    4361        aC      MULS     r1,r4,r1
        0x1fff3dd4:    1949        I.      ADDS     r1,r1,r5
        0x1fff3dd6:    7748        Hw      STRB     r0,[r1,#0x1d]
        0x1fff3dd8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3dda:    2c17        .,      CMP      r4,#0x17
        0x1fff3ddc:    dbdc        ..      BLT      0x1fff3d98 ; hal_gpio_sleep_handler + 8
        0x1fff3dde:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff3de0:    1fff76c8    .v..    DCD    536835784
    $t
    i.hal_gpio_wakeup_control
    hal_gpio_wakeup_control
        0x1fff3de4:    b510        ..      PUSH     {r4,lr}
        0x1fff3de6:    4c0f        .L      LDR      r4,[pc,#60] ; [0x1fff3e24] = 0x1fff6a54
        0x1fff3de8:    4a0d        .J      LDR      r2,[pc,#52] ; [0x1fff3e20] = 0x4000f080
        0x1fff3dea:    2301        .#      MOVS     r3,#1
        0x1fff3dec:    5c24        $\      LDRB     r4,[r4,r0]
        0x1fff3dee:    2814        .(      CMP      r0,#0x14
        0x1fff3df0:    d209        ..      BCS      0x1fff3e06 ; hal_gpio_wakeup_control + 34
        0x1fff3df2:    6a10        .j      LDR      r0,[r2,#0x20]
        0x1fff3df4:    2900        .)      CMP      r1,#0
        0x1fff3df6:    d002        ..      BEQ      0x1fff3dfe ; hal_gpio_wakeup_control + 26
        0x1fff3df8:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3dfa:    4318        .C      ORRS     r0,r0,r3
        0x1fff3dfc:    e001        ..      B        0x1fff3e02 ; hal_gpio_wakeup_control + 30
        0x1fff3dfe:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3e00:    4398        .C      BICS     r0,r0,r3
        0x1fff3e02:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff3e04:    bd10        ..      POP      {r4,pc}
        0x1fff3e06:    6a50        Pj      LDR      r0,[r2,#0x24]
        0x1fff3e08:    2900        .)      CMP      r1,#0
        0x1fff3e0a:    d003        ..      BEQ      0x1fff3e14 ; hal_gpio_wakeup_control + 48
        0x1fff3e0c:    3c20         <      SUBS     r4,r4,#0x20
        0x1fff3e0e:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3e10:    4318        .C      ORRS     r0,r0,r3
        0x1fff3e12:    e002        ..      B        0x1fff3e1a ; hal_gpio_wakeup_control + 54
        0x1fff3e14:    3c20         <      SUBS     r4,r4,#0x20
        0x1fff3e16:    40a3        .@      LSLS     r3,r3,r4
        0x1fff3e18:    4398        .C      BICS     r0,r0,r3
        0x1fff3e1a:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff3e1c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3e1e:    0000        ..      DCW    0
        0x1fff3e20:    4000f080    ...@    DCD    1073803392
        0x1fff3e24:    1fff6a54    Tj..    DCD    536832596
    $t
    i.hal_gpio_wakeup_handler
    hal_gpio_wakeup_handler
        0x1fff3e28:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3e2a:    2102        .!      MOVS     r1,#2
        0x1fff3e2c:    2010        .       MOVS     r0,#0x10
        0x1fff3e2e:    f7feff4b    ..K.    BL       __NVIC_SetPriority ; 0x1fff2cc8
        0x1fff3e32:    2010        .       MOVS     r0,#0x10
        0x1fff3e34:    f7feff1a    ....    BL       __NVIC_EnableIRQ ; 0x1fff2c6c
        0x1fff3e38:    4d20         M      LDR      r5,[pc,#128] ; [0x1fff3ebc] = 0x1fff76c8
        0x1fff3e3a:    2400        .$      MOVS     r4,#0
        0x1fff3e3c:    192e        ..      ADDS     r6,r5,r4
        0x1fff3e3e:    7870        px      LDRB     r0,[r6,#1]
        0x1fff3e40:    2800        .(      CMP      r0,#0
        0x1fff3e42:    d01a        ..      BEQ      0x1fff3e7a ; hal_gpio_wakeup_handler + 82
        0x1fff3e44:    2c02        .,      CMP      r4,#2
        0x1fff3e46:    d001        ..      BEQ      0x1fff3e4c ; hal_gpio_wakeup_handler + 36
        0x1fff3e48:    2c03        .,      CMP      r4,#3
        0x1fff3e4a:    d103        ..      BNE      0x1fff3e54 ; hal_gpio_wakeup_handler + 44
        0x1fff3e4c:    b2e0        ..      UXTB     r0,r4
        0x1fff3e4e:    2101        .!      MOVS     r1,#1
        0x1fff3e50:    f7fffee2    ....    BL       hal_gpio_pin2pin3_control ; 0x1fff3c18
        0x1fff3e54:    7870        px      LDRB     r0,[r6,#1]
        0x1fff3e56:    2801        .(      CMP      r0,#1
        0x1fff3e58:    d10f        ..      BNE      0x1fff3e7a ; hal_gpio_wakeup_handler + 82
        0x1fff3e5a:    2101        .!      MOVS     r1,#1
        0x1fff3e5c:    69a8        .i      LDR      r0,[r5,#0x18]
        0x1fff3e5e:    40a1        .@      LSLS     r1,r1,r4
        0x1fff3e60:    4208        .B      TST      r0,r1
        0x1fff3e62:    d00a        ..      BEQ      0x1fff3e7a ; hal_gpio_wakeup_handler + 82
        0x1fff3e64:    b2e0        ..      UXTB     r0,r4
        0x1fff3e66:    f7ffff47    ..G.    BL       hal_gpio_read ; 0x1fff3cf8
        0x1fff3e6a:    4601        .F      MOV      r1,r0
        0x1fff3e6c:    b2e0        ..      UXTB     r0,r4
        0x1fff3e6e:    f000f865    ..e.    BL       hal_gpio_write ; 0x1fff3f3c
        0x1fff3e72:    b2e0        ..      UXTB     r0,r4
        0x1fff3e74:    2100        .!      MOVS     r1,#0
        0x1fff3e76:    f7ffff55    ..U.    BL       hal_gpio_retention_enable ; 0x1fff3d24
        0x1fff3e7a:    200c        .       MOVS     r0,#0xc
        0x1fff3e7c:    4360        `C      MULS     r0,r4,r0
        0x1fff3e7e:    1940        @.      ADDS     r0,r0,r5
        0x1fff3e80:    7f00        ..      LDRB     r0,[r0,#0x1c]
        0x1fff3e82:    2800        .(      CMP      r0,#0
        0x1fff3e84:    d016        ..      BEQ      0x1fff3eb4 ; hal_gpio_wakeup_handler + 140
        0x1fff3e86:    b2e0        ..      UXTB     r0,r4
        0x1fff3e88:    f000f890    ....    BL       hal_gpioin_enable ; 0x1fff3fac
        0x1fff3e8c:    b2e6        ..      UXTB     r6,r4
        0x1fff3e8e:    2e16        ..      CMP      r6,#0x16
        0x1fff3e90:    d810        ..      BHI      0x1fff3eb4 ; hal_gpio_wakeup_handler + 140
        0x1fff3e92:    4630        0F      MOV      r0,r6
        0x1fff3e94:    f7ffff30    ..0.    BL       hal_gpio_read ; 0x1fff3cf8
        0x1fff3e98:    2800        .(      CMP      r0,#0
        0x1fff3e9a:    d001        ..      BEQ      0x1fff3ea0 ; hal_gpio_wakeup_handler + 120
        0x1fff3e9c:    2101        .!      MOVS     r1,#1
        0x1fff3e9e:    e000        ..      B        0x1fff3ea2 ; hal_gpio_wakeup_handler + 122
        0x1fff3ea0:    2100        .!      MOVS     r1,#0
        0x1fff3ea2:    220c        ."      MOVS     r2,#0xc
        0x1fff3ea4:    4372        rC      MULS     r2,r6,r2
        0x1fff3ea6:    1952        R.      ADDS     r2,r2,r5
        0x1fff3ea8:    7f52        R.      LDRB     r2,[r2,#0x1d]
        0x1fff3eaa:    4282        .B      CMP      r2,r0
        0x1fff3eac:    d002        ..      BEQ      0x1fff3eb4 ; hal_gpio_wakeup_handler + 140
        0x1fff3eae:    4630        0F      MOV      r0,r6
        0x1fff3eb0:    f000f8e6    ....    BL       hal_gpioin_event_pin ; 0x1fff4080
        0x1fff3eb4:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3eb6:    2c17        .,      CMP      r4,#0x17
        0x1fff3eb8:    dbc0        ..      BLT      0x1fff3e3c ; hal_gpio_wakeup_handler + 20
        0x1fff3eba:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff3ebc:    1fff76c8    .v..    DCD    536835784
    $t
    i.hal_gpio_wakeup_set
    hal_gpio_wakeup_set
        0x1fff3ec0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3ec2:    2816        .(      CMP      r0,#0x16
        0x1fff3ec4:    d82e        ..      BHI      0x1fff3f24 ; hal_gpio_wakeup_set + 100
        0x1fff3ec6:    0042        B.      LSLS     r2,r0,#1
        0x1fff3ec8:    1883        ..      ADDS     r3,r0,r2
        0x1fff3eca:    4a18        .J      LDR      r2,[pc,#96] ; [0x1fff3f2c] = 0x1fff6a6b
        0x1fff3ecc:    5cd5        .\      LDRB     r5,[r2,r3]
        0x1fff3ece:    189a        ..      ADDS     r2,r3,r2
        0x1fff3ed0:    7892        .x      LDRB     r2,[r2,#2]
        0x1fff3ed2:    1e52        R.      SUBS     r2,r2,#1
        0x1fff3ed4:    b2d4        ..      UXTB     r4,r2
        0x1fff3ed6:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff3f30] = 0x1fff76c8
        0x1fff3ed8:    1812        ..      ADDS     r2,r2,r0
        0x1fff3eda:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff3edc:    2a02        .*      CMP      r2,#2
        0x1fff3ede:    d121        !.      BNE      0x1fff3f24 ; hal_gpio_wakeup_set + 100
        0x1fff3ee0:    4e14        .N      LDR      r6,[pc,#80] ; [0x1fff3f34] = 0x40008000
        0x1fff3ee2:    6bb7        .k      LDR      r7,[r6,#0x38]
        0x1fff3ee4:    2201        ."      MOVS     r2,#1
        0x1fff3ee6:    4613        .F      MOV      r3,r2
        0x1fff3ee8:    4083        .@      LSLS     r3,r3,r0
        0x1fff3eea:    431f        .C      ORRS     r7,r7,r3
        0x1fff3eec:    63b7        .c      STR      r7,[r6,#0x38]
        0x1fff3eee:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff3f38] = 0x4000f000
        0x1fff3ef0:    2813        .(      CMP      r0,#0x13
        0x1fff3ef2:    d20e        ..      BCS      0x1fff3f12 ; hal_gpio_wakeup_set + 82
        0x1fff3ef4:    2900        .)      CMP      r1,#0
        0x1fff3ef6:    d006        ..      BEQ      0x1fff3f06 ; hal_gpio_wakeup_set + 70
        0x1fff3ef8:    00a9        ..      LSLS     r1,r5,#2
        0x1fff3efa:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3efc:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3efe:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3f00:    4393        .C      BICS     r3,r3,r2
        0x1fff3f02:    608b        .`      STR      r3,[r1,#8]
        0x1fff3f04:    e00b        ..      B        0x1fff3f1e ; hal_gpio_wakeup_set + 94
        0x1fff3f06:    00a9        ..      LSLS     r1,r5,#2
        0x1fff3f08:    18c9        ..      ADDS     r1,r1,r3
        0x1fff3f0a:    688b        .h      LDR      r3,[r1,#8]
        0x1fff3f0c:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3f0e:    4313        .C      ORRS     r3,r3,r2
        0x1fff3f10:    e7f7        ..      B        0x1fff3f02 ; hal_gpio_wakeup_set + 66
        0x1fff3f12:    2900        .)      CMP      r1,#0
        0x1fff3f14:    6959        Yi      LDR      r1,[r3,#0x14]
        0x1fff3f16:    d006        ..      BEQ      0x1fff3f26 ; hal_gpio_wakeup_set + 102
        0x1fff3f18:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3f1a:    4391        .C      BICS     r1,r1,r2
        0x1fff3f1c:    6159        Ya      STR      r1,[r3,#0x14]
        0x1fff3f1e:    2101        .!      MOVS     r1,#1
        0x1fff3f20:    f7ffff60    ..`.    BL       hal_gpio_wakeup_control ; 0x1fff3de4
        0x1fff3f24:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3f26:    40a2        .@      LSLS     r2,r2,r4
        0x1fff3f28:    4311        .C      ORRS     r1,r1,r2
        0x1fff3f2a:    e7f7        ..      B        0x1fff3f1c ; hal_gpio_wakeup_set + 92
    $d
        0x1fff3f2c:    1fff6a6b    kj..    DCD    536832619
        0x1fff3f30:    1fff76c8    .v..    DCD    536835784
        0x1fff3f34:    40008000    ...@    DCD    1073774592
        0x1fff3f38:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_gpio_write
    hal_gpio_write
        0x1fff3f3c:    b500        ..      PUSH     {lr}
        0x1fff3f3e:    2816        .(      CMP      r0,#0x16
        0x1fff3f40:    d80c        ..      BHI      0x1fff3f5c ; hal_gpio_write + 32
        0x1fff3f42:    2301        .#      MOVS     r3,#1
        0x1fff3f44:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff3f60] = 0x40008000
        0x1fff3f46:    4083        .@      LSLS     r3,r3,r0
        0x1fff3f48:    2900        .)      CMP      r1,#0
        0x1fff3f4a:    6811        .h      LDR      r1,[r2,#0]
        0x1fff3f4c:    d001        ..      BEQ      0x1fff3f52 ; hal_gpio_write + 22
        0x1fff3f4e:    4319        .C      ORRS     r1,r1,r3
        0x1fff3f50:    e000        ..      B        0x1fff3f54 ; hal_gpio_write + 24
        0x1fff3f52:    4399        .C      BICS     r1,r1,r3
        0x1fff3f54:    6011        .`      STR      r1,[r2,#0]
        0x1fff3f56:    2101        .!      MOVS     r1,#1
        0x1fff3f58:    f7fffe6c    ..l.    BL       hal_gpio_pin_init ; 0x1fff3c34
        0x1fff3f5c:    bd00        ..      POP      {pc}
    $d
        0x1fff3f5e:    0000        ..      DCW    0
        0x1fff3f60:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpioin_disable
    hal_gpioin_disable
        0x1fff3f64:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff3f66:    4604        .F      MOV      r4,r0
        0x1fff3f68:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff3fa4] = 0x1fff76e4
        0x1fff3f6a:    2c16        .,      CMP      r4,#0x16
        0x1fff3f6c:    d901        ..      BLS      0x1fff3f72 ; hal_gpioin_disable + 14
        0x1fff3f6e:    2005        .       MOVS     r0,#5
        0x1fff3f70:    bd30        0.      POP      {r4,r5,pc}
        0x1fff3f72:    210c        .!      MOVS     r1,#0xc
        0x1fff3f74:    2500        .%      MOVS     r5,#0
        0x1fff3f76:    4361        aC      MULS     r1,r4,r1
        0x1fff3f78:    5445        ET      STRB     r5,[r0,r1]
        0x1fff3f7a:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3fa4] = 0x1fff76e4
        0x1fff3f7c:    4629        )F      MOV      r1,r5
        0x1fff3f7e:    381c        .8      SUBS     r0,r0,#0x1c
        0x1fff3f80:    1900        ..      ADDS     r0,r0,r4
        0x1fff3f82:    7045        Ep      STRB     r5,[r0,#1]
        0x1fff3f84:    4620         F      MOV      r0,r4
        0x1fff3f86:    f7fffe55    ..U.    BL       hal_gpio_pin_init ; 0x1fff3c34
        0x1fff3f8a:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff3fa8] = 0x40008000
        0x1fff3f8c:    6b4a        Jk      LDR      r2,[r1,#0x34]
        0x1fff3f8e:    2001        .       MOVS     r0,#1
        0x1fff3f90:    40a0        .@      LSLS     r0,r0,r4
        0x1fff3f92:    4382        .C      BICS     r2,r2,r0
        0x1fff3f94:    4302        .C      ORRS     r2,r2,r0
        0x1fff3f96:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff3f98:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff3f9a:    4382        .C      BICS     r2,r2,r0
        0x1fff3f9c:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff3f9e:    4628        (F      MOV      r0,r5
        0x1fff3fa0:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff3fa2:    0000        ..      DCW    0
        0x1fff3fa4:    1fff76e4    .v..    DCD    536835812
        0x1fff3fa8:    40008000    ...@    DCD    1073774592
    $t
    i.hal_gpioin_enable
    hal_gpioin_enable
        0x1fff3fac:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3fae:    4604        .F      MOV      r4,r0
        0x1fff3fb0:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff4014] = 0x1fff76e4
        0x1fff3fb2:    2600        .&      MOVS     r6,#0
        0x1fff3fb4:    2c16        .,      CMP      r4,#0x16
        0x1fff3fb6:    d901        ..      BLS      0x1fff3fbc ; hal_gpioin_enable + 16
        0x1fff3fb8:    2005        .       MOVS     r0,#5
        0x1fff3fba:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3fbc:    4621        !F      MOV      r1,r4
        0x1fff3fbe:    220c        ."      MOVS     r2,#0xc
        0x1fff3fc0:    4351        QC      MULS     r1,r2,r1
        0x1fff3fc2:    180d        ..      ADDS     r5,r1,r0
        0x1fff3fc4:    686a        jh      LDR      r2,[r5,#4]
        0x1fff3fc6:    2a00        .*      CMP      r2,#0
        0x1fff3fc8:    d102        ..      BNE      0x1fff3fd0 ; hal_gpioin_enable + 36
        0x1fff3fca:    68aa        .h      LDR      r2,[r5,#8]
        0x1fff3fcc:    2a00        .*      CMP      r2,#0
        0x1fff3fce:    d01c        ..      BEQ      0x1fff400a ; hal_gpioin_enable + 94
        0x1fff3fd0:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff4014] = 0x1fff76e4
        0x1fff3fd2:    2202        ."      MOVS     r2,#2
        0x1fff3fd4:    3b1c        .;      SUBS     r3,r3,#0x1c
        0x1fff3fd6:    191b        ..      ADDS     r3,r3,r4
        0x1fff3fd8:    705a        Zp      STRB     r2,[r3,#1]
        0x1fff3fda:    2201        ."      MOVS     r2,#1
        0x1fff3fdc:    5442        BT      STRB     r2,[r0,r1]
        0x1fff3fde:    2100        .!      MOVS     r1,#0
        0x1fff3fe0:    4620         F      MOV      r0,r4
        0x1fff3fe2:    f7fffe27    ..'.    BL       hal_gpio_pin_init ; 0x1fff3c34
        0x1fff3fe6:    6868        hh      LDR      r0,[r5,#4]
        0x1fff3fe8:    2800        .(      CMP      r0,#0
        0x1fff3fea:    d008        ..      BEQ      0x1fff3ffe ; hal_gpioin_enable + 82
        0x1fff3fec:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff3fee:    2800        .(      CMP      r0,#0
        0x1fff3ff0:    d00d        ..      BEQ      0x1fff400e ; hal_gpioin_enable + 98
        0x1fff3ff2:    4620         F      MOV      r0,r4
        0x1fff3ff4:    f7fffe80    ....    BL       hal_gpio_read ; 0x1fff3cf8
        0x1fff3ff8:    2800        .(      CMP      r0,#0
        0x1fff3ffa:    d008        ..      BEQ      0x1fff400e ; hal_gpioin_enable + 98
        0x1fff3ffc:    2600        .&      MOVS     r6,#0
        0x1fff3ffe:    4631        1F      MOV      r1,r6
        0x1fff4000:    4620         F      MOV      r0,r4
        0x1fff4002:    f7fffde9    ....    BL       hal_gpio_interrupt_enable ; 0x1fff3bd8
        0x1fff4006:    2000        .       MOVS     r0,#0
        0x1fff4008:    bd70        p.      POP      {r4-r6,pc}
        0x1fff400a:    2012        .       MOVS     r0,#0x12
        0x1fff400c:    bd70        p.      POP      {r4-r6,pc}
        0x1fff400e:    2601        .&      MOVS     r6,#1
        0x1fff4010:    e7f5        ..      B        0x1fff3ffe ; hal_gpioin_enable + 82
    $d
        0x1fff4012:    0000        ..      DCW    0
        0x1fff4014:    1fff76e4    .v..    DCD    536835812
    $t
    i.hal_gpioin_event
    hal_gpioin_event
        0x1fff4018:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff401a:    4e18        .N      LDR      r6,[pc,#96] ; [0x1fff407c] = 0x1fff76e4
        0x1fff401c:    2400        .$      MOVS     r4,#0
        0x1fff401e:    b081        ..      SUB      sp,sp,#4
        0x1fff4020:    4607        .F      MOV      r7,r0
        0x1fff4022:    2501        .%      MOVS     r5,#1
        0x1fff4024:    4628        (F      MOV      r0,r5
        0x1fff4026:    40a0        .@      LSLS     r0,r0,r4
        0x1fff4028:    4238        8B      TST      r0,r7
        0x1fff402a:    d023        #.      BEQ      0x1fff4074 ; hal_gpioin_event + 92
        0x1fff402c:    9902        ..      LDR      r1,[sp,#8]
        0x1fff402e:    4008        .@      ANDS     r0,r0,r1
        0x1fff4030:    d000        ..      BEQ      0x1fff4034 ; hal_gpioin_event + 28
        0x1fff4032:    2001        .       MOVS     r0,#1
        0x1fff4034:    9000        ..      STR      r0,[sp,#0]
        0x1fff4036:    b2e0        ..      UXTB     r0,r4
        0x1fff4038:    9900        ..      LDR      r1,[sp,#0]
        0x1fff403a:    f000f821    ..!.    BL       hal_gpioin_event_pin ; 0x1fff4080
        0x1fff403e:    200c        .       MOVS     r0,#0xc
        0x1fff4040:    4360        `C      MULS     r0,r4,r0
        0x1fff4042:    1980        ..      ADDS     r0,r0,r6
        0x1fff4044:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff4046:    6880        .h      LDR      r0,[r0,#8]
        0x1fff4048:    2900        .)      CMP      r1,#0
        0x1fff404a:    d00e        ..      BEQ      0x1fff406a ; hal_gpioin_event + 82
        0x1fff404c:    2800        .(      CMP      r0,#0
        0x1fff404e:    d007        ..      BEQ      0x1fff4060 ; hal_gpioin_event + 72
        0x1fff4050:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4052:    2800        .(      CMP      r0,#0
        0x1fff4054:    d002        ..      BEQ      0x1fff405c ; hal_gpioin_event + 68
        0x1fff4056:    2100        .!      MOVS     r1,#0
        0x1fff4058:    b2e0        ..      UXTB     r0,r4
        0x1fff405a:    e003        ..      B        0x1fff4064 ; hal_gpioin_event + 76
        0x1fff405c:    2101        .!      MOVS     r1,#1
        0x1fff405e:    e7fb        ..      B        0x1fff4058 ; hal_gpioin_event + 64
        0x1fff4060:    b2e0        ..      UXTB     r0,r4
        0x1fff4062:    2101        .!      MOVS     r1,#1
        0x1fff4064:    f7fffdb8    ....    BL       hal_gpio_interrupt_enable ; 0x1fff3bd8
        0x1fff4068:    e004        ..      B        0x1fff4074 ; hal_gpioin_event + 92
        0x1fff406a:    2800        .(      CMP      r0,#0
        0x1fff406c:    d002        ..      BEQ      0x1fff4074 ; hal_gpioin_event + 92
        0x1fff406e:    b2e0        ..      UXTB     r0,r4
        0x1fff4070:    2100        .!      MOVS     r1,#0
        0x1fff4072:    e7f7        ..      B        0x1fff4064 ; hal_gpioin_event + 76
        0x1fff4074:    1c64        d.      ADDS     r4,r4,#1
        0x1fff4076:    2c17        .,      CMP      r4,#0x17
        0x1fff4078:    dbd4        ..      BLT      0x1fff4024 ; hal_gpioin_event + 12
        0x1fff407a:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff407c:    1fff76e4    .v..    DCD    536835812
    $t
    i.hal_gpioin_event_pin
    hal_gpioin_event_pin
        0x1fff4080:    4a08        .J      LDR      r2,[pc,#32] ; [0x1fff40a4] = 0x1fff76e4
        0x1fff4082:    2816        .(      CMP      r0,#0x16
        0x1fff4084:    d80d        ..      BHI      0x1fff40a2 ; hal_gpioin_event_pin + 34
        0x1fff4086:    230c        .#      MOVS     r3,#0xc
        0x1fff4088:    4343        CC      MULS     r3,r0,r3
        0x1fff408a:    189b        ..      ADDS     r3,r3,r2
        0x1fff408c:    685a        Zh      LDR      r2,[r3,#4]
        0x1fff408e:    2a00        .*      CMP      r2,#0
        0x1fff4090:    d001        ..      BEQ      0x1fff4096 ; hal_gpioin_event_pin + 22
        0x1fff4092:    2901        .)      CMP      r1,#1
        0x1fff4094:    d004        ..      BEQ      0x1fff40a0 ; hal_gpioin_event_pin + 32
        0x1fff4096:    689a        .h      LDR      r2,[r3,#8]
        0x1fff4098:    2a00        .*      CMP      r2,#0
        0x1fff409a:    d002        ..      BEQ      0x1fff40a2 ; hal_gpioin_event_pin + 34
        0x1fff409c:    2900        .)      CMP      r1,#0
        0x1fff409e:    d100        ..      BNE      0x1fff40a2 ; hal_gpioin_event_pin + 34
        0x1fff40a0:    4710        .G      BX       r2
        0x1fff40a2:    4770        pG      BX       lr
    $d
        0x1fff40a4:    1fff76e4    .v..    DCD    536835812
    $t
    i.hal_low_power_io_init
    hal_low_power_io_init
        0x1fff40a8:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff40aa:    b08d        ..      SUB      sp,sp,#0x34
        0x1fff40ac:    2230        0"      MOVS     r2,#0x30
        0x1fff40ae:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff410c] = 0x1fff6a18
        0x1fff40b0:    4668        hF      MOV      r0,sp
        0x1fff40b2:    f7fdfd75    ..u.    BL       $Ven$TT$L$$__aeabi_memcpy4 ; 0x1fff1ba0
        0x1fff40b6:    2400        .$      MOVS     r4,#0
        0x1fff40b8:    466d        mF      MOV      r5,sp
        0x1fff40ba:    0060        `.      LSLS     r0,r4,#1
        0x1fff40bc:    1941        A.      ADDS     r1,r0,r5
        0x1fff40be:    7849        Ix      LDRB     r1,[r1,#1]
        0x1fff40c0:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff40c2:    f7fffdef    ....    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff40c6:    1c64        d.      ADDS     r4,r4,#1
        0x1fff40c8:    b2e4        ..      UXTB     r4,r4
        0x1fff40ca:    2c17        .,      CMP      r4,#0x17
        0x1fff40cc:    d3f5        ..      BCC      0x1fff40ba ; hal_low_power_io_init + 18
        0x1fff40ce:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff4110] = 0x4000f000
        0x1fff40d0:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff40d2:    00c2        ..      LSLS     r2,r0,#3
        0x1fff40d4:    4391        .C      BICS     r1,r1,r2
        0x1fff40d6:    2205        ."      MOVS     r2,#5
        0x1fff40d8:    0412        ..      LSLS     r2,r2,#16
        0x1fff40da:    1889        ..      ADDS     r1,r1,r2
        0x1fff40dc:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff40de:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff40e0:    2201        ."      MOVS     r2,#1
        0x1fff40e2:    0652        R.      LSLS     r2,r2,#25
        0x1fff40e4:    4311        .C      ORRS     r1,r1,r2
        0x1fff40e6:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff40e8:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff40ea:    2203        ."      MOVS     r2,#3
        0x1fff40ec:    0552        R.      LSLS     r2,r2,#21
        0x1fff40ee:    4391        .C      BICS     r1,r1,r2
        0x1fff40f0:    2201        ."      MOVS     r2,#1
        0x1fff40f2:    0552        R.      LSLS     r2,r2,#21
        0x1fff40f4:    1889        ..      ADDS     r1,r1,r2
        0x1fff40f6:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff40f8:    2003        .       MOVS     r0,#3
        0x1fff40fa:    f000f815    ....    BL       hal_pwrmgr_RAM_retention ; 0x1fff4128
        0x1fff40fe:    f000f82f    ../.    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff4160
        0x1fff4102:    f000f807    ....    BL       hal_pwrmgr_LowCurrentLdo_enable ; 0x1fff4114
        0x1fff4106:    b00d        ..      ADD      sp,sp,#0x34
        0x1fff4108:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff410a:    0000        ..      DCW    0
        0x1fff410c:    1fff6a18    .j..    DCD    536832536
        0x1fff4110:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_LowCurrentLdo_enable
    hal_pwrmgr_LowCurrentLdo_enable
        0x1fff4114:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff4124] = 0x4000f000
        0x1fff4116:    6941        Ai      LDR      r1,[r0,#0x14]
        0x1fff4118:    2201        ."      MOVS     r2,#1
        0x1fff411a:    0692        ..      LSLS     r2,r2,#26
        0x1fff411c:    4391        .C      BICS     r1,r1,r2
        0x1fff411e:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff4120:    200f        .       MOVS     r0,#0xf
        0x1fff4122:    4770        pG      BX       lr
    $d
        0x1fff4124:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_RAM_retention
    hal_pwrmgr_RAM_retention
        0x1fff4128:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff4148] = 0x1fff6b99
        0x1fff412a:    0943        C.      LSRS     r3,r0,#5
        0x1fff412c:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff412e:    08d2        ..      LSRS     r2,r2,#3
        0x1fff4130:    00d2        ..      LSLS     r2,r2,#3
        0x1fff4132:    2b00        .+      CMP      r3,#0
        0x1fff4134:    d002        ..      BEQ      0x1fff413c ; hal_pwrmgr_RAM_retention + 20
        0x1fff4136:    700a        .p      STRB     r2,[r1,#0]
        0x1fff4138:    2006        .       MOVS     r0,#6
        0x1fff413a:    4770        pG      BX       lr
        0x1fff413c:    0740        @.      LSLS     r0,r0,#29
        0x1fff413e:    0f40        @.      LSRS     r0,r0,#29
        0x1fff4140:    4302        .C      ORRS     r2,r2,r0
        0x1fff4142:    700a        .p      STRB     r2,[r1,#0]
        0x1fff4144:    2000        .       MOVS     r0,#0
        0x1fff4146:    4770        pG      BX       lr
    $d
        0x1fff4148:    1fff6b99    .k..    DCD    536832921
    $t
    i.hal_pwrmgr_RAM_retention_clr
    hal_pwrmgr_RAM_retention_clr
        0x1fff414c:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff415c] = 0x4000f000
        0x1fff414e:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff4150:    221f        ."      MOVS     r2,#0x1f
        0x1fff4152:    0452        R.      LSLS     r2,r2,#17
        0x1fff4154:    4391        .C      BICS     r1,r1,r2
        0x1fff4156:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4158:    2000        .       MOVS     r0,#0
        0x1fff415a:    4770        pG      BX       lr
    $d
        0x1fff415c:    4000f000    ...@    DCD    1073803264
    $t
    i.hal_pwrmgr_RAM_retention_set
    hal_pwrmgr_RAM_retention_set
        0x1fff4160:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff417c] = 0x4000f000
        0x1fff4162:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff4164:    221f        ."      MOVS     r2,#0x1f
        0x1fff4166:    0452        R.      LSLS     r2,r2,#17
        0x1fff4168:    4391        .C      BICS     r1,r1,r2
        0x1fff416a:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff4180] = 0x1fff6b99
        0x1fff416c:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff416e:    0752        R.      LSLS     r2,r2,#29
        0x1fff4170:    0b12        ..      LSRS     r2,r2,#12
        0x1fff4172:    4311        .C      ORRS     r1,r1,r2
        0x1fff4174:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4176:    2000        .       MOVS     r0,#0
        0x1fff4178:    4770        pG      BX       lr
    $d
        0x1fff417a:    0000        ..      DCW    0
        0x1fff417c:    4000f000    ...@    DCD    1073803264
        0x1fff4180:    1fff6b99    .k..    DCD    536832921
    $t
    i.hal_pwrmgr_init
    hal_pwrmgr_init
        0x1fff4184:    b510        ..      PUSH     {r4,lr}
        0x1fff4186:    2178        x!      MOVS     r1,#0x78
        0x1fff4188:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff41ac] = 0x1fff77f8
        0x1fff418a:    f7fdfd03    ....    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1b94
        0x1fff418e:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff41b0] = 0x1fff6b98
        0x1fff4190:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4192:    2801        .(      CMP      r0,#1
        0x1fff4194:    d003        ..      BEQ      0x1fff419e ; hal_pwrmgr_init + 26
        0x1fff4196:    2802        .(      CMP      r0,#2
        0x1fff4198:    d004        ..      BEQ      0x1fff41a4 ; hal_pwrmgr_init + 32
        0x1fff419a:    2804        .(      CMP      r0,#4
        0x1fff419c:    d104        ..      BNE      0x1fff41a8 ; hal_pwrmgr_init + 36
        0x1fff419e:    f7fdfd05    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bac
        0x1fff41a2:    e001        ..      B        0x1fff41a8 ; hal_pwrmgr_init + 36
        0x1fff41a4:    f7fdfbe2    ....    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff41a8:    2000        .       MOVS     r0,#0
        0x1fff41aa:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff41ac:    1fff77f8    .w..    DCD    536836088
        0x1fff41b0:    1fff6b98    .k..    DCD    536832920
    $t
    i.hal_pwrmgr_lock
    hal_pwrmgr_lock
        0x1fff41b4:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff41b6:    4605        .F      MOV      r5,r0
        0x1fff41b8:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff4204] = 0x1fff6b98
        0x1fff41ba:    2412        .$      MOVS     r4,#0x12
        0x1fff41bc:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff41be:    2801        .(      CMP      r0,#1
        0x1fff41c0:    d015        ..      BEQ      0x1fff41ee ; hal_pwrmgr_lock + 58
        0x1fff41c2:    2804        .(      CMP      r0,#4
        0x1fff41c4:    d013        ..      BEQ      0x1fff41ee ; hal_pwrmgr_lock + 58
        0x1fff41c6:    f7fdfb9b    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff41ca:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff4208] = 0x1fff77f8
        0x1fff41cc:    2100        .!      MOVS     r1,#0
        0x1fff41ce:    220c        ."      MOVS     r2,#0xc
        0x1fff41d0:    434a        JC      MULS     r2,r1,r2
        0x1fff41d2:    5c82        .\      LDRB     r2,[r0,r2]
        0x1fff41d4:    2a00        .*      CMP      r2,#0
        0x1fff41d6:    d011        ..      BEQ      0x1fff41fc ; hal_pwrmgr_lock + 72
        0x1fff41d8:    42aa        .B      CMP      r2,r5
        0x1fff41da:    d10c        ..      BNE      0x1fff41f6 ; hal_pwrmgr_lock + 66
        0x1fff41dc:    230c        .#      MOVS     r3,#0xc
        0x1fff41de:    4359        YC      MULS     r1,r3,r1
        0x1fff41e0:    2201        ."      MOVS     r2,#1
        0x1fff41e2:    1808        ..      ADDS     r0,r1,r0
        0x1fff41e4:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff41e6:    f7fdfce1    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bac
        0x1fff41ea:    2400        .$      MOVS     r4,#0
        0x1fff41ec:    e006        ..      B        0x1fff41fc ; hal_pwrmgr_lock + 72
        0x1fff41ee:    f7fdfcdd    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bac
        0x1fff41f2:    2000        .       MOVS     r0,#0
        0x1fff41f4:    bd70        p.      POP      {r4-r6,pc}
        0x1fff41f6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff41f8:    290a        .)      CMP      r1,#0xa
        0x1fff41fa:    dbe8        ..      BLT      0x1fff41ce ; hal_pwrmgr_lock + 26
        0x1fff41fc:    f7fdfb8c    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4200:    4620         F      MOV      r0,r4
        0x1fff4202:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4204:    1fff6b98    .k..    DCD    536832920
        0x1fff4208:    1fff77f8    .w..    DCD    536836088
    $t
    i.hal_pwrmgr_register
    hal_pwrmgr_register
        0x1fff420c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff420e:    4c12        .L      LDR      r4,[pc,#72] ; [0x1fff4258] = 0x1fff77f8
        0x1fff4210:    2300        .#      MOVS     r3,#0
        0x1fff4212:    250c        .%      MOVS     r5,#0xc
        0x1fff4214:    435d        ]C      MULS     r5,r3,r5
        0x1fff4216:    5d65        e]      LDRB     r5,[r4,r5]
        0x1fff4218:    4285        .B      CMP      r5,r0
        0x1fff421a:    d101        ..      BNE      0x1fff4220 ; hal_pwrmgr_register + 20
        0x1fff421c:    2007        .       MOVS     r0,#7
        0x1fff421e:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4220:    2d00        .-      CMP      r5,#0
        0x1fff4222:    d004        ..      BEQ      0x1fff422e ; hal_pwrmgr_register + 34
        0x1fff4224:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff4226:    2b0a        .+      CMP      r3,#0xa
        0x1fff4228:    dbf3        ..      BLT      0x1fff4212 ; hal_pwrmgr_register + 6
        0x1fff422a:    2003        .       MOVS     r0,#3
        0x1fff422c:    bd70        p.      POP      {r4-r6,pc}
        0x1fff422e:    250c        .%      MOVS     r5,#0xc
        0x1fff4230:    436b        kC      MULS     r3,r5,r3
        0x1fff4232:    191b        ..      ADDS     r3,r3,r4
        0x1fff4234:    4c09        .L      LDR      r4,[pc,#36] ; [0x1fff425c] = 0x1fff6b99
        0x1fff4236:    7825        %x      LDRB     r5,[r4,#0]
        0x1fff4238:    076e        n.      LSLS     r6,r5,#29
        0x1fff423a:    08ed        ..      LSRS     r5,r5,#3
        0x1fff423c:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff423e:    0f76        v.      LSRS     r6,r6,#29
        0x1fff4240:    00ed        ..      LSLS     r5,r5,#3
        0x1fff4242:    432e        .C      ORRS     r6,r6,r5
        0x1fff4244:    7026        &p      STRB     r6,[r4,#0]
        0x1fff4246:    2b00        .+      CMP      r3,#0
        0x1fff4248:    d0ef        ..      BEQ      0x1fff422a ; hal_pwrmgr_register + 30
        0x1fff424a:    2400        .$      MOVS     r4,#0
        0x1fff424c:    705c        \p      STRB     r4,[r3,#1]
        0x1fff424e:    7018        .p      STRB     r0,[r3,#0]
        0x1fff4250:    609a        .`      STR      r2,[r3,#8]
        0x1fff4252:    4620         F      MOV      r0,r4
        0x1fff4254:    6059        Y`      STR      r1,[r3,#4]
        0x1fff4256:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4258:    1fff77f8    .w..    DCD    536836088
        0x1fff425c:    1fff6b99    .k..    DCD    536832921
    $t
    i.hal_pwrmgr_sleep_process
    hal_pwrmgr_sleep_process
    __tagsym$$used
        0x1fff4260:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4262:    f7ffff7d    ..}.    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff4160
        0x1fff4266:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff4294] = 0x1fff6b99
        0x1fff4268:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff426a:    08c4        ..      LSRS     r4,r0,#3
        0x1fff426c:    1e64        d.      SUBS     r4,r4,#1
        0x1fff426e:    d40d        ..      BMI      0x1fff428c ; hal_pwrmgr_sleep_process + 44
        0x1fff4270:    4d09        .M      LDR      r5,[pc,#36] ; [0x1fff4298] = 0x1fff77f8
        0x1fff4272:    4620         F      MOV      r0,r4
        0x1fff4274:    210c        .!      MOVS     r1,#0xc
        0x1fff4276:    4348        HC      MULS     r0,r1,r0
        0x1fff4278:    5c29        )\      LDRB     r1,[r5,r0]
        0x1fff427a:    2900        .)      CMP      r1,#0
        0x1fff427c:    d008        ..      BEQ      0x1fff4290 ; hal_pwrmgr_sleep_process + 48
        0x1fff427e:    1940        @.      ADDS     r0,r0,r5
        0x1fff4280:    6840        @h      LDR      r0,[r0,#4]
        0x1fff4282:    2800        .(      CMP      r0,#0
        0x1fff4284:    d000        ..      BEQ      0x1fff4288 ; hal_pwrmgr_sleep_process + 40
        0x1fff4286:    4780        .G      BLX      r0
        0x1fff4288:    1e64        d.      SUBS     r4,r4,#1
        0x1fff428a:    d5f2        ..      BPL      0x1fff4272 ; hal_pwrmgr_sleep_process + 18
        0x1fff428c:    2000        .       MOVS     r0,#0
        0x1fff428e:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4290:    2012        .       MOVS     r0,#0x12
        0x1fff4292:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4294:    1fff6b99    .k..    DCD    536832921
        0x1fff4298:    1fff77f8    .w..    DCD    536836088
    $t
    i.hal_pwrmgr_unlock
    hal_pwrmgr_unlock
        0x1fff429c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff429e:    4605        .F      MOV      r5,r0
        0x1fff42a0:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff42fc] = 0x1fff6b98
        0x1fff42a2:    2400        .$      MOVS     r4,#0
        0x1fff42a4:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff42a6:    2801        .(      CMP      r0,#1
        0x1fff42a8:    d011        ..      BEQ      0x1fff42ce ; hal_pwrmgr_unlock + 50
        0x1fff42aa:    2804        .(      CMP      r0,#4
        0x1fff42ac:    d00f        ..      BEQ      0x1fff42ce ; hal_pwrmgr_unlock + 50
        0x1fff42ae:    f7fdfb27    ..'.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff42b2:    2100        .!      MOVS     r1,#0
        0x1fff42b4:    4a12        .J      LDR      r2,[pc,#72] ; [0x1fff4300] = 0x1fff77f8
        0x1fff42b6:    460b        .F      MOV      r3,r1
        0x1fff42b8:    4608        .F      MOV      r0,r1
        0x1fff42ba:    260c        .&      MOVS     r6,#0xc
        0x1fff42bc:    4370        pC      MULS     r0,r6,r0
        0x1fff42be:    5c16        .\      LDRB     r6,[r2,r0]
        0x1fff42c0:    2e00        ..      CMP      r6,#0
        0x1fff42c2:    d00f        ..      BEQ      0x1fff42e4 ; hal_pwrmgr_unlock + 72
        0x1fff42c4:    42ae        .B      CMP      r6,r5
        0x1fff42c6:    d105        ..      BNE      0x1fff42d4 ; hal_pwrmgr_unlock + 56
        0x1fff42c8:    1880        ..      ADDS     r0,r0,r2
        0x1fff42ca:    7043        Cp      STRB     r3,[r0,#1]
        0x1fff42cc:    e007        ..      B        0x1fff42de ; hal_pwrmgr_unlock + 66
        0x1fff42ce:    f7fdfc6d    ..m.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bac
        0x1fff42d2:    e00d        ..      B        0x1fff42f0 ; hal_pwrmgr_unlock + 84
        0x1fff42d4:    1880        ..      ADDS     r0,r0,r2
        0x1fff42d6:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff42d8:    2800        .(      CMP      r0,#0
        0x1fff42da:    d000        ..      BEQ      0x1fff42de ; hal_pwrmgr_unlock + 66
        0x1fff42dc:    1c64        d.      ADDS     r4,r4,#1
        0x1fff42de:    1c49        I.      ADDS     r1,r1,#1
        0x1fff42e0:    290a        .)      CMP      r1,#0xa
        0x1fff42e2:    dbe9        ..      BLT      0x1fff42b8 ; hal_pwrmgr_unlock + 28
        0x1fff42e4:    2c00        .,      CMP      r4,#0
        0x1fff42e6:    d005        ..      BEQ      0x1fff42f4 ; hal_pwrmgr_unlock + 88
        0x1fff42e8:    f7fdfc60    ..`.    BL       $Ven$TT$L$$disableSleep ; 0x1fff1bac
        0x1fff42ec:    f7fdfb14    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff42f0:    2000        .       MOVS     r0,#0
        0x1fff42f2:    bd70        p.      POP      {r4-r6,pc}
        0x1fff42f4:    f7fdfb3a    ..:.    BL       $Ven$TT$L$$enableSleep ; 0x1fff196c
        0x1fff42f8:    e7f8        ..      B        0x1fff42ec ; hal_pwrmgr_unlock + 80
    $d
        0x1fff42fa:    0000        ..      DCW    0
        0x1fff42fc:    1fff6b98    .k..    DCD    536832920
        0x1fff4300:    1fff77f8    .w..    DCD    536836088
    $t
    i.hal_pwrmgr_wakeup_process
    hal_pwrmgr_wakeup_process
    __tagsym$$used
        0x1fff4304:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4306:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff4378] = 0x1fff6b98
        0x1fff4308:    2101        .!      MOVS     r1,#1
        0x1fff430a:    0789        ..      LSLS     r1,r1,#30
        0x1fff430c:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff430e:    608a        .`      STR      r2,[r1,#8]
        0x1fff4310:    6882        .h      LDR      r2,[r0,#8]
        0x1fff4312:    2301        .#      MOVS     r3,#1
        0x1fff4314:    431a        .C      ORRS     r2,r2,r3
        0x1fff4316:    614a        Ja      STR      r2,[r1,#0x14]
        0x1fff4318:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff437c] = 0x4000f080
        0x1fff431a:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff431c:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff431e:    6b49        Ik      LDR      r1,[r1,#0x34]
        0x1fff4320:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff4322:    2100        .!      MOVS     r1,#0
        0x1fff4324:    2004        .       MOVS     r0,#4
        0x1fff4326:    f7fefcf1    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff432a:    2101        .!      MOVS     r1,#1
        0x1fff432c:    2014        .       MOVS     r0,#0x14
        0x1fff432e:    f7fefced    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff4332:    2101        .!      MOVS     r1,#1
        0x1fff4334:    2015        .       MOVS     r0,#0x15
        0x1fff4336:    f7fefce9    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff433a:    2101        .!      MOVS     r1,#1
        0x1fff433c:    2017        .       MOVS     r0,#0x17
        0x1fff433e:    f7fefce5    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff4342:    f001fa0d    ....    BL       peripheral_interrupt_restore_default ; 0x1fff5760
        0x1fff4346:    4e0c        .N      LDR      r6,[pc,#48] ; [0x1fff4378] = 0x1fff6b98
        0x1fff4348:    2400        .$      MOVS     r4,#0
        0x1fff434a:    4d0d        .M      LDR      r5,[pc,#52] ; [0x1fff4380] = 0x1fff77f8
        0x1fff434c:    1c76        v.      ADDS     r6,r6,#1
        0x1fff434e:    e00b        ..      B        0x1fff4368 ; hal_pwrmgr_wakeup_process + 100
        0x1fff4350:    4620         F      MOV      r0,r4
        0x1fff4352:    210c        .!      MOVS     r1,#0xc
        0x1fff4354:    4348        HC      MULS     r0,r1,r0
        0x1fff4356:    5c29        )\      LDRB     r1,[r5,r0]
        0x1fff4358:    2900        .)      CMP      r1,#0
        0x1fff435a:    d00b        ..      BEQ      0x1fff4374 ; hal_pwrmgr_wakeup_process + 112
        0x1fff435c:    1940        @.      ADDS     r0,r0,r5
        0x1fff435e:    6880        .h      LDR      r0,[r0,#8]
        0x1fff4360:    2800        .(      CMP      r0,#0
        0x1fff4362:    d000        ..      BEQ      0x1fff4366 ; hal_pwrmgr_wakeup_process + 98
        0x1fff4364:    4780        .G      BLX      r0
        0x1fff4366:    1c64        d.      ADDS     r4,r4,#1
        0x1fff4368:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff436a:    08c0        ..      LSRS     r0,r0,#3
        0x1fff436c:    42a0        .B      CMP      r0,r4
        0x1fff436e:    dcef        ..      BGT      0x1fff4350 ; hal_pwrmgr_wakeup_process + 76
        0x1fff4370:    2000        .       MOVS     r0,#0
        0x1fff4372:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4374:    2012        .       MOVS     r0,#0x12
        0x1fff4376:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4378:    1fff6b98    .k..    DCD    536832920
        0x1fff437c:    4000f080    ...@    DCD    1073803392
        0x1fff4380:    1fff77f8    .w..    DCD    536836088
    $t
    i.hal_rc32k_clk_tracking_init
    hal_rc32k_clk_tracking_init
        0x1fff4384:    b510        ..      PUSH     {r4,lr}
        0x1fff4386:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff43a0] = 0x1fff0a14
        0x1fff4388:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff439c] = 0x1e84
        0x1fff438a:    6008        .`      STR      r0,[r1,#0]
        0x1fff438c:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff43a4] = 0x1fff0a38
        0x1fff438e:    6008        .`      STR      r0,[r1,#0]
        0x1fff4390:    f7fefed0    ....    BL       aon_register_init ; 0x1fff3134
        0x1fff4394:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff43a8] = 0x4000f0c0
        0x1fff4396:    2000        .       MOVS     r0,#0
        0x1fff4398:    6048        H`      STR      r0,[r1,#4]
        0x1fff439a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff439c:    00001e84    ....    DCD    7812
        0x1fff43a0:    1fff0a14    ....    DCD    536807956
        0x1fff43a4:    1fff0a38    8...    DCD    536807992
        0x1fff43a8:    4000f0c0    ...@    DCD    1073803456
    $t
    i.hal_rfphy_init
    hal_rfphy_init
        0x1fff43ac:    b510        ..      PUSH     {r4,lr}
        0x1fff43ae:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff4408] = 0x1fff0a48
        0x1fff43b0:    200f        .       MOVS     r0,#0xf
        0x1fff43b2:    7008        .p      STRB     r0,[r1,#0]
        0x1fff43b4:    4915        .I      LDR      r1,[pc,#84] ; [0x1fff440c] = 0x1fff0a49
        0x1fff43b6:    2001        .       MOVS     r0,#1
        0x1fff43b8:    7008        .p      STRB     r0,[r1,#0]
        0x1fff43ba:    4915        .I      LDR      r1,[pc,#84] ; [0x1fff4410] = 0x1fff0a68
        0x1fff43bc:    2000        .       MOVS     r0,#0
        0x1fff43be:    7008        .p      STRB     r0,[r1,#0]
        0x1fff43c0:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff4414] = 0x4000f080
        0x1fff43c2:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff43c4:    0949        I.      LSRS     r1,r1,#5
        0x1fff43c6:    0149        I.      LSLS     r1,r1,#5
        0x1fff43c8:    3109        .1      ADDS     r1,r1,#9
        0x1fff43ca:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff43cc:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff43ce:    2260        `"      MOVS     r2,#0x60
        0x1fff43d0:    4311        .C      ORRS     r1,r1,r2
        0x1fff43d2:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff43d4:    f7ffffd6    ....    BL       hal_rc32k_clk_tracking_init ; 0x1fff4384
        0x1fff43d8:    f000f820    .. .    BL       hal_rom_boot_init ; 0x1fff441c
        0x1fff43dc:    2100        .!      MOVS     r1,#0
        0x1fff43de:    2004        .       MOVS     r0,#4
        0x1fff43e0:    f7fefc50    ..P.    BL       __NVIC_SetPriority ; 0x1fff2c84
        0x1fff43e4:    2101        .!      MOVS     r1,#1
        0x1fff43e6:    2014        .       MOVS     r0,#0x14
        0x1fff43e8:    f7fefc4c    ..L.    BL       __NVIC_SetPriority ; 0x1fff2c84
        0x1fff43ec:    2101        .!      MOVS     r1,#1
        0x1fff43ee:    2015        .       MOVS     r0,#0x15
        0x1fff43f0:    f7fefc48    ..H.    BL       __NVIC_SetPriority ; 0x1fff2c84
        0x1fff43f4:    2101        .!      MOVS     r1,#1
        0x1fff43f6:    2017        .       MOVS     r0,#0x17
        0x1fff43f8:    f7fefc44    ..D.    BL       __NVIC_SetPriority ; 0x1fff2c84
        0x1fff43fc:    2101        .!      MOVS     r1,#1
        0x1fff43fe:    02c9        ..      LSLS     r1,r1,#11
        0x1fff4400:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff4418] = 0x1fff6c44
        0x1fff4402:    f7fdfbd9    ....    BL       $Ven$TT$L$$osal_mem_set_heap ; 0x1fff1bb8
        0x1fff4406:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4408:    1fff0a48    H...    DCD    536808008
        0x1fff440c:    1fff0a49    I...    DCD    536808009
        0x1fff4410:    1fff0a68    h...    DCD    536808040
        0x1fff4414:    4000f080    ...@    DCD    1073803392
        0x1fff4418:    1fff6c44    Dl..    DCD    536833092
    $t
    i.hal_rom_boot_init
    hal_rom_boot_init
        0x1fff441c:    b510        ..      PUSH     {r4,lr}
        0x1fff441e:    f7fefe73    ..s.    BL       _rom_sec_boot_init ; 0x1fff3108
        0x1fff4422:    bd10        ..      POP      {r4,pc}
    i.hal_rtc_clock_config
    hal_rtc_clock_config
        0x1fff4424:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4426:    2540        @%      MOVS     r5,#0x40
        0x1fff4428:    4c1c        .L      LDR      r4,[pc,#112] ; [0x1fff449c] = 0x4000f000
        0x1fff442a:    2801        .(      CMP      r0,#1
        0x1fff442c:    d002        ..      BEQ      0x1fff4434 ; hal_rtc_clock_config + 16
        0x1fff442e:    2800        .(      CMP      r0,#0
        0x1fff4430:    d011        ..      BEQ      0x1fff4456 ; hal_rtc_clock_config + 50
        0x1fff4432:    e027        '.      B        0x1fff4484 ; hal_rtc_clock_config + 96
        0x1fff4434:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff4436:    2105        .!      MOVS     r1,#5
        0x1fff4438:    0140        @.      LSLS     r0,r0,#5
        0x1fff443a:    0940        @.      LSRS     r0,r0,#5
        0x1fff443c:    06c9        ..      LSLS     r1,r1,#27
        0x1fff443e:    1840        @.      ADDS     r0,r0,r1
        0x1fff4440:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff4442:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4444:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff44a0] = 0xfffe007f
        0x1fff4446:    4008        .@      ANDS     r0,r0,r1
        0x1fff4448:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff44a4] = 0x1fd80
        0x1fff444a:    1840        @.      ADDS     r0,r0,r1
        0x1fff444c:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff444e:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4450:    4328        (C      ORRS     r0,r0,r5
        0x1fff4452:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4454:    e016        ..      B        0x1fff4484 ; hal_rtc_clock_config + 96
        0x1fff4456:    2100        .!      MOVS     r1,#0
        0x1fff4458:    200a        .       MOVS     r0,#0xa
        0x1fff445a:    f7fffc23    ..#.    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff445e:    2100        .!      MOVS     r1,#0
        0x1fff4460:    200b        .       MOVS     r0,#0xb
        0x1fff4462:    f7fffc1f    ....    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff4466:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4468:    2103        .!      MOVS     r1,#3
        0x1fff446a:    0209        ..      LSLS     r1,r1,#8
        0x1fff446c:    4308        .C      ORRS     r0,r0,r1
        0x1fff446e:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4470:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff4472:    43a8        .C      BICS     r0,r0,r5
        0x1fff4474:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4476:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff4478:    210b        .!      MOVS     r1,#0xb
        0x1fff447a:    0140        @.      LSLS     r0,r0,#5
        0x1fff447c:    0940        @.      LSRS     r0,r0,#5
        0x1fff447e:    0709        ..      LSLS     r1,r1,#28
        0x1fff4480:    1840        @.      ADDS     r0,r0,r1
        0x1fff4482:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff4484:    6960        `i      LDR      r0,[r4,#0x14]
        0x1fff4486:    2101        .!      MOVS     r1,#1
        0x1fff4488:    0709        ..      LSLS     r1,r1,#28
        0x1fff448a:    4308        .C      ORRS     r0,r0,r1
        0x1fff448c:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff448e:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff4490:    2103        .!      MOVS     r1,#3
        0x1fff4492:    0449        I.      LSLS     r1,r1,#17
        0x1fff4494:    4388        .C      BICS     r0,r0,r1
        0x1fff4496:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff4498:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff449a:    0000        ..      DCW    0
        0x1fff449c:    4000f000    ...@    DCD    1073803264
        0x1fff44a0:    fffe007f    ....    DCD    4294836351
        0x1fff44a4:    0001fd80    ....    DCD    130432
    $t
    i.hal_spif_cache_init
    hal_spif_cache_init
        0x1fff44a8:    b510        ..      PUSH     {r4,lr}
        0x1fff44aa:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff44c0] = 0x1fff6bb8
        0x1fff44ac:    6048        H`      STR      r0,[r1,#4]
        0x1fff44ae:    f000f855    ..U.    BL       hw_spif_cache_config ; 0x1fff455c
        0x1fff44b2:    4a04        .J      LDR      r2,[pc,#16] ; [0x1fff44c4] = 0x1fff455d
        0x1fff44b4:    2100        .!      MOVS     r1,#0
        0x1fff44b6:    2013        .       MOVS     r0,#0x13
        0x1fff44b8:    f7fffea8    ....    BL       hal_pwrmgr_register ; 0x1fff420c
        0x1fff44bc:    2000        .       MOVS     r0,#0
        0x1fff44be:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff44c0:    1fff6bb8    .k..    DCD    536832952
        0x1fff44c4:    1fff455d    ]E..    DCD    536823133
    $t
    i.hal_system_clock_change_process
    hal_system_clock_change_process
        0x1fff44c8:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff44d4] = 0x1fff0340
        0x1fff44ca:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff44cc:    2800        .(      CMP      r0,#0
        0x1fff44ce:    d000        ..      BEQ      0x1fff44d2 ; hal_system_clock_change_process + 10
        0x1fff44d0:    4700        .G      BX       r0
        0x1fff44d2:    4770        pG      BX       lr
    $d
        0x1fff44d4:    1fff0340    @...    DCD    536806208
    $t
    i.hal_uart_init
    hal_uart_init
        0x1fff44d8:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff44da:    b081        ..      SUB      sp,sp,#4
        0x1fff44dc:    9f0a        ..      LDR      r7,[sp,#0x28]
        0x1fff44de:    4d14        .M      LDR      r5,[pc,#80] ; [0x1fff4530] = 0x1fff7688
        0x1fff44e0:    017e        ~.      LSLS     r6,r7,#5
        0x1fff44e2:    5da8        .]      LDRB     r0,[r5,r6]
        0x1fff44e4:    2800        .(      CMP      r0,#0
        0x1fff44e6:    d002        ..      BEQ      0x1fff44ee ; hal_uart_init + 22
        0x1fff44e8:    2011        .       MOVS     r0,#0x11
        0x1fff44ea:    b005        ..      ADD      sp,sp,#0x14
        0x1fff44ec:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff44ee:    4668        hF      MOV      r0,sp
        0x1fff44f0:    7b40        @{      LDRB     r0,[r0,#0xd]
        0x1fff44f2:    2800        .(      CMP      r0,#0
        0x1fff44f4:    d001        ..      BEQ      0x1fff44fa ; hal_uart_init + 34
        0x1fff44f6:    2005        .       MOVS     r0,#5
        0x1fff44f8:    e7f7        ..      B        0x1fff44ea ; hal_uart_init + 18
        0x1fff44fa:    1974        t.      ADDS     r4,r6,r5
        0x1fff44fc:    2120         !      MOVS     r1,#0x20
        0x1fff44fe:    4620         F      MOV      r0,r4
        0x1fff4500:    f7fdfb48    ..H.    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff1b94
        0x1fff4504:    a801        ..      ADD      r0,sp,#4
        0x1fff4506:    c80f        ..      LDM      r0,{r0-r3}
        0x1fff4508:    3410        .4      ADDS     r4,r4,#0x10
        0x1fff450a:    c40f        ..      STM      r4!,{r0-r3}
        0x1fff450c:    4638        8F      MOV      r0,r7
        0x1fff450e:    f001ffeb    ....    BL       uart_hw_init ; 0x1fff64e8
        0x1fff4512:    2001        .       MOVS     r0,#1
        0x1fff4514:    55a8        .U      STRB     r0,[r5,r6]
        0x1fff4516:    2f00        ./      CMP      r7,#0
        0x1fff4518:    d006        ..      BEQ      0x1fff4528 ; hal_uart_init + 80
        0x1fff451a:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff4534] = 0x1fff669b
        0x1fff451c:    2100        .!      MOVS     r1,#0
        0x1fff451e:    2019        .       MOVS     r0,#0x19
        0x1fff4520:    f7fffe74    ..t.    BL       hal_pwrmgr_register ; 0x1fff420c
        0x1fff4524:    2000        .       MOVS     r0,#0
        0x1fff4526:    e7e0        ..      B        0x1fff44ea ; hal_uart_init + 18
        0x1fff4528:    2100        .!      MOVS     r1,#0
        0x1fff452a:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff4538] = 0x1fff6691
        0x1fff452c:    2008        .       MOVS     r0,#8
        0x1fff452e:    e7f7        ..      B        0x1fff4520 ; hal_uart_init + 72
    $d
        0x1fff4530:    1fff7688    .v..    DCD    536835720
        0x1fff4534:    1fff669b    .f..    DCD    536831643
        0x1fff4538:    1fff6691    .f..    DCD    536831633
    $t
    i.hal_uart_send_buff
    hal_uart_send_buff
        0x1fff453c:    b510        ..      PUSH     {r4,lr}
        0x1fff453e:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff4558] = 0x1fff7688
        0x1fff4540:    0143        C.      LSLS     r3,r0,#5
        0x1fff4542:    191b        ..      ADDS     r3,r3,r4
        0x1fff4544:    7e9b        .~      LDRB     r3,[r3,#0x1a]
        0x1fff4546:    2b00        .+      CMP      r3,#0
        0x1fff4548:    d002        ..      BEQ      0x1fff4550 ; hal_uart_send_buff + 20
        0x1fff454a:    f001ff2f    ../.    BL       txmit_buf_use_tx_buf ; 0x1fff63ac
        0x1fff454e:    bd10        ..      POP      {r4,pc}
        0x1fff4550:    f001fef6    ....    BL       txmit_buf_polling ; 0x1fff6340
        0x1fff4554:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4556:    0000        ..      DCW    0
        0x1fff4558:    1fff7688    .v..    DCD    536835720
    $t
    i.hw_spif_cache_config
    hw_spif_cache_config
        0x1fff455c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff455e:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff45e8] = 0x1fff0a4a
        0x1fff4560:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff4562:    2902        .)      CMP      r1,#2
        0x1fff4564:    d901        ..      BLS      0x1fff456a ; hw_spif_cache_config + 14
        0x1fff4566:    2004        .       MOVS     r0,#4
        0x1fff4568:    e000        ..      B        0x1fff456c ; hw_spif_cache_config + 16
        0x1fff456a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff456c:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff45ec] = 0x1fff6bbc
        0x1fff456e:    4b20         K      LDR      r3,[pc,#128] ; [0x1fff45f0] = 0x802006b
        0x1fff4570:    680a        .h      LDR      r2,[r1,#0]
        0x1fff4572:    2101        .!      MOVS     r1,#1
        0x1fff4574:    2400        .$      MOVS     r4,#0
        0x1fff4576:    429a        .B      CMP      r2,r3
        0x1fff4578:    d101        ..      BNE      0x1fff457e ; hw_spif_cache_config + 34
        0x1fff457a:    9100        ..      STR      r1,[sp,#0]
        0x1fff457c:    e000        ..      B        0x1fff4580 ; hw_spif_cache_config + 36
        0x1fff457e:    9400        ..      STR      r4,[sp,#0]
        0x1fff4580:    2300        .#      MOVS     r3,#0
        0x1fff4582:    2101        .!      MOVS     r1,#1
        0x1fff4584:    f7fdfb1e    ....    BL       $Ven$TT$L$$spif_config ; 0x1fff1bc4
        0x1fff4588:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff45f8] = 0x4000c800
        0x1fff458a:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff45f4] = 0xff010005
        0x1fff458c:    6388        .c      STR      r0,[r1,#0x38]
        0x1fff458e:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff45f8] = 0x4000c800
        0x1fff4590:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff4592:    6104        .a      STR      r4,[r0,#0x10]
        0x1fff4594:    2110        .!      MOVS     r1,#0x10
        0x1fff4596:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff4598:    2602        .&      MOVS     r6,#2
        0x1fff459a:    6186        .a      STR      r6,[r0,#0x18]
        0x1fff459c:    0388        ..      LSLS     r0,r1,#14
        0x1fff459e:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff45fc] = 0xe000e180
        0x1fff45a0:    6008        .`      STR      r0,[r1,#0]
        0x1fff45a2:    f3bf8f4f    ..O.    DSB      
        0x1fff45a6:    f3bf8f6f    ..o.    ISB      
        0x1fff45aa:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff4600] = 0xe000e410
        0x1fff45ac:    6801        .h      LDR      r1,[r0,#0]
        0x1fff45ae:    22ff        ."      MOVS     r2,#0xff
        0x1fff45b0:    0412        ..      LSLS     r2,r2,#16
        0x1fff45b2:    4391        .C      BICS     r1,r1,r2
        0x1fff45b4:    05b2        ..      LSLS     r2,r6,#22
        0x1fff45b6:    4311        .C      ORRS     r1,r1,r2
        0x1fff45b8:    6001        .`      STR      r1,[r0,#0]
        0x1fff45ba:    2064        d       MOVS     r0,#0x64
        0x1fff45bc:    9000        ..      STR      r0,[sp,#0]
        0x1fff45be:    2041        A       MOVS     r0,#0x41
        0x1fff45c0:    f7fff9dc    ....    BL       hal_clk_gate_enable ; 0x1fff397c
        0x1fff45c4:    2040        @       MOVS     r0,#0x40
        0x1fff45c6:    f7fff9d9    ....    BL       hal_clk_gate_enable ; 0x1fff397c
        0x1fff45ca:    0775        u.      LSLS     r5,r6,#29
        0x1fff45cc:    626e        nb      STR      r6,[r5,#0x24]
        0x1fff45ce:    9800        ..      LDR      r0,[sp,#0]
        0x1fff45d0:    1e41        A.      SUBS     r1,r0,#1
        0x1fff45d2:    9100        ..      STR      r1,[sp,#0]
        0x1fff45d4:    d2fb        ..      BCS      0x1fff45ce ; hw_spif_cache_config + 114
        0x1fff45d6:    2003        .       MOVS     r0,#3
        0x1fff45d8:    6268        hb      STR      r0,[r5,#0x24]
        0x1fff45da:    f7fff991    ....    BL       hal_cache_tag_flush ; 0x1fff3900
        0x1fff45de:    62ac        .b      STR      r4,[r5,#0x28]
        0x1fff45e0:    2000        .       MOVS     r0,#0
        0x1fff45e2:    f7fdfaf5    ....    BL       $Ven$TT$L$$spif_read_id ; 0x1fff1bd0
        0x1fff45e6:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff45e8:    1fff0a4a    J...    DCD    536808010
        0x1fff45ec:    1fff6bbc    .k..    DCD    536832956
        0x1fff45f0:    0802006b    k...    DCD    134348907
        0x1fff45f4:    ff010005    ....    DCD    4278255621
        0x1fff45f8:    4000c800    ...@    DCD    1073793024
        0x1fff45fc:    e000e180    ....    DCD    3758154112
        0x1fff4600:    e000e410    ....    DCD    3758154768
    $t
    i.isTimer5Running
    isTimer5Running
        0x1fff4604:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff4610] = 0x40001040
        0x1fff4606:    6980        .i      LDR      r0,[r0,#0x18]
        0x1fff4608:    07c0        ..      LSLS     r0,r0,#31
        0x1fff460a:    d000        ..      BEQ      0x1fff460e ; isTimer5Running + 10
        0x1fff460c:    2001        .       MOVS     r0,#1
        0x1fff460e:    4770        pG      BX       lr
    $d
        0x1fff4610:    40001040    @..@    DCD    1073745984
    $t
    i.l2capPocessFragmentTxData
    l2capPocessFragmentTxData
        0x1fff4614:    4770        pG      BX       lr
        0x1fff4616:    0000        ..      MOVS     r0,r0
    i.lib_efuse_load
    lib_efuse_load
        0x1fff4618:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff461a:    c80a        ..      LDM      r0!,{r1,r3}
        0x1fff461c:    4a28        (J      LDR      r2,[pc,#160] ; [0x1fff46c0] = 0x1fff6c3c
        0x1fff461e:    074c        L.      LSLS     r4,r1,#29
        0x1fff4620:    6810        .h      LDR      r0,[r2,#0]
        0x1fff4622:    0fa4        ..      LSRS     r4,r4,#30
        0x1fff4624:    0880        ..      LSRS     r0,r0,#2
        0x1fff4626:    0080        ..      LSLS     r0,r0,#2
        0x1fff4628:    4320         C      ORRS     r0,r0,r4
        0x1fff462a:    08cc        ..      LSRS     r4,r1,#3
        0x1fff462c:    07e5        ..      LSLS     r5,r4,#31
        0x1fff462e:    2404        .$      MOVS     r4,#4
        0x1fff4630:    6010        .`      STR      r0,[r2,#0]
        0x1fff4632:    2d00        .-      CMP      r5,#0
        0x1fff4634:    d03c        <.      BEQ      0x1fff46b0 ; lib_efuse_load + 152
        0x1fff4636:    43a0        .C      BICS     r0,r0,r4
        0x1fff4638:    2478        x$      MOVS     r4,#0x78
        0x1fff463a:    43a0        .C      BICS     r0,r0,r4
        0x1fff463c:    060c        ..      LSLS     r4,r1,#24
        0x1fff463e:    0f24        $.      LSRS     r4,r4,#28
        0x1fff4640:    00e4        ..      LSLS     r4,r4,#3
        0x1fff4642:    4320         C      ORRS     r0,r0,r4
        0x1fff4644:    240f        .$      MOVS     r4,#0xf
        0x1fff4646:    01e4        ..      LSLS     r4,r4,#7
        0x1fff4648:    43a0        .C      BICS     r0,r0,r4
        0x1fff464a:    050c        ..      LSLS     r4,r1,#20
        0x1fff464c:    0f24        $.      LSRS     r4,r4,#28
        0x1fff464e:    01e4        ..      LSLS     r4,r4,#7
        0x1fff4650:    4320         C      ORRS     r0,r0,r4
        0x1fff4652:    0b0c        ..      LSRS     r4,r1,#12
        0x1fff4654:    07e5        ..      LSLS     r5,r4,#31
        0x1fff4656:    4c1b        .L      LDR      r4,[pc,#108] ; [0x1fff46c4] = 0x800
        0x1fff4658:    6010        .`      STR      r0,[r2,#0]
        0x1fff465a:    d02b        +.      BEQ      0x1fff46b4 ; lib_efuse_load + 156
        0x1fff465c:    43a0        .C      BICS     r0,r0,r4
        0x1fff465e:    4c1a        .L      LDR      r4,[pc,#104] ; [0x1fff46c8] = 0xffc00fff
        0x1fff4660:    4020         @      ANDS     r0,r0,r4
        0x1fff4662:    024c        L.      LSLS     r4,r1,#9
        0x1fff4664:    0da4        ..      LSRS     r4,r4,#22
        0x1fff4666:    0324        $.      LSLS     r4,r4,#12
        0x1fff4668:    4320         C      ORRS     r0,r0,r4
        0x1fff466a:    240f        .$      MOVS     r4,#0xf
        0x1fff466c:    05a4        ..      LSLS     r4,r4,#22
        0x1fff466e:    43a0        .C      BICS     r0,r0,r4
        0x1fff4670:    014c        L.      LSLS     r4,r1,#5
        0x1fff4672:    0f24        $.      LSRS     r4,r4,#28
        0x1fff4674:    05a4        ..      LSLS     r4,r4,#22
        0x1fff4676:    4320         C      ORRS     r0,r0,r4
        0x1fff4678:    019c        ..      LSLS     r4,r3,#6
        0x1fff467a:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff467c:    0864        d.      LSRS     r4,r4,#1
        0x1fff467e:    4321        !C      ORRS     r1,r1,r4
        0x1fff4680:    c203        ..      STM      r2!,{r0,r1}
        0x1fff4682:    0e99        ..      LSRS     r1,r3,#26
        0x1fff4684:    07cc        ..      LSLS     r4,r1,#31
        0x1fff4686:    2101        .!      MOVS     r1,#1
        0x1fff4688:    0689        ..      LSLS     r1,r1,#26
        0x1fff468a:    3a08        .:      SUBS     r2,r2,#8
        0x1fff468c:    2c00        .,      CMP      r4,#0
        0x1fff468e:    d013        ..      BEQ      0x1fff46b8 ; lib_efuse_load + 160
        0x1fff4690:    4388        .C      BICS     r0,r0,r1
        0x1fff4692:    0ed9        ..      LSRS     r1,r3,#27
        0x1fff4694:    07cc        ..      LSLS     r4,r1,#31
        0x1fff4696:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff46cc] = 0x8000000
        0x1fff4698:    6010        .`      STR      r0,[r2,#0]
        0x1fff469a:    d00f        ..      BEQ      0x1fff46bc ; lib_efuse_load + 164
        0x1fff469c:    4388        .C      BICS     r0,r0,r1
        0x1fff469e:    2103        .!      MOVS     r1,#3
        0x1fff46a0:    0709        ..      LSLS     r1,r1,#28
        0x1fff46a2:    4388        .C      BICS     r0,r0,r1
        0x1fff46a4:    0099        ..      LSLS     r1,r3,#2
        0x1fff46a6:    0f89        ..      LSRS     r1,r1,#30
        0x1fff46a8:    0709        ..      LSLS     r1,r1,#28
        0x1fff46aa:    4308        .C      ORRS     r0,r0,r1
        0x1fff46ac:    6010        .`      STR      r0,[r2,#0]
        0x1fff46ae:    bd30        0.      POP      {r4,r5,pc}
        0x1fff46b0:    4320         C      ORRS     r0,r0,r4
        0x1fff46b2:    e7c1        ..      B        0x1fff4638 ; lib_efuse_load + 32
        0x1fff46b4:    4320         C      ORRS     r0,r0,r4
        0x1fff46b6:    e7d2        ..      B        0x1fff465e ; lib_efuse_load + 70
        0x1fff46b8:    4308        .C      ORRS     r0,r0,r1
        0x1fff46ba:    e7ea        ..      B        0x1fff4692 ; lib_efuse_load + 122
        0x1fff46bc:    4308        .C      ORRS     r0,r0,r1
        0x1fff46be:    e7ee        ..      B        0x1fff469e ; lib_efuse_load + 134
    $d
        0x1fff46c0:    1fff6c3c    <l..    DCD    536833084
        0x1fff46c4:    00000800    ....    DCD    2048
        0x1fff46c8:    ffc00fff    ....    DCD    4290777087
        0x1fff46cc:    08000000    ....    DCD    134217728
    $t
    i.llProcessTxData1
    llProcessTxData1
        0x1fff46d0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff46d2:    4605        .F      MOV      r5,r0
        0x1fff46d4:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff4720] = 0x1fff6bd0
        0x1fff46d6:    460f        .F      MOV      r7,r1
        0x1fff46d8:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff46da:    4281        .B      CMP      r1,r0
        0x1fff46dc:    d11f        ..      BNE      0x1fff471e ; llProcessTxData1 + 78
        0x1fff46de:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff46e0:    2800        .(      CMP      r0,#0
        0x1fff46e2:    d018        ..      BEQ      0x1fff4716 ; llProcessTxData1 + 70
        0x1fff46e4:    2400        .$      MOVS     r4,#0
        0x1fff46e6:    00a0        ..      LSLS     r0,r4,#2
        0x1fff46e8:    1946        F.      ADDS     r6,r0,r5
        0x1fff46ea:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff46ec:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff46ee:    68f1        .h      LDR      r1,[r6,#0xc]
        0x1fff46f0:    2900        .)      CMP      r1,#0
        0x1fff46f2:    d00d        ..      BEQ      0x1fff4710 ; llProcessTxData1 + 64
        0x1fff46f4:    6808        .h      LDR      r0,[r1,#0]
        0x1fff46f6:    2800        .(      CMP      r0,#0
        0x1fff46f8:    d10a        ..      BNE      0x1fff4710 ; llProcessTxData1 + 64
        0x1fff46fa:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff46fc:    f000fc74    ..t.    BL       ll_osal_mem_free ; 0x1fff4fe8
        0x1fff4700:    2000        .       MOVS     r0,#0
        0x1fff4702:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff4704:    2005        .       MOVS     r0,#5
        0x1fff4706:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4708:    1828        (.      ADDS     r0,r5,r0
        0x1fff470a:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff470c:    1e49        I.      SUBS     r1,r1,#1
        0x1fff470e:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff4710:    1c64        d.      ADDS     r4,r4,#1
        0x1fff4712:    2c08        .,      CMP      r4,#8
        0x1fff4714:    dbe7        ..      BLT      0x1fff46e6 ; llProcessTxData1 + 22
        0x1fff4716:    4639        9F      MOV      r1,r7
        0x1fff4718:    4628        (F      MOV      r0,r5
        0x1fff471a:    f7fdfa5f    .._.    BL       $Ven$TT$L$$llProcessTxData0 ; 0x1fff1bdc
        0x1fff471e:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff4720:    1fff6bd0    .k..    DCD    536832976
    $t
    i.llReleaseConnId1
    llReleaseConnId1
        0x1fff4724:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4726:    4607        .F      MOV      r7,r0
        0x1fff4728:    4605        .F      MOV      r5,r0
        0x1fff472a:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff472c:    2005        .       MOVS     r0,#5
        0x1fff472e:    2600        .&      MOVS     r6,#0
        0x1fff4730:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff4732:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4734:    182c        ,.      ADDS     r4,r5,r0
        0x1fff4736:    00b0        ..      LSLS     r0,r6,#2
        0x1fff4738:    1940        @.      ADDS     r0,r0,r5
        0x1fff473a:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff473c:    3001        .0      ADDS     r0,#1
        0x1fff473e:    9000        ..      STR      r0,[sp,#0]
        0x1fff4740:    6ec1        .n      LDR      r1,[r0,#0x6c]
        0x1fff4742:    2900        .)      CMP      r1,#0
        0x1fff4744:    d005        ..      BEQ      0x1fff4752 ; llReleaseConnId1 + 46
        0x1fff4746:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff4748:    f000fc4e    ..N.    BL       ll_osal_mem_free ; 0x1fff4fe8
        0x1fff474c:    7820         x      LDRB     r0,[r4,#0]
        0x1fff474e:    1e40        @.      SUBS     r0,r0,#1
        0x1fff4750:    7020         p      STRB     r0,[r4,#0]
        0x1fff4752:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4754:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff4756:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4758:    66c1        .f      STR      r1,[r0,#0x6c]
        0x1fff475a:    2e08        ..      CMP      r6,#8
        0x1fff475c:    dbeb        ..      BLT      0x1fff4736 ; llReleaseConnId1 + 18
        0x1fff475e:    2600        .&      MOVS     r6,#0
        0x1fff4760:    00b0        ..      LSLS     r0,r6,#2
        0x1fff4762:    1940        @.      ADDS     r0,r0,r5
        0x1fff4764:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4766:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4768:    9000        ..      STR      r0,[sp,#0]
        0x1fff476a:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1fff476c:    2900        .)      CMP      r1,#0
        0x1fff476e:    d005        ..      BEQ      0x1fff477c ; llReleaseConnId1 + 88
        0x1fff4770:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff4772:    f000fc39    ..9.    BL       ll_osal_mem_free ; 0x1fff4fe8
        0x1fff4776:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff4778:    1e40        @.      SUBS     r0,r0,#1
        0x1fff477a:    7060        `p      STRB     r0,[r4,#1]
        0x1fff477c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff477e:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff4780:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4782:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff4784:    2e08        ..      CMP      r6,#8
        0x1fff4786:    dbeb        ..      BLT      0x1fff4760 ; llReleaseConnId1 + 60
        0x1fff4788:    2600        .&      MOVS     r6,#0
        0x1fff478a:    00b0        ..      LSLS     r0,r6,#2
        0x1fff478c:    1947        G.      ADDS     r7,r0,r5
        0x1fff478e:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff4790:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff4792:    6b39        9k      LDR      r1,[r7,#0x30]
        0x1fff4794:    2900        .)      CMP      r1,#0
        0x1fff4796:    d005        ..      BEQ      0x1fff47a4 ; llReleaseConnId1 + 128
        0x1fff4798:    7928        (y      LDRB     r0,[r5,#4]
        0x1fff479a:    f000fc25    ..%.    BL       ll_osal_mem_free ; 0x1fff4fe8
        0x1fff479e:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff47a0:    1e40        @.      SUBS     r0,r0,#1
        0x1fff47a2:    70a0        .p      STRB     r0,[r4,#2]
        0x1fff47a4:    2000        .       MOVS     r0,#0
        0x1fff47a6:    1c76        v.      ADDS     r6,r6,#1
        0x1fff47a8:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff47aa:    2e08        ..      CMP      r6,#8
        0x1fff47ac:    dbed        ..      BLT      0x1fff478a ; llReleaseConnId1 + 102
        0x1fff47ae:    4628        (F      MOV      r0,r5
        0x1fff47b0:    f000f888    ....    BL       ll_flow_ctrl_restore ; 0x1fff48c4
        0x1fff47b4:    4628        (F      MOV      r0,r5
        0x1fff47b6:    f7fdfa17    ....    BL       $Ven$TT$L$$llReleaseConnId0 ; 0x1fff1be8
        0x1fff47ba:    2100        .!      MOVS     r1,#0
        0x1fff47bc:    4608        .F      MOV      r0,r1
        0x1fff47be:    008a        ..      LSLS     r2,r1,#2
        0x1fff47c0:    1952        R.      ADDS     r2,r2,r5
        0x1fff47c2:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff47c4:    3201        .2      ADDS     r2,#1
        0x1fff47c6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff47c8:    66d0        .f      STR      r0,[r2,#0x6c]
        0x1fff47ca:    2908        .)      CMP      r1,#8
        0x1fff47cc:    dbf7        ..      BLT      0x1fff47be ; llReleaseConnId1 + 154
        0x1fff47ce:    2100        .!      MOVS     r1,#0
        0x1fff47d0:    008a        ..      LSLS     r2,r1,#2
        0x1fff47d2:    1952        R.      ADDS     r2,r2,r5
        0x1fff47d4:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff47d6:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff47d8:    1c49        I.      ADDS     r1,r1,#1
        0x1fff47da:    60d0        .`      STR      r0,[r2,#0xc]
        0x1fff47dc:    2908        .)      CMP      r1,#8
        0x1fff47de:    dbf7        ..      BLT      0x1fff47d0 ; llReleaseConnId1 + 172
        0x1fff47e0:    70e0        .p      STRB     r0,[r4,#3]
        0x1fff47e2:    bdf8        ..      POP      {r3-r7,pc}
    i.llSlaveEvt_TaskEndOk1
    llSlaveEvt_TaskEndOk1
        0x1fff47e4:    b510        ..      PUSH     {r4,lr}
        0x1fff47e6:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff4814] = 0x1fff0d30
        0x1fff47e8:    21a1        .!      MOVS     r1,#0xa1
        0x1fff47ea:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff47ec:    0089        ..      LSLS     r1,r1,#2
        0x1fff47ee:    4348        HC      MULS     r0,r1,r0
        0x1fff47f0:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff4818] = 0x1fff0934
        0x1fff47f2:    6809        .h      LDR      r1,[r1,#0]
        0x1fff47f4:    1840        @.      ADDS     r0,r0,r1
        0x1fff47f6:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff47f8:    2900        .)      CMP      r1,#0
        0x1fff47fa:    d007        ..      BEQ      0x1fff480c ; llSlaveEvt_TaskEndOk1 + 40
        0x1fff47fc:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff47fe:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4800:    3002        .0      ADDS     r0,#2
        0x1fff4802:    6cc1        .l      LDR      r1,[r0,#0x4c]
        0x1fff4804:    2900        .)      CMP      r1,#0
        0x1fff4806:    d001        ..      BEQ      0x1fff480c ; llSlaveEvt_TaskEndOk1 + 40
        0x1fff4808:    2100        .!      MOVS     r1,#0
        0x1fff480a:    64c1        .d      STR      r1,[r0,#0x4c]
        0x1fff480c:    f7fdf9f2    ....    BL       $Ven$TT$L$$llSlaveEvt_TaskEndOk0 ; 0x1fff1bf4
        0x1fff4810:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4812:    0000        ..      DCW    0
        0x1fff4814:    1fff0d30    0...    DCD    536808752
        0x1fff4818:    1fff0934    4...    DCD    536807732
    $t
    i.llWriteTxData1
    llWriteTxData1
        0x1fff481c:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff481e:    4604        .F      MOV      r4,r0
        0x1fff4820:    3060        `0      ADDS     r0,r0,#0x60
        0x1fff4822:    7ec0        .~      LDRB     r0,[r0,#0x1b]
        0x1fff4824:    2507        .%      MOVS     r5,#7
        0x1fff4826:    b081        ..      SUB      sp,sp,#4
        0x1fff4828:    4617        .F      MOV      r7,r2
        0x1fff482a:    2801        .(      CMP      r0,#1
        0x1fff482c:    d142        B.      BNE      0x1fff48b4 ; llWriteTxData1 + 152
        0x1fff482e:    4620         F      MOV      r0,r4
        0x1fff4830:    f7fdf9e6    ....    BL       $Ven$TT$L$$getTxBufferFree ; 0x1fff1c00
        0x1fff4834:    2800        .(      CMP      r0,#0
        0x1fff4836:    d03d        =.      BEQ      0x1fff48b4 ; llWriteTxData1 + 152
        0x1fff4838:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff48c0] = 0x1fff0917
        0x1fff483a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff483c:    2800        .(      CMP      r0,#0
        0x1fff483e:    d03c        <.      BEQ      0x1fff48ba ; llWriteTxData1 + 158
        0x1fff4840:    26ff        .&      MOVS     r6,#0xff
        0x1fff4842:    3611        .6      ADDS     r6,r6,#0x11
        0x1fff4844:    4620         F      MOV      r0,r4
        0x1fff4846:    f7fdf9e1    ....    BL       $Ven$TT$L$$get_tx_write_ptr ; 0x1fff1c0c
        0x1fff484a:    9000        ..      STR      r0,[sp,#0]
        0x1fff484c:    7920         y      LDRB     r0,[r4,#4]
        0x1fff484e:    2200        ."      MOVS     r2,#0
        0x1fff4850:    4631        1F      MOV      r1,r6
        0x1fff4852:    f000fb7f    ....    BL       ll_osal_mem_alloc ; 0x1fff4f54
        0x1fff4856:    9900        ..      LDR      r1,[sp,#0]
        0x1fff4858:    0089        ..      LSLS     r1,r1,#2
        0x1fff485a:    190e        ..      ADDS     r6,r1,r4
        0x1fff485c:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff485e:    3601        .6      ADDS     r6,#1
        0x1fff4860:    66f0        .f      STR      r0,[r6,#0x6c]
        0x1fff4862:    2800        .(      CMP      r0,#0
        0x1fff4864:    d026        &.      BEQ      0x1fff48b4 ; llWriteTxData1 + 152
        0x1fff4866:    20a6        .       MOVS     r0,#0xa6
        0x1fff4868:    5d00        .]      LDRB     r0,[r0,r4]
        0x1fff486a:    2800        .(      CMP      r0,#0
        0x1fff486c:    d007        ..      BEQ      0x1fff487e ; llWriteTxData1 + 98
        0x1fff486e:    463a        :F      MOV      r2,r7
        0x1fff4870:    4620         F      MOV      r0,r4
        0x1fff4872:    9b04        ..      LDR      r3,[sp,#0x10]
        0x1fff4874:    9902        ..      LDR      r1,[sp,#8]
        0x1fff4876:    f7fdf9cf    ....    BL       $Ven$TT$L$$LL_ENC_Encrypt ; 0x1fff1c18
        0x1fff487a:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff487c:    b2ff        ..      UXTB     r7,r7
        0x1fff487e:    2005        .       MOVS     r0,#5
        0x1fff4880:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4882:    1825        %.      ADDS     r5,r4,r0
        0x1fff4884:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff4886:    463a        :F      MOV      r2,r7
        0x1fff4888:    1c40        @.      ADDS     r0,r0,#1
        0x1fff488a:    7028        (p      STRB     r0,[r5,#0]
        0x1fff488c:    9902        ..      LDR      r1,[sp,#8]
        0x1fff488e:    0238        8.      LSLS     r0,r7,#8
        0x1fff4890:    4308        .C      ORRS     r0,r0,r1
        0x1fff4892:    6ef1        .n      LDR      r1,[r6,#0x6c]
        0x1fff4894:    8088        ..      STRH     r0,[r1,#4]
        0x1fff4896:    6ef0        .n      LDR      r0,[r6,#0x6c]
        0x1fff4898:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff489a:    1d80        ..      ADDS     r0,r0,#6
        0x1fff489c:    f7fdf9c2    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c24
        0x1fff48a0:    6ef1        .n      LDR      r1,[r6,#0x6c]
        0x1fff48a2:    2001        .       MOVS     r0,#1
        0x1fff48a4:    6008        .`      STR      r0,[r1,#0]
        0x1fff48a6:    4620         F      MOV      r0,r4
        0x1fff48a8:    f7fdf9c2    ....    BL       $Ven$TT$L$$update_tx_write_ptr ; 0x1fff1c30
        0x1fff48ac:    78e8        .x      LDRB     r0,[r5,#3]
        0x1fff48ae:    1e40        @.      SUBS     r0,r0,#1
        0x1fff48b0:    70e8        .p      STRB     r0,[r5,#3]
        0x1fff48b2:    2500        .%      MOVS     r5,#0
        0x1fff48b4:    4628        (F      MOV      r0,r5
        0x1fff48b6:    b005        ..      ADD      sp,sp,#0x14
        0x1fff48b8:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff48ba:    2634        4&      MOVS     r6,#0x34
        0x1fff48bc:    e7c2        ..      B        0x1fff4844 ; llWriteTxData1 + 40
    $d
        0x1fff48be:    0000        ..      DCW    0
        0x1fff48c0:    1fff0917    ....    DCD    536807703
    $t
    i.ll_flow_ctrl_restore
    ll_flow_ctrl_restore
        0x1fff48c4:    b510        ..      PUSH     {r4,lr}
        0x1fff48c6:    7901        .y      LDRB     r1,[r0,#4]
        0x1fff48c8:    4a13        .J      LDR      r2,[pc,#76] ; [0x1fff4918] = 0x1fff79c8
        0x1fff48ca:    0049        I.      LSLS     r1,r1,#1
        0x1fff48cc:    5c51        Q\      LDRB     r1,[r2,r1]
        0x1fff48ce:    2900        .)      CMP      r1,#0
        0x1fff48d0:    d020         .      BEQ      0x1fff4914 ; ll_flow_ctrl_restore + 80
        0x1fff48d2:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff491c] = 0x40031040
        0x1fff48d4:    680b        .h      LDR      r3,[r1,#0]
        0x1fff48d6:    158c        ..      ASRS     r4,r1,#22
        0x1fff48d8:    43a3        .C      BICS     r3,r3,r4
        0x1fff48da:    600b        .`      STR      r3,[r1,#0]
        0x1fff48dc:    4601        .F      MOV      r1,r0
        0x1fff48de:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff48e0:    3121        !1      ADDS     r1,r1,#0x21
        0x1fff48e2:    460b        .F      MOV      r3,r1
        0x1fff48e4:    7d09        .}      LDRB     r1,[r1,#0x14]
        0x1fff48e6:    2402        .$      MOVS     r4,#2
        0x1fff48e8:    4021        !@      ANDS     r1,r1,r4
        0x1fff48ea:    7904        .y      LDRB     r4,[r0,#4]
        0x1fff48ec:    0064        d.      LSLS     r4,r4,#1
        0x1fff48ee:    18a4        ..      ADDS     r4,r4,r2
        0x1fff48f0:    7864        dx      LDRB     r4,[r4,#1]
        0x1fff48f2:    4321        !C      ORRS     r1,r1,r4
        0x1fff48f4:    7519        .u      STRB     r1,[r3,#0x14]
        0x1fff48f6:    4b09        .K      LDR      r3,[pc,#36] ; [0x1fff491c] = 0x40031040
        0x1fff48f8:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff48fa:    6bdc        .k      LDR      r4,[r3,#0x3c]
        0x1fff48fc:    08a4        ..      LSRS     r4,r4,#2
        0x1fff48fe:    00a4        ..      LSLS     r4,r4,#2
        0x1fff4900:    430c        .C      ORRS     r4,r4,r1
        0x1fff4902:    63dc        .c      STR      r4,[r3,#0x3c]
        0x1fff4904:    7903        .y      LDRB     r3,[r0,#4]
        0x1fff4906:    2100        .!      MOVS     r1,#0
        0x1fff4908:    005b        [.      LSLS     r3,r3,#1
        0x1fff490a:    54d1        .T      STRB     r1,[r2,r3]
        0x1fff490c:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff490e:    0040        @.      LSLS     r0,r0,#1
        0x1fff4910:    1880        ..      ADDS     r0,r0,r2
        0x1fff4912:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff4914:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4916:    0000        ..      DCW    0
        0x1fff4918:    1fff79c8    .y..    DCD    536836552
        0x1fff491c:    40031040    @..@    DCD    1073942592
    $t
    i.ll_generateTxBuffer1
    ll_generateTxBuffer1
        0x1fff4920:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff4922:    4607        .F      MOV      r7,r0
        0x1fff4924:    4898        .H      LDR      r0,[pc,#608] ; [0x1fff4b88] = 0x1fff0d30
        0x1fff4926:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4928:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff492a:    0089        ..      LSLS     r1,r1,#2
        0x1fff492c:    4348        HC      MULS     r0,r1,r0
        0x1fff492e:    4997        .I      LDR      r1,[pc,#604] ; [0x1fff4b8c] = 0x1fff0934
        0x1fff4930:    b089        ..      SUB      sp,sp,#0x24
        0x1fff4932:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4934:    2600        .&      MOVS     r6,#0
        0x1fff4936:    1844        D.      ADDS     r4,r0,r1
        0x1fff4938:    4620         F      MOV      r0,r4
        0x1fff493a:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff493c:    3021        !0      ADDS     r0,r0,#0x21
        0x1fff493e:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff4940:    7d40        @}      LDRB     r0,[r0,#0x15]
        0x1fff4942:    2832        2(      CMP      r0,#0x32
        0x1fff4944:    d022        ".      BEQ      0x1fff498c ; ll_generateTxBuffer1 + 108
        0x1fff4946:    2822        "(      CMP      r0,#0x22
        0x1fff4948:    d020         .      BEQ      0x1fff498c ; ll_generateTxBuffer1 + 108
        0x1fff494a:    4625        %F      MOV      r5,r4
        0x1fff494c:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff494e:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff4950:    6ae8        .j      LDR      r0,[r5,#0x2c]
        0x1fff4952:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4954:    2900        .)      CMP      r1,#0
        0x1fff4956:    d009        ..      BEQ      0x1fff496c ; ll_generateTxBuffer1 + 76
        0x1fff4958:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff495a:    1d00        ..      ADDS     r0,r0,#4
        0x1fff495c:    0a09        ..      LSRS     r1,r1,#8
        0x1fff495e:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4960:    f7fdf96c    ..l.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c3c
        0x1fff4964:    6ae9        .j      LDR      r1,[r5,#0x2c]
        0x1fff4966:    2000        .       MOVS     r0,#0
        0x1fff4968:    1c76        v.      ADDS     r6,r6,#1
        0x1fff496a:    6008        .`      STR      r0,[r1,#0]
        0x1fff496c:    f7fdf96c    ..l.    BL       $Ven$TT$L$$ll_hw_get_tfifo_wrptr ; 0x1fff1c48
        0x1fff4970:    990a        ..      LDR      r1,[sp,#0x28]
        0x1fff4972:    2500        .%      MOVS     r5,#0
        0x1fff4974:    8008        ..      STRH     r0,[r1,#0]
        0x1fff4976:    4620         F      MOV      r0,r4
        0x1fff4978:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff497a:    30c1        .0      ADDS     r0,r0,#0xc1
        0x1fff497c:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff497e:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4980:    2800        .(      CMP      r0,#0
        0x1fff4982:    d029        ).      BEQ      0x1fff49d8 ; ll_generateTxBuffer1 + 184
        0x1fff4984:    42b8        .B      CMP      r0,r7
        0x1fff4986:    dc27        '.      BGT      0x1fff49d8 ; ll_generateTxBuffer1 + 184
        0x1fff4988:    2000        .       MOVS     r0,#0
        0x1fff498a:    e018        ..      B        0x1fff49be ; ll_generateTxBuffer1 + 158
        0x1fff498c:    4980        .I      LDR      r1,[pc,#512] ; [0x1fff4b90] = 0x40031400
        0x1fff498e:    2001        .       MOVS     r0,#1
        0x1fff4990:    6008        .`      STR      r0,[r1,#0]
        0x1fff4992:    20ff        .       MOVS     r0,#0xff
        0x1fff4994:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff4996:    2100        .!      MOVS     r1,#0
        0x1fff4998:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff499a:    2601        .&      MOVS     r6,#1
        0x1fff499c:    6001        .`      STR      r1,[r0,#0]
        0x1fff499e:    e7e5        ..      B        0x1fff496c ; ll_generateTxBuffer1 + 76
        0x1fff49a0:    0080        ..      LSLS     r0,r0,#2
        0x1fff49a2:    1900        ..      ADDS     r0,r0,r4
        0x1fff49a4:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff49a6:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff49a8:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff49aa:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff49ac:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff49ae:    b2ed        ..      UXTB     r5,r5
        0x1fff49b0:    0a09        ..      LSRS     r1,r1,#8
        0x1fff49b2:    1d00        ..      ADDS     r0,r0,#4
        0x1fff49b4:    1c89        ..      ADDS     r1,r1,#2
        0x1fff49b6:    f7fdf941    ..A.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c3c
        0x1fff49ba:    9800        ..      LDR      r0,[sp,#0]
        0x1fff49bc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff49be:    9000        ..      STR      r0,[sp,#0]
        0x1fff49c0:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff49c2:    7c01        .|      LDRB     r1,[r0,#0x10]
        0x1fff49c4:    9800        ..      LDR      r0,[sp,#0]
        0x1fff49c6:    4281        .B      CMP      r1,r0
        0x1fff49c8:    dcea        ..      BGT      0x1fff49a0 ; ll_generateTxBuffer1 + 128
        0x1fff49ca:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff49cc:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff49ce:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff49d0:    1986        ..      ADDS     r6,r0,r6
        0x1fff49d2:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff49d4:    2100        .!      MOVS     r1,#0
        0x1fff49d6:    7401        .t      STRB     r1,[r0,#0x10]
        0x1fff49d8:    496e        nI      LDR      r1,[pc,#440] ; [0x1fff4b94] = 0x1fff10e0
        0x1fff49da:    2000        .       MOVS     r0,#0
        0x1fff49dc:    70c8        .p      STRB     r0,[r1,#3]
        0x1fff49de:    20ff        .       MOVS     r0,#0xff
        0x1fff49e0:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff49e2:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff49e4:    6801        .h      LDR      r1,[r0,#0]
        0x1fff49e6:    2900        .)      CMP      r1,#0
        0x1fff49e8:    d003        ..      BEQ      0x1fff49f2 ; ll_generateTxBuffer1 + 210
        0x1fff49ea:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff49ec:    43c0        .C      MVNS     r0,r0
        0x1fff49ee:    0780        ..      LSLS     r0,r0,#30
        0x1fff49f0:    d03a        :.      BEQ      0x1fff4a68 ; ll_generateTxBuffer1 + 328
        0x1fff49f2:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff49f4:    7dc0        .}      LDRB     r0,[r0,#0x17]
        0x1fff49f6:    2800        .(      CMP      r0,#0
        0x1fff49f8:    d036        6.      BEQ      0x1fff4a68 ; ll_generateTxBuffer1 + 328
        0x1fff49fa:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff49fc:    7d80        .}      LDRB     r0,[r0,#0x16]
        0x1fff49fe:    2800        .(      CMP      r0,#0
        0x1fff4a00:    d132        2.      BNE      0x1fff4a68 ; ll_generateTxBuffer1 + 328
        0x1fff4a02:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4a04:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4a06:    42b8        .B      CMP      r0,r7
        0x1fff4a08:    da2e        ..      BGE      0x1fff4a68 ; ll_generateTxBuffer1 + 328
        0x1fff4a0a:    485f        _H      LDR      r0,[pc,#380] ; [0x1fff4b88] = 0x1fff0d30
        0x1fff4a0c:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4a0e:    201c        .       MOVS     r0,#0x1c
        0x1fff4a10:    4341        AC      MULS     r1,r0,r1
        0x1fff4a12:    4861        aH      LDR      r0,[pc,#388] ; [0x1fff4b98] = 0x1fff79e8
        0x1fff4a14:    1808        ..      ADDS     r0,r1,r0
        0x1fff4a16:    7a01        .z      LDRB     r1,[r0,#8]
        0x1fff4a18:    2900        .)      CMP      r1,#0
        0x1fff4a1a:    d125        %.      BNE      0x1fff4a68 ; ll_generateTxBuffer1 + 328
        0x1fff4a1c:    2101        .!      MOVS     r1,#1
        0x1fff4a1e:    7201        .r      STRB     r1,[r0,#8]
        0x1fff4a20:    00a9        ..      LSLS     r1,r5,#2
        0x1fff4a22:    1909        ..      ADDS     r1,r1,r4
        0x1fff4a24:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4a26:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff4a28:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4a2a:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff4a2c:    2800        .(      CMP      r0,#0
        0x1fff4a2e:    d01f        ..      BEQ      0x1fff4a70 ; ll_generateTxBuffer1 + 336
        0x1fff4a30:    2005        .       MOVS     r0,#5
        0x1fff4a32:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4a34:    1820         .      ADDS     r0,r4,r0
        0x1fff4a36:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4a38:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4a3a:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4a3c:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4a3e:    20ff        .       MOVS     r0,#0xff
        0x1fff4a40:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff4a42:    5b00        .[      LDRH     r0,[r0,r4]
        0x1fff4a44:    b2ed        ..      UXTB     r5,r5
        0x1fff4a46:    0a01        ..      LSRS     r1,r0,#8
        0x1fff4a48:    4620         F      MOV      r0,r4
        0x1fff4a4a:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4a4c:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff4a4e:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4a50:    f7fdf8f4    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c3c
        0x1fff4a54:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4a56:    2100        .!      MOVS     r1,#0
        0x1fff4a58:    75c1        .u      STRB     r1,[r0,#0x17]
        0x1fff4a5a:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4a5c:    2101        .!      MOVS     r1,#1
        0x1fff4a5e:    7581        .u      STRB     r1,[r0,#0x16]
        0x1fff4a60:    484c        LH      LDR      r0,[pc,#304] ; [0x1fff4b94] = 0x1fff10e0
        0x1fff4a62:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4a64:    70c1        .p      STRB     r1,[r0,#3]
        0x1fff4a66:    1e7f        ..      SUBS     r7,r7,#1
        0x1fff4a68:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4a6a:    7c00        .|      LDRB     r0,[r0,#0x10]
        0x1fff4a6c:    2800        .(      CMP      r0,#0
        0x1fff4a6e:    d002        ..      BEQ      0x1fff4a76 ; ll_generateTxBuffer1 + 342
        0x1fff4a70:    4630        0F      MOV      r0,r6
        0x1fff4a72:    b00b        ..      ADD      sp,sp,#0x2c
        0x1fff4a74:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff4a76:    4620         F      MOV      r0,r4
        0x1fff4a78:    f7fdf8ec    ....    BL       $Ven$TT$L$$getTxBufferSize ; 0x1fff1c54
        0x1fff4a7c:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff4a7e:    2800        .(      CMP      r0,#0
        0x1fff4a80:    dd3b        ;.      BLE      0x1fff4afa ; ll_generateTxBuffer1 + 474
        0x1fff4a82:    2f00        ./      CMP      r7,#0
        0x1fff4a84:    dd39        9.      BLE      0x1fff4afa ; ll_generateTxBuffer1 + 474
        0x1fff4a86:    2000        .       MOVS     r0,#0
        0x1fff4a88:    e031        1.      B        0x1fff4aee ; ll_generateTxBuffer1 + 462
        0x1fff4a8a:    4620         F      MOV      r0,r4
        0x1fff4a8c:    f7fdf8e8    ....    BL       $Ven$TT$L$$get_tx_read_ptr ; 0x1fff1c60
        0x1fff4a90:    0080        ..      LSLS     r0,r0,#2
        0x1fff4a92:    1900        ..      ADDS     r0,r0,r4
        0x1fff4a94:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4a96:    3001        .0      ADDS     r0,#1
        0x1fff4a98:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4a9a:    6ec0        .n      LDR      r0,[r0,#0x6c]
        0x1fff4a9c:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff4a9e:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4aa0:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4aa2:    1c89        ..      ADDS     r1,r1,#2
        0x1fff4aa4:    f7fdf8ca    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c3c
        0x1fff4aa8:    2800        .(      CMP      r0,#0
        0x1fff4aaa:    d01e        ..      BEQ      0x1fff4aea ; ll_generateTxBuffer1 + 458
        0x1fff4aac:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff4aae:    6ec1        .n      LDR      r1,[r0,#0x6c]
        0x1fff4ab0:    00a8        ..      LSLS     r0,r5,#2
        0x1fff4ab2:    1900        ..      ADDS     r0,r0,r4
        0x1fff4ab4:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4ab6:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4ab8:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff4aba:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff4abc:    2000        .       MOVS     r0,#0
        0x1fff4abe:    66c8        .f      STR      r0,[r1,#0x6c]
        0x1fff4ac0:    2005        .       MOVS     r0,#5
        0x1fff4ac2:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4ac4:    1820         .      ADDS     r0,r4,r0
        0x1fff4ac6:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4ac8:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4aca:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4acc:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4ace:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff4ad0:    b2ed        ..      UXTB     r5,r5
        0x1fff4ad2:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4ad4:    7001        .p      STRB     r1,[r0,#0]
        0x1fff4ad6:    4620         F      MOV      r0,r4
        0x1fff4ad8:    f7fdf8c8    ....    BL       $Ven$TT$L$$update_tx_read_ptr ; 0x1fff1c6c
        0x1fff4adc:    1de1        ..      ADDS     r1,r4,#7
        0x1fff4ade:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4ae0:    31fa        .1      ADDS     r1,r1,#0xfa
        0x1fff4ae2:    6a08        .j      LDR      r0,[r1,#0x20]
        0x1fff4ae4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4ae6:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4ae8:    6208        .b      STR      r0,[r1,#0x20]
        0x1fff4aea:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4aec:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4aee:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff4af0:    9000        ..      STR      r0,[sp,#0]
        0x1fff4af2:    4288        .B      CMP      r0,r1
        0x1fff4af4:    da01        ..      BGE      0x1fff4afa ; ll_generateTxBuffer1 + 474
        0x1fff4af6:    42b8        .B      CMP      r0,r7
        0x1fff4af8:    dbc7        ..      BLT      0x1fff4a8a ; ll_generateTxBuffer1 + 362
        0x1fff4afa:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff4b88] = 0x1fff0d30
        0x1fff4afc:    221c        ."      MOVS     r2,#0x1c
        0x1fff4afe:    7888        .x      LDRB     r0,[r1,#2]
        0x1fff4b00:    4b25        %K      LDR      r3,[pc,#148] ; [0x1fff4b98] = 0x1fff79e8
        0x1fff4b02:    4350        PC      MULS     r0,r2,r0
        0x1fff4b04:    18c2        ..      ADDS     r2,r0,r3
        0x1fff4b06:    7a10        .z      LDRB     r0,[r2,#8]
        0x1fff4b08:    2800        .(      CMP      r0,#0
        0x1fff4b0a:    d022        ".      BEQ      0x1fff4b52 ; ll_generateTxBuffer1 + 562
        0x1fff4b0c:    2000        .       MOVS     r0,#0
        0x1fff4b0e:    1e69        i.      SUBS     r1,r5,#1
        0x1fff4b10:    e01d        ..      B        0x1fff4b4e ; ll_generateTxBuffer1 + 558
        0x1fff4b12:    0083        ..      LSLS     r3,r0,#2
        0x1fff4b14:    191b        ..      ADDS     r3,r3,r4
        0x1fff4b16:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4b18:    3381        .3      ADDS     r3,r3,#0x81
        0x1fff4b1a:    6b1b        .k      LDR      r3,[r3,#0x30]
        0x1fff4b1c:    68d7        .h      LDR      r7,[r2,#0xc]
        0x1fff4b1e:    42bb        .B      CMP      r3,r7
        0x1fff4b20:    d114        ..      BNE      0x1fff4b4c ; ll_generateTxBuffer1 + 556
        0x1fff4b22:    4288        .B      CMP      r0,r1
        0x1fff4b24:    d012        ..      BEQ      0x1fff4b4c ; ll_generateTxBuffer1 + 556
        0x1fff4b26:    00a9        ..      LSLS     r1,r5,#2
        0x1fff4b28:    190a        ..      ADDS     r2,r1,r4
        0x1fff4b2a:    0080        ..      LSLS     r0,r0,#2
        0x1fff4b2c:    32ff        .2      ADDS     r2,r2,#0xff
        0x1fff4b2e:    1900        ..      ADDS     r0,r0,r4
        0x1fff4b30:    3281        .2      ADDS     r2,r2,#0x81
        0x1fff4b32:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4b34:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4b36:    6ad1        .j      LDR      r1,[r2,#0x2c]
        0x1fff4b38:    6301        .c      STR      r1,[r0,#0x30]
        0x1fff4b3a:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff4b88] = 0x1fff0d30
        0x1fff4b3c:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4b3e:    201c        .       MOVS     r0,#0x1c
        0x1fff4b40:    4341        AC      MULS     r1,r0,r1
        0x1fff4b42:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff4b98] = 0x1fff79e8
        0x1fff4b44:    1808        ..      ADDS     r0,r1,r0
        0x1fff4b46:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff4b48:    62d0        .b      STR      r0,[r2,#0x2c]
        0x1fff4b4a:    e002        ..      B        0x1fff4b52 ; ll_generateTxBuffer1 + 562
        0x1fff4b4c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4b4e:    42a8        .B      CMP      r0,r5
        0x1fff4b50:    dbdf        ..      BLT      0x1fff4b12 ; ll_generateTxBuffer1 + 498
        0x1fff4b52:    2009        .       MOVS     r0,#9
        0x1fff4b54:    0180        ..      LSLS     r0,r0,#6
        0x1fff4b56:    1820         .      ADDS     r0,r4,r0
        0x1fff4b58:    7e81        .~      LDRB     r1,[r0,#0x1a]
        0x1fff4b5a:    2900        .)      CMP      r1,#0
        0x1fff4b5c:    d011        ..      BEQ      0x1fff4b82 ; ll_generateTxBuffer1 + 610
        0x1fff4b5e:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x1fff4b60:    2900        .)      CMP      r1,#0
        0x1fff4b62:    d00e        ..      BEQ      0x1fff4b82 ; ll_generateTxBuffer1 + 610
        0x1fff4b64:    8e42        B.      LDRH     r2,[r0,#0x32]
        0x1fff4b66:    2a00        .*      CMP      r2,#0
        0x1fff4b68:    d00b        ..      BEQ      0x1fff4b82 ; ll_generateTxBuffer1 + 610
        0x1fff4b6a:    7f81        ..      LDRB     r1,[r0,#0x1e]
        0x1fff4b6c:    4291        .B      CMP      r1,r2
        0x1fff4b6e:    d202        ..      BCS      0x1fff4b76 ; ll_generateTxBuffer1 + 598
        0x1fff4b70:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4b72:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff4b74:    e005        ..      B        0x1fff4b82 ; ll_generateTxBuffer1 + 610
        0x1fff4b76:    2100        .!      MOVS     r1,#0
        0x1fff4b78:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff4b7a:    211a        .!      MOVS     r1,#0x1a
        0x1fff4b7c:    4620         F      MOV      r0,r4
        0x1fff4b7e:    f7fdf87b    ..{.    BL       $Ven$TT$L$$llEnqueueCtrlPkt ; 0x1fff1c78
        0x1fff4b82:    b2b0        ..      UXTH     r0,r6
        0x1fff4b84:    e775        u.      B        0x1fff4a72 ; ll_generateTxBuffer1 + 338
    $d
        0x1fff4b86:    0000        ..      DCW    0
        0x1fff4b88:    1fff0d30    0...    DCD    536808752
        0x1fff4b8c:    1fff0934    4...    DCD    536807732
        0x1fff4b90:    40031400    ...@    DCD    1073943552
        0x1fff4b94:    1fff10e0    ....    DCD    536809696
        0x1fff4b98:    1fff79e8    .y..    DCD    536836584
    $t
    i.ll_hw_go1
    ll_hw_go1
        0x1fff4b9c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff4b9e:    b089        ..      SUB      sp,sp,#0x24
        0x1fff4ba0:    f7fcff1a    ....    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff19d8
        0x1fff4ba4:    4605        .F      MOV      r5,r0
        0x1fff4ba6:    489a        .H      LDR      r0,[pc,#616] ; [0x1fff4e10] = 0x1fff0d30
        0x1fff4ba8:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4baa:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4bac:    0089        ..      LSLS     r1,r1,#2
        0x1fff4bae:    4348        HC      MULS     r0,r1,r0
        0x1fff4bb0:    4998        .I      LDR      r1,[pc,#608] ; [0x1fff4e14] = 0x1fff0934
        0x1fff4bb2:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4bb4:    1844        D.      ADDS     r4,r0,r1
        0x1fff4bb6:    4898        .H      LDR      r0,[pc,#608] ; [0x1fff4e18] = 0x1fff0998
        0x1fff4bb8:    6800        .h      LDR      r0,[r0,#0]
        0x1fff4bba:    2801        .(      CMP      r0,#1
        0x1fff4bbc:    d103        ..      BNE      0x1fff4bc6 ; ll_hw_go1 + 42
        0x1fff4bbe:    4897        .H      LDR      r0,[pc,#604] ; [0x1fff4e1c] = 0x1fff0ffc
        0x1fff4bc0:    6d81        .m      LDR      r1,[r0,#0x58]
        0x1fff4bc2:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4bc4:    6581        .e      STR      r1,[r0,#0x58]
        0x1fff4bc6:    2d05        .-      CMP      r5,#5
        0x1fff4bc8:    d001        ..      BEQ      0x1fff4bce ; ll_hw_go1 + 50
        0x1fff4bca:    2d04        .-      CMP      r5,#4
        0x1fff4bcc:    d102        ..      BNE      0x1fff4bd4 ; ll_hw_go1 + 56
        0x1fff4bce:    4620         F      MOV      r0,r4
        0x1fff4bd0:    f7fffe78    ..x.    BL       ll_flow_ctrl_restore ; 0x1fff48c4
        0x1fff4bd4:    f7fcfeee    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff4bd8:    4991        .I      LDR      r1,[pc,#580] ; [0x1fff4e20] = 0x1fff6bd0
        0x1fff4bda:    4a92        .J      LDR      r2,[pc,#584] ; [0x1fff4e24] = 0x3fff
        0x1fff4bdc:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff4bde:    4892        .H      LDR      r0,[pc,#584] ; [0x1fff4e28] = 0x40031000
        0x1fff4be0:    6142        Ba      STR      r2,[r0,#0x14]
        0x1fff4be2:    2201        ."      MOVS     r2,#1
        0x1fff4be4:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff4be6:    6002        .`      STR      r2,[r0,#0]
        0x1fff4be8:    2d05        .-      CMP      r5,#5
        0x1fff4bea:    d017        ..      BEQ      0x1fff4c1c ; ll_hw_go1 + 128
        0x1fff4bec:    2d04        .-      CMP      r5,#4
        0x1fff4bee:    d17d        }.      BNE      0x1fff4cec ; ll_hw_go1 + 336
        0x1fff4bf0:    8ee0        ..      LDRH     r0,[r4,#0x36]
        0x1fff4bf2:    4a8e        .J      LDR      r2,[pc,#568] ; [0x1fff4e2c] = 0x271
        0x1fff4bf4:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4bf6:    4350        PC      MULS     r0,r2,r0
        0x1fff4bf8:    22ff        ."      MOVS     r2,#0xff
        0x1fff4bfa:    32df        .2      ADDS     r2,r2,#0xdf
        0x1fff4bfc:    5b12        .[      LDRH     r2,[r2,r4]
        0x1fff4bfe:    1a80        ..      SUBS     r0,r0,r2
        0x1fff4c00:    22f8        ."      MOVS     r2,#0xf8
        0x1fff4c02:    5852        RX      LDR      r2,[r2,r1]
        0x1fff4c04:    6c89        .l      LDR      r1,[r1,#0x48]
        0x1fff4c06:    1a80        ..      SUBS     r0,r0,r2
        0x1fff4c08:    4a81        .J      LDR      r2,[pc,#516] ; [0x1fff4e10] = 0x1fff0d30
        0x1fff4c0a:    7852        Rx      LDRB     r2,[r2,#1]
        0x1fff4c0c:    0852        R.      LSRS     r2,r2,#1
        0x1fff4c0e:    40d0        .@      LSRS     r0,r0,r2
        0x1fff4c10:    4281        .B      CMP      r1,r0
        0x1fff4c12:    d200        ..      BCS      0x1fff4c16 ; ll_hw_go1 + 122
        0x1fff4c14:    4608        .F      MOV      r0,r1
        0x1fff4c16:    f7fdf835    ..5.    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff1c84
        0x1fff4c1a:    e004        ..      B        0x1fff4c26 ; ll_hw_go1 + 138
        0x1fff4c1c:    7960        `y      LDRB     r0,[r4,#5]
        0x1fff4c1e:    2801        .(      CMP      r0,#1
        0x1fff4c20:    d001        ..      BEQ      0x1fff4c26 ; ll_hw_go1 + 138
        0x1fff4c22:    f7fefceb    ....    BL       enlarge_rx_timeout_1st ; 0x1fff35fc
        0x1fff4c26:    f7fcfec5    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff4c2a:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff4c2c:    4880        .H      LDR      r0,[pc,#512] ; [0x1fff4e30] = 0x1fff0917
        0x1fff4c2e:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4c30:    2800        .(      CMP      r0,#0
        0x1fff4c32:    d005        ..      BEQ      0x1fff4c40 ; ll_hw_go1 + 164
        0x1fff4c34:    20ff        .       MOVS     r0,#0xff
        0x1fff4c36:    3011        .0      ADDS     r0,r0,#0x11
        0x1fff4c38:    2700        .'      MOVS     r7,#0
        0x1fff4c3a:    463e        >F      MOV      r6,r7
        0x1fff4c3c:    9000        ..      STR      r0,[sp,#0]
        0x1fff4c3e:    e033        3.      B        0x1fff4ca8 ; ll_hw_go1 + 268
        0x1fff4c40:    2034        4       MOVS     r0,#0x34
        0x1fff4c42:    e7f9        ..      B        0x1fff4c38 ; ll_hw_go1 + 156
        0x1fff4c44:    4620         F      MOV      r0,r4
        0x1fff4c46:    f7fdf823    ..#.    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c90
        0x1fff4c4a:    1981        ..      ADDS     r1,r0,r6
        0x1fff4c4c:    4879        yH      LDR      r0,[pc,#484] ; [0x1fff4e34] = 0x1fff0916
        0x1fff4c4e:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4c50:    4281        .B      CMP      r1,r0
        0x1fff4c52:    4620         F      MOV      r0,r4
        0x1fff4c54:    d203        ..      BCS      0x1fff4c5e ; ll_hw_go1 + 194
        0x1fff4c56:    f7fdf81b    ....    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c90
        0x1fff4c5a:    1980        ..      ADDS     r0,r0,r6
        0x1fff4c5c:    e005        ..      B        0x1fff4c6a ; ll_hw_go1 + 206
        0x1fff4c5e:    f7fdf817    ....    BL       $Ven$TT$L$$get_rx_write_ptr ; 0x1fff1c90
        0x1fff4c62:    1981        ..      ADDS     r1,r0,r6
        0x1fff4c64:    4873        sH      LDR      r0,[pc,#460] ; [0x1fff4e34] = 0x1fff0916
        0x1fff4c66:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4c68:    1a08        ..      SUBS     r0,r1,r0
        0x1fff4c6a:    b2c0        ..      UXTB     r0,r0
        0x1fff4c6c:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff4c6e:    4868        hH      LDR      r0,[pc,#416] ; [0x1fff4e10] = 0x1fff0d30
        0x1fff4c70:    2202        ."      MOVS     r2,#2
        0x1fff4c72:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4c74:    9900        ..      LDR      r1,[sp,#0]
        0x1fff4c76:    f000f96d    ..m.    BL       ll_osal_mem_alloc ; 0x1fff4f54
        0x1fff4c7a:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff4c7c:    0089        ..      LSLS     r1,r1,#2
        0x1fff4c7e:    1909        ..      ADDS     r1,r1,r4
        0x1fff4c80:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4c82:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4c84:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff4c86:    2800        .(      CMP      r0,#0
        0x1fff4c88:    d013        ..      BEQ      0x1fff4cb2 ; ll_hw_go1 + 278
        0x1fff4c8a:    2005        .       MOVS     r0,#5
        0x1fff4c8c:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4c8e:    1820         .      ADDS     r0,r4,r0
        0x1fff4c90:    7842        Bx      LDRB     r2,[r0,#1]
        0x1fff4c92:    1c7f        ..      ADDS     r7,r7,#1
        0x1fff4c94:    1c52        R.      ADDS     r2,r2,#1
        0x1fff4c96:    7042        Bp      STRB     r2,[r0,#1]
        0x1fff4c98:    2000        .       MOVS     r0,#0
        0x1fff4c9a:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff4c9c:    1c76        v.      ADDS     r6,r6,#1
        0x1fff4c9e:    6010        .`      STR      r0,[r2,#0]
        0x1fff4ca0:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4ca2:    b2ff        ..      UXTB     r7,r7
        0x1fff4ca4:    8088        ..      STRH     r0,[r1,#4]
        0x1fff4ca6:    b2f6        ..      UXTB     r6,r6
        0x1fff4ca8:    4620         F      MOV      r0,r4
        0x1fff4caa:    f7fcfff7    ....    BL       $Ven$TT$L$$getRxBufferFree ; 0x1fff1c9c
        0x1fff4cae:    42b0        .B      CMP      r0,r6
        0x1fff4cb0:    d8c8        ..      BHI      0x1fff4c44 ; ll_hw_go1 + 168
        0x1fff4cb2:    485d        ]H      LDR      r0,[pc,#372] ; [0x1fff4e28] = 0x40031000
        0x1fff4cb4:    21ff        .!      MOVS     r1,#0xff
        0x1fff4cb6:    0409        ..      LSLS     r1,r1,#16
        0x1fff4cb8:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff4cba:    2f00        ./      CMP      r7,#0
        0x1fff4cbc:    d004        ..      BEQ      0x1fff4cc8 ; ll_hw_go1 + 300
        0x1fff4cbe:    438a        .C      BICS     r2,r2,r1
        0x1fff4cc0:    0439        9.      LSLS     r1,r7,#16
        0x1fff4cc2:    430a        .C      ORRS     r2,r2,r1
        0x1fff4cc4:    6042        B`      STR      r2,[r0,#4]
        0x1fff4cc6:    e025        %.      B        0x1fff4d14 ; ll_hw_go1 + 376
        0x1fff4cc8:    438a        .C      BICS     r2,r2,r1
        0x1fff4cca:    2101        .!      MOVS     r1,#1
        0x1fff4ccc:    0409        ..      LSLS     r1,r1,#16
        0x1fff4cce:    1851        Q.      ADDS     r1,r2,r1
        0x1fff4cd0:    6041        A`      STR      r1,[r0,#4]
        0x1fff4cd2:    7921        !y      LDRB     r1,[r4,#4]
        0x1fff4cd4:    2001        .       MOVS     r0,#1
        0x1fff4cd6:    004a        J.      LSLS     r2,r1,#1
        0x1fff4cd8:    4957        WI      LDR      r1,[pc,#348] ; [0x1fff4e38] = 0x1fff79c8
        0x1fff4cda:    5488        .T      STRB     r0,[r1,r2]
        0x1fff4cdc:    20ff        .       MOVS     r0,#0xff
        0x1fff4cde:    3035        50      ADDS     r0,r0,#0x35
        0x1fff4ce0:    5d00        .]      LDRB     r0,[r0,r4]
        0x1fff4ce2:    7922        "y      LDRB     r2,[r4,#4]
        0x1fff4ce4:    07c0        ..      LSLS     r0,r0,#31
        0x1fff4ce6:    0fc0        ..      LSRS     r0,r0,#31
        0x1fff4ce8:    0052        R.      LSLS     r2,r2,#1
        0x1fff4cea:    e000        ..      B        0x1fff4cee ; ll_hw_go1 + 338
        0x1fff4cec:    e015        ..      B        0x1fff4d1a ; ll_hw_go1 + 382
        0x1fff4cee:    1852        R.      ADDS     r2,r2,r1
        0x1fff4cf0:    7050        Pp      STRB     r0,[r2,#1]
        0x1fff4cf2:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff4e28] = 0x40031000
        0x1fff4cf4:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff4cf6:    6802        .h      LDR      r2,[r0,#0]
        0x1fff4cf8:    1583        ..      ASRS     r3,r0,#22
        0x1fff4cfa:    431a        .C      ORRS     r2,r2,r3
        0x1fff4cfc:    6002        .`      STR      r2,[r0,#0]
        0x1fff4cfe:    6802        .h      LDR      r2,[r0,#0]
        0x1fff4d00:    7923        #y      LDRB     r3,[r4,#4]
        0x1fff4d02:    0852        R.      LSRS     r2,r2,#1
        0x1fff4d04:    0052        R.      LSLS     r2,r2,#1
        0x1fff4d06:    005b        [.      LSLS     r3,r3,#1
        0x1fff4d08:    1859        Y.      ADDS     r1,r3,r1
        0x1fff4d0a:    7849        Ix      LDRB     r1,[r1,#1]
        0x1fff4d0c:    430a        .C      ORRS     r2,r2,r1
        0x1fff4d0e:    6002        .`      STR      r2,[r0,#0]
        0x1fff4d10:    2102        .!      MOVS     r1,#2
        0x1fff4d12:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff4d14:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4d16:    f000fa2b    ..+.    BL       llbuf_alloc_time_statics ; 0x1fff5170
        0x1fff4d1a:    4948        HI      LDR      r1,[pc,#288] ; [0x1fff4e3c] = 0x40030080
        0x1fff4d1c:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff4d1e:    4a48        HJ      LDR      r2,[pc,#288] ; [0x1fff4e40] = 0x1fff098c
        0x1fff4d20:    b2c0        ..      UXTB     r0,r0
        0x1fff4d22:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4d24:    2a00        .*      CMP      r2,#0
        0x1fff4d26:    d117        ..      BNE      0x1fff4d58 ; ll_hw_go1 + 444
        0x1fff4d28:    4a46        FJ      LDR      r2,[pc,#280] ; [0x1fff4e44] = 0x1fff0a68
        0x1fff4d2a:    2300        .#      MOVS     r3,#0
        0x1fff4d2c:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4d2e:    2b00        .+      CMP      r3,#0
        0x1fff4d30:    4b45        EK      LDR      r3,[pc,#276] ; [0x1fff4e48] = 0
        0x1fff4d32:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4d34:    db06        ..      BLT      0x1fff4d44 ; ll_hw_go1 + 424
        0x1fff4d36:    041b        ..      LSLS     r3,r3,#16
        0x1fff4d38:    2600        .&      MOVS     r6,#0
        0x1fff4d3a:    5796        .W      LDRSB    r6,[r2,r6]
        0x1fff4d3c:    0232        2.      LSLS     r2,r6,#8
        0x1fff4d3e:    189a        ..      ADDS     r2,r3,r2
        0x1fff4d40:    1812        ..      ADDS     r2,r2,r0
        0x1fff4d42:    e008        ..      B        0x1fff4d56 ; ll_hw_go1 + 442
        0x1fff4d44:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4d46:    041b        ..      LSLS     r3,r3,#16
        0x1fff4d48:    2600        .&      MOVS     r6,#0
        0x1fff4d4a:    5796        .W      LDRSB    r6,[r2,r6]
        0x1fff4d4c:    0232        2.      LSLS     r2,r6,#8
        0x1fff4d4e:    189a        ..      ADDS     r2,r3,r2
        0x1fff4d50:    4b3e        >K      LDR      r3,[pc,#248] ; [0x1fff4e4c] = 0xfeff
        0x1fff4d52:    1812        ..      ADDS     r2,r2,r0
        0x1fff4d54:    18d2        ..      ADDS     r2,r2,r3
        0x1fff4d56:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff4d58:    2802        .(      CMP      r0,#2
        0x1fff4d5a:    d201        ..      BCS      0x1fff4d60 ; ll_hw_go1 + 452
        0x1fff4d5c:    2002        .       MOVS     r0,#2
        0x1fff4d5e:    e002        ..      B        0x1fff4d66 ; ll_hw_go1 + 458
        0x1fff4d60:    2850        P(      CMP      r0,#0x50
        0x1fff4d62:    d900        ..      BLS      0x1fff4d66 ; ll_hw_go1 + 458
        0x1fff4d64:    2050        P       MOVS     r0,#0x50
        0x1fff4d66:    4a3a        :J      LDR      r2,[pc,#232] ; [0x1fff4e50] = 0x1fff0a49
        0x1fff4d68:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4d6a:    2a02        .*      CMP      r2,#2
        0x1fff4d6c:    d011        ..      BEQ      0x1fff4d92 ; ll_hw_go1 + 502
        0x1fff4d6e:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff4e54] = 0x1fff0a44
        0x1fff4d70:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d72:    4b39        9K      LDR      r3,[pc,#228] ; [0x1fff4e58] = 0x1fff0a45
        0x1fff4d74:    781f        .x      LDRB     r7,[r3,#0]
        0x1fff4d76:    42be        .B      CMP      r6,r7
        0x1fff4d78:    d90f        ..      BLS      0x1fff4d9a ; ll_hw_go1 + 510
        0x1fff4d7a:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d7c:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff4d7e:    1af3        ..      SUBS     r3,r6,r3
        0x1fff4d80:    1e80        ..      SUBS     r0,r0,#2
        0x1fff4d82:    1040        @.      ASRS     r0,r0,#1
        0x1fff4d84:    4343        CC      MULS     r3,r0,r3
        0x1fff4d86:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4d88:    0140        @.      LSLS     r0,r0,#5
        0x1fff4d8a:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff4d8c:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff4d8e:    1140        @.      ASRS     r0,r0,#5
        0x1fff4d90:    e004        ..      B        0x1fff4d9c ; ll_hw_go1 + 512
        0x1fff4d92:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff4e5c] = 0x1fff0a46
        0x1fff4d94:    7816        .x      LDRB     r6,[r2,#0]
        0x1fff4d96:    4b32        2K      LDR      r3,[pc,#200] ; [0x1fff4e60] = 0x1fff0a47
        0x1fff4d98:    e7ec        ..      B        0x1fff4d74 ; ll_hw_go1 + 472
        0x1fff4d9a:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4d9c:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff4d9e:    0a12        ..      LSRS     r2,r2,#8
        0x1fff4da0:    0212        ..      LSLS     r2,r2,#8
        0x1fff4da2:    4310        .C      ORRS     r0,r0,r2
        0x1fff4da4:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff4da6:    2d05        .-      CMP      r5,#5
        0x1fff4da8:    d001        ..      BEQ      0x1fff4dae ; ll_hw_go1 + 530
        0x1fff4daa:    2d04        .-      CMP      r5,#4
        0x1fff4dac:    d116        ..      BNE      0x1fff4ddc ; ll_hw_go1 + 576
        0x1fff4dae:    482d        -H      LDR      r0,[pc,#180] ; [0x1fff4e64] = 0x1fff08f9
        0x1fff4db0:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4db2:    2800        .(      CMP      r0,#0
        0x1fff4db4:    d006        ..      BEQ      0x1fff4dc4 ; ll_hw_go1 + 552
        0x1fff4db6:    482c        ,H      LDR      r0,[pc,#176] ; [0x1fff4e68] = 0x1fff0922
        0x1fff4db8:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4dba:    2800        .(      CMP      r0,#0
        0x1fff4dbc:    d002        ..      BEQ      0x1fff4dc4 ; ll_hw_go1 + 552
        0x1fff4dbe:    2000        .       MOVS     r0,#0
        0x1fff4dc0:    f7fcff72    ..r.    BL       $Ven$TT$L$$set_max_length ; 0x1fff1ca8
        0x1fff4dc4:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff4dc6:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff4dc8:    3402        .4      ADDS     r4,#2
        0x1fff4dca:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff4dcc:    2804        .(      CMP      r0,#4
        0x1fff4dce:    d001        ..      BEQ      0x1fff4dd4 ; ll_hw_go1 + 568
        0x1fff4dd0:    2803        .(      CMP      r0,#3
        0x1fff4dd2:    d103        ..      BNE      0x1fff4ddc ; ll_hw_go1 + 576
        0x1fff4dd4:    20ff        .       MOVS     r0,#0xff
        0x1fff4dd6:    305f        _0      ADDS     r0,r0,#0x5f
        0x1fff4dd8:    f7fcfe40    ..@.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff4ddc:    2d02        .-      CMP      r5,#2
        0x1fff4dde:    d112        ..      BNE      0x1fff4e06 ; ll_hw_go1 + 618
        0x1fff4de0:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff4e6c] = 0x1fff091c
        0x1fff4de2:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4de4:    2801        .(      CMP      r0,#1
        0x1fff4de6:    d007        ..      BEQ      0x1fff4df8 ; ll_hw_go1 + 604
        0x1fff4de8:    2803        .(      CMP      r0,#3
        0x1fff4dea:    d005        ..      BEQ      0x1fff4df8 ; ll_hw_go1 + 604
        0x1fff4dec:    2802        .(      CMP      r0,#2
        0x1fff4dee:    d003        ..      BEQ      0x1fff4df8 ; ll_hw_go1 + 604
        0x1fff4df0:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff4e70] = 0x1fff0923
        0x1fff4df2:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4df4:    2802        .(      CMP      r0,#2
        0x1fff4df6:    d106        ..      BNE      0x1fff4e06 ; ll_hw_go1 + 618
        0x1fff4df8:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff4e40] = 0x1fff098c
        0x1fff4dfa:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4dfc:    2800        .(      CMP      r0,#0
        0x1fff4dfe:    d102        ..      BNE      0x1fff4e06 ; ll_hw_go1 + 618
        0x1fff4e00:    206c        l       MOVS     r0,#0x6c
        0x1fff4e02:    f7fcfe2b    ..+.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff4e06:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff4e74] = 0x1fff0bbc
        0x1fff4e08:    2001        .       MOVS     r0,#1
        0x1fff4e0a:    82c8        ..      STRH     r0,[r1,#0x16]
        0x1fff4e0c:    b009        ..      ADD      sp,sp,#0x24
        0x1fff4e0e:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff4e10:    1fff0d30    0...    DCD    536808752
        0x1fff4e14:    1fff0934    4...    DCD    536807732
        0x1fff4e18:    1fff0998    ....    DCD    536807832
        0x1fff4e1c:    1fff0ffc    ....    DCD    536809468
        0x1fff4e20:    1fff6bd0    .k..    DCD    536832976
        0x1fff4e24:    00003fff    .?..    DCD    16383
        0x1fff4e28:    40031000    ...@    DCD    1073942528
        0x1fff4e2c:    00000271    q...    DCD    625
        0x1fff4e30:    1fff0917    ....    DCD    536807703
        0x1fff4e34:    1fff0916    ....    DCD    536807702
        0x1fff4e38:    1fff79c8    .y..    DCD    536836552
        0x1fff4e3c:    40030080    ...@    DCD    1073938560
        0x1fff4e40:    1fff098c    ....    DCD    536807820
        0x1fff4e44:    1fff0a68    h...    DCD    536808040
        0x1fff4e48:    00000000    ....    DCD    0
        0x1fff4e4c:    0000feff    ....    DCD    65279
        0x1fff4e50:    1fff0a49    I...    DCD    536808009
        0x1fff4e54:    1fff0a44    D...    DCD    536808004
        0x1fff4e58:    1fff0a45    E...    DCD    536808005
        0x1fff4e5c:    1fff0a46    F...    DCD    536808006
        0x1fff4e60:    1fff0a47    G...    DCD    536808007
        0x1fff4e64:    1fff08f9    ....    DCD    536807673
        0x1fff4e68:    1fff0922    "...    DCD    536807714
        0x1fff4e6c:    1fff091c    ....    DCD    536807708
        0x1fff4e70:    1fff0923    #...    DCD    536807715
        0x1fff4e74:    1fff0bbc    ....    DCD    536808380
    $t
    i.ll_hw_read_tfifo_rtlp1
    ll_hw_read_tfifo_rtlp1
        0x1fff4e78:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4e7a:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff4f40] = 0x1fff0d30
        0x1fff4e7c:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4e7e:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4e80:    0089        ..      LSLS     r1,r1,#2
        0x1fff4e82:    4348        HC      MULS     r0,r1,r0
        0x1fff4e84:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff4f44] = 0x1fff0934
        0x1fff4e86:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4e88:    1844        D.      ADDS     r4,r0,r1
        0x1fff4e8a:    4626        &F      MOV      r6,r4
        0x1fff4e8c:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4e8e:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4e90:    2000        .       MOVS     r0,#0
        0x1fff4e92:    6af1        .j      LDR      r1,[r6,#0x2c]
        0x1fff4e94:    4635        5F      MOV      r5,r6
        0x1fff4e96:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff4e98:    6008        .`      STR      r0,[r1,#0]
        0x1fff4e9a:    7428        (t      STRB     r0,[r5,#0x10]
        0x1fff4e9c:    482a        *H      LDR      r0,[pc,#168] ; [0x1fff4f48] = 0x40031040
        0x1fff4e9e:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1fff4ea0:    054a        J.      LSLS     r2,r1,#21
        0x1fff4ea2:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff4ea4:    0d52        R.      LSRS     r2,r2,#21
        0x1fff4ea6:    0149        I.      LSLS     r1,r1,#5
        0x1fff4ea8:    0d4b        K.      LSRS     r3,r1,#21
        0x1fff4eaa:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x1fff4eac:    4f27        'O      LDR      r7,[pc,#156] ; [0x1fff4f4c] = 0x7ff0000
        0x1fff4eae:    4039        9@      ANDS     r1,r1,r7
        0x1fff4eb0:    4311        .C      ORRS     r1,r1,r2
        0x1fff4eb2:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff4eb4:    1a9f        ..      SUBS     r7,r3,r2
        0x1fff4eb6:    e01e        ..      B        0x1fff4ef6 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4eb8:    6af0        .j      LDR      r0,[r6,#0x2c]
        0x1fff4eba:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4ebc:    2900        .)      CMP      r1,#0
        0x1fff4ebe:    d01e        ..      BEQ      0x1fff4efe ; ll_hw_read_tfifo_rtlp1 + 134
        0x1fff4ec0:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff4f50] = 0x1fff0915
        0x1fff4ec2:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff4ec4:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff4ec6:    4288        .B      CMP      r0,r1
        0x1fff4ec8:    d215        ..      BCS      0x1fff4ef6 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4eca:    0080        ..      LSLS     r0,r0,#2
        0x1fff4ecc:    1900        ..      ADDS     r0,r0,r4
        0x1fff4ece:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4ed0:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff4ed2:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff4ed4:    2800        .(      CMP      r0,#0
        0x1fff4ed6:    d00e        ..      BEQ      0x1fff4ef6 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4ed8:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4eda:    f7fcfeeb    ....    BL       $Ven$TT$L$$ll_hw_read_tfifo_packet ; 0x1fff1cb4
        0x1fff4ede:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4ee0:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff4ee2:    0081        ..      LSLS     r1,r0,#2
        0x1fff4ee4:    1909        ..      ADDS     r1,r1,r4
        0x1fff4ee6:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4ee8:    3181        .1      ADDS     r1,r1,#0x81
        0x1fff4eea:    6b09        .k      LDR      r1,[r1,#0x30]
        0x1fff4eec:    8889        ..      LDRH     r1,[r1,#4]
        0x1fff4eee:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4ef0:    d001        ..      BEQ      0x1fff4ef6 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4ef2:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4ef4:    7428        (t      STRB     r0,[r5,#0x10]
        0x1fff4ef6:    2f00        ./      CMP      r7,#0
        0x1fff4ef8:    dcde        ..      BGT      0x1fff4eb8 ; ll_hw_read_tfifo_rtlp1 + 64
        0x1fff4efa:    7c2d        -|      LDRB     r5,[r5,#0x10]
        0x1fff4efc:    e01c        ..      B        0x1fff4f38 ; ll_hw_read_tfifo_rtlp1 + 192
        0x1fff4efe:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4f00:    f7fcfed8    ....    BL       $Ven$TT$L$$ll_hw_read_tfifo_packet ; 0x1fff1cb4
        0x1fff4f04:    1a3f        ?.      SUBS     r7,r7,r0
        0x1fff4f06:    6af1        .j      LDR      r1,[r6,#0x2c]
        0x1fff4f08:    2001        .       MOVS     r0,#1
        0x1fff4f0a:    6008        .`      STR      r0,[r1,#0]
        0x1fff4f0c:    e7f3        ..      B        0x1fff4ef6 ; ll_hw_read_tfifo_rtlp1 + 126
        0x1fff4f0e:    00a8        ..      LSLS     r0,r5,#2
        0x1fff4f10:    1906        ..      ADDS     r6,r0,r4
        0x1fff4f12:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4f14:    3681        .6      ADDS     r6,r6,#0x81
        0x1fff4f16:    6b31        1k      LDR      r1,[r6,#0x30]
        0x1fff4f18:    2900        .)      CMP      r1,#0
        0x1fff4f1a:    d00b        ..      BEQ      0x1fff4f34 ; ll_hw_read_tfifo_rtlp1 + 188
        0x1fff4f1c:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff4f40] = 0x1fff0d30
        0x1fff4f1e:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4f20:    f000f862    ..b.    BL       ll_osal_mem_free ; 0x1fff4fe8
        0x1fff4f24:    2000        .       MOVS     r0,#0
        0x1fff4f26:    6330        0c      STR      r0,[r6,#0x30]
        0x1fff4f28:    2005        .       MOVS     r0,#5
        0x1fff4f2a:    01c0        ..      LSLS     r0,r0,#7
        0x1fff4f2c:    1820         .      ADDS     r0,r4,r0
        0x1fff4f2e:    7881        .x      LDRB     r1,[r0,#2]
        0x1fff4f30:    1e49        I.      SUBS     r1,r1,#1
        0x1fff4f32:    7081        .p      STRB     r1,[r0,#2]
        0x1fff4f34:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4f36:    b2ed        ..      UXTB     r5,r5
        0x1fff4f38:    2d08        .-      CMP      r5,#8
        0x1fff4f3a:    d3e8        ..      BCC      0x1fff4f0e ; ll_hw_read_tfifo_rtlp1 + 150
        0x1fff4f3c:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff4f3e:    0000        ..      DCW    0
        0x1fff4f40:    1fff0d30    0...    DCD    536808752
        0x1fff4f44:    1fff0934    4...    DCD    536807732
        0x1fff4f48:    40031040    @..@    DCD    1073942592
        0x1fff4f4c:    07ff0000    ....    DCD    134152192
        0x1fff4f50:    1fff0915    ....    DCD    536807701
    $t
    i.ll_osal_mem_alloc
    ll_osal_mem_alloc
        0x1fff4f54:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff4f56:    b084        ..      SUB      sp,sp,#0x10
        0x1fff4f58:    460c        .F      MOV      r4,r1
        0x1fff4f5a:    f7fcfcd1    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4f5e:    4d1c        .M      LDR      r5,[pc,#112] ; [0x1fff4fd0] = 0x1fff08d8
        0x1fff4f60:    4e1c        .N      LDR      r6,[pc,#112] ; [0x1fff4fd4] = 0x1fff08d4
        0x1fff4f62:    6828        (h      LDR      r0,[r5,#0]
        0x1fff4f64:    9002        ..      STR      r0,[sp,#8]
        0x1fff4f66:    6830        0h      LDR      r0,[r6,#0]
        0x1fff4f68:    4f1b        .O      LDR      r7,[pc,#108] ; [0x1fff4fd8] = 0x1fff08dc
        0x1fff4f6a:    9001        ..      STR      r0,[sp,#4]
        0x1fff4f6c:    6838        8h      LDR      r0,[r7,#0]
        0x1fff4f6e:    9000        ..      STR      r0,[sp,#0]
        0x1fff4f70:    481a        .H      LDR      r0,[pc,#104] ; [0x1fff4fdc] = 0x1fff6bd0
        0x1fff4f72:    6b81        .k      LDR      r1,[r0,#0x38]
        0x1fff4f74:    6029        )`      STR      r1,[r5,#0]
        0x1fff4f76:    6bc1        .k      LDR      r1,[r0,#0x3c]
        0x1fff4f78:    6031        1`      STR      r1,[r6,#0]
        0x1fff4f7a:    6c00        .l      LDR      r0,[r0,#0x40]
        0x1fff4f7c:    6038        8`      STR      r0,[r7,#0]
        0x1fff4f7e:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff4fe0] = 0x1fff08d0
        0x1fff4f80:    2100        .!      MOVS     r1,#0
        0x1fff4f82:    7001        .p      STRB     r1,[r0,#0]
        0x1fff4f84:    4620         F      MOV      r0,r4
        0x1fff4f86:    f7fcfe9b    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff1cc0
        0x1fff4f8a:    4604        .F      MOV      r4,r0
        0x1fff4f8c:    9802        ..      LDR      r0,[sp,#8]
        0x1fff4f8e:    6028        (`      STR      r0,[r5,#0]
        0x1fff4f90:    9801        ..      LDR      r0,[sp,#4]
        0x1fff4f92:    6030        0`      STR      r0,[r6,#0]
        0x1fff4f94:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4f96:    6038        8`      STR      r0,[r7,#0]
        0x1fff4f98:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff4fe0] = 0x1fff08d0
        0x1fff4f9a:    2201        ."      MOVS     r2,#1
        0x1fff4f9c:    7002        .p      STRB     r2,[r0,#0]
        0x1fff4f9e:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff4fa0:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff4fe4] = 0x1fff79e8
        0x1fff4fa2:    251c        .%      MOVS     r5,#0x1c
        0x1fff4fa4:    4369        iC      MULS     r1,r5,r1
        0x1fff4fa6:    18c9        ..      ADDS     r1,r1,r3
        0x1fff4fa8:    2c00        .,      CMP      r4,#0
        0x1fff4faa:    d003        ..      BEQ      0x1fff4fb4 ; ll_osal_mem_alloc + 96
        0x1fff4fac:    7e08        .~      LDRB     r0,[r1,#0x18]
        0x1fff4fae:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4fb0:    7608        .v      STRB     r0,[r1,#0x18]
        0x1fff4fb2:    e007        ..      B        0x1fff4fc4 ; ll_osal_mem_alloc + 112
        0x1fff4fb4:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff4fb6:    00c0        ..      LSLS     r0,r0,#3
        0x1fff4fb8:    5c0b        .\      LDRB     r3,[r1,r0]
        0x1fff4fba:    2b00        .+      CMP      r3,#0
        0x1fff4fbc:    d102        ..      BNE      0x1fff4fc4 ; ll_osal_mem_alloc + 112
        0x1fff4fbe:    540a        .T      STRB     r2,[r1,r0]
        0x1fff4fc0:    1808        ..      ADDS     r0,r1,r0
        0x1fff4fc2:    6844        Dh      LDR      r4,[r0,#4]
        0x1fff4fc4:    f7fcfca8    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff4fc8:    4620         F      MOV      r0,r4
        0x1fff4fca:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff4fcc:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff4fce:    0000        ..      DCW    0
        0x1fff4fd0:    1fff08d8    ....    DCD    536807640
        0x1fff4fd4:    1fff08d4    ....    DCD    536807636
        0x1fff4fd8:    1fff08dc    ....    DCD    536807644
        0x1fff4fdc:    1fff6bd0    .k..    DCD    536832976
        0x1fff4fe0:    1fff08d0    ....    DCD    536807632
        0x1fff4fe4:    1fff79e8    .y..    DCD    536836584
    $t
    i.ll_osal_mem_free
    ll_osal_mem_free
        0x1fff4fe8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4fea:    460c        .F      MOV      r4,r1
        0x1fff4fec:    4605        .F      MOV      r5,r0
        0x1fff4fee:    f7fcfc87    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff4ff2:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff5034] = 0x1fff79e8
        0x1fff4ff4:    211c        .!      MOVS     r1,#0x1c
        0x1fff4ff6:    2200        ."      MOVS     r2,#0
        0x1fff4ff8:    434d        MC      MULS     r5,r1,r5
        0x1fff4ffa:    1828        (.      ADDS     r0,r5,r0
        0x1fff4ffc:    00d1        ..      LSLS     r1,r2,#3
        0x1fff4ffe:    5c43        C\      LDRB     r3,[r0,r1]
        0x1fff5000:    2b00        .+      CMP      r3,#0
        0x1fff5002:    d009        ..      BEQ      0x1fff5018 ; ll_osal_mem_free + 48
        0x1fff5004:    1841        A.      ADDS     r1,r0,r1
        0x1fff5006:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff5008:    42a1        .B      CMP      r1,r4
        0x1fff500a:    d105        ..      BNE      0x1fff5018 ; ll_osal_mem_free + 48
        0x1fff500c:    2100        .!      MOVS     r1,#0
        0x1fff500e:    00d2        ..      LSLS     r2,r2,#3
        0x1fff5010:    5481        .T      STRB     r1,[r0,r2]
        0x1fff5012:    f7fcfc81    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5016:    bd70        p.      POP      {r4-r6,pc}
        0x1fff5018:    1c52        R.      ADDS     r2,r2,#1
        0x1fff501a:    b2d2        ..      UXTB     r2,r2
        0x1fff501c:    2a03        .*      CMP      r2,#3
        0x1fff501e:    d3ed        ..      BCC      0x1fff4ffc ; ll_osal_mem_free + 20
        0x1fff5020:    1f24        $.      SUBS     r4,r4,#4
        0x1fff5022:    8821        !.      LDRH     r1,[r4,#0]
        0x1fff5024:    0449        I.      LSLS     r1,r1,#17
        0x1fff5026:    0c49        I.      LSRS     r1,r1,#17
        0x1fff5028:    8021        !.      STRH     r1,[r4,#0]
        0x1fff502a:    7e01        .~      LDRB     r1,[r0,#0x18]
        0x1fff502c:    1e49        I.      SUBS     r1,r1,#1
        0x1fff502e:    7601        .v      STRB     r1,[r0,#0x18]
        0x1fff5030:    e7ef        ..      B        0x1fff5012 ; ll_osal_mem_free + 42
    $d
        0x1fff5032:    0000        ..      DCW    0
        0x1fff5034:    1fff79e8    .y..    DCD    536836584
    $t
    i.ll_patch_restore
    ll_patch_restore
        0x1fff5038:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff503a:    4a11        .J      LDR      r2,[pc,#68] ; [0x1fff5080] = 0x1fff6c29
        0x1fff503c:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff5084] = 0x1fff787c
        0x1fff503e:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff5088] = 0x1fff0000
        0x1fff5040:    2800        .(      CMP      r0,#0
        0x1fff5042:    d00e        ..      BEQ      0x1fff5062 ; ll_patch_restore + 42
        0x1fff5044:    2000        .       MOVS     r0,#0
        0x1fff5046:    5c14        .\      LDRB     r4,[r2,r0]
        0x1fff5048:    2c00        .,      CMP      r4,#0
        0x1fff504a:    d006        ..      BEQ      0x1fff505a ; ll_patch_restore + 34
        0x1fff504c:    0085        ..      LSLS     r5,r0,#2
        0x1fff504e:    595d        ]Y      LDR      r5,[r3,r5]
        0x1fff5050:    2d00        .-      CMP      r5,#0
        0x1fff5052:    d002        ..      BEQ      0x1fff505a ; ll_patch_restore + 34
        0x1fff5054:    00a4        ..      LSLS     r4,r4,#2
        0x1fff5056:    1864        d.      ADDS     r4,r4,r1
        0x1fff5058:    6025        %`      STR      r5,[r4,#0]
        0x1fff505a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff505c:    2810        .(      CMP      r0,#0x10
        0x1fff505e:    dbf2        ..      BLT      0x1fff5046 ; ll_patch_restore + 14
        0x1fff5060:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff5062:    2000        .       MOVS     r0,#0
        0x1fff5064:    4604        .F      MOV      r4,r0
        0x1fff5066:    5c15        .\      LDRB     r5,[r2,r0]
        0x1fff5068:    2d00        .-      CMP      r5,#0
        0x1fff506a:    d005        ..      BEQ      0x1fff5078 ; ll_patch_restore + 64
        0x1fff506c:    00ad        ..      LSLS     r5,r5,#2
        0x1fff506e:    186d        m.      ADDS     r5,r5,r1
        0x1fff5070:    0087        ..      LSLS     r7,r0,#2
        0x1fff5072:    682e        .h      LDR      r6,[r5,#0]
        0x1fff5074:    51de        .Q      STR      r6,[r3,r7]
        0x1fff5076:    602c        ,`      STR      r4,[r5,#0]
        0x1fff5078:    1c40        @.      ADDS     r0,r0,#1
        0x1fff507a:    2810        .(      CMP      r0,#0x10
        0x1fff507c:    dbf3        ..      BLT      0x1fff5066 ; ll_patch_restore + 46
        0x1fff507e:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff5080:    1fff6c29    )l..    DCD    536833065
        0x1fff5084:    1fff787c    |x..    DCD    536836220
        0x1fff5088:    1fff0000    ....    DCD    536805376
    $t
    i.ll_processBasicIRQ_SRX
    ll_processBasicIRQ_SRX
        0x1fff508c:    b510        ..      PUSH     {r4,lr}
        0x1fff508e:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff50a0] = 0x1fff0280
        0x1fff5090:    6809        .h      LDR      r1,[r1,#0]
        0x1fff5092:    2900        .)      CMP      r1,#0
        0x1fff5094:    d001        ..      BEQ      0x1fff509a ; ll_processBasicIRQ_SRX + 14
        0x1fff5096:    4788        .G      BLX      r1
        0x1fff5098:    bd10        ..      POP      {r4,pc}
        0x1fff509a:    f7fcfcc7    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff509e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50a0:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_ScanTRX
    ll_processBasicIRQ_ScanTRX
        0x1fff50a4:    b510        ..      PUSH     {r4,lr}
        0x1fff50a6:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff50b8] = 0x1fff0280
        0x1fff50a8:    6889        .h      LDR      r1,[r1,#8]
        0x1fff50aa:    2900        .)      CMP      r1,#0
        0x1fff50ac:    d001        ..      BEQ      0x1fff50b2 ; ll_processBasicIRQ_ScanTRX + 14
        0x1fff50ae:    4788        .G      BLX      r1
        0x1fff50b0:    bd10        ..      POP      {r4,pc}
        0x1fff50b2:    f7fcfcbb    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff50b6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50b8:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secScanTRX
    ll_processBasicIRQ_secScanTRX
        0x1fff50bc:    b510        ..      PUSH     {r4,lr}
        0x1fff50be:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff50d0] = 0x1fff0280
        0x1fff50c0:    6989        .i      LDR      r1,[r1,#0x18]
        0x1fff50c2:    2900        .)      CMP      r1,#0
        0x1fff50c4:    d001        ..      BEQ      0x1fff50ca ; ll_processBasicIRQ_secScanTRX + 14
        0x1fff50c6:    4788        .G      BLX      r1
        0x1fff50c8:    bd10        ..      POP      {r4,pc}
        0x1fff50ca:    f7fcfcaf    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff50ce:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50d0:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvSTX
    ll_processBasicIRQ_secondaryAdvSTX
        0x1fff50d4:    b510        ..      PUSH     {r4,lr}
        0x1fff50d6:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff50e8] = 0x1fff0280
        0x1fff50d8:    6949        Ii      LDR      r1,[r1,#0x14]
        0x1fff50da:    2900        .)      CMP      r1,#0
        0x1fff50dc:    d001        ..      BEQ      0x1fff50e2 ; ll_processBasicIRQ_secondaryAdvSTX + 14
        0x1fff50de:    4788        .G      BLX      r1
        0x1fff50e0:    bd10        ..      POP      {r4,pc}
        0x1fff50e2:    f7fcfca3    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff50e6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff50e8:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvTRX
    ll_processBasicIRQ_secondaryAdvTRX
        0x1fff50ec:    b510        ..      PUSH     {r4,lr}
        0x1fff50ee:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5100] = 0x1fff0280
        0x1fff50f0:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff50f2:    2900        .)      CMP      r1,#0
        0x1fff50f4:    d001        ..      BEQ      0x1fff50fa ; ll_processBasicIRQ_secondaryAdvTRX + 14
        0x1fff50f6:    4788        .G      BLX      r1
        0x1fff50f8:    bd10        ..      POP      {r4,pc}
        0x1fff50fa:    f7fcfc97    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff50fe:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5100:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryInitSRX
    ll_processBasicIRQ_secondaryInitSRX
        0x1fff5104:    b510        ..      PUSH     {r4,lr}
        0x1fff5106:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5118] = 0x1fff0280
        0x1fff5108:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff510a:    2900        .)      CMP      r1,#0
        0x1fff510c:    d001        ..      BEQ      0x1fff5112 ; ll_processBasicIRQ_secondaryInitSRX + 14
        0x1fff510e:    4788        .G      BLX      r1
        0x1fff5110:    bd10        ..      POP      {r4,pc}
        0x1fff5112:    f7fcfc8b    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff5116:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5118:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryScanSRX
    ll_processBasicIRQ_secondaryScanSRX
        0x1fff511c:    b510        ..      PUSH     {r4,lr}
        0x1fff511e:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5130] = 0x1fff0280
        0x1fff5120:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff5122:    2900        .)      CMP      r1,#0
        0x1fff5124:    d001        ..      BEQ      0x1fff512a ; ll_processBasicIRQ_secondaryScanSRX + 14
        0x1fff5126:    4788        .G      BLX      r1
        0x1fff5128:    bd10        ..      POP      {r4,pc}
        0x1fff512a:    f7fcfc7f    ....    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff1a2c
        0x1fff512e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5130:    1fff0280    ....    DCD    536806016
    $t
    i.ll_read_rxfifo1
    ll_read_rxfifo1
        0x1fff5134:    b510        ..      PUSH     {r4,lr}
        0x1fff5136:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff5160] = 0x1fff0d30
        0x1fff5138:    21a1        .!      MOVS     r1,#0xa1
        0x1fff513a:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff513c:    0089        ..      LSLS     r1,r1,#2
        0x1fff513e:    4348        HC      MULS     r0,r1,r0
        0x1fff5140:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff5164] = 0x1fff0934
        0x1fff5142:    6809        .h      LDR      r1,[r1,#0]
        0x1fff5144:    1840        @.      ADDS     r0,r0,r1
        0x1fff5146:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff5148:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff5168] = 0x1fff79c8
        0x1fff514a:    0040        @.      LSLS     r0,r0,#1
        0x1fff514c:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff514e:    2800        .(      CMP      r0,#0
        0x1fff5150:    d003        ..      BEQ      0x1fff515a ; ll_read_rxfifo1 + 38
        0x1fff5152:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff516c] = 0x1fff10e0
        0x1fff5154:    2000        .       MOVS     r0,#0
        0x1fff5156:    7188        .q      STRB     r0,[r1,#6]
        0x1fff5158:    bd10        ..      POP      {r4,pc}
        0x1fff515a:    f7fcfdb7    ....    BL       $Ven$TT$L$$ll_read_rxfifo0 ; 0x1fff1ccc
        0x1fff515e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5160:    1fff0d30    0...    DCD    536808752
        0x1fff5164:    1fff0934    4...    DCD    536807732
        0x1fff5168:    1fff79c8    .y..    DCD    536836552
        0x1fff516c:    1fff10e0    ....    DCD    536809696
    $t
    i.llbuf_alloc_time_statics
    llbuf_alloc_time_statics
        0x1fff5170:    b510        ..      PUSH     {r4,lr}
        0x1fff5172:    4604        .F      MOV      r4,r0
        0x1fff5174:    f7fcfc1e    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5178:    42a0        .B      CMP      r0,r4
        0x1fff517a:    d303        ..      BCC      0x1fff5184 ; llbuf_alloc_time_statics + 20
        0x1fff517c:    f7fcfc1a    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5180:    1b01        ..      SUBS     r1,r0,r4
        0x1fff5182:    e004        ..      B        0x1fff518e ; llbuf_alloc_time_statics + 30
        0x1fff5184:    f7fcfc16    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5188:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff51b0] = 0x3fffff
        0x1fff518a:    1b09        ..      SUBS     r1,r1,r4
        0x1fff518c:    1841        A.      ADDS     r1,r0,r1
        0x1fff518e:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff51b4] = 0x1fff6bd0
        0x1fff5190:    6a02        .j      LDR      r2,[r0,#0x20]
        0x1fff5192:    4291        .B      CMP      r1,r2
        0x1fff5194:    d200        ..      BCS      0x1fff5198 ; llbuf_alloc_time_statics + 40
        0x1fff5196:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff5198:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff519a:    4291        .B      CMP      r1,r2
        0x1fff519c:    d900        ..      BLS      0x1fff51a0 ; llbuf_alloc_time_statics + 48
        0x1fff519e:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff51a0:    6a42        Bj      LDR      r2,[r0,#0x24]
        0x1fff51a2:    00d3        ..      LSLS     r3,r2,#3
        0x1fff51a4:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff51a6:    1851        Q.      ADDS     r1,r2,r1
        0x1fff51a8:    08c9        ..      LSRS     r1,r1,#3
        0x1fff51aa:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff51ac:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff51ae:    0000        ..      DCW    0
        0x1fff51b0:    003fffff    ..?.    DCD    4194303
        0x1fff51b4:    1fff6bd0    .k..    DCD    536832976
    $t
    i.log_vsprintf
    log_vsprintf
        0x1fff51b8:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff51ba:    4606        .F      MOV      r6,r0
        0x1fff51bc:    b086        ..      SUB      sp,sp,#0x18
        0x1fff51be:    2000        .       MOVS     r0,#0
        0x1fff51c0:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff51c2:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff51c4:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff51c6:    e110        ..      B        0x1fff53ea ; log_vsprintf + 562
        0x1fff51c8:    2925        %)      CMP      r1,#0x25
        0x1fff51ca:    d00a        ..      BEQ      0x1fff51e2 ; log_vsprintf + 42
        0x1fff51cc:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff51ce:    2900        .)      CMP      r1,#0
        0x1fff51d0:    d001        ..      BEQ      0x1fff51d6 ; log_vsprintf + 30
        0x1fff51d2:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff51d4:    e002        ..      B        0x1fff51dc ; log_vsprintf + 36
        0x1fff51d6:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff51d8:    2000        .       MOVS     r0,#0
        0x1fff51da:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff51dc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff51de:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff51e0:    e100        ..      B        0x1fff53e4 ; log_vsprintf + 556
        0x1fff51e2:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff51e4:    2800        .(      CMP      r0,#0
        0x1fff51e6:    d005        ..      BEQ      0x1fff51f4 ; log_vsprintf + 60
        0x1fff51e8:    b281        ..      UXTH     r1,r0
        0x1fff51ea:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff51ec:    47b0        .G      BLX      r6
        0x1fff51ee:    2000        .       MOVS     r0,#0
        0x1fff51f0:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff51f2:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff51f4:    2500        .%      MOVS     r5,#0
        0x1fff51f6:    2204        ."      MOVS     r2,#4
        0x1fff51f8:    2308        .#      MOVS     r3,#8
        0x1fff51fa:    2110        .!      MOVS     r1,#0x10
        0x1fff51fc:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff51fe:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5200:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff5202:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5204:    282b        +(      CMP      r0,#0x2b
        0x1fff5206:    d019        ..      BEQ      0x1fff523c ; log_vsprintf + 132
        0x1fff5208:    dc04        ..      BGT      0x1fff5214 ; log_vsprintf + 92
        0x1fff520a:    2820         (      CMP      r0,#0x20
        0x1fff520c:    d018        ..      BEQ      0x1fff5240 ; log_vsprintf + 136
        0x1fff520e:    2823        #(      CMP      r0,#0x23
        0x1fff5210:    d104        ..      BNE      0x1fff521c ; log_vsprintf + 100
        0x1fff5212:    e017        ..      B        0x1fff5244 ; log_vsprintf + 140
        0x1fff5214:    282d        -(      CMP      r0,#0x2d
        0x1fff5216:    d00f        ..      BEQ      0x1fff5238 ; log_vsprintf + 128
        0x1fff5218:    2830        0(      CMP      r0,#0x30
        0x1fff521a:    d015        ..      BEQ      0x1fff5248 ; log_vsprintf + 144
        0x1fff521c:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x1fff521e:    2700        .'      MOVS     r7,#0
        0x1fff5220:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff5222:    43ff        .C      MVNS     r7,r7
        0x1fff5224:    4603        .F      MOV      r3,r0
        0x1fff5226:    3b30        0;      SUBS     r3,r3,#0x30
        0x1fff5228:    463c        <F      MOV      r4,r7
        0x1fff522a:    2b09        .+      CMP      r3,#9
        0x1fff522c:    d80f        ..      BHI      0x1fff524e ; log_vsprintf + 150
        0x1fff522e:    a807        ..      ADD      r0,sp,#0x1c
        0x1fff5230:    f001f876    ..v.    BL       skip_atoi ; 0x1fff6320
        0x1fff5234:    4604        .F      MOV      r4,r0
        0x1fff5236:    e015        ..      B        0x1fff5264 ; log_vsprintf + 172
        0x1fff5238:    430d        .C      ORRS     r5,r5,r1
        0x1fff523a:    e7df        ..      B        0x1fff51fc ; log_vsprintf + 68
        0x1fff523c:    4315        .C      ORRS     r5,r5,r2
        0x1fff523e:    e7dd        ..      B        0x1fff51fc ; log_vsprintf + 68
        0x1fff5240:    431d        .C      ORRS     r5,r5,r3
        0x1fff5242:    e7db        ..      B        0x1fff51fc ; log_vsprintf + 68
        0x1fff5244:    2020                MOVS     r0,#0x20
        0x1fff5246:    e000        ..      B        0x1fff524a ; log_vsprintf + 146
        0x1fff5248:    2001        .       MOVS     r0,#1
        0x1fff524a:    4305        .C      ORRS     r5,r5,r0
        0x1fff524c:    e7d6        ..      B        0x1fff51fc ; log_vsprintf + 68
        0x1fff524e:    282a        *(      CMP      r0,#0x2a
        0x1fff5250:    d108        ..      BNE      0x1fff5264 ; log_vsprintf + 172
        0x1fff5252:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5254:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff5256:    9207        ..      STR      r2,[sp,#0x1c]
        0x1fff5258:    c810        ..      LDM      r0!,{r4}
        0x1fff525a:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff525c:    2c00        .,      CMP      r4,#0
        0x1fff525e:    da01        ..      BGE      0x1fff5264 ; log_vsprintf + 172
        0x1fff5260:    4264        dB      RSBS     r4,r4,#0
        0x1fff5262:    430d        .C      ORRS     r5,r5,r1
        0x1fff5264:    9907        ..      LDR      r1,[sp,#0x1c]
        0x1fff5266:    4638        8F      MOV      r0,r7
        0x1fff5268:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff526a:    2a2e        .*      CMP      r2,#0x2e
        0x1fff526c:    d114        ..      BNE      0x1fff5298 ; log_vsprintf + 224
        0x1fff526e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5270:    9107        ..      STR      r1,[sp,#0x1c]
        0x1fff5272:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff5274:    4602        .F      MOV      r2,r0
        0x1fff5276:    3a30        0:      SUBS     r2,r2,#0x30
        0x1fff5278:    2a09        .*      CMP      r2,#9
        0x1fff527a:    d803        ..      BHI      0x1fff5284 ; log_vsprintf + 204
        0x1fff527c:    a807        ..      ADD      r0,sp,#0x1c
        0x1fff527e:    f001f84f    ..O.    BL       skip_atoi ; 0x1fff6320
        0x1fff5282:    e006        ..      B        0x1fff5292 ; log_vsprintf + 218
        0x1fff5284:    282a        *(      CMP      r0,#0x2a
        0x1fff5286:    d106        ..      BNE      0x1fff5296 ; log_vsprintf + 222
        0x1fff5288:    1c49        I.      ADDS     r1,r1,#1
        0x1fff528a:    9107        ..      STR      r1,[sp,#0x1c]
        0x1fff528c:    9908        ..      LDR      r1,[sp,#0x20]
        0x1fff528e:    c901        ..      LDM      r1!,{r0}
        0x1fff5290:    9108        ..      STR      r1,[sp,#0x20]
        0x1fff5292:    2800        .(      CMP      r0,#0
        0x1fff5294:    da00        ..      BGE      0x1fff5298 ; log_vsprintf + 224
        0x1fff5296:    2000        .       MOVS     r0,#0
        0x1fff5298:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x1fff529a:    4639        9F      MOV      r1,r7
        0x1fff529c:    7817        .x      LDRB     r7,[r2,#0]
        0x1fff529e:    2f68        h/      CMP      r7,#0x68
        0x1fff52a0:    d003        ..      BEQ      0x1fff52aa ; log_vsprintf + 242
        0x1fff52a2:    2f6c        l/      CMP      r7,#0x6c
        0x1fff52a4:    d001        ..      BEQ      0x1fff52aa ; log_vsprintf + 242
        0x1fff52a6:    2f4c        L/      CMP      r7,#0x4c
        0x1fff52a8:    d102        ..      BNE      0x1fff52b0 ; log_vsprintf + 248
        0x1fff52aa:    1c52        R.      ADDS     r2,r2,#1
        0x1fff52ac:    4639        9F      MOV      r1,r7
        0x1fff52ae:    9207        ..      STR      r2,[sp,#0x1c]
        0x1fff52b0:    9b07        ..      LDR      r3,[sp,#0x1c]
        0x1fff52b2:    220a        ."      MOVS     r2,#0xa
        0x1fff52b4:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff52b6:    2b6e        n+      CMP      r3,#0x6e
        0x1fff52b8:    d02c        ,.      BEQ      0x1fff5314 ; log_vsprintf + 348
        0x1fff52ba:    dc0c        ..      BGT      0x1fff52d6 ; log_vsprintf + 286
        0x1fff52bc:    2b63        c+      CMP      r3,#0x63
        0x1fff52be:    d02a        *.      BEQ      0x1fff5316 ; log_vsprintf + 350
        0x1fff52c0:    dc04        ..      BGT      0x1fff52cc ; log_vsprintf + 276
        0x1fff52c2:    2b41        A+      CMP      r3,#0x41
        0x1fff52c4:    d026        &.      BEQ      0x1fff5314 ; log_vsprintf + 348
        0x1fff52c6:    2b58        X+      CMP      r3,#0x58
        0x1fff52c8:    d111        ..      BNE      0x1fff52ee ; log_vsprintf + 310
        0x1fff52ca:    e09b        ..      B        0x1fff5404 ; log_vsprintf + 588
        0x1fff52cc:    2b64        d+      CMP      r3,#0x64
        0x1fff52ce:    d001        ..      BEQ      0x1fff52d4 ; log_vsprintf + 284
        0x1fff52d0:    2b69        i+      CMP      r3,#0x69
        0x1fff52d2:    d10c        ..      BNE      0x1fff52ee ; log_vsprintf + 310
        0x1fff52d4:    e09a        ..      B        0x1fff540c ; log_vsprintf + 596
        0x1fff52d6:    2b73        s+      CMP      r3,#0x73
        0x1fff52d8:    d03d        =.      BEQ      0x1fff5356 ; log_vsprintf + 414
        0x1fff52da:    dc04        ..      BGT      0x1fff52e6 ; log_vsprintf + 302
        0x1fff52dc:    2b6f        o+      CMP      r3,#0x6f
        0x1fff52de:    d077        w.      BEQ      0x1fff53d0 ; log_vsprintf + 536
        0x1fff52e0:    2b70        p+      CMP      r3,#0x70
        0x1fff52e2:    d104        ..      BNE      0x1fff52ee ; log_vsprintf + 310
        0x1fff52e4:    e064        d.      B        0x1fff53b0 ; log_vsprintf + 504
        0x1fff52e6:    2b75        u+      CMP      r3,#0x75
        0x1fff52e8:    d073        s.      BEQ      0x1fff53d2 ; log_vsprintf + 538
        0x1fff52ea:    2b78        x+      CMP      r3,#0x78
        0x1fff52ec:    d06f        o.      BEQ      0x1fff53ce ; log_vsprintf + 534
        0x1fff52ee:    2b25        %+      CMP      r3,#0x25
        0x1fff52f0:    d009        ..      BEQ      0x1fff5306 ; log_vsprintf + 334
        0x1fff52f2:    2025        %       MOVS     r0,#0x25
        0x1fff52f4:    4669        iF      MOV      r1,sp
        0x1fff52f6:    7208        .r      STRB     r0,[r1,#8]
        0x1fff52f8:    2101        .!      MOVS     r1,#1
        0x1fff52fa:    a802        ..      ADD      r0,sp,#8
        0x1fff52fc:    47b0        .G      BLX      r6
        0x1fff52fe:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff5300:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5302:    2900        .)      CMP      r1,#0
        0x1fff5304:    d075        u.      BEQ      0x1fff53f2 ; log_vsprintf + 570
        0x1fff5306:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff5308:    4669        iF      MOV      r1,sp
        0x1fff530a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff530c:    7208        .r      STRB     r0,[r1,#8]
        0x1fff530e:    2101        .!      MOVS     r1,#1
        0x1fff5310:    a802        ..      ADD      r0,sp,#8
        0x1fff5312:    47b0        .G      BLX      r6
        0x1fff5314:    e066        f.      B        0x1fff53e4 ; log_vsprintf + 556
        0x1fff5316:    06e8        ..      LSLS     r0,r5,#27
        0x1fff5318:    d409        ..      BMI      0x1fff532e ; log_vsprintf + 374
        0x1fff531a:    2520         %      MOVS     r5,#0x20
        0x1fff531c:    1e64        d.      SUBS     r4,r4,#1
        0x1fff531e:    2c00        .,      CMP      r4,#0
        0x1fff5320:    dd05        ..      BLE      0x1fff532e ; log_vsprintf + 374
        0x1fff5322:    4668        hF      MOV      r0,sp
        0x1fff5324:    7205        .r      STRB     r5,[r0,#8]
        0x1fff5326:    2101        .!      MOVS     r1,#1
        0x1fff5328:    a802        ..      ADD      r0,sp,#8
        0x1fff532a:    47b0        .G      BLX      r6
        0x1fff532c:    e7f6        ..      B        0x1fff531c ; log_vsprintf + 356
        0x1fff532e:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff5330:    466a        jF      MOV      r2,sp
        0x1fff5332:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff5334:    7211        .r      STRB     r1,[r2,#8]
        0x1fff5336:    1d00        ..      ADDS     r0,r0,#4
        0x1fff5338:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff533a:    2101        .!      MOVS     r1,#1
        0x1fff533c:    a802        ..      ADD      r0,sp,#8
        0x1fff533e:    47b0        .G      BLX      r6
        0x1fff5340:    2520         %      MOVS     r5,#0x20
        0x1fff5342:    e004        ..      B        0x1fff534e ; log_vsprintf + 406
        0x1fff5344:    4668        hF      MOV      r0,sp
        0x1fff5346:    7205        .r      STRB     r5,[r0,#8]
        0x1fff5348:    2101        .!      MOVS     r1,#1
        0x1fff534a:    a802        ..      ADD      r0,sp,#8
        0x1fff534c:    47b0        .G      BLX      r6
        0x1fff534e:    1e64        d.      SUBS     r4,r4,#1
        0x1fff5350:    2c00        .,      CMP      r4,#0
        0x1fff5352:    dcf7        ..      BGT      0x1fff5344 ; log_vsprintf + 396
        0x1fff5354:    e046        F.      B        0x1fff53e4 ; log_vsprintf + 556
        0x1fff5356:    9a08        ..      LDR      r2,[sp,#0x20]
        0x1fff5358:    ca02        ..      LDM      r2!,{r1}
        0x1fff535a:    9208        ..      STR      r2,[sp,#0x20]
        0x1fff535c:    9100        ..      STR      r1,[sp,#0]
        0x1fff535e:    2900        .)      CMP      r1,#0
        0x1fff5360:    d101        ..      BNE      0x1fff5366 ; log_vsprintf + 430
        0x1fff5362:    a12d        -.      ADR      r1,{pc}+0xb6 ; 0x1fff5418
        0x1fff5364:    9100        ..      STR      r1,[sp,#0]
        0x1fff5366:    460a        .F      MOV      r2,r1
        0x1fff5368:    e000        ..      B        0x1fff536c ; log_vsprintf + 436
        0x1fff536a:    1c49        I.      ADDS     r1,r1,#1
        0x1fff536c:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff536e:    2b00        .+      CMP      r3,#0
        0x1fff5370:    d001        ..      BEQ      0x1fff5376 ; log_vsprintf + 446
        0x1fff5372:    1e40        @.      SUBS     r0,r0,#1
        0x1fff5374:    d2f9        ..      BCS      0x1fff536a ; log_vsprintf + 434
        0x1fff5376:    1a8f        ..      SUBS     r7,r1,r2
        0x1fff5378:    06e8        ..      LSLS     r0,r5,#27
        0x1fff537a:    d40a        ..      BMI      0x1fff5392 ; log_vsprintf + 474
        0x1fff537c:    2520         %      MOVS     r5,#0x20
        0x1fff537e:    4620         F      MOV      r0,r4
        0x1fff5380:    1e64        d.      SUBS     r4,r4,#1
        0x1fff5382:    42b8        .B      CMP      r0,r7
        0x1fff5384:    dd05        ..      BLE      0x1fff5392 ; log_vsprintf + 474
        0x1fff5386:    4668        hF      MOV      r0,sp
        0x1fff5388:    7205        .r      STRB     r5,[r0,#8]
        0x1fff538a:    2101        .!      MOVS     r1,#1
        0x1fff538c:    a802        ..      ADD      r0,sp,#8
        0x1fff538e:    47b0        .G      BLX      r6
        0x1fff5390:    e7f5        ..      B        0x1fff537e ; log_vsprintf + 454
        0x1fff5392:    b2b9        ..      UXTH     r1,r7
        0x1fff5394:    9800        ..      LDR      r0,[sp,#0]
        0x1fff5396:    47b0        .G      BLX      r6
        0x1fff5398:    2520         %      MOVS     r5,#0x20
        0x1fff539a:    e004        ..      B        0x1fff53a6 ; log_vsprintf + 494
        0x1fff539c:    4668        hF      MOV      r0,sp
        0x1fff539e:    7205        .r      STRB     r5,[r0,#8]
        0x1fff53a0:    2101        .!      MOVS     r1,#1
        0x1fff53a2:    a802        ..      ADD      r0,sp,#8
        0x1fff53a4:    47b0        .G      BLX      r6
        0x1fff53a6:    4620         F      MOV      r0,r4
        0x1fff53a8:    1e64        d.      SUBS     r4,r4,#1
        0x1fff53aa:    42b8        .B      CMP      r0,r7
        0x1fff53ac:    dcf6        ..      BGT      0x1fff539c ; log_vsprintf + 484
        0x1fff53ae:    e019        ..      B        0x1fff53e4 ; log_vsprintf + 556
        0x1fff53b0:    1c61        a.      ADDS     r1,r4,#1
        0x1fff53b2:    d102        ..      BNE      0x1fff53ba ; log_vsprintf + 514
        0x1fff53b4:    2408        .$      MOVS     r4,#8
        0x1fff53b6:    2101        .!      MOVS     r1,#1
        0x1fff53b8:    430d        .C      ORRS     r5,r5,r1
        0x1fff53ba:    9000        ..      STR      r0,[sp,#0]
        0x1fff53bc:    9808        ..      LDR      r0,[sp,#0x20]
        0x1fff53be:    9501        ..      STR      r5,[sp,#4]
        0x1fff53c0:    c802        ..      LDM      r0!,{r1}
        0x1fff53c2:    4623        #F      MOV      r3,r4
        0x1fff53c4:    2210        ."      MOVS     r2,#0x10
        0x1fff53c6:    9008        ..      STR      r0,[sp,#0x20]
        0x1fff53c8:    e009        ..      B        0x1fff53de ; log_vsprintf + 550
        0x1fff53ca:    e001        ..      B        0x1fff53d0 ; log_vsprintf + 536
        0x1fff53cc:    e001        ..      B        0x1fff53d2 ; log_vsprintf + 538
        0x1fff53ce:    e01b        ..      B        0x1fff5408 ; log_vsprintf + 592
        0x1fff53d0:    2208        ."      MOVS     r2,#8
        0x1fff53d2:    9b08        ..      LDR      r3,[sp,#0x20]
        0x1fff53d4:    cb02        ..      LDM      r3!,{r1}
        0x1fff53d6:    9308        ..      STR      r3,[sp,#0x20]
        0x1fff53d8:    9501        ..      STR      r5,[sp,#4]
        0x1fff53da:    9000        ..      STR      r0,[sp,#0]
        0x1fff53dc:    4623        #F      MOV      r3,r4
        0x1fff53de:    4630        0F      MOV      r0,r6
        0x1fff53e0:    f000f884    ....    BL       number ; 0x1fff54ec
        0x1fff53e4:    9807        ..      LDR      r0,[sp,#0x1c]
        0x1fff53e6:    1c40        @.      ADDS     r0,r0,#1
        0x1fff53e8:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff53ea:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff53ec:    2900        .)      CMP      r1,#0
        0x1fff53ee:    d001        ..      BEQ      0x1fff53f4 ; log_vsprintf + 572
        0x1fff53f0:    e6ea        ..      B        0x1fff51c8 ; log_vsprintf + 16
        0x1fff53f2:    e00e        ..      B        0x1fff5412 ; log_vsprintf + 602
        0x1fff53f4:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff53f6:    2800        .(      CMP      r0,#0
        0x1fff53f8:    d002        ..      BEQ      0x1fff5400 ; log_vsprintf + 584
        0x1fff53fa:    b281        ..      UXTH     r1,r0
        0x1fff53fc:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff53fe:    47b0        .G      BLX      r6
        0x1fff5400:    b009        ..      ADD      sp,sp,#0x24
        0x1fff5402:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff5404:    2240        @"      MOVS     r2,#0x40
        0x1fff5406:    4315        .C      ORRS     r5,r5,r2
        0x1fff5408:    2210        ."      MOVS     r2,#0x10
        0x1fff540a:    e7e2        ..      B        0x1fff53d2 ; log_vsprintf + 538
        0x1fff540c:    2302        .#      MOVS     r3,#2
        0x1fff540e:    431d        .C      ORRS     r5,r5,r3
        0x1fff5410:    e7df        ..      B        0x1fff53d2 ; log_vsprintf + 538
        0x1fff5412:    1e40        @.      SUBS     r0,r0,#1
        0x1fff5414:    9007        ..      STR      r0,[sp,#0x1c]
        0x1fff5416:    e7e5        ..      B        0x1fff53e4 ; log_vsprintf + 556
    $d
        0x1fff5418:    4c554e3c    <NUL    DCD    1280659004
        0x1fff541c:    00003e4c    L>..    DCD    15948
    $t
    i.main
    main
        0x1fff5420:    b57c        |.      PUSH     {r2-r6,lr}
        0x1fff5422:    4c19        .L      LDR      r4,[pc,#100] ; [0x1fff5488] = 0x1fff0a4a
        0x1fff5424:    2002        .       MOVS     r0,#2
        0x1fff5426:    7020         p      STRB     r0,[r4,#0]
        0x1fff5428:    4d18        .M      LDR      r5,[pc,#96] ; [0x1fff548c] = 0x1fff6b78
        0x1fff542a:    2001        .       MOVS     r0,#1
        0x1fff542c:    7028        (p      STRB     r0,[r5,#0]
        0x1fff542e:    f7fcfc53    ..S.    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff1cd8
        0x1fff5432:    f7fcfe22    ..".    BL       init_config ; 0x1fff207a
        0x1fff5436:    f7feffb9    ....    BL       hal_rfphy_init ; 0x1fff43ac
        0x1fff543a:    f7fefe35    ..5.    BL       hal_low_power_io_init ; 0x1fff40a8
        0x1fff543e:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5440:    f7fdffd8    ....    BL       clk_init ; 0x1fff33f4
        0x1fff5444:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff5446:    f7feffed    ....    BL       hal_rtc_clock_config ; 0x1fff4424
        0x1fff544a:    f7fefe9b    ....    BL       hal_pwrmgr_init ; 0x1fff4184
        0x1fff544e:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff5490] = 0x1fff6a14
        0x1fff5450:    6800        .h      LDR      r0,[r0,#0]
        0x1fff5452:    f7fff829    ..).    BL       hal_spif_cache_init ; 0x1fff44a8
        0x1fff5456:    f7fef8bb    ....    BL       dbg_printf_init ; 0x1fff35d0
        0x1fff545a:    f7fefb8f    ....    BL       hal_gpio_init ; 0x1fff3b7c
        0x1fff545e:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff5494] = 0x30103
        0x1fff5460:    a00d        ..      ADR      r0,{pc}+0x38 ; 0x1fff5498
        0x1fff5462:    f7fef8a7    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5466:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff54b0] = 0x1fff0a45
        0x1fff5468:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff546a:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff54b4] = 0x1fff0a44
        0x1fff546c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff546e:    9101        ..      STR      r1,[sp,#4]
        0x1fff5470:    9000        ..      STR      r0,[sp,#0]
        0x1fff5472:    7823        #x      LDRB     r3,[r4,#0]
        0x1fff5474:    782a        *x      LDRB     r2,[r5,#0]
        0x1fff5476:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff54b8] = 0x1fff0a4b
        0x1fff5478:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff547a:    a010        ..      ADR      r0,{pc}+0x42 ; 0x1fff54bc
        0x1fff547c:    f7fef89a    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5480:    f7fdfe7c    ..|.    BL       app_main ; 0x1fff317c
        0x1fff5484:    2000        .       MOVS     r0,#0
        0x1fff5486:    bd7c        |.      POP      {r2-r6,pc}
    $d
        0x1fff5488:    1fff0a4a    J...    DCD    536808010
        0x1fff548c:    1fff6b78    xk..    DCD    536832888
        0x1fff5490:    1fff6a14    .j..    DCD    536832532
        0x1fff5494:    00030103    ....    DCD    196867
        0x1fff5498:    204b4453    SDK     DCD    541803603
        0x1fff549c:    73726556    Vers    DCD    1936876886
        0x1fff54a0:    206e6f69    ion     DCD    544108393
        0x1fff54a4:    25204449    ID %    DCD    622871625
        0x1fff54a8:    20783830    08x     DCD    544749616
        0x1fff54ac:    0000000a    ....    DCD    10
        0x1fff54b0:    1fff0a45    E...    DCD    536808005
        0x1fff54b4:    1fff0a44    D...    DCD    536808004
        0x1fff54b8:    1fff0a4b    K...    DCD    536808011
        0x1fff54bc:    6c436672    rfCl    DCD    1816356466
        0x1fff54c0:    6425206b    k %d    DCD    1680154731
        0x1fff54c4:    43637220     rcC    DCD    1130590752
        0x1fff54c8:    25206b6c    lk %    DCD    622881644
        0x1fff54cc:    79732064    d sy    DCD    2037588068
        0x1fff54d0:    6b6c4373    sClk    DCD    1802257267
        0x1fff54d4:    20642520     %d     DCD    543434016
        0x1fff54d8:    61437074    tpCa    DCD    1631809652
        0x1fff54dc:    30255b70    p[%0    DCD    807754608
        0x1fff54e0:    25207832    2x %    DCD    622884914
        0x1fff54e4:    5d783230    02x]    DCD    1568158256
        0x1fff54e8:    0000000a    ....    DCD    10
    $t
    i.number
    number
        0x1fff54ec:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff54ee:    4607        .F      MOV      r7,r0
        0x1fff54f0:    4857        WH      LDR      r0,[pc,#348] ; [0x1fff5650] = 0x1fff6bb0
        0x1fff54f2:    b097        ..      SUB      sp,sp,#0x5c
        0x1fff54f4:    9d21        !.      LDR      r5,[sp,#0x84]
        0x1fff54f6:    6800        .h      LDR      r0,[r0,#0]
        0x1fff54f8:    9015        ..      STR      r0,[sp,#0x54]
        0x1fff54fa:    461e        .F      MOV      r6,r3
        0x1fff54fc:    460a        .F      MOV      r2,r1
        0x1fff54fe:    0668        h.      LSLS     r0,r5,#25
        0x1fff5500:    d502        ..      BPL      0x1fff5508 ; number + 28
        0x1fff5502:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff5650] = 0x1fff6bb0
        0x1fff5504:    6840        @h      LDR      r0,[r0,#4]
        0x1fff5506:    9015        ..      STR      r0,[sp,#0x54]
        0x1fff5508:    06e8        ..      LSLS     r0,r5,#27
        0x1fff550a:    d501        ..      BPL      0x1fff5510 ; number + 36
        0x1fff550c:    086d        m.      LSRS     r5,r5,#1
        0x1fff550e:    006d        m.      LSLS     r5,r5,#1
        0x1fff5510:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff5512:    1e80        ..      SUBS     r0,r0,#2
        0x1fff5514:    2823        #(      CMP      r0,#0x23
        0x1fff5516:    d270        p.      BCS      0x1fff55fa ; number + 270
        0x1fff5518:    07e8        ..      LSLS     r0,r5,#31
        0x1fff551a:    d001        ..      BEQ      0x1fff5520 ; number + 52
        0x1fff551c:    2130        0!      MOVS     r1,#0x30
        0x1fff551e:    e000        ..      B        0x1fff5522 ; number + 54
        0x1fff5520:    2120         !      MOVS     r1,#0x20
        0x1fff5522:    a810        ..      ADD      r0,sp,#0x40
        0x1fff5524:    7301        .s      STRB     r1,[r0,#0xc]
        0x1fff5526:    2100        .!      MOVS     r1,#0
        0x1fff5528:    7201        .r      STRB     r1,[r0,#8]
        0x1fff552a:    07a8        ..      LSLS     r0,r5,#30
        0x1fff552c:    d510        ..      BPL      0x1fff5550 ; number + 100
        0x1fff552e:    2a00        .*      CMP      r2,#0
        0x1fff5530:    da04        ..      BGE      0x1fff553c ; number + 80
        0x1fff5532:    202d        -       MOVS     r0,#0x2d
        0x1fff5534:    a910        ..      ADD      r1,sp,#0x40
        0x1fff5536:    7208        .r      STRB     r0,[r1,#8]
        0x1fff5538:    4252        RB      RSBS     r2,r2,#0
        0x1fff553a:    e008        ..      B        0x1fff554e ; number + 98
        0x1fff553c:    0768        h.      LSLS     r0,r5,#29
        0x1fff553e:    d501        ..      BPL      0x1fff5544 ; number + 88
        0x1fff5540:    202b        +       MOVS     r0,#0x2b
        0x1fff5542:    e002        ..      B        0x1fff554a ; number + 94
        0x1fff5544:    0728        (.      LSLS     r0,r5,#28
        0x1fff5546:    d503        ..      BPL      0x1fff5550 ; number + 100
        0x1fff5548:    2020                MOVS     r0,#0x20
        0x1fff554a:    a910        ..      ADD      r1,sp,#0x40
        0x1fff554c:    7208        .r      STRB     r0,[r1,#8]
        0x1fff554e:    1e5e        ^.      SUBS     r6,r3,#1
        0x1fff5550:    06a8        ..      LSLS     r0,r5,#26
        0x1fff5552:    d508        ..      BPL      0x1fff5566 ; number + 122
        0x1fff5554:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff5556:    2810        .(      CMP      r0,#0x10
        0x1fff5558:    d002        ..      BEQ      0x1fff5560 ; number + 116
        0x1fff555a:    2808        .(      CMP      r0,#8
        0x1fff555c:    d002        ..      BEQ      0x1fff5564 ; number + 120
        0x1fff555e:    e002        ..      B        0x1fff5566 ; number + 122
        0x1fff5560:    1eb6        ..      SUBS     r6,r6,#2
        0x1fff5562:    e000        ..      B        0x1fff5566 ; number + 122
        0x1fff5564:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5566:    2400        .$      MOVS     r4,#0
        0x1fff5568:    2a00        .*      CMP      r2,#0
        0x1fff556a:    d014        ..      BEQ      0x1fff5596 ; number + 170
        0x1fff556c:    4610        .F      MOV      r0,r2
        0x1fff556e:    9919        ..      LDR      r1,[sp,#0x64]
        0x1fff5570:    f7fcfbb8    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1ce4
        0x1fff5574:    9a15        ..      LDR      r2,[sp,#0x54]
        0x1fff5576:    5c52        R\      LDRB     r2,[r2,r1]
        0x1fff5578:    a901        ..      ADD      r1,sp,#4
        0x1fff557a:    550a        .U      STRB     r2,[r1,r4]
        0x1fff557c:    1c64        d.      ADDS     r4,r4,#1
        0x1fff557e:    0002        ..      MOVS     r2,r0
        0x1fff5580:    d1f4        ..      BNE      0x1fff556c ; number + 128
        0x1fff5582:    9820         .      LDR      r0,[sp,#0x80]
        0x1fff5584:    4284        .B      CMP      r4,r0
        0x1fff5586:    dd00        ..      BLE      0x1fff558a ; number + 158
        0x1fff5588:    9420         .      STR      r4,[sp,#0x80]
        0x1fff558a:    9820         .      LDR      r0,[sp,#0x80]
        0x1fff558c:    1a36        6.      SUBS     r6,r6,r0
        0x1fff558e:    2011        .       MOVS     r0,#0x11
        0x1fff5590:    4205        .B      TST      r5,r0
        0x1fff5592:    d00b        ..      BEQ      0x1fff55ac ; number + 192
        0x1fff5594:    e00e        ..      B        0x1fff55b4 ; number + 200
        0x1fff5596:    2030        0       MOVS     r0,#0x30
        0x1fff5598:    4669        iF      MOV      r1,sp
        0x1fff559a:    7108        .q      STRB     r0,[r1,#4]
        0x1fff559c:    2401        .$      MOVS     r4,#1
        0x1fff559e:    e7f0        ..      B        0x1fff5582 ; number + 150
        0x1fff55a0:    2020                MOVS     r0,#0x20
        0x1fff55a2:    4669        iF      MOV      r1,sp
        0x1fff55a4:    7008        .p      STRB     r0,[r1,#0]
        0x1fff55a6:    2101        .!      MOVS     r1,#1
        0x1fff55a8:    4668        hF      MOV      r0,sp
        0x1fff55aa:    47b8        .G      BLX      r7
        0x1fff55ac:    4630        0F      MOV      r0,r6
        0x1fff55ae:    1e76        v.      SUBS     r6,r6,#1
        0x1fff55b0:    2800        .(      CMP      r0,#0
        0x1fff55b2:    dcf5        ..      BGT      0x1fff55a0 ; number + 180
        0x1fff55b4:    a810        ..      ADD      r0,sp,#0x40
        0x1fff55b6:    7a00        .z      LDRB     r0,[r0,#8]
        0x1fff55b8:    2800        .(      CMP      r0,#0
        0x1fff55ba:    d002        ..      BEQ      0x1fff55c2 ; number + 214
        0x1fff55bc:    2101        .!      MOVS     r1,#1
        0x1fff55be:    a812        ..      ADD      r0,sp,#0x48
        0x1fff55c0:    47b8        .G      BLX      r7
        0x1fff55c2:    06a8        ..      LSLS     r0,r5,#26
        0x1fff55c4:    d516        ..      BPL      0x1fff55f4 ; number + 264
        0x1fff55c6:    9819        ..      LDR      r0,[sp,#0x64]
        0x1fff55c8:    2808        .(      CMP      r0,#8
        0x1fff55ca:    d002        ..      BEQ      0x1fff55d2 ; number + 230
        0x1fff55cc:    2810        .(      CMP      r0,#0x10
        0x1fff55ce:    d002        ..      BEQ      0x1fff55d6 ; number + 234
        0x1fff55d0:    e010        ..      B        0x1fff55f4 ; number + 264
        0x1fff55d2:    2030        0       MOVS     r0,#0x30
        0x1fff55d4:    e009        ..      B        0x1fff55ea ; number + 254
        0x1fff55d6:    2030        0       MOVS     r0,#0x30
        0x1fff55d8:    4669        iF      MOV      r1,sp
        0x1fff55da:    7008        .p      STRB     r0,[r1,#0]
        0x1fff55dc:    2101        .!      MOVS     r1,#1
        0x1fff55de:    4668        hF      MOV      r0,sp
        0x1fff55e0:    47b8        .G      BLX      r7
        0x1fff55e2:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff5650] = 0x1fff6bb0
        0x1fff55e4:    6800        .h      LDR      r0,[r0,#0]
        0x1fff55e6:    3020         0      ADDS     r0,r0,#0x20
        0x1fff55e8:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff55ea:    4669        iF      MOV      r1,sp
        0x1fff55ec:    7008        .p      STRB     r0,[r1,#0]
        0x1fff55ee:    2101        .!      MOVS     r1,#1
        0x1fff55f0:    4668        hF      MOV      r0,sp
        0x1fff55f2:    47b8        .G      BLX      r7
        0x1fff55f4:    06e8        ..      LSLS     r0,r5,#27
        0x1fff55f6:    d504        ..      BPL      0x1fff5602 ; number + 278
        0x1fff55f8:    e007        ..      B        0x1fff560a ; number + 286
        0x1fff55fa:    e027        '.      B        0x1fff564c ; number + 352
        0x1fff55fc:    2101        .!      MOVS     r1,#1
        0x1fff55fe:    a813        ..      ADD      r0,sp,#0x4c
        0x1fff5600:    47b8        .G      BLX      r7
        0x1fff5602:    4630        0F      MOV      r0,r6
        0x1fff5604:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5606:    2800        .(      CMP      r0,#0
        0x1fff5608:    dcf8        ..      BGT      0x1fff55fc ; number + 272
        0x1fff560a:    2530        0%      MOVS     r5,#0x30
        0x1fff560c:    9920         .      LDR      r1,[sp,#0x80]
        0x1fff560e:    1e48        H.      SUBS     r0,r1,#1
        0x1fff5610:    9020         .      STR      r0,[sp,#0x80]
        0x1fff5612:    42a1        .B      CMP      r1,r4
        0x1fff5614:    dd0b        ..      BLE      0x1fff562e ; number + 322
        0x1fff5616:    4668        hF      MOV      r0,sp
        0x1fff5618:    7005        .p      STRB     r5,[r0,#0]
        0x1fff561a:    2101        .!      MOVS     r1,#1
        0x1fff561c:    47b8        .G      BLX      r7
        0x1fff561e:    e7f5        ..      B        0x1fff560c ; number + 288
        0x1fff5620:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff5622:    4669        iF      MOV      r1,sp
        0x1fff5624:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5626:    2101        .!      MOVS     r1,#1
        0x1fff5628:    4668        hF      MOV      r0,sp
        0x1fff562a:    47b8        .G      BLX      r7
        0x1fff562c:    e000        ..      B        0x1fff5630 ; number + 324
        0x1fff562e:    ad01        ..      ADD      r5,sp,#4
        0x1fff5630:    4620         F      MOV      r0,r4
        0x1fff5632:    1e64        d.      SUBS     r4,r4,#1
        0x1fff5634:    2800        .(      CMP      r0,#0
        0x1fff5636:    dcf3        ..      BGT      0x1fff5620 ; number + 308
        0x1fff5638:    2420         $      MOVS     r4,#0x20
        0x1fff563a:    4630        0F      MOV      r0,r6
        0x1fff563c:    1e76        v.      SUBS     r6,r6,#1
        0x1fff563e:    2800        .(      CMP      r0,#0
        0x1fff5640:    dd04        ..      BLE      0x1fff564c ; number + 352
        0x1fff5642:    4668        hF      MOV      r0,sp
        0x1fff5644:    7004        .p      STRB     r4,[r0,#0]
        0x1fff5646:    2101        .!      MOVS     r1,#1
        0x1fff5648:    47b8        .G      BLX      r7
        0x1fff564a:    e7f6        ..      B        0x1fff563a ; number + 334
        0x1fff564c:    b01b        ..      ADD      sp,sp,#0x6c
        0x1fff564e:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff5650:    1fff6bb0    .k..    DCD    536832944
    $t
    i.osalInitTasks
    osalInitTasks
        0x1fff5654:    b510        ..      PUSH     {r4,lr}
        0x1fff5656:    2400        .$      MOVS     r4,#0
        0x1fff5658:    2002        .       MOVS     r0,#2
        0x1fff565a:    f7fcfb31    ..1.    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff1cc0
        0x1fff565e:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff5674] = 0x1fff6b7c
        0x1fff5660:    2202        ."      MOVS     r2,#2
        0x1fff5662:    6008        .`      STR      r0,[r1,#0]
        0x1fff5664:    2100        .!      MOVS     r1,#0
        0x1fff5666:    f7fcfb43    ..C.    BL       $Ven$TT$L$$osal_memset ; 0x1fff1cf0
        0x1fff566a:    4620         F      MOV      r0,r4
        0x1fff566c:    f7fdf9b4    ....    BL       PhyPlusPhy_Init ; 0x1fff29d8
        0x1fff5670:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5672:    0000        ..      DCW    0
        0x1fff5674:    1fff6b7c    |k..    DCD    536832892
    $t
    i.osal_idle_task0
    osal_idle_task0
        0x1fff5678:    b510        ..      PUSH     {r4,lr}
        0x1fff567a:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff568c] = 0x40002000
        0x1fff567c:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff567e:    07c9        ..      LSLS     r1,r1,#31
        0x1fff5680:    d001        ..      BEQ      0x1fff5686 ; osal_idle_task0 + 14
        0x1fff5682:    2176        v!      MOVS     r1,#0x76
        0x1fff5684:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff5686:    f7fcfb39    ..9.    BL       $Ven$TT$L$$osal_pwrmgr_powerconserve0 ; 0x1fff1cfc
        0x1fff568a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff568c:    40002000    . .@    DCD    1073750016
    $t
    i.osal_search_active_task
    osal_search_active_task
        0x1fff5690:    b510        ..      PUSH     {r4,lr}
        0x1fff5692:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff56c4] = 0x1fff0000
        0x1fff5694:    2100        .!      MOVS     r1,#0
        0x1fff5696:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff5698:    6912        .i      LDR      r2,[r2,#0x10]
        0x1fff569a:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff569c:    6812        .h      LDR      r2,[r2,#0]
        0x1fff569e:    2a00        .*      CMP      r2,#0
        0x1fff56a0:    d003        ..      BEQ      0x1fff56aa ; osal_search_active_task + 26
        0x1fff56a2:    004c        L.      LSLS     r4,r1,#1
        0x1fff56a4:    5b14        .[      LDRH     r4,[r2,r4]
        0x1fff56a6:    2c00        .,      CMP      r4,#0
        0x1fff56a8:    d103        ..      BNE      0x1fff56b2 ; osal_search_active_task + 34
        0x1fff56aa:    1c49        I.      ADDS     r1,r1,#1
        0x1fff56ac:    b2c9        ..      UXTB     r1,r1
        0x1fff56ae:    4299        .B      CMP      r1,r3
        0x1fff56b0:    d3f5        ..      BCC      0x1fff569e ; osal_search_active_task + 14
        0x1fff56b2:    4299        .B      CMP      r1,r3
        0x1fff56b4:    d204        ..      BCS      0x1fff56c0 ; osal_search_active_task + 48
        0x1fff56b6:    2800        .(      CMP      r0,#0
        0x1fff56b8:    d000        ..      BEQ      0x1fff56bc ; osal_search_active_task + 44
        0x1fff56ba:    7001        .p      STRB     r1,[r0,#0]
        0x1fff56bc:    2000        .       MOVS     r0,#0
        0x1fff56be:    bd10        ..      POP      {r4,pc}
        0x1fff56c0:    2001        .       MOVS     r0,#1
        0x1fff56c2:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff56c4:    1fff0000    ....    DCD    536805376
    $t
    i.patch_linkBuf_init
    patch_linkBuf_init
        0x1fff56c8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff56ca:    4e23        #N      LDR      r6,[pc,#140] ; [0x1fff5758] = 0x1fff0934
        0x1fff56cc:    4b23        #K      LDR      r3,[pc,#140] ; [0x1fff575c] = 0x1fff0914
        0x1fff56ce:    2800        .(      CMP      r0,#0
        0x1fff56d0:    d022        ".      BEQ      0x1fff5718 ; patch_linkBuf_init + 80
        0x1fff56d2:    2100        .!      MOVS     r1,#0
        0x1fff56d4:    e01c        ..      B        0x1fff5710 ; patch_linkBuf_init + 72
        0x1fff56d6:    20a1        .       MOVS     r0,#0xa1
        0x1fff56d8:    0080        ..      LSLS     r0,r0,#2
        0x1fff56da:    6832        2h      LDR      r2,[r6,#0]
        0x1fff56dc:    4348        HC      MULS     r0,r1,r0
        0x1fff56de:    1880        ..      ADDS     r0,r0,r2
        0x1fff56e0:    4604        .F      MOV      r4,r0
        0x1fff56e2:    2200        ."      MOVS     r2,#0
        0x1fff56e4:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff56e6:    3481        .4      ADDS     r4,r4,#0x81
        0x1fff56e8:    0097        ..      LSLS     r7,r2,#2
        0x1fff56ea:    183f        ?.      ADDS     r7,r7,r0
        0x1fff56ec:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff56ee:    3701        .7      ADDS     r7,#1
        0x1fff56f0:    6ae5        .j      LDR      r5,[r4,#0x2c]
        0x1fff56f2:    1c52        R.      ADDS     r2,r2,#1
        0x1fff56f4:    66fd        .f      STR      r5,[r7,#0x6c]
        0x1fff56f6:    2a08        .*      CMP      r2,#8
        0x1fff56f8:    dbf6        ..      BLT      0x1fff56e8 ; patch_linkBuf_init + 32
        0x1fff56fa:    2200        ."      MOVS     r2,#0
        0x1fff56fc:    0097        ..      LSLS     r7,r2,#2
        0x1fff56fe:    183f        ?.      ADDS     r7,r7,r0
        0x1fff5700:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff5702:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff5704:    6ae5        .j      LDR      r5,[r4,#0x2c]
        0x1fff5706:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5708:    60fd        .`      STR      r5,[r7,#0xc]
        0x1fff570a:    2a08        .*      CMP      r2,#8
        0x1fff570c:    dbf6        ..      BLT      0x1fff56fc ; patch_linkBuf_init + 52
        0x1fff570e:    1c49        I.      ADDS     r1,r1,#1
        0x1fff5710:    7818        .x      LDRB     r0,[r3,#0]
        0x1fff5712:    4281        .B      CMP      r1,r0
        0x1fff5714:    dbdf        ..      BLT      0x1fff56d6 ; patch_linkBuf_init + 14
        0x1fff5716:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff5718:    2100        .!      MOVS     r1,#0
        0x1fff571a:    4608        .F      MOV      r0,r1
        0x1fff571c:    e017        ..      B        0x1fff574e ; patch_linkBuf_init + 134
        0x1fff571e:    22a1        ."      MOVS     r2,#0xa1
        0x1fff5720:    0092        ..      LSLS     r2,r2,#2
        0x1fff5722:    6834        4h      LDR      r4,[r6,#0]
        0x1fff5724:    434a        JC      MULS     r2,r1,r2
        0x1fff5726:    1914        ..      ADDS     r4,r2,r4
        0x1fff5728:    2200        ."      MOVS     r2,#0
        0x1fff572a:    0095        ..      LSLS     r5,r2,#2
        0x1fff572c:    192d        -.      ADDS     r5,r5,r4
        0x1fff572e:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff5730:    3501        .5      ADDS     r5,#1
        0x1fff5732:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5734:    66e8        .f      STR      r0,[r5,#0x6c]
        0x1fff5736:    2a08        .*      CMP      r2,#8
        0x1fff5738:    dbf7        ..      BLT      0x1fff572a ; patch_linkBuf_init + 98
        0x1fff573a:    2200        ."      MOVS     r2,#0
        0x1fff573c:    0095        ..      LSLS     r5,r2,#2
        0x1fff573e:    192d        -.      ADDS     r5,r5,r4
        0x1fff5740:    35ff        .5      ADDS     r5,r5,#0xff
        0x1fff5742:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff5744:    1c52        R.      ADDS     r2,r2,#1
        0x1fff5746:    60e8        .`      STR      r0,[r5,#0xc]
        0x1fff5748:    2a08        .*      CMP      r2,#8
        0x1fff574a:    dbf7        ..      BLT      0x1fff573c ; patch_linkBuf_init + 116
        0x1fff574c:    1c49        I.      ADDS     r1,r1,#1
        0x1fff574e:    781a        .x      LDRB     r2,[r3,#0]
        0x1fff5750:    4291        .B      CMP      r1,r2
        0x1fff5752:    dbe4        ..      BLT      0x1fff571e ; patch_linkBuf_init + 86
        0x1fff5754:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff5756:    0000        ..      DCW    0
        0x1fff5758:    1fff0934    4...    DCD    536807732
        0x1fff575c:    1fff0914    ....    DCD    536807700
    $t
    i.peripheral_interrupt_restore_default
    peripheral_interrupt_restore_default
        0x1fff5760:    b510        ..      PUSH     {r4,lr}
        0x1fff5762:    2102        .!      MOVS     r1,#2
        0x1fff5764:    2005        .       MOVS     r0,#5
        0x1fff5766:    f7fdfad1    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff576a:    2102        .!      MOVS     r1,#2
        0x1fff576c:    200a        .       MOVS     r0,#0xa
        0x1fff576e:    f7fdfacd    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff5772:    2102        .!      MOVS     r1,#2
        0x1fff5774:    200b        .       MOVS     r0,#0xb
        0x1fff5776:    f7fdfac9    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff577a:    2102        .!      MOVS     r1,#2
        0x1fff577c:    2011        .       MOVS     r0,#0x11
        0x1fff577e:    f7fdfac5    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff5782:    2102        .!      MOVS     r1,#2
        0x1fff5784:    200c        .       MOVS     r0,#0xc
        0x1fff5786:    f7fdfac1    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff578a:    2102        .!      MOVS     r1,#2
        0x1fff578c:    200d        .       MOVS     r0,#0xd
        0x1fff578e:    f7fdfabd    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff5792:    2102        .!      MOVS     r1,#2
        0x1fff5794:    200e        .       MOVS     r0,#0xe
        0x1fff5796:    f7fdfab9    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff579a:    2102        .!      MOVS     r1,#2
        0x1fff579c:    200f        .       MOVS     r0,#0xf
        0x1fff579e:    f7fdfab5    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff57a2:    2102        .!      MOVS     r1,#2
        0x1fff57a4:    2010        .       MOVS     r0,#0x10
        0x1fff57a6:    f7fdfab1    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff57aa:    2102        .!      MOVS     r1,#2
        0x1fff57ac:    2013        .       MOVS     r0,#0x13
        0x1fff57ae:    f7fdfaad    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff57b2:    2102        .!      MOVS     r1,#2
        0x1fff57b4:    2018        .       MOVS     r0,#0x18
        0x1fff57b6:    f7fdfaa9    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff57ba:    2102        .!      MOVS     r1,#2
        0x1fff57bc:    2019        .       MOVS     r0,#0x19
        0x1fff57be:    f7fdfaa5    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff57c2:    2102        .!      MOVS     r1,#2
        0x1fff57c4:    201d        .       MOVS     r0,#0x1d
        0x1fff57c6:    f7fdfaa1    ....    BL       __NVIC_SetPriority ; 0x1fff2d0c
        0x1fff57ca:    bd10        ..      POP      {r4,pc}
    i.phy_hw_go
    phy_hw_go
        0x1fff57cc:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff57ce:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff5840] = 0x1fff0998
        0x1fff57d0:    6800        .h      LDR      r0,[r0,#0]
        0x1fff57d2:    2801        .(      CMP      r0,#1
        0x1fff57d4:    d102        ..      BNE      0x1fff57dc ; phy_hw_go + 16
        0x1fff57d6:    a01b        ..      ADR      r0,{pc}+0x6e ; 0x1fff5844
        0x1fff57d8:    f7fdfeec    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff57dc:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff5858] = 0x40031000
        0x1fff57de:    491d        .I      LDR      r1,[pc,#116] ; [0x1fff5854] = 0x3fff
        0x1fff57e0:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff57e2:    2101        .!      MOVS     r1,#1
        0x1fff57e4:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff57e6:    6001        .`      STR      r1,[r0,#0]
        0x1fff57e8:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff585c] = 0x40030080
        0x1fff57ea:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff57ec:    b2c0        ..      UXTB     r0,r0
        0x1fff57ee:    2802        .(      CMP      r0,#2
        0x1fff57f0:    d201        ..      BCS      0x1fff57f6 ; phy_hw_go + 42
        0x1fff57f2:    2002        .       MOVS     r0,#2
        0x1fff57f4:    e002        ..      B        0x1fff57fc ; phy_hw_go + 48
        0x1fff57f6:    2850        P(      CMP      r0,#0x50
        0x1fff57f8:    d900        ..      BLS      0x1fff57fc ; phy_hw_go + 48
        0x1fff57fa:    2050        P       MOVS     r0,#0x50
        0x1fff57fc:    4a18        .J      LDR      r2,[pc,#96] ; [0x1fff5860] = 0x1fff7664
        0x1fff57fe:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff5800:    2a02        .*      CMP      r2,#2
        0x1fff5802:    d011        ..      BEQ      0x1fff5828 ; phy_hw_go + 92
        0x1fff5804:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff5864] = 0x1fff0a44
        0x1fff5806:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff5808:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff5868] = 0x1fff0a45
        0x1fff580a:    781d        .x      LDRB     r5,[r3,#0]
        0x1fff580c:    42ac        .B      CMP      r4,r5
        0x1fff580e:    d915        ..      BLS      0x1fff583c ; phy_hw_go + 112
        0x1fff5810:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff5812:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5814:    1ae3        ..      SUBS     r3,r4,r3
        0x1fff5816:    1e80        ..      SUBS     r0,r0,#2
        0x1fff5818:    1040        @.      ASRS     r0,r0,#1
        0x1fff581a:    4343        CC      MULS     r3,r0,r3
        0x1fff581c:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff581e:    0140        @.      LSLS     r0,r0,#5
        0x1fff5820:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff5822:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff5824:    1140        @.      ASRS     r0,r0,#5
        0x1fff5826:    e003        ..      B        0x1fff5830 ; phy_hw_go + 100
        0x1fff5828:    4a10        .J      LDR      r2,[pc,#64] ; [0x1fff586c] = 0x1fff0a46
        0x1fff582a:    7814        .x      LDRB     r4,[r2,#0]
        0x1fff582c:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff5870] = 0x1fff0a47
        0x1fff582e:    e7ec        ..      B        0x1fff580a ; phy_hw_go + 62
        0x1fff5830:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff5832:    0a12        ..      LSRS     r2,r2,#8
        0x1fff5834:    0212        ..      LSLS     r2,r2,#8
        0x1fff5836:    4310        .C      ORRS     r0,r0,r2
        0x1fff5838:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff583a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff583c:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff583e:    e7f7        ..      B        0x1fff5830 ; phy_hw_go + 100
    $d
        0x1fff5840:    1fff0998    ....    DCD    536807832
        0x1fff5844:    5948505b    [PHY    DCD    1497911387
        0x1fff5848:    49525420     TRI    DCD    1230132256
        0x1fff584c:    52452047    G ER    DCD    1380261959
        0x1fff5850:    000a5d52    R]..    DCD    679250
        0x1fff5854:    00003fff    .?..    DCD    16383
        0x1fff5858:    40031000    ...@    DCD    1073942528
        0x1fff585c:    40030080    ...@    DCD    1073938560
        0x1fff5860:    1fff7664    dv..    DCD    536835684
        0x1fff5864:    1fff0a44    D...    DCD    536808004
        0x1fff5868:    1fff0a45    E...    DCD    536808005
        0x1fff586c:    1fff0a46    F...    DCD    536808006
        0x1fff5870:    1fff0a47    G...    DCD    536808007
    $t
    i.phy_hw_pktFmt_Config
    phy_hw_pktFmt_Config
        0x1fff5874:    b537        7.      PUSH     {r0-r2,r4,r5,lr}
        0x1fff5876:    4668        hF      MOV      r0,sp
        0x1fff5878:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff587a:    f000faef    ....    BL       rf_phy_bb_cfg ; 0x1fff5e5c
        0x1fff587e:    4668        hF      MOV      r0,sp
        0x1fff5880:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff5882:    4c10        .L      LDR      r4,[pc,#64] ; [0x1fff58c4] = 0x40030040
        0x1fff5884:    2800        .(      CMP      r0,#0
        0x1fff5886:    d016        ..      BEQ      0x1fff58b6 ; phy_hw_pktFmt_Config + 66
        0x1fff5888:    4601        .F      MOV      r1,r0
        0x1fff588a:    f7fcfa3d    ..=.    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1d08
        0x1fff588e:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff5890:    9901        ..      LDR      r1,[sp,#4]
        0x1fff5892:    0e00        ..      LSRS     r0,r0,#24
        0x1fff5894:    0600        ..      LSLS     r0,r0,#24
        0x1fff5896:    4308        .C      ORRS     r0,r0,r1
        0x1fff5898:    60a0        .`      STR      r0,[r4,#8]
        0x1fff589a:    2002        .       MOVS     r0,#2
        0x1fff589c:    f7fcfa3a    ..:.    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff1d14
        0x1fff58a0:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff58a2:    4669        iF      MOV      r1,sp
        0x1fff58a4:    0200        ..      LSLS     r0,r0,#8
        0x1fff58a6:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff58a8:    0a00        ..      LSRS     r0,r0,#8
        0x1fff58aa:    0609        ..      LSLS     r1,r1,#24
        0x1fff58ac:    4308        .C      ORRS     r0,r0,r1
        0x1fff58ae:    60a0        .`      STR      r0,[r4,#8]
        0x1fff58b0:    9802        ..      LDR      r0,[sp,#8]
        0x1fff58b2:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff58b4:    bd3e        >.      POP      {r1-r5,pc}
        0x1fff58b6:    4668        hF      MOV      r0,sp
        0x1fff58b8:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff58ba:    f7fcfa31    ..1.    BL       $Ven$TT$L$$ll_hw_set_pplus_pktfmt ; 0x1fff1d20
        0x1fff58be:    2000        .       MOVS     r0,#0
        0x1fff58c0:    e7ec        ..      B        0x1fff589c ; phy_hw_pktFmt_Config + 40
    $d
        0x1fff58c2:    0000        ..      DCW    0
        0x1fff58c4:    40030040    @..@    DCD    1073938496
    $t
    i.phy_hw_set_srx
    phy_hw_set_srx
        0x1fff58c8:    b510        ..      PUSH     {r4,lr}
        0x1fff58ca:    f7fcf8c7    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff58ce:    f7fcfa2d    ..-.    BL       $Ven$TT$L$$ll_hw_set_srx ; 0x1fff1d2c
        0x1fff58d2:    223c        <"      MOVS     r2,#0x3c
        0x1fff58d4:    2108        .!      MOVS     r1,#8
        0x1fff58d6:    205a        Z       MOVS     r0,#0x5a
        0x1fff58d8:    f7fcfa2e    ....    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d38
        0x1fff58dc:    bd10        ..      POP      {r4,pc}
    i.phy_hw_set_stx
    phy_hw_set_stx
        0x1fff58de:    b510        ..      PUSH     {r4,lr}
        0x1fff58e0:    f7fcfa30    ..0.    BL       $Ven$TT$L$$ll_hw_set_stx ; 0x1fff1d44
        0x1fff58e4:    223c        <"      MOVS     r2,#0x3c
        0x1fff58e6:    2108        .!      MOVS     r1,#8
        0x1fff58e8:    205a        Z       MOVS     r0,#0x5a
        0x1fff58ea:    f7fcfa25    ..%.    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d38
        0x1fff58ee:    bd10        ..      POP      {r4,pc}
    i.phy_hw_set_trx
    phy_hw_set_trx
        0x1fff58f0:    b510        ..      PUSH     {r4,lr}
        0x1fff58f2:    f7fcf8b3    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff58f6:    f7fcfa2b    ..+.    BL       $Ven$TT$L$$ll_hw_set_trx ; 0x1fff1d50
        0x1fff58fa:    223c        <"      MOVS     r2,#0x3c
        0x1fff58fc:    2108        .!      MOVS     r1,#8
        0x1fff58fe:    205a        Z       MOVS     r0,#0x5a
        0x1fff5900:    f7fcfa1a    ....    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d38
        0x1fff5904:    bd10        ..      POP      {r4,pc}
        0x1fff5906:    0000        ..      MOVS     r0,r0
    i.phy_hw_stop
    phy_hw_stop
        0x1fff5908:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff590a:    2400        .$      MOVS     r4,#0
        0x1fff590c:    2021        !       MOVS     r0,#0x21
        0x1fff590e:    f7fcf8a5    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff5912:    4d08        .M      LDR      r5,[pc,#32] ; [0x1fff5934] = 0x1fff0998
        0x1fff5914:    e00a        ..      B        0x1fff592c ; phy_hw_stop + 36
        0x1fff5916:    2003        .       MOVS     r0,#3
        0x1fff5918:    f7fcf912    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff591c:    1c64        d.      ADDS     r4,r4,#1
        0x1fff591e:    b2e4        ..      UXTB     r4,r4
        0x1fff5920:    2c0a        .,      CMP      r4,#0xa
        0x1fff5922:    d903        ..      BLS      0x1fff592c ; phy_hw_stop + 36
        0x1fff5924:    a004        ..      ADR      r0,{pc}+0x14 ; 0x1fff5938
        0x1fff5926:    f7fdfe45    ..E.    BL       dbg_printf ; 0x1fff35b4
        0x1fff592a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff592c:    6828        (h      LDR      r0,[r5,#0]
        0x1fff592e:    2800        .(      CMP      r0,#0
        0x1fff5930:    d1f1        ..      BNE      0x1fff5916 ; phy_hw_stop + 14
        0x1fff5932:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff5934:    1fff0998    ....    DCD    536807832
        0x1fff5938:    5948505b    [PHY    DCD    1497911387
        0x1fff593c:    4f545320     STO    DCD    1330926368
        0x1fff5940:    52452050    P ER    DCD    1380261968
        0x1fff5944:    000a5d52    R]..    DCD    679250
    $t
    i.phy_hw_timing_setting
    phy_hw_timing_setting
        0x1fff5948:    b510        ..      PUSH     {r4,lr}
        0x1fff594a:    2101        .!      MOVS     r1,#1
        0x1fff594c:    200a        .       MOVS     r0,#0xa
        0x1fff594e:    f7fcfa05    ....    BL       $Ven$TT$L$$ll_hw_set_tx_rx_release ; 0x1fff1d5c
        0x1fff5952:    203c        <       MOVS     r0,#0x3c
        0x1fff5954:    f7fcfa08    ....    BL       $Ven$TT$L$$ll_hw_set_rx_tx_interval ; 0x1fff1d68
        0x1fff5958:    2042        B       MOVS     r0,#0x42
        0x1fff595a:    f7fcfa0b    ....    BL       $Ven$TT$L$$ll_hw_set_tx_rx_interval ; 0x1fff1d74
        0x1fff595e:    2234        4"      MOVS     r2,#0x34
        0x1fff5960:    2108        .!      MOVS     r1,#8
        0x1fff5962:    2039        9       MOVS     r0,#0x39
        0x1fff5964:    f7fcf9e8    ....    BL       $Ven$TT$L$$ll_hw_set_trx_settle ; 0x1fff1d38
        0x1fff5968:    bd10        ..      POP      {r4,pc}
        0x1fff596a:    0000        ..      MOVS     r0,r0
    i.phy_rf_rx
    phy_rf_rx
        0x1fff596c:    b510        ..      PUSH     {r4,lr}
        0x1fff596e:    f7ffffcb    ....    BL       phy_hw_stop ; 0x1fff5908
        0x1fff5972:    f7fbffc5    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff5976:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff59b0] = 0x1fff7664
        0x1fff5978:    c807        ..      LDM      r0,{r0-r2}
        0x1fff597a:    f7ffff7b    ..{.    BL       phy_hw_pktFmt_Config ; 0x1fff5874
        0x1fff597e:    f7ffffe3    ....    BL       phy_hw_timing_setting ; 0x1fff5948
        0x1fff5982:    4c0b        .L      LDR      r4,[pc,#44] ; [0x1fff59b0] = 0x1fff7664
        0x1fff5984:    340c        .4      ADDS     r4,r4,#0xc
        0x1fff5986:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff5988:    f000f8be    ....    BL       phy_set_channel ; 0x1fff5b08
        0x1fff598c:    89e0        ..      LDRH     r0,[r4,#0xe]
        0x1fff598e:    f7ffff9b    ....    BL       phy_hw_set_srx ; 0x1fff58c8
        0x1fff5992:    f7fcf9f5    ....    BL       $Ven$TT$L$$ll_hw_rst_tfifo ; 0x1fff1d80
        0x1fff5996:    f7fcf9f9    ....    BL       $Ven$TT$L$$ll_hw_rst_rfifo ; 0x1fff1d8c
        0x1fff599a:    20ff        .       MOVS     r0,#0xff
        0x1fff599c:    f7fcf984    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1ca8
        0x1fff59a0:    f7ffff14    ....    BL       phy_hw_go ; 0x1fff57cc
        0x1fff59a4:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff59b4] = 0x1fff0998
        0x1fff59a6:    2001        .       MOVS     r0,#1
        0x1fff59a8:    6008        .`      STR      r0,[r1,#0]
        0x1fff59aa:    f7fbffb5    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff59ae:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff59b0:    1fff7664    dv..    DCD    536835684
        0x1fff59b4:    1fff0998    ....    DCD    536807832
    $t
    i.phy_rf_tx
    phy_rf_tx
        0x1fff59b8:    b510        ..      PUSH     {r4,lr}
        0x1fff59ba:    f7ffffa5    ....    BL       phy_hw_stop ; 0x1fff5908
        0x1fff59be:    f7fbff9f    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff59c2:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff5a14] = 0x1fff7664
        0x1fff59c4:    c807        ..      LDM      r0,{r0-r2}
        0x1fff59c6:    f7ffff55    ..U.    BL       phy_hw_pktFmt_Config ; 0x1fff5874
        0x1fff59ca:    f7ffffbd    ....    BL       phy_hw_timing_setting ; 0x1fff5948
        0x1fff59ce:    4c11        .L      LDR      r4,[pc,#68] ; [0x1fff5a14] = 0x1fff7664
        0x1fff59d0:    340c        .4      ADDS     r4,r4,#0xc
        0x1fff59d2:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff59d4:    f000f898    ....    BL       phy_set_channel ; 0x1fff5b08
        0x1fff59d8:    7820         x      LDRB     r0,[r4,#0]
        0x1fff59da:    2802        .(      CMP      r0,#2
        0x1fff59dc:    d015        ..      BEQ      0x1fff5a0a ; phy_rf_tx + 82
        0x1fff59de:    f7ffff7e    ..~.    BL       phy_hw_set_stx ; 0x1fff58de
        0x1fff59e2:    f7fcf9cd    ....    BL       $Ven$TT$L$$ll_hw_rst_tfifo ; 0x1fff1d80
        0x1fff59e6:    f7fcf9d1    ....    BL       $Ven$TT$L$$ll_hw_rst_rfifo ; 0x1fff1d8c
        0x1fff59ea:    20ff        .       MOVS     r0,#0xff
        0x1fff59ec:    f7fcf95c    ..\.    BL       $Ven$TT$L$$set_max_length ; 0x1fff1ca8
        0x1fff59f0:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff5a18] = 0x1fff7544
        0x1fff59f2:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff59f4:    1c89        ..      ADDS     r1,r1,#2
        0x1fff59f6:    f7fcf921    ..!.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff1c3c
        0x1fff59fa:    f7fffee7    ....    BL       phy_hw_go ; 0x1fff57cc
        0x1fff59fe:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff5a1c] = 0x1fff0998
        0x1fff5a00:    2001        .       MOVS     r0,#1
        0x1fff5a02:    6008        .`      STR      r0,[r1,#0]
        0x1fff5a04:    f7fbff88    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff5a08:    bd10        ..      POP      {r4,pc}
        0x1fff5a0a:    8a20         .      LDRH     r0,[r4,#0x10]
        0x1fff5a0c:    f7ffff70    ..p.    BL       phy_hw_set_trx ; 0x1fff58f0
        0x1fff5a10:    e7e7        ..      B        0x1fff59e2 ; phy_rf_tx + 42
    $d
        0x1fff5a12:    0000        ..      DCW    0
        0x1fff5a14:    1fff7664    dv..    DCD    536835684
        0x1fff5a18:    1fff7544    Du..    DCD    536835396
        0x1fff5a1c:    1fff0998    ....    DCD    536807832
    $t
    i.phy_rx_data_check
    phy_rx_data_check
        0x1fff5a20:    b510        ..      PUSH     {r4,lr}
        0x1fff5a22:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff5a3c] = 0x1fff7670
        0x1fff5a24:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5a26:    2803        .(      CMP      r0,#3
        0x1fff5a28:    d006        ..      BEQ      0x1fff5a38 ; phy_rx_data_check + 24
        0x1fff5a2a:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff5a40] = 0x1fff6b80
        0x1fff5a2c:    2120         !      MOVS     r1,#0x20
        0x1fff5a2e:    78c0        .x      LDRB     r0,[r0,#3]
        0x1fff5a30:    f7fcf84a    ..J.    BL       $Ven$TT$L$$osal_set_event ; 0x1fff1ac8
        0x1fff5a34:    2000        .       MOVS     r0,#0
        0x1fff5a36:    bd10        ..      POP      {r4,pc}
        0x1fff5a38:    2001        .       MOVS     r0,#1
        0x1fff5a3a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5a3c:    1fff7670    pv..    DCD    536835696
        0x1fff5a40:    1fff6b80    .k..    DCD    536832896
    $t
    i.phy_rx_data_process
    phy_rx_data_process
        0x1fff5a44:    b57c        |.      PUSH     {r2-r6,lr}
        0x1fff5a46:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff5aa8] = 0x1fff7664
        0x1fff5a48:    4d18        .M      LDR      r5,[pc,#96] ; [0x1fff5aac] = 0x1fff7444
        0x1fff5a4a:    78c1        .x      LDRB     r1,[r0,#3]
        0x1fff5a4c:    2900        .)      CMP      r1,#0
        0x1fff5a4e:    d01d        ..      BEQ      0x1fff5a8c ; phy_rx_data_process + 72
        0x1fff5a50:    786e        nx      LDRB     r6,[r5,#1]
        0x1fff5a52:    a117        ..      ADR      r1,{pc}+0x5e ; 0x1fff5ab0
        0x1fff5a54:    c903        ..      LDM      r1,{r0,r1}
        0x1fff5a56:    9101        ..      STR      r1,[sp,#4]
        0x1fff5a58:    9000        ..      STR      r0,[sp,#0]
        0x1fff5a5a:    2206        ."      MOVS     r2,#6
        0x1fff5a5c:    1ca9        ..      ADDS     r1,r5,#2
        0x1fff5a5e:    4668        hF      MOV      r0,sp
        0x1fff5a60:    f7fcf892    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff1b88
        0x1fff5a64:    2800        .(      CMP      r0,#0
        0x1fff5a66:    d01e        ..      BEQ      0x1fff5aa6 ; phy_rx_data_process + 98
        0x1fff5a68:    a013        ..      ADR      r0,{pc}+0x50 ; 0x1fff5ab8
        0x1fff5a6a:    f7fdfda3    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5a6e:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff5aa8] = 0x1fff7664
        0x1fff5a70:    300c        .0      ADDS     r0,r0,#0xc
        0x1fff5a72:    7b03        .{      LDRB     r3,[r0,#0xc]
        0x1fff5a74:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff5ad4] = 0x1fff6b80
        0x1fff5a76:    8882        ..      LDRH     r2,[r0,#4]
        0x1fff5a78:    7841        Ax      LDRB     r1,[r0,#1]
        0x1fff5a7a:    3aff        .:      SUBS     r2,r2,#0xff
        0x1fff5a7c:    3aff        .:      SUBS     r2,r2,#0xff
        0x1fff5a7e:    a016        ..      ADR      r0,{pc}+0x5a ; 0x1fff5ad8
        0x1fff5a80:    3a02        .:      SUBS     r2,#2
        0x1fff5a82:    f7fdfd97    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5a86:    2400        .$      MOVS     r4,#0
        0x1fff5a88:    1cb6        ..      ADDS     r6,r6,#2
        0x1fff5a8a:    e007        ..      B        0x1fff5a9c ; phy_rx_data_process + 88
        0x1fff5a8c:    7846        Fx      LDRB     r6,[r0,#1]
        0x1fff5a8e:    e7e0        ..      B        0x1fff5a52 ; phy_rx_data_process + 14
        0x1fff5a90:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff5a92:    a01a        ..      ADR      r0,{pc}+0x6a ; 0x1fff5afc
        0x1fff5a94:    f7fdfd8e    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5a98:    1c64        d.      ADDS     r4,r4,#1
        0x1fff5a9a:    b2e4        ..      UXTB     r4,r4
        0x1fff5a9c:    42b4        .B      CMP      r4,r6
        0x1fff5a9e:    d3f7        ..      BCC      0x1fff5a90 ; phy_rx_data_process + 76
        0x1fff5aa0:    a018        ..      ADR      r0,{pc}+0x64 ; 0x1fff5b04
        0x1fff5aa2:    f7fdfd87    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5aa6:    bd7c        |.      POP      {r2-r6,pc}
    $d
        0x1fff5aa8:    1fff7664    dv..    DCD    536835684
        0x1fff5aac:    1fff7444    Dt..    DCD    536835140
        0x1fff5ab0:    eeeeeeef    ....    DCD    4008636143
        0x1fff5ab4:    0000feee    ....    DCD    65262
        0x1fff5ab8:    2d2d2d2d    ----    DCD    757935405
        0x1fff5abc:    2d2d2d2d    ----    DCD    757935405
        0x1fff5ac0:    2d2d2d2d    ----    DCD    757935405
        0x1fff5ac4:    2d2d2d2d    ----    DCD    757935405
        0x1fff5ac8:    2d2d2d2d    ----    DCD    757935405
        0x1fff5acc:    2d2d2d2d    ----    DCD    757935405
        0x1fff5ad0:    00000a2d    -...    DCD    2605
        0x1fff5ad4:    1fff6b80    .k..    DCD    536832896
        0x1fff5ad8:    5948505b    [PHY    DCD    1497911387
        0x1fff5adc:    5d585220     RX]    DCD    1566069280
        0x1fff5ae0:    252d5b20     [-%    DCD    623729440
        0x1fff5ae4:    64643330    03dd    DCD    1684288304
        0x1fff5ae8:    25206d62    bm %    DCD    622882146
        0x1fff5aec:    484b6434    4dKH    DCD    1212900404
        0x1fff5af0:    3025207a    z %0    DCD    807739514
        0x1fff5af4:    43206432    2d C    DCD    1126196274
        0x1fff5af8:    00205d48    H] .    DCD    2121032
        0x1fff5afc:    78323025    %02x    DCD    2016555045
        0x1fff5b00:    00000020     ...    DCD    32
        0x1fff5b04:    0000000a    ....    DCD    10
    $t
    i.phy_set_channel
    phy_set_channel
        0x1fff5b08:    b510        ..      PUSH     {r4,lr}
        0x1fff5b0a:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff5b40] = 0x1fff0a68
        0x1fff5b0c:    2300        .#      MOVS     r3,#0
        0x1fff5b0e:    56cb        .V      LDRSB    r3,[r1,r3]
        0x1fff5b10:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff5b44] = 0x40030080
        0x1fff5b12:    2b00        .+      CMP      r3,#0
        0x1fff5b14:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff5b48] = 0
        0x1fff5b16:    56cb        .V      LDRSB    r3,[r1,r3]
        0x1fff5b18:    db06        ..      BLT      0x1fff5b28 ; phy_set_channel + 32
        0x1fff5b1a:    041b        ..      LSLS     r3,r3,#16
        0x1fff5b1c:    2400        .$      MOVS     r4,#0
        0x1fff5b1e:    570c        .W      LDRSB    r4,[r1,r4]
        0x1fff5b20:    0221        !.      LSLS     r1,r4,#8
        0x1fff5b22:    1859        Y.      ADDS     r1,r3,r1
        0x1fff5b24:    1808        ..      ADDS     r0,r1,r0
        0x1fff5b26:    e008        ..      B        0x1fff5b3a ; phy_set_channel + 50
        0x1fff5b28:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff5b2a:    041b        ..      LSLS     r3,r3,#16
        0x1fff5b2c:    2400        .$      MOVS     r4,#0
        0x1fff5b2e:    570c        .W      LDRSB    r4,[r1,r4]
        0x1fff5b30:    0221        !.      LSLS     r1,r4,#8
        0x1fff5b32:    1859        Y.      ADDS     r1,r3,r1
        0x1fff5b34:    1808        ..      ADDS     r0,r1,r0
        0x1fff5b36:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff5b4c] = 0xfeff
        0x1fff5b38:    1840        @.      ADDS     r0,r0,r1
        0x1fff5b3a:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff5b3c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5b3e:    0000        ..      DCW    0
        0x1fff5b40:    1fff0a68    h...    DCD    536808040
        0x1fff5b44:    40030080    ...@    DCD    1073938560
        0x1fff5b48:    00000000    ....    DCD    0
        0x1fff5b4c:    0000feff    ....    DCD    65279
    $t
    i.phy_tx_buf_updata
    phy_tx_buf_updata
        0x1fff5b50:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5b52:    4617        .F      MOV      r7,r2
        0x1fff5b54:    4604        .F      MOV      r4,r0
        0x1fff5b56:    461e        .F      MOV      r6,r3
        0x1fff5b58:    2202        ."      MOVS     r2,#2
        0x1fff5b5a:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff5ba4] = 0x1fff7544
        0x1fff5b5c:    f7fcf91c    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d98
        0x1fff5b60:    4d10        .M      LDR      r5,[pc,#64] ; [0x1fff5ba4] = 0x1fff7544
        0x1fff5b62:    2206        ."      MOVS     r2,#6
        0x1fff5b64:    4621        !F      MOV      r1,r4
        0x1fff5b66:    1ca8        ..      ADDS     r0,r5,#2
        0x1fff5b68:    f7fcf916    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d98
        0x1fff5b6c:    4628        (F      MOV      r0,r5
        0x1fff5b6e:    4632        2F      MOV      r2,r6
        0x1fff5b70:    4639        9F      MOV      r1,r7
        0x1fff5b72:    3008        .0      ADDS     r0,r0,#8
        0x1fff5b74:    f7fcf910    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff1d98
        0x1fff5b78:    a00b        ..      ADR      r0,{pc}+0x30 ; 0x1fff5ba8
        0x1fff5b7a:    f7fdfd1b    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5b7e:    a017        ..      ADR      r0,{pc}+0x5e ; 0x1fff5bdc
        0x1fff5b80:    f7fdfd18    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5b84:    2400        .$      MOVS     r4,#0
        0x1fff5b86:    e005        ..      B        0x1fff5b94 ; phy_tx_buf_updata + 68
        0x1fff5b88:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff5b8a:    a019        ..      ADR      r0,{pc}+0x66 ; 0x1fff5bf0
        0x1fff5b8c:    f7fdfd12    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5b90:    1c64        d.      ADDS     r4,r4,#1
        0x1fff5b92:    b2e4        ..      UXTB     r4,r4
        0x1fff5b94:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff5b96:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5b98:    42a0        .B      CMP      r0,r4
        0x1fff5b9a:    d8f5        ..      BHI      0x1fff5b88 ; phy_tx_buf_updata + 56
        0x1fff5b9c:    a002        ..      ADR      r0,{pc}+0xc ; 0x1fff5ba8
        0x1fff5b9e:    f7fdfd09    ....    BL       dbg_printf ; 0x1fff35b4
        0x1fff5ba2:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff5ba4:    1fff7544    Du..    DCD    536835396
        0x1fff5ba8:    2d2d2d0a    .---    DCD    757935370
        0x1fff5bac:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bb0:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bb4:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bb8:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bbc:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bc0:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bc4:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bc8:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bcc:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bd0:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bd4:    2d2d2d2d    ----    DCD    757935405
        0x1fff5bd8:    0000000a    ....    DCD    10
        0x1fff5bdc:    20594850    PHY     DCD    542722128
        0x1fff5be0:    20465542    BUF     DCD    541480258
        0x1fff5be4:    44207854    Tx D    DCD    1142978644
        0x1fff5be8:    0a706d75    ump.    DCD    175140213
        0x1fff5bec:    00000000    ....    DCD    0
        0x1fff5bf0:    78323025    %02x    DCD    2016555045
        0x1fff5bf4:    00000020     ...    DCD    32
    $t
    i.process_rx_done_evt
    process_rx_done_evt
        0x1fff5bf8:    b510        ..      PUSH     {r4,lr}
        0x1fff5bfa:    f7fbfedb    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff5bfe:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff5c48] = 0x1fff7670
        0x1fff5c00:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff5c02:    4282        .B      CMP      r2,r0
        0x1fff5c04:    d801        ..      BHI      0x1fff5c0a ; process_rx_done_evt + 18
        0x1fff5c06:    1a82        ..      SUBS     r2,r0,r2
        0x1fff5c08:    e002        ..      B        0x1fff5c10 ; process_rx_done_evt + 24
        0x1fff5c0a:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff5c4c] = 0x3fffff
        0x1fff5c0c:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff5c0e:    1812        ..      ADDS     r2,r2,r0
        0x1fff5c10:    89cb        ..      LDRH     r3,[r1,#0xe]
        0x1fff5c12:    429a        .B      CMP      r2,r3
        0x1fff5c14:    d202        ..      BCS      0x1fff5c1c ; process_rx_done_evt + 36
        0x1fff5c16:    f7fffea9    ....    BL       phy_rf_rx ; 0x1fff596c
        0x1fff5c1a:    bd10        ..      POP      {r4,pc}
        0x1fff5c1c:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff5c1e:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff5c48] = 0x1fff7670
        0x1fff5c20:    7b08        .{      LDRB     r0,[r1,#0xc]
        0x1fff5c22:    3a0c        .:      SUBS     r2,r2,#0xc
        0x1fff5c24:    2802        .(      CMP      r0,#2
        0x1fff5c26:    d006        ..      BEQ      0x1fff5c36 ; process_rx_done_evt + 62
        0x1fff5c28:    281a        .(      CMP      r0,#0x1a
        0x1fff5c2a:    d008        ..      BEQ      0x1fff5c3e ; process_rx_done_evt + 70
        0x1fff5c2c:    2850        P(      CMP      r0,#0x50
        0x1fff5c2e:    d1f4        ..      BNE      0x1fff5c1a ; process_rx_done_evt + 34
        0x1fff5c30:    20ff        .       MOVS     r0,#0xff
        0x1fff5c32:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5c34:    bd10        ..      POP      {r4,pc}
        0x1fff5c36:    201a        .       MOVS     r0,#0x1a
        0x1fff5c38:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff5c3a:    2033        3       MOVS     r0,#0x33
        0x1fff5c3c:    e002        ..      B        0x1fff5c44 ; process_rx_done_evt + 76
        0x1fff5c3e:    2050        P       MOVS     r0,#0x50
        0x1fff5c40:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff5c42:    2073        s       MOVS     r0,#0x73
        0x1fff5c44:    7090        .p      STRB     r0,[r2,#2]
        0x1fff5c46:    e7e6        ..      B        0x1fff5c16 ; process_rx_done_evt + 30
    $d
        0x1fff5c48:    1fff7670    pv..    DCD    536835696
        0x1fff5c4c:    003fffff    ..?.    DCD    4194303
    $t
    i.rc32k_calibration
    rc32k_calibration
        0x1fff5c50:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5c52:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff5ccc] = 0x4000f0c0
        0x1fff5c54:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5c56:    0609        ..      LSLS     r1,r1,#24
        0x1fff5c58:    d501        ..      BPL      0x1fff5c5e ; rc32k_calibration + 14
        0x1fff5c5a:    2000        .       MOVS     r0,#0
        0x1fff5c5c:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5c5e:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5c60:    2280        ."      MOVS     r2,#0x80
        0x1fff5c62:    4311        .C      ORRS     r1,r1,r2
        0x1fff5c64:    6041        A`      STR      r1,[r0,#4]
        0x1fff5c66:    4d19        .M      LDR      r5,[pc,#100] ; [0x1fff5ccc] = 0x4000f0c0
        0x1fff5c68:    260a        .&      MOVS     r6,#0xa
        0x1fff5c6a:    2700        .'      MOVS     r7,#0
        0x1fff5c6c:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff5c6e:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff5c70:    0840        @.      LSRS     r0,r0,#1
        0x1fff5c72:    0040        @.      LSLS     r0,r0,#1
        0x1fff5c74:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff5c76:    2006        .       MOVS     r0,#6
        0x1fff5c78:    f7fbff62    ..b.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff5c7c:    4c13        .L      LDR      r4,[pc,#76] ; [0x1fff5ccc] = 0x4000f0c0
        0x1fff5c7e:    3cc0        .<      SUBS     r4,r4,#0xc0
        0x1fff5c80:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff5c82:    2180        .!      MOVS     r1,#0x80
        0x1fff5c84:    4308        .C      ORRS     r0,r0,r1
        0x1fff5c86:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5c88:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff5c8a:    2101        .!      MOVS     r1,#1
        0x1fff5c8c:    4308        .C      ORRS     r0,r0,r1
        0x1fff5c8e:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff5c90:    e002        ..      B        0x1fff5c98 ; rc32k_calibration + 72
        0x1fff5c92:    2008        .       MOVS     r0,#8
        0x1fff5c94:    f7fbff54    ..T.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff5c98:    6aa8        .j      LDR      r0,[r5,#0x28]
        0x1fff5c9a:    0580        ..      LSLS     r0,r0,#22
        0x1fff5c9c:    d404        ..      BMI      0x1fff5ca8 ; rc32k_calibration + 88
        0x1fff5c9e:    4630        0F      MOV      r0,r6
        0x1fff5ca0:    1e76        v.      SUBS     r6,r6,#1
        0x1fff5ca2:    b2f6        ..      UXTB     r6,r6
        0x1fff5ca4:    2800        .(      CMP      r0,#0
        0x1fff5ca6:    d1f4        ..      BNE      0x1fff5c92 ; rc32k_calibration + 66
        0x1fff5ca8:    2e00        ..      CMP      r6,#0
        0x1fff5caa:    d007        ..      BEQ      0x1fff5cbc ; rc32k_calibration + 108
        0x1fff5cac:    6a28        (j      LDR      r0,[r5,#0x20]
        0x1fff5cae:    217e        ~!      MOVS     r1,#0x7e
        0x1fff5cb0:    0bc7        ..      LSRS     r7,r0,#15
        0x1fff5cb2:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff5cb4:    400f        .@      ANDS     r7,r7,r1
        0x1fff5cb6:    4388        .C      BICS     r0,r0,r1
        0x1fff5cb8:    4338        8C      ORRS     r0,r0,r7
        0x1fff5cba:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5cbc:    69a1        .i      LDR      r1,[r4,#0x18]
        0x1fff5cbe:    2080        .       MOVS     r0,#0x80
        0x1fff5cc0:    4381        .C      BICS     r1,r1,r0
        0x1fff5cc2:    61a1        .a      STR      r1,[r4,#0x18]
        0x1fff5cc4:    0638        8.      LSLS     r0,r7,#24
        0x1fff5cc6:    0e40        @.      LSRS     r0,r0,#25
        0x1fff5cc8:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff5cca:    0000        ..      DCW    0
        0x1fff5ccc:    4000f0c0    ...@    DCD    1073803456
    $t
    i.rc32k_cap_cal
    rc32k_cap_cal
        0x1fff5cd0:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff5d1c] = 0x200b
        0x1fff5cd2:    b510        ..      PUSH     {r4,lr}
        0x1fff5cd4:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff5d20] = 0x4000f000
        0x1fff5cd6:    227e        ~"      MOVS     r2,#0x7e
        0x1fff5cd8:    4298        .B      CMP      r0,r3
        0x1fff5cda:    d90a        ..      BLS      0x1fff5cf2 ; rc32k_cap_cal + 34
        0x1fff5cdc:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5cde:    065b        [.      LSLS     r3,r3,#25
        0x1fff5ce0:    0e9b        ..      LSRS     r3,r3,#26
        0x1fff5ce2:    d006        ..      BEQ      0x1fff5cf2 ; rc32k_cap_cal + 34
        0x1fff5ce4:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5ce6:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5ce8:    0640        @.      LSLS     r0,r0,#25
        0x1fff5cea:    0e80        ..      LSRS     r0,r0,#26
        0x1fff5cec:    4393        .C      BICS     r3,r3,r2
        0x1fff5cee:    1e40        @.      SUBS     r0,r0,#1
        0x1fff5cf0:    e00c        ..      B        0x1fff5d0c ; rc32k_cap_cal + 60
        0x1fff5cf2:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff5d24] = 0x1cfd
        0x1fff5cf4:    4298        .B      CMP      r0,r3
        0x1fff5cf6:    d20f        ..      BCS      0x1fff5d18 ; rc32k_cap_cal + 72
        0x1fff5cf8:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5cfa:    4010        .@      ANDS     r0,r0,r2
        0x1fff5cfc:    287e        ~(      CMP      r0,#0x7e
        0x1fff5cfe:    d20b        ..      BCS      0x1fff5d18 ; rc32k_cap_cal + 72
        0x1fff5d00:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff5d02:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff5d04:    0640        @.      LSLS     r0,r0,#25
        0x1fff5d06:    0e80        ..      LSRS     r0,r0,#26
        0x1fff5d08:    4393        .C      BICS     r3,r3,r2
        0x1fff5d0a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff5d0c:    0040        @.      LSLS     r0,r0,#1
        0x1fff5d0e:    4303        .C      ORRS     r3,r3,r0
        0x1fff5d10:    618b        .a      STR      r3,[r1,#0x18]
        0x1fff5d12:    2003        .       MOVS     r0,#3
        0x1fff5d14:    f7fbff14    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff5d18:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5d1a:    0000        ..      DCW    0
        0x1fff5d1c:    0000200b    . ..    DCD    8203
        0x1fff5d20:    4000f000    ...@    DCD    1073803264
        0x1fff5d24:    00001cfd    ....    DCD    7421
    $t
    i.read_TIM5_remainder_timer
    read_TIM5_remainder_timer
        0x1fff5d28:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff5d30] = 0x40001040
        0x1fff5d2a:    6940        @i      LDR      r0,[r0,#0x14]
        0x1fff5d2c:    0880        ..      LSRS     r0,r0,#2
        0x1fff5d2e:    4770        pG      BX       lr
    $d
        0x1fff5d30:    40001040    @..@    DCD    1073745984
    $t
    i.rf_calibrate1
    rf_calibrate1
        0x1fff5d34:    b510        ..      PUSH     {r4,lr}
        0x1fff5d36:    f000fa3f    ..?.    BL       rf_tpCal_gen_cap_arrary ; 0x1fff61b8
        0x1fff5d3a:    f7ffff89    ....    BL       rc32k_calibration ; 0x1fff5c50
        0x1fff5d3e:    bd10        ..      POP      {r4,pc}
    i.rf_phy_ana_cfg
    rf_phy_ana_cfg
        0x1fff5d40:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff5d42:    4839        9H      LDR      r0,[pc,#228] ; [0x1fff5e28] = 0x4000f040
        0x1fff5d44:    6801        .h      LDR      r1,[r0,#0]
        0x1fff5d46:    2201        ."      MOVS     r2,#1
        0x1fff5d48:    0492        ..      LSLS     r2,r2,#18
        0x1fff5d4a:    4311        .C      ORRS     r1,r1,r2
        0x1fff5d4c:    6001        .`      STR      r1,[r0,#0]
        0x1fff5d4e:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff5d50:    2203        ."      MOVS     r2,#3
        0x1fff5d52:    0612        ..      LSLS     r2,r2,#24
        0x1fff5d54:    4391        .C      BICS     r1,r1,r2
        0x1fff5d56:    4a35        5J      LDR      r2,[pc,#212] ; [0x1fff5e2c] = 0x1fff0a4c
        0x1fff5d58:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5d5a:    061b        ..      LSLS     r3,r3,#24
        0x1fff5d5c:    4319        .C      ORRS     r1,r1,r3
        0x1fff5d5e:    6041        A`      STR      r1,[r0,#4]
        0x1fff5d60:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5d62:    2103        .!      MOVS     r1,#3
        0x1fff5d64:    0589        ..      LSLS     r1,r1,#22
        0x1fff5d66:    438b        .C      BICS     r3,r3,r1
        0x1fff5d68:    4931        1I      LDR      r1,[pc,#196] ; [0x1fff5e30] = 0x1fff0a4b
        0x1fff5d6a:    780c        .x      LDRB     r4,[r1,#0]
        0x1fff5d6c:    05a4        ..      LSLS     r4,r4,#22
        0x1fff5d6e:    4323        #C      ORRS     r3,r3,r4
        0x1fff5d70:    6043        C`      STR      r3,[r0,#4]
        0x1fff5d72:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5d74:    2460        `$      MOVS     r4,#0x60
        0x1fff5d76:    4323        #C      ORRS     r3,r3,r4
        0x1fff5d78:    6043        C`      STR      r3,[r0,#4]
        0x1fff5d7a:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5d7c:    2b02        .+      CMP      r3,#2
        0x1fff5d7e:    d008        ..      BEQ      0x1fff5d92 ; rf_phy_ana_cfg + 82
        0x1fff5d80:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff5d82:    2b01        .+      CMP      r3,#1
        0x1fff5d84:    d005        ..      BEQ      0x1fff5d92 ; rf_phy_ana_cfg + 82
        0x1fff5d86:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5d88:    2b02        .+      CMP      r3,#2
        0x1fff5d8a:    d002        ..      BEQ      0x1fff5d92 ; rf_phy_ana_cfg + 82
        0x1fff5d8c:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5d8e:    2b01        .+      CMP      r3,#1
        0x1fff5d90:    d104        ..      BNE      0x1fff5d9c ; rf_phy_ana_cfg + 92
        0x1fff5d92:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff5d94:    24ff        .$      MOVS     r4,#0xff
        0x1fff5d96:    3401        .4      ADDS     r4,#1
        0x1fff5d98:    4323        #C      ORRS     r3,r3,r4
        0x1fff5d9a:    6043        C`      STR      r3,[r0,#4]
        0x1fff5d9c:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff5d9e:    2a03        .*      CMP      r2,#3
        0x1fff5da0:    d002        ..      BEQ      0x1fff5da8 ; rf_phy_ana_cfg + 104
        0x1fff5da2:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff5da4:    2a03        .*      CMP      r2,#3
        0x1fff5da6:    d103        ..      BNE      0x1fff5db0 ; rf_phy_ana_cfg + 112
        0x1fff5da8:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff5daa:    2380        .#      MOVS     r3,#0x80
        0x1fff5dac:    431a        .C      ORRS     r2,r2,r3
        0x1fff5dae:    6042        B`      STR      r2,[r0,#4]
        0x1fff5db0:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff5db2:    2303        .#      MOVS     r3,#3
        0x1fff5db4:    049b        ..      LSLS     r3,r3,#18
        0x1fff5db6:    431a        .C      ORRS     r2,r2,r3
        0x1fff5db8:    6042        B`      STR      r2,[r0,#4]
        0x1fff5dba:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5dbc:    2201        ."      MOVS     r2,#1
        0x1fff5dbe:    05d2        ..      LSLS     r2,r2,#23
        0x1fff5dc0:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff5e34] = 0x40030080
        0x1fff5dc2:    2b00        .+      CMP      r3,#0
        0x1fff5dc4:    d103        ..      BNE      0x1fff5dce ; rf_phy_ana_cfg + 142
        0x1fff5dc6:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff5e38] = 0x1fff0a4a
        0x1fff5dc8:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff5dca:    2b03        .+      CMP      r3,#3
        0x1fff5dcc:    d01b        ..      BEQ      0x1fff5e06 ; rf_phy_ana_cfg + 198
        0x1fff5dce:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff5dd0:    4393        .C      BICS     r3,r3,r2
        0x1fff5dd2:    60c3        .`      STR      r3,[r0,#0xc]
        0x1fff5dd4:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff5e34] = 0x40030080
        0x1fff5dd6:    4b19        .K      LDR      r3,[pc,#100] ; [0x1fff5e3c] = 0x20000bc0
        0x1fff5dd8:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff5dda:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff5ddc:    23ff        .#      MOVS     r3,#0xff
        0x1fff5dde:    3361        a3      ADDS     r3,r3,#0x61
        0x1fff5de0:    6113        .a      STR      r3,[r2,#0x10]
        0x1fff5de2:    4c17        .L      LDR      r4,[pc,#92] ; [0x1fff5e40] = 0x76a3e7a
        0x1fff5de4:    6154        Ta      STR      r4,[r2,#0x14]
        0x1fff5de6:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff5e44] = 0x4890000
        0x1fff5de8:    6193        .a      STR      r3,[r2,#0x18]
        0x1fff5dea:    25ff        .%      MOVS     r5,#0xff
        0x1fff5dec:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff5e34] = 0x40030080
        0x1fff5dee:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff5df0:    3380        .3      ADDS     r3,r3,#0x80
        0x1fff5df2:    605d        ]`      STR      r5,[r3,#4]
        0x1fff5df4:    609c        .`      STR      r4,[r3,#8]
        0x1fff5df6:    4c14        .L      LDR      r4,[pc,#80] ; [0x1fff5e48] = 0x4898000
        0x1fff5df8:    60dc        .`      STR      r4,[r3,#0xc]
        0x1fff5dfa:    4b14        .K      LDR      r3,[pc,#80] ; [0x1fff5e4c] = 0x24cc
        0x1fff5dfc:    6003        .`      STR      r3,[r0,#0]
        0x1fff5dfe:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5e00:    2900        .)      CMP      r1,#0
        0x1fff5e02:    d003        ..      BEQ      0x1fff5e0c ; rf_phy_ana_cfg + 204
        0x1fff5e04:    e006        ..      B        0x1fff5e14 ; rf_phy_ana_cfg + 212
        0x1fff5e06:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff5e08:    4313        .C      ORRS     r3,r3,r2
        0x1fff5e0a:    e7e2        ..      B        0x1fff5dd2 ; rf_phy_ana_cfg + 146
        0x1fff5e0c:    6801        .h      LDR      r1,[r0,#0]
        0x1fff5e0e:    2301        .#      MOVS     r3,#1
        0x1fff5e10:    4319        .C      ORRS     r1,r1,r3
        0x1fff5e12:    6001        .`      STR      r1,[r0,#0]
        0x1fff5e14:    490e        .I      LDR      r1,[pc,#56] ; [0x1fff5e50] = 0x1fff0a48
        0x1fff5e16:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff5e18:    4b0e        .K      LDR      r3,[pc,#56] ; [0x1fff5e54] = 0x825
        0x1fff5e1a:    06c9        ..      LSLS     r1,r1,#27
        0x1fff5e1c:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff5e1e:    18c9        ..      ADDS     r1,r1,r3
        0x1fff5e20:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff5e22:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff5e58] = 0x1a6fc2f
        0x1fff5e24:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff5e26:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff5e28:    4000f040    @..@    DCD    1073803328
        0x1fff5e2c:    1fff0a4c    L...    DCD    536808012
        0x1fff5e30:    1fff0a4b    K...    DCD    536808011
        0x1fff5e34:    40030080    ...@    DCD    1073938560
        0x1fff5e38:    1fff0a4a    J...    DCD    536808010
        0x1fff5e3c:    20000bc0    ...     DCD    536873920
        0x1fff5e40:    076a3e7a    z>j.    DCD    124403322
        0x1fff5e44:    04890000    ....    DCD    76087296
        0x1fff5e48:    04898000    ....    DCD    76120064
        0x1fff5e4c:    000024cc    .$..    DCD    9420
        0x1fff5e50:    1fff0a48    H...    DCD    536808008
        0x1fff5e54:    00000825    %...    DCD    2085
        0x1fff5e58:    01a6fc2f    /...    DCD    27720751
    $t
    i.rf_phy_bb_cfg
    rf_phy_bb_cfg
        0x1fff5e5c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5e5e:    0005        ..      MOVS     r5,r0
        0x1fff5e60:    4a4c        LJ      LDR      r2,[pc,#304] ; [0x1fff5f94] = 0x44500
        0x1fff5e62:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff5f98] = 0x400300c0
        0x1fff5e64:    4b4d        MK      LDR      r3,[pc,#308] ; [0x1fff5f9c] = 0x1c0000
        0x1fff5e66:    4c4e        NL      LDR      r4,[pc,#312] ; [0x1fff5fa0] = 0x1fff0a4b
        0x1fff5e68:    494e        NI      LDR      r1,[pc,#312] ; [0x1fff5fa4] = 0x40030080
        0x1fff5e6a:    d036        6.      BEQ      0x1fff5eda ; rf_phy_bb_cfg + 126
        0x1fff5e6c:    2d02        .-      CMP      r5,#2
        0x1fff5e6e:    d034        4.      BEQ      0x1fff5eda ; rf_phy_bb_cfg + 126
        0x1fff5e70:    1586        ..      ASRS     r6,r0,#22
        0x1fff5e72:    02b7        ..      LSLS     r7,r6,#10
        0x1fff5e74:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff5e76:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff5e78:    439e        .C      BICS     r6,r6,r3
        0x1fff5e7a:    19f3        ..      ADDS     r3,r6,r7
        0x1fff5e7c:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff5e7e:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5e80:    2800        .(      CMP      r0,#0
        0x1fff5e82:    d035        5.      BEQ      0x1fff5ef0 ; rf_phy_bb_cfg + 148
        0x1fff5e84:    2011        .       MOVS     r0,#0x11
        0x1fff5e86:    0340        @.      LSLS     r0,r0,#13
        0x1fff5e88:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff5e8a:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff5fa8] = 0x1000002
        0x1fff5e8c:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff5e8e:    4847        GH      LDR      r0,[pc,#284] ; [0x1fff5fac] = 0x1fff0a44
        0x1fff5e90:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5e92:    2201        ."      MOVS     r2,#1
        0x1fff5e94:    0312        ..      LSLS     r2,r2,#12
        0x1fff5e96:    1880        ..      ADDS     r0,r0,r2
        0x1fff5e98:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff5e9a:    4e42        BN      LDR      r6,[pc,#264] ; [0x1fff5fa4] = 0x40030080
        0x1fff5e9c:    4c41        AL      LDR      r4,[pc,#260] ; [0x1fff5fa4] = 0x40030080
        0x1fff5e9e:    4b44        DK      LDR      r3,[pc,#272] ; [0x1fff5fb0] = 0xb2800
        0x1fff5ea0:    3e80        .>      SUBS     r6,r6,#0x80
        0x1fff5ea2:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff5ea4:    2d00        .-      CMP      r5,#0
        0x1fff5ea6:    d028        (.      BEQ      0x1fff5efa ; rf_phy_bb_cfg + 158
        0x1fff5ea8:    2165        e!      MOVS     r1,#0x65
        0x1fff5eaa:    4a42        BJ      LDR      r2,[pc,#264] ; [0x1fff5fb4] = 0x37555555
        0x1fff5eac:    02c9        ..      LSLS     r1,r1,#11
        0x1fff5eae:    4842        BH      LDR      r0,[pc,#264] ; [0x1fff5fb8] = 0x8e89bed6
        0x1fff5eb0:    2d01        .-      CMP      r5,#1
        0x1fff5eb2:    d02f        /.      BEQ      0x1fff5f14 ; rf_phy_bb_cfg + 184
        0x1fff5eb4:    2d02        .-      CMP      r5,#2
        0x1fff5eb6:    d032        2.      BEQ      0x1fff5f1e ; rf_phy_bb_cfg + 194
        0x1fff5eb8:    2d03        .-      CMP      r5,#3
        0x1fff5eba:    d05b        [.      BEQ      0x1fff5f74 ; rf_phy_bb_cfg + 280
        0x1fff5ebc:    2d04        .-      CMP      r5,#4
        0x1fff5ebe:    d059        Y.      BEQ      0x1fff5f74 ; rf_phy_bb_cfg + 280
        0x1fff5ec0:    493e        >I      LDR      r1,[pc,#248] ; [0x1fff5fbc] = 0x42068000
        0x1fff5ec2:    1869        i.      ADDS     r1,r5,r1
        0x1fff5ec4:    6031        1`      STR      r1,[r6,#0]
        0x1fff5ec6:    493e        >I      LDR      r1,[pc,#248] ; [0x1fff5fc0] = 0x555555
        0x1fff5ec8:    60a1        .`      STR      r1,[r4,#8]
        0x1fff5eca:    6023        #`      STR      r3,[r4,#0]
        0x1fff5ecc:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5ece:    2102        .!      MOVS     r1,#2
        0x1fff5ed0:    4608        .F      MOV      r0,r1
        0x1fff5ed2:    f7fbff19    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1d08
        0x1fff5ed6:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff5fc4] = 0x22085580
        0x1fff5ed8:    e02c        ,.      B        0x1fff5f34 ; rf_phy_bb_cfg + 216
        0x1fff5eda:    2680        .&      MOVS     r6,#0x80
        0x1fff5edc:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff5ede:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff5ee0:    439e        .C      BICS     r6,r6,r3
        0x1fff5ee2:    2301        .#      MOVS     r3,#1
        0x1fff5ee4:    04db        ..      LSLS     r3,r3,#19
        0x1fff5ee6:    18f3        ..      ADDS     r3,r6,r3
        0x1fff5ee8:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff5eea:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5eec:    2800        .(      CMP      r0,#0
        0x1fff5eee:    d001        ..      BEQ      0x1fff5ef4 ; rf_phy_bb_cfg + 152
        0x1fff5ef0:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff5ef2:    e7ca        ..      B        0x1fff5e8a ; rf_phy_bb_cfg + 46
        0x1fff5ef4:    2087        .       MOVS     r0,#0x87
        0x1fff5ef6:    0300        ..      LSLS     r0,r0,#12
        0x1fff5ef8:    e7c6        ..      B        0x1fff5e88 ; rf_phy_bb_cfg + 44
        0x1fff5efa:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff5fc8] = 0x78068000
        0x1fff5efc:    6030        0`      STR      r0,[r6,#0]
        0x1fff5efe:    2000        .       MOVS     r0,#0
        0x1fff5f00:    60a0        .`      STR      r0,[r4,#8]
        0x1fff5f02:    6023        #`      STR      r3,[r4,#0]
        0x1fff5f04:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff5fcc] = 0x3675ee07
        0x1fff5f06:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5f08:    2103        .!      MOVS     r1,#3
        0x1fff5f0a:    4608        .F      MOV      r0,r1
        0x1fff5f0c:    f7fbfefc    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1d08
        0x1fff5f10:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff5fd0] = 0x22086680
        0x1fff5f12:    e00f        ..      B        0x1fff5f34 ; rf_phy_bb_cfg + 216
        0x1fff5f14:    4b2f        /K      LDR      r3,[pc,#188] ; [0x1fff5fd4] = 0x3d068001
        0x1fff5f16:    6033        3`      STR      r3,[r6,#0]
        0x1fff5f18:    60a2        .`      STR      r2,[r4,#8]
        0x1fff5f1a:    6021        !`      STR      r1,[r4,#0]
        0x1fff5f1c:    e7d6        ..      B        0x1fff5ecc ; rf_phy_bb_cfg + 112
        0x1fff5f1e:    4b2d        -K      LDR      r3,[pc,#180] ; [0x1fff5fd4] = 0x3d068001
        0x1fff5f20:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff5f22:    6033        3`      STR      r3,[r6,#0]
        0x1fff5f24:    60a2        .`      STR      r2,[r4,#8]
        0x1fff5f26:    6021        !`      STR      r1,[r4,#0]
        0x1fff5f28:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff5f2a:    2102        .!      MOVS     r1,#2
        0x1fff5f2c:    4608        .F      MOV      r0,r1
        0x1fff5f2e:    f7fbfeeb    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff1d08
        0x1fff5f32:    4829        )H      LDR      r0,[pc,#164] ; [0x1fff5fd8] = 0x22084580
        0x1fff5f34:    6120         a      STR      r0,[r4,#0x10]
        0x1fff5f36:    68f0        .h      LDR      r0,[r6,#0xc]
        0x1fff5f38:    21ff        .!      MOVS     r1,#0xff
        0x1fff5f3a:    4308        .C      ORRS     r0,r0,r1
        0x1fff5f3c:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff5f3e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fdc] = 0x545c9ca4
        0x1fff5f40:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff5f42:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fe0] = 0x4243444c
        0x1fff5f44:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff5f46:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fe4] = 0x464c5241
        0x1fff5f48:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff5f4a:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fe8] = 0x2e343a40
        0x1fff5f4c:    6220         b      STR      r0,[r4,#0x20]
        0x1fff5f4e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5fec] = 0x557f0028
        0x1fff5f50:    6260        `b      STR      r0,[r4,#0x24]
        0x1fff5f52:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5ff0] = 0x3d43494f
        0x1fff5f54:    62a0        .b      STR      r0,[r4,#0x28]
        0x1fff5f56:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5ff4] = 0x4c2b3137
        0x1fff5f58:    62e0        .b      STR      r0,[r4,#0x2c]
        0x1fff5f5a:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5ff8] = 0x343a4046
        0x1fff5f5c:    6320         c      STR      r0,[r4,#0x30]
        0x1fff5f5e:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff5ffc] = 0x1c22282e
        0x1fff5f60:    6360        `c      STR      r0,[r4,#0x34]
        0x1fff5f62:    20e0        .       MOVS     r0,#0xe0
        0x1fff5f64:    2d01        .-      CMP      r5,#1
        0x1fff5f66:    d00d        ..      BEQ      0x1fff5f84 ; rf_phy_bb_cfg + 296
        0x1fff5f68:    6821        !h      LDR      r1,[r4,#0]
        0x1fff5f6a:    2d02        .-      CMP      r5,#2
        0x1fff5f6c:    d00e        ..      BEQ      0x1fff5f8c ; rf_phy_bb_cfg + 304
        0x1fff5f6e:    4381        .C      BICS     r1,r1,r0
        0x1fff5f70:    6021        !`      STR      r1,[r4,#0]
        0x1fff5f72:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff5f74:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff6000] = 0x98068000
        0x1fff5f76:    18eb        ..      ADDS     r3,r5,r3
        0x1fff5f78:    6033        3`      STR      r3,[r6,#0]
        0x1fff5f7a:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff6004] = 0x50985a54
        0x1fff5f7c:    6073        s`      STR      r3,[r6,#4]
        0x1fff5f7e:    6021        !`      STR      r1,[r4,#0]
        0x1fff5f80:    60a2        .`      STR      r2,[r4,#8]
        0x1fff5f82:    e7a3        ..      B        0x1fff5ecc ; rf_phy_bb_cfg + 112
        0x1fff5f84:    6821        !h      LDR      r1,[r4,#0]
        0x1fff5f86:    4381        .C      BICS     r1,r1,r0
        0x1fff5f88:    3120         1      ADDS     r1,r1,#0x20
        0x1fff5f8a:    e7f1        ..      B        0x1fff5f70 ; rf_phy_bb_cfg + 276
        0x1fff5f8c:    4381        .C      BICS     r1,r1,r0
        0x1fff5f8e:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff5f90:    e7ee        ..      B        0x1fff5f70 ; rf_phy_bb_cfg + 276
    $d
        0x1fff5f92:    0000        ..      DCW    0
        0x1fff5f94:    00044500    .E..    DCD    279808
        0x1fff5f98:    400300c0    ...@    DCD    1073938624
        0x1fff5f9c:    001c0000    ....    DCD    1835008
        0x1fff5fa0:    1fff0a4b    K...    DCD    536808011
        0x1fff5fa4:    40030080    ...@    DCD    1073938560
        0x1fff5fa8:    01000002    ....    DCD    16777218
        0x1fff5fac:    1fff0a44    D...    DCD    536808004
        0x1fff5fb0:    000b2800    .(..    DCD    731136
        0x1fff5fb4:    37555555    UUU7    DCD    928339285
        0x1fff5fb8:    8e89bed6    ....    DCD    2391391958
        0x1fff5fbc:    42068000    ...B    DCD    1107722240
        0x1fff5fc0:    00555555    UUU.    DCD    5592405
        0x1fff5fc4:    22085580    .U."    DCD    570971520
        0x1fff5fc8:    78068000    ...x    DCD    2013691904
        0x1fff5fcc:    3675ee07    ..u6    DCD    913698311
        0x1fff5fd0:    22086680    .f."    DCD    570975872
        0x1fff5fd4:    3d068001    ...=    DCD    1023836161
        0x1fff5fd8:    22084580    .E."    DCD    570967424
        0x1fff5fdc:    545c9ca4    ..\T    DCD    1415355556
        0x1fff5fe0:    4243444c    LDCB    DCD    1111704652
        0x1fff5fe4:    464c5241    ARLF    DCD    1179406913
        0x1fff5fe8:    2e343a40    @:4.    DCD    775174720
        0x1fff5fec:    557f0028    (..U    DCD    1434386472
        0x1fff5ff0:    3d43494f    OIC=    DCD    1027819855
        0x1fff5ff4:    4c2b3137    71+L    DCD    1277899063
        0x1fff5ff8:    343a4046    F@:4    DCD    876232774
        0x1fff5ffc:    1c22282e    .(".    DCD    472000558
        0x1fff6000:    98068000    ....    DCD    2550562816
        0x1fff6004:    50985a54    TZ.P    DCD    1352161876
    $t
    i.rf_phy_change_cfg0
    rf_phy_change_cfg0
        0x1fff6008:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff600a:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff6094] = 0x400300c0
        0x1fff600c:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff6094] = 0x400300c0
        0x1fff600e:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff6094] = 0x400300c0
        0x1fff6010:    2680        .&      MOVS     r6,#0x80
        0x1fff6012:    4a20         J      LDR      r2,[pc,#128] ; [0x1fff6094] = 0x400300c0
        0x1fff6014:    2707        .'      MOVS     r7,#7
        0x1fff6016:    04bf        ..      LSLS     r7,r7,#18
        0x1fff6018:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff601a:    3dc0        .=      SUBS     r5,r5,#0xc0
        0x1fff601c:    24e0        .$      MOVS     r4,#0xe0
        0x1fff601e:    3980        .9      SUBS     r1,r1,#0x80
        0x1fff6020:    2802        .(      CMP      r0,#2
        0x1fff6022:    6216        .b      STR      r6,[r2,#0x20]
        0x1fff6024:    6996        .i      LDR      r6,[r2,#0x18]
        0x1fff6026:    d014        ..      BEQ      0x1fff6052 ; rf_phy_change_cfg0 + 74
        0x1fff6028:    43be        .C      BICS     r6,r6,r7
        0x1fff602a:    2701        .'      MOVS     r7,#1
        0x1fff602c:    04bf        ..      LSLS     r7,r7,#18
        0x1fff602e:    19f6        ..      ADDS     r6,r6,r7
        0x1fff6030:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff6032:    4a19        .J      LDR      r2,[pc,#100] ; [0x1fff6098] = 0x1fff0a4b
        0x1fff6034:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff6036:    2a00        .*      CMP      r2,#0
        0x1fff6038:    d01e        ..      BEQ      0x1fff6078 ; rf_phy_change_cfg0 + 112
        0x1fff603a:    107a        z.      ASRS     r2,r7,#1
        0x1fff603c:    611a        .a      STR      r2,[r3,#0x10]
        0x1fff603e:    2801        .(      CMP      r0,#1
        0x1fff6040:    d01e        ..      BEQ      0x1fff6080 ; rf_phy_change_cfg0 + 120
        0x1fff6042:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff609c] = 0x98068000
        0x1fff6044:    1880        ..      ADDS     r0,r0,r2
        0x1fff6046:    6028        (`      STR      r0,[r5,#0]
        0x1fff6048:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff60a0] = 0x22085580
        0x1fff604a:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff604c:    6808        .h      LDR      r0,[r1,#0]
        0x1fff604e:    43a0        .C      BICS     r0,r0,r4
        0x1fff6050:    e014        ..      B        0x1fff607c ; rf_phy_change_cfg0 + 116
        0x1fff6052:    2001        .       MOVS     r0,#1
        0x1fff6054:    43be        .C      BICS     r6,r6,r7
        0x1fff6056:    04c0        ..      LSLS     r0,r0,#19
        0x1fff6058:    1836        6.      ADDS     r6,r6,r0
        0x1fff605a:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff605c:    4a0e        .J      LDR      r2,[pc,#56] ; [0x1fff6098] = 0x1fff0a4b
        0x1fff605e:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff6060:    2a00        .*      CMP      r2,#0
        0x1fff6062:    d000        ..      BEQ      0x1fff6066 ; rf_phy_change_cfg0 + 94
        0x1fff6064:    1040        @.      ASRS     r0,r0,#1
        0x1fff6066:    6118        .a      STR      r0,[r3,#0x10]
        0x1fff6068:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff60a4] = 0x3d068002
        0x1fff606a:    6028        (`      STR      r0,[r5,#0]
        0x1fff606c:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff60a8] = 0x22084580
        0x1fff606e:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff6070:    6808        .h      LDR      r0,[r1,#0]
        0x1fff6072:    43a0        .C      BICS     r0,r0,r4
        0x1fff6074:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff6076:    e001        ..      B        0x1fff607c ; rf_phy_change_cfg0 + 116
        0x1fff6078:    611f        .a      STR      r7,[r3,#0x10]
        0x1fff607a:    e7e0        ..      B        0x1fff603e ; rf_phy_change_cfg0 + 54
        0x1fff607c:    6008        .`      STR      r0,[r1,#0]
        0x1fff607e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff6080:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff60a4] = 0x3d068002
        0x1fff6082:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6084:    6028        (`      STR      r0,[r5,#0]
        0x1fff6086:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff60ac] = 0x22086680
        0x1fff6088:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff608a:    6808        .h      LDR      r0,[r1,#0]
        0x1fff608c:    43a0        .C      BICS     r0,r0,r4
        0x1fff608e:    3020         0      ADDS     r0,r0,#0x20
        0x1fff6090:    e7f4        ..      B        0x1fff607c ; rf_phy_change_cfg0 + 116
    $d
        0x1fff6092:    0000        ..      DCW    0
        0x1fff6094:    400300c0    ...@    DCD    1073938624
        0x1fff6098:    1fff0a4b    K...    DCD    536808011
        0x1fff609c:    98068000    ....    DCD    2550562816
        0x1fff60a0:    22085580    .U."    DCD    570971520
        0x1fff60a4:    3d068002    ...=    DCD    1023836162
        0x1fff60a8:    22084580    .E."    DCD    570967424
        0x1fff60ac:    22086680    .f."    DCD    570975872
    $t
    i.rf_phy_get_pktFoot
    rf_phy_get_pktFoot
        0x1fff60b0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff60b2:    4b0a        .K      LDR      r3,[pc,#40] ; [0x1fff60dc] = 0x400300c0
        0x1fff60b4:    6a5c        \j      LDR      r4,[r3,#0x24]
        0x1fff60b6:    6a9d        .j      LDR      r5,[r3,#0x28]
        0x1fff60b8:    05a3        ..      LSLS     r3,r4,#22
        0x1fff60ba:    2601        .&      MOVS     r6,#1
        0x1fff60bc:    0d9b        ..      LSRS     r3,r3,#22
        0x1fff60be:    0276        v.      LSLS     r6,r6,#9
        0x1fff60c0:    42b3        .B      CMP      r3,r6
        0x1fff60c2:    d901        ..      BLS      0x1fff60c8 ; rf_phy_get_pktFoot + 24
        0x1fff60c4:    1b9b        ..      SUBS     r3,r3,r6
        0x1fff60c6:    e002        ..      B        0x1fff60ce ; rf_phy_get_pktFoot + 30
        0x1fff60c8:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff60ca:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff60cc:    3302        .3      ADDS     r3,#2
        0x1fff60ce:    800b        ..      STRH     r3,[r1,#0]
        0x1fff60d0:    0e29        ).      LSRS     r1,r5,#24
        0x1fff60d2:    7001        .p      STRB     r1,[r0,#0]
        0x1fff60d4:    0e20         .      LSRS     r0,r4,#24
        0x1fff60d6:    7010        .p      STRB     r0,[r2,#0]
        0x1fff60d8:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff60da:    0000        ..      DCW    0
        0x1fff60dc:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_phy_get_pktFoot_fromPkt
    rf_phy_get_pktFoot_fromPkt
        0x1fff60e0:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff60e2:    0584        ..      LSLS     r4,r0,#22
        0x1fff60e4:    2601        .&      MOVS     r6,#1
        0x1fff60e6:    0da4        ..      LSRS     r4,r4,#22
        0x1fff60e8:    0276        v.      LSLS     r6,r6,#9
        0x1fff60ea:    9d04        ..      LDR      r5,[sp,#0x10]
        0x1fff60ec:    42b4        .B      CMP      r4,r6
        0x1fff60ee:    d901        ..      BLS      0x1fff60f4 ; rf_phy_get_pktFoot_fromPkt + 20
        0x1fff60f0:    1ba4        ..      SUBS     r4,r4,r6
        0x1fff60f2:    e002        ..      B        0x1fff60fa ; rf_phy_get_pktFoot_fromPkt + 26
        0x1fff60f4:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff60f6:    34ff        .4      ADDS     r4,r4,#0xff
        0x1fff60f8:    3402        .4      ADDS     r4,#2
        0x1fff60fa:    0e09        ..      LSRS     r1,r1,#24
        0x1fff60fc:    801c        ..      STRH     r4,[r3,#0]
        0x1fff60fe:    7011        .p      STRB     r1,[r2,#0]
        0x1fff6100:    0e00        ..      LSRS     r0,r0,#24
        0x1fff6102:    7028        (p      STRB     r0,[r5,#0]
        0x1fff6104:    bd70        p.      POP      {r4-r6,pc}
        0x1fff6106:    0000        ..      MOVS     r0,r0
    i.rf_phy_ini
    rf_phy_ini
        0x1fff6108:    b510        ..      PUSH     {r4,lr}
        0x1fff610a:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff6134] = 0x1fff0a4b
        0x1fff610c:    2000        .       MOVS     r0,#0
        0x1fff610e:    7008        .p      STRB     r0,[r1,#0]
        0x1fff6110:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff6138] = 0x1fff0a4c
        0x1fff6112:    2002        .       MOVS     r0,#2
        0x1fff6114:    7008        .p      STRB     r0,[r1,#0]
        0x1fff6116:    f7fffe13    ....    BL       rf_phy_ana_cfg ; 0x1fff5d40
        0x1fff611a:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff613c] = 0x1fff0a48
        0x1fff611c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff611e:    f000f811    ....    BL       rf_phy_set_txPower ; 0x1fff6144
        0x1fff6122:    4c07        .L      LDR      r4,[pc,#28] ; [0x1fff6140] = 0x1fff0a49
        0x1fff6124:    7820         x      LDRB     r0,[r4,#0]
        0x1fff6126:    f7fffe99    ....    BL       rf_phy_bb_cfg ; 0x1fff5e5c
        0x1fff612a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff612c:    f7fbfe3a    ..:.    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff1da4
        0x1fff6130:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff6132:    0000        ..      DCW    0
        0x1fff6134:    1fff0a4b    K...    DCD    536808011
        0x1fff6138:    1fff0a4c    L...    DCD    536808012
        0x1fff613c:    1fff0a48    H...    DCD    536808008
        0x1fff6140:    1fff0a49    I...    DCD    536808009
    $t
    i.rf_phy_set_txPower
    rf_phy_set_txPower
        0x1fff6144:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff6146:    4a1a        .J      LDR      r2,[pc,#104] ; [0x1fff61b0] = 0x4000f000
        0x1fff6148:    2303        .#      MOVS     r3,#3
        0x1fff614a:    2507        .%      MOVS     r5,#7
        0x1fff614c:    00d6        ..      LSLS     r6,r2,#3
        0x1fff614e:    4919        .I      LDR      r1,[pc,#100] ; [0x1fff61b4] = 0x400300c0
        0x1fff6150:    029b        ..      LSLS     r3,r3,#10
        0x1fff6152:    2460        `$      MOVS     r4,#0x60
        0x1fff6154:    01ed        ..      LSLS     r5,r5,#7
        0x1fff6156:    6957        Wi      LDR      r7,[r2,#0x14]
        0x1fff6158:    283f        ?(      CMP      r0,#0x3f
        0x1fff615a:    d01a        ..      BEQ      0x1fff6192 ; rf_phy_set_txPower + 78
        0x1fff615c:    43b7        .C      BICS     r7,r7,r6
        0x1fff615e:    2605        .&      MOVS     r6,#5
        0x1fff6160:    0436        6.      LSLS     r6,r6,#16
        0x1fff6162:    19be        ..      ADDS     r6,r7,r6
        0x1fff6164:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff6166:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff6168:    439a        .C      BICS     r2,r2,r3
        0x1fff616a:    14cb        ..      ASRS     r3,r1,#19
        0x1fff616c:    18d2        ..      ADDS     r2,r2,r3
        0x1fff616e:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff6170:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6172:    43a2        .C      BICS     r2,r2,r4
        0x1fff6174:    3220         2      ADDS     r2,r2,#0x20
        0x1fff6176:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6178:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff617a:    43aa        .C      BICS     r2,r2,r5
        0x1fff617c:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff617e:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff61b4] = 0x400300c0
        0x1fff6180:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff6182:    6b8a        .k      LDR      r2,[r1,#0x38]
        0x1fff6184:    06c0        ..      LSLS     r0,r0,#27
        0x1fff6186:    0512        ..      LSLS     r2,r2,#20
        0x1fff6188:    0d12        ..      LSRS     r2,r2,#20
        0x1fff618a:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff618c:    4302        .C      ORRS     r2,r2,r0
        0x1fff618e:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff6190:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff6192:    43b7        .C      BICS     r7,r7,r6
        0x1fff6194:    2601        .&      MOVS     r6,#1
        0x1fff6196:    04b6        ..      LSLS     r6,r6,#18
        0x1fff6198:    19be        ..      ADDS     r6,r7,r6
        0x1fff619a:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff619c:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff619e:    439a        .C      BICS     r2,r2,r3
        0x1fff61a0:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff61a2:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff61a4:    43a2        .C      BICS     r2,r2,r4
        0x1fff61a6:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff61a8:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff61aa:    43aa        .C      BICS     r2,r2,r5
        0x1fff61ac:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff61ae:    e7e5        ..      B        0x1fff617c ; rf_phy_set_txPower + 56
    $d
        0x1fff61b0:    4000f000    ...@    DCD    1073803264
        0x1fff61b4:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_tpCal_gen_cap_arrary
    rf_tpCal_gen_cap_arrary
        0x1fff61b8:    b500        ..      PUSH     {lr}
        0x1fff61ba:    2100        .!      MOVS     r1,#0
        0x1fff61bc:    2002        .       MOVS     r0,#2
        0x1fff61be:    f000f821    ..!.    BL       rf_tp_cal ; 0x1fff6204
        0x1fff61c2:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff61f4] = 0x1fff0a44
        0x1fff61c4:    1c80        ..      ADDS     r0,r0,#2
        0x1fff61c6:    7008        .p      STRB     r0,[r1,#0]
        0x1fff61c8:    2100        .!      MOVS     r1,#0
        0x1fff61ca:    2042        B       MOVS     r0,#0x42
        0x1fff61cc:    f000f81a    ....    BL       rf_tp_cal ; 0x1fff6204
        0x1fff61d0:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff61f8] = 0x1fff0a45
        0x1fff61d2:    1c80        ..      ADDS     r0,r0,#2
        0x1fff61d4:    7008        .p      STRB     r0,[r1,#0]
        0x1fff61d6:    2101        .!      MOVS     r1,#1
        0x1fff61d8:    2002        .       MOVS     r0,#2
        0x1fff61da:    f000f813    ....    BL       rf_tp_cal ; 0x1fff6204
        0x1fff61de:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff61fc] = 0x1fff0a46
        0x1fff61e0:    1c80        ..      ADDS     r0,r0,#2
        0x1fff61e2:    7008        .p      STRB     r0,[r1,#0]
        0x1fff61e4:    2101        .!      MOVS     r1,#1
        0x1fff61e6:    2042        B       MOVS     r0,#0x42
        0x1fff61e8:    f000f80c    ....    BL       rf_tp_cal ; 0x1fff6204
        0x1fff61ec:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff6200] = 0x1fff0a47
        0x1fff61ee:    1c80        ..      ADDS     r0,r0,#2
        0x1fff61f0:    7008        .p      STRB     r0,[r1,#0]
        0x1fff61f2:    bd00        ..      POP      {pc}
    $d
        0x1fff61f4:    1fff0a44    D...    DCD    536808004
        0x1fff61f8:    1fff0a45    E...    DCD    536808005
        0x1fff61fc:    1fff0a46    F...    DCD    536808006
        0x1fff6200:    1fff0a47    G...    DCD    536808007
    $t
    i.rf_tp_cal
    rf_tp_cal
        0x1fff6204:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff6206:    4c3b        ;L      LDR      r4,[pc,#236] ; [0x1fff62f4] = 0x40030040
        0x1fff6208:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff62f0] = 0x30010
        0x1fff620a:    6022        "`      STR      r2,[r4,#0]
        0x1fff620c:    4d39        9M      LDR      r5,[pc,#228] ; [0x1fff62f4] = 0x40030040
        0x1fff620e:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff62f4] = 0x40030040
        0x1fff6210:    2307        .#      MOVS     r3,#7
        0x1fff6212:    049b        ..      LSLS     r3,r3,#18
        0x1fff6214:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff6216:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff6218:    2901        .)      CMP      r1,#1
        0x1fff621a:    69a9        .i      LDR      r1,[r5,#0x18]
        0x1fff621c:    d00e        ..      BEQ      0x1fff623c ; rf_tp_cal + 56
        0x1fff621e:    4399        .C      BICS     r1,r1,r3
        0x1fff6220:    2301        .#      MOVS     r3,#1
        0x1fff6222:    049b        ..      LSLS     r3,r3,#18
        0x1fff6224:    18c9        ..      ADDS     r1,r1,r3
        0x1fff6226:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff6228:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff62f8] = 0x73407f
        0x1fff622a:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff622c:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff62fc] = 0x1fff0a4b
        0x1fff622e:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff6230:    2101        .!      MOVS     r1,#1
        0x1fff6232:    05c9        ..      LSLS     r1,r1,#23
        0x1fff6234:    4e32        2N      LDR      r6,[pc,#200] ; [0x1fff6300] = 0x1fff0a4a
        0x1fff6236:    2b00        .+      CMP      r3,#0
        0x1fff6238:    d007        ..      BEQ      0x1fff624a ; rf_tp_cal + 70
        0x1fff623a:    e009        ..      B        0x1fff6250 ; rf_tp_cal + 76
        0x1fff623c:    4399        .C      BICS     r1,r1,r3
        0x1fff623e:    2301        .#      MOVS     r3,#1
        0x1fff6240:    04db        ..      LSLS     r3,r3,#19
        0x1fff6242:    18c9        ..      ADDS     r1,r1,r3
        0x1fff6244:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff6246:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff6304] = 0x53407f
        0x1fff6248:    e7ef        ..      B        0x1fff622a ; rf_tp_cal + 38
        0x1fff624a:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff624c:    2b03        .+      CMP      r3,#3
        0x1fff624e:    d014        ..      BEQ      0x1fff627a ; rf_tp_cal + 118
        0x1fff6250:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff6252:    438b        .C      BICS     r3,r3,r1
        0x1fff6254:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff6256:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff6258:    200e        .       MOVS     r0,#0xe
        0x1fff625a:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff625c:    2700        .'      MOVS     r7,#0
        0x1fff625e:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff6260:    20ff        .       MOVS     r0,#0xff
        0x1fff6262:    3015        .0      ADDS     r0,r0,#0x15
        0x1fff6264:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff6266:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff6308] = 0x2710
        0x1fff6268:    9000        ..      STR      r0,[sp,#0]
        0x1fff626a:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff626c:    0003        ..      MOVS     r3,r0
        0x1fff626e:    f7fbfd9f    ....    BL       $Ven$TT$L$$__ARM_common_switch8 ; 0x1fff1db0
    $d
        0x1fff6272:    0705        ..      DCW    1797
        0x1fff6274:    0b090d07    ....    DCD    185142535
        0x1fff6278:    000d        ..      DCW    13
    $t
        0x1fff627a:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff627c:    430b        .C      ORRS     r3,r3,r1
        0x1fff627e:    e7e9        ..      B        0x1fff6254 ; rf_tp_cal + 80
        0x1fff6280:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff630c] = 0x4e20
        0x1fff6282:    e002        ..      B        0x1fff628a ; rf_tp_cal + 134
        0x1fff6284:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff6310] = 0x7530
        0x1fff6286:    e000        ..      B        0x1fff628a ; rf_tp_cal + 134
        0x1fff6288:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff6314] = 0x9c40
        0x1fff628a:    9000        ..      STR      r0,[sp,#0]
        0x1fff628c:    9800        ..      LDR      r0,[sp,#0]
        0x1fff628e:    1e43        C.      SUBS     r3,r0,#1
        0x1fff6290:    9300        ..      STR      r3,[sp,#0]
        0x1fff6292:    d2fb        ..      BCS      0x1fff628c ; rf_tp_cal + 136
        0x1fff6294:    6b68        hk      LDR      r0,[r5,#0x34]
        0x1fff6296:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff6298:    0200        ..      LSLS     r0,r0,#8
        0x1fff629a:    0e00        ..      LSRS     r0,r0,#24
        0x1fff629c:    6217        .b      STR      r7,[r2,#0x20]
        0x1fff629e:    4b1e        .K      LDR      r3,[pc,#120] ; [0x1fff6318] = 0x104040
        0x1fff62a0:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff62a2:    23ff        .#      MOVS     r3,#0xff
        0x1fff62a4:    3341        A3      ADDS     r3,r3,#0x41
        0x1fff62a6:    6253        Sb      STR      r3,[r2,#0x24]
        0x1fff62a8:    2365        e#      MOVS     r3,#0x65
        0x1fff62aa:    02db        ..      LSLS     r3,r3,#11
        0x1fff62ac:    6023        #`      STR      r3,[r4,#0]
        0x1fff62ae:    4d1b        .M      LDR      r5,[pc,#108] ; [0x1fff631c] = 0x1fff0a49
        0x1fff62b0:    782f        /x      LDRB     r7,[r5,#0]
        0x1fff62b2:    23e0        .#      MOVS     r3,#0xe0
        0x1fff62b4:    2f01        ./      CMP      r7,#1
        0x1fff62b6:    d00a        ..      BEQ      0x1fff62ce ; rf_tp_cal + 202
        0x1fff62b8:    782d        -x      LDRB     r5,[r5,#0]
        0x1fff62ba:    2d02        .-      CMP      r5,#2
        0x1fff62bc:    6825        %h      LDR      r5,[r4,#0]
        0x1fff62be:    d00a        ..      BEQ      0x1fff62d6 ; rf_tp_cal + 210
        0x1fff62c0:    439d        .C      BICS     r5,r5,r3
        0x1fff62c2:    6025        %`      STR      r5,[r4,#0]
        0x1fff62c4:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff62fc] = 0x1fff0a4b
        0x1fff62c6:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff62c8:    2b00        .+      CMP      r3,#0
        0x1fff62ca:    d007        ..      BEQ      0x1fff62dc ; rf_tp_cal + 216
        0x1fff62cc:    e009        ..      B        0x1fff62e2 ; rf_tp_cal + 222
        0x1fff62ce:    6825        %h      LDR      r5,[r4,#0]
        0x1fff62d0:    439d        .C      BICS     r5,r5,r3
        0x1fff62d2:    3520         5      ADDS     r5,r5,#0x20
        0x1fff62d4:    e7f5        ..      B        0x1fff62c2 ; rf_tp_cal + 190
        0x1fff62d6:    439d        .C      BICS     r5,r5,r3
        0x1fff62d8:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff62da:    e7f2        ..      B        0x1fff62c2 ; rf_tp_cal + 190
        0x1fff62dc:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff62de:    2b03        .+      CMP      r3,#3
        0x1fff62e0:    d003        ..      BEQ      0x1fff62ea ; rf_tp_cal + 230
        0x1fff62e2:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff62e4:    438b        .C      BICS     r3,r3,r1
        0x1fff62e6:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff62e8:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff62ea:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff62ec:    430b        .C      ORRS     r3,r3,r1
        0x1fff62ee:    e7fa        ..      B        0x1fff62e6 ; rf_tp_cal + 226
    $d
        0x1fff62f0:    00030010    ....    DCD    196624
        0x1fff62f4:    40030040    @..@    DCD    1073938496
        0x1fff62f8:    0073407f    .@s.    DCD    7553151
        0x1fff62fc:    1fff0a4b    K...    DCD    536808011
        0x1fff6300:    1fff0a4a    J...    DCD    536808010
        0x1fff6304:    0053407f    .@S.    DCD    5455999
        0x1fff6308:    00002710    .'..    DCD    10000
        0x1fff630c:    00004e20     N..    DCD    20000
        0x1fff6310:    00007530    0u..    DCD    30000
        0x1fff6314:    00009c40    @...    DCD    40000
        0x1fff6318:    00104040    @@..    DCD    1065024
        0x1fff631c:    1fff0a49    I...    DCD    536808009
    $t
    i.skip_atoi
    skip_atoi
        0x1fff6320:    4601        .F      MOV      r1,r0
        0x1fff6322:    2000        .       MOVS     r0,#0
        0x1fff6324:    e006        ..      B        0x1fff6334 ; skip_atoi + 20
        0x1fff6326:    1c53        S.      ADDS     r3,r2,#1
        0x1fff6328:    600b        .`      STR      r3,[r1,#0]
        0x1fff632a:    230a        .#      MOVS     r3,#0xa
        0x1fff632c:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff632e:    4358        XC      MULS     r0,r3,r0
        0x1fff6330:    3830        08      SUBS     r0,r0,#0x30
        0x1fff6332:    1810        ..      ADDS     r0,r2,r0
        0x1fff6334:    680a        .h      LDR      r2,[r1,#0]
        0x1fff6336:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff6338:    3b30        0;      SUBS     r3,r3,#0x30
        0x1fff633a:    2b09        .+      CMP      r3,#9
        0x1fff633c:    d9f3        ..      BLS      0x1fff6326 ; skip_atoi + 6
        0x1fff633e:    4770        pG      BX       lr
    i.txmit_buf_polling
    txmit_buf_polling
        0x1fff6340:    b578        x.      PUSH     {r3-r6,lr}
        0x1fff6342:    4b17        .K      LDR      r3,[pc,#92] ; [0x1fff63a0] = 0x40004000
        0x1fff6344:    2801        .(      CMP      r0,#1
        0x1fff6346:    d100        ..      BNE      0x1fff634a ; txmit_buf_polling + 10
        0x1fff6348:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff63a4] = 0x40009000
        0x1fff634a:    2400        .$      MOVS     r4,#0
        0x1fff634c:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff63a8] = 0x186a0
        0x1fff634e:    9400        ..      STR      r4,[sp,#0]
        0x1fff6350:    e004        ..      B        0x1fff635c ; txmit_buf_polling + 28
        0x1fff6352:    9d00        ..      LDR      r5,[sp,#0]
        0x1fff6354:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff6356:    9600        ..      STR      r6,[sp,#0]
        0x1fff6358:    4285        .B      CMP      r5,r0
        0x1fff635a:    dc1a        ..      BGT      0x1fff6392 ; txmit_buf_polling + 82
        0x1fff635c:    6fdd        .o      LDR      r5,[r3,#0x7c]
        0x1fff635e:    07ed        ..      LSLS     r5,r5,#31
        0x1fff6360:    d1f7        ..      BNE      0x1fff6352 ; txmit_buf_polling + 18
        0x1fff6362:    e00a        ..      B        0x1fff637a ; txmit_buf_polling + 58
        0x1fff6364:    9d00        ..      LDR      r5,[sp,#0]
        0x1fff6366:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff6368:    9600        ..      STR      r6,[sp,#0]
        0x1fff636a:    4285        .B      CMP      r5,r0
        0x1fff636c:    dc11        ..      BGT      0x1fff6392 ; txmit_buf_polling + 82
        0x1fff636e:    7d1d        .}      LDRB     r5,[r3,#0x14]
        0x1fff6370:    06ad        ..      LSLS     r5,r5,#26
        0x1fff6372:    d5f7        ..      BPL      0x1fff6364 ; txmit_buf_polling + 36
        0x1fff6374:    780d        .x      LDRB     r5,[r1,#0]
        0x1fff6376:    701d        .p      STRB     r5,[r3,#0]
        0x1fff6378:    1c49        I.      ADDS     r1,r1,#1
        0x1fff637a:    4615        .F      MOV      r5,r2
        0x1fff637c:    1e52        R.      SUBS     r2,r2,#1
        0x1fff637e:    b292        ..      UXTH     r2,r2
        0x1fff6380:    2d00        .-      CMP      r5,#0
        0x1fff6382:    9400        ..      STR      r4,[sp,#0]
        0x1fff6384:    d1f3        ..      BNE      0x1fff636e ; txmit_buf_polling + 46
        0x1fff6386:    e006        ..      B        0x1fff6396 ; txmit_buf_polling + 86
        0x1fff6388:    9900        ..      LDR      r1,[sp,#0]
        0x1fff638a:    1c4a        J.      ADDS     r2,r1,#1
        0x1fff638c:    9200        ..      STR      r2,[sp,#0]
        0x1fff638e:    4281        .B      CMP      r1,r0
        0x1fff6390:    dd01        ..      BLE      0x1fff6396 ; txmit_buf_polling + 86
        0x1fff6392:    200d        .       MOVS     r0,#0xd
        0x1fff6394:    bd78        x.      POP      {r3-r6,pc}
        0x1fff6396:    7d19        .}      LDRB     r1,[r3,#0x14]
        0x1fff6398:    0649        I.      LSLS     r1,r1,#25
        0x1fff639a:    d5f5        ..      BPL      0x1fff6388 ; txmit_buf_polling + 72
        0x1fff639c:    2000        .       MOVS     r0,#0
        0x1fff639e:    bd78        x.      POP      {r3-r6,pc}
    $d
        0x1fff63a0:    40004000    .@.@    DCD    1073758208
        0x1fff63a4:    40009000    ...@    DCD    1073778688
        0x1fff63a8:    000186a0    ....    DCD    100000
    $t
    i.txmit_buf_use_tx_buf
    txmit_buf_use_tx_buf
        0x1fff63ac:    b5f7        ..      PUSH     {r0-r2,r4-r7,lr}
        0x1fff63ae:    4607        .F      MOV      r7,r0
        0x1fff63b0:    492a        *I      LDR      r1,[pc,#168] ; [0x1fff645c] = 0x1fff7688
        0x1fff63b2:    0140        @.      LSLS     r0,r0,#5
        0x1fff63b4:    1844        D.      ADDS     r4,r0,r1
        0x1fff63b6:    4e2a        *N      LDR      r6,[pc,#168] ; [0x1fff6460] = 0x40004000
        0x1fff63b8:    1d24        $.      ADDS     r4,r4,#4
        0x1fff63ba:    4615        .F      MOV      r5,r2
        0x1fff63bc:    2a00        .*      CMP      r2,#0
        0x1fff63be:    d010        ..      BEQ      0x1fff63e2 ; txmit_buf_use_tx_buf + 54
        0x1fff63c0:    9801        ..      LDR      r0,[sp,#4]
        0x1fff63c2:    2800        .(      CMP      r0,#0
        0x1fff63c4:    d00d        ..      BEQ      0x1fff63e2 ; txmit_buf_use_tx_buf + 54
        0x1fff63c6:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff63c8:    2900        .)      CMP      r1,#0
        0x1fff63ca:    d008        ..      BEQ      0x1fff63de ; txmit_buf_use_tx_buf + 50
        0x1fff63cc:    88e0        ..      LDRH     r0,[r4,#6]
        0x1fff63ce:    42a8        .B      CMP      r0,r5
        0x1fff63d0:    d305        ..      BCC      0x1fff63de ; txmit_buf_use_tx_buf + 50
        0x1fff63d2:    2901        .)      CMP      r1,#1
        0x1fff63d4:    d016        ..      BEQ      0x1fff6404 ; txmit_buf_use_tx_buf + 88
        0x1fff63d6:    88a1        ..      LDRH     r1,[r4,#4]
        0x1fff63d8:    1949        I.      ADDS     r1,r1,r5
        0x1fff63da:    4281        .B      CMP      r1,r0
        0x1fff63dc:    d903        ..      BLS      0x1fff63e6 ; txmit_buf_use_tx_buf + 58
        0x1fff63de:    2003        .       MOVS     r0,#3
        0x1fff63e0:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff63e2:    2006        .       MOVS     r0,#6
        0x1fff63e4:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff63e6:    f7fbfa8b    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff1900
        0x1fff63ea:    88a1        ..      LDRH     r1,[r4,#4]
        0x1fff63ec:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff63ee:    462a        *F      MOV      r2,r5
        0x1fff63f0:    1840        @.      ADDS     r0,r0,r1
        0x1fff63f2:    9901        ..      LDR      r1,[sp,#4]
        0x1fff63f4:    f7fbfc16    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c24
        0x1fff63f8:    88a0        ..      LDRH     r0,[r4,#4]
        0x1fff63fa:    1940        @.      ADDS     r0,r0,r5
        0x1fff63fc:    80a0        ..      STRH     r0,[r4,#4]
        0x1fff63fe:    f7fbfa8b    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff1918
        0x1fff6402:    e027        '.      B        0x1fff6454 ; txmit_buf_use_tx_buf + 168
        0x1fff6404:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff6406:    9901        ..      LDR      r1,[sp,#4]
        0x1fff6408:    f7fbfc0c    ....    BL       $Ven$TT$L$$__aeabi_memcpy ; 0x1fff1c24
        0x1fff640c:    80a5        ..      STRH     r5,[r4,#4]
        0x1fff640e:    2000        .       MOVS     r0,#0
        0x1fff6410:    8060        `.      STRH     r0,[r4,#2]
        0x1fff6412:    2002        .       MOVS     r0,#2
        0x1fff6414:    7020         p      STRB     r0,[r4,#0]
        0x1fff6416:    68a1        .h      LDR      r1,[r4,#8]
        0x1fff6418:    2d10        .-      CMP      r5,#0x10
        0x1fff641a:    d900        ..      BLS      0x1fff641e ; txmit_buf_use_tx_buf + 114
        0x1fff641c:    2510        .%      MOVS     r5,#0x10
        0x1fff641e:    2f01        ./      CMP      r7,#1
        0x1fff6420:    d100        ..      BNE      0x1fff6424 ; txmit_buf_use_tx_buf + 120
        0x1fff6422:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff6464] = 0x40009000
        0x1fff6424:    6872        rh      LDR      r2,[r6,#4]
        0x1fff6426:    2002        .       MOVS     r0,#2
        0x1fff6428:    4382        .C      BICS     r2,r2,r0
        0x1fff642a:    6072        r`      STR      r2,[r6,#4]
        0x1fff642c:    e004        ..      B        0x1fff6438 ; txmit_buf_use_tx_buf + 140
        0x1fff642e:    8860        `.      LDRH     r0,[r4,#2]
        0x1fff6430:    1c42        B.      ADDS     r2,r0,#1
        0x1fff6432:    8062        b.      STRH     r2,[r4,#2]
        0x1fff6434:    5c08        .\      LDRB     r0,[r1,r0]
        0x1fff6436:    7030        0p      STRB     r0,[r6,#0]
        0x1fff6438:    4628        (F      MOV      r0,r5
        0x1fff643a:    1e6d        m.      SUBS     r5,r5,#1
        0x1fff643c:    b2ad        ..      UXTH     r5,r5
        0x1fff643e:    2800        .(      CMP      r0,#0
        0x1fff6440:    d1f5        ..      BNE      0x1fff642e ; txmit_buf_use_tx_buf + 130
        0x1fff6442:    2f00        ./      CMP      r7,#0
        0x1fff6444:    d008        ..      BEQ      0x1fff6458 ; txmit_buf_use_tx_buf + 172
        0x1fff6446:    2019        .       MOVS     r0,#0x19
        0x1fff6448:    f7fdfeb4    ....    BL       hal_pwrmgr_lock ; 0x1fff41b4
        0x1fff644c:    6870        ph      LDR      r0,[r6,#4]
        0x1fff644e:    2102        .!      MOVS     r1,#2
        0x1fff6450:    4308        .C      ORRS     r0,r0,r1
        0x1fff6452:    6070        p`      STR      r0,[r6,#4]
        0x1fff6454:    2000        .       MOVS     r0,#0
        0x1fff6456:    bdfe        ..      POP      {r1-r7,pc}
        0x1fff6458:    2008        .       MOVS     r0,#8
        0x1fff645a:    e7f5        ..      B        0x1fff6448 ; txmit_buf_use_tx_buf + 156
    $d
        0x1fff645c:    1fff7688    .v..    DCD    536835720
        0x1fff6460:    40004000    .@.@    DCD    1073758208
        0x1fff6464:    40009000    ...@    DCD    1073778688
    $t
    i.uart_hw_deinit
    uart_hw_deinit
        0x1fff6468:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff646a:    4605        .F      MOV      r5,r0
        0x1fff646c:    2608        .&      MOVS     r6,#8
        0x1fff646e:    200b        .       MOVS     r0,#0xb
        0x1fff6470:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff64d4] = 0x40004000
        0x1fff6472:    2d01        .-      CMP      r5,#1
        0x1fff6474:    d102        ..      BNE      0x1fff647c ; uart_hw_deinit + 20
        0x1fff6476:    2619        .&      MOVS     r6,#0x19
        0x1fff6478:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff64d8] = 0x40009000
        0x1fff647a:    2011        .       MOVS     r0,#0x11
        0x1fff647c:    2201        ."      MOVS     r2,#1
        0x1fff647e:    4082        .@      LSLS     r2,r2,r0
        0x1fff6480:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff64dc] = 0xe000e180
        0x1fff6482:    6002        .`      STR      r2,[r0,#0]
        0x1fff6484:    f3bf8f4f    ..O.    DSB      
        0x1fff6488:    f3bf8f6f    ..o.    ISB      
        0x1fff648c:    2080        .       MOVS     r0,#0x80
        0x1fff648e:    7308        .s      STRB     r0,[r1,#0xc]
        0x1fff6490:    2400        .$      MOVS     r4,#0
        0x1fff6492:    710c        .q      STRB     r4,[r1,#4]
        0x1fff6494:    700c        .p      STRB     r4,[r1,#0]
        0x1fff6496:    730c        .s      STRB     r4,[r1,#0xc]
        0x1fff6498:    720c        .r      STRB     r4,[r1,#8]
        0x1fff649a:    604c        L`      STR      r4,[r1,#4]
        0x1fff649c:    4630        0F      MOV      r0,r6
        0x1fff649e:    f7fdfa87    ....    BL       hal_clk_reset ; 0x1fff39b0
        0x1fff64a2:    4630        0F      MOV      r0,r6
        0x1fff64a4:    f7fdfa50    ..P.    BL       hal_clk_gate_disable ; 0x1fff3948
        0x1fff64a8:    2d00        .-      CMP      r5,#0
        0x1fff64aa:    d00e        ..      BEQ      0x1fff64ca ; uart_hw_deinit + 98
        0x1fff64ac:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff64e0] = 0x1fff03c0
        0x1fff64ae:    6044        D`      STR      r4,[r0,#4]
        0x1fff64b0:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff64e4] = 0x1fff7688
        0x1fff64b2:    0169        i.      LSLS     r1,r5,#5
        0x1fff64b4:    180c        ..      ADDS     r4,r1,r0
        0x1fff64b6:    7c20         |      LDRB     r0,[r4,#0x10]
        0x1fff64b8:    2100        .!      MOVS     r1,#0
        0x1fff64ba:    f7fdfb2d    ..-.    BL       hal_gpio_fmux ; 0x1fff3b18
        0x1fff64be:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x1fff64c0:    2100        .!      MOVS     r1,#0
        0x1fff64c2:    f7fdfb29    ..).    BL       hal_gpio_fmux ; 0x1fff3b18
        0x1fff64c6:    2000        .       MOVS     r0,#0
        0x1fff64c8:    bd70        p.      POP      {r4-r6,pc}
        0x1fff64ca:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff64e0] = 0x1fff03c0
        0x1fff64cc:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff64ce:    62c4        .b      STR      r4,[r0,#0x2c]
        0x1fff64d0:    e7ee        ..      B        0x1fff64b0 ; uart_hw_deinit + 72
    $d
        0x1fff64d2:    0000        ..      DCW    0
        0x1fff64d4:    40004000    .@.@    DCD    1073758208
        0x1fff64d8:    40009000    ...@    DCD    1073778688
        0x1fff64dc:    e000e180    ....    DCD    3758154112
        0x1fff64e0:    1fff03c0    ....    DCD    536806336
        0x1fff64e4:    1fff7688    .v..    DCD    536835720
    $t
    i.uart_hw_init
    uart_hw_init
        0x1fff64e8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff64ea:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff64ec:    4607        .F      MOV      r7,r0
        0x1fff64ee:    f7fbfc65    ..e.    BL       $Ven$TT$L$$clk_get_pclk ; 0x1fff1dbc
        0x1fff64f2:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff64f4:    2008        .       MOVS     r0,#8
        0x1fff64f6:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff64f8:    2004        .       MOVS     r0,#4
        0x1fff64fa:    9000        ..      STR      r0,[sp,#0]
        0x1fff64fc:    2005        .       MOVS     r0,#5
        0x1fff64fe:    9002        ..      STR      r0,[sp,#8]
        0x1fff6500:    4c59        YL      LDR      r4,[pc,#356] ; [0x1fff6668] = 0x40004000
        0x1fff6502:    260b        .&      MOVS     r6,#0xb
        0x1fff6504:    4638        8F      MOV      r0,r7
        0x1fff6506:    f7ffffaf    ....    BL       uart_hw_deinit ; 0x1fff6468
        0x1fff650a:    2f01        ./      CMP      r7,#1
        0x1fff650c:    d107        ..      BNE      0x1fff651e ; uart_hw_init + 54
        0x1fff650e:    2019        .       MOVS     r0,#0x19
        0x1fff6510:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff6512:    2008        .       MOVS     r0,#8
        0x1fff6514:    2611        .&      MOVS     r6,#0x11
        0x1fff6516:    9000        ..      STR      r0,[sp,#0]
        0x1fff6518:    4c54        TL      LDR      r4,[pc,#336] ; [0x1fff666c] = 0x40009000
        0x1fff651a:    2009        .       MOVS     r0,#9
        0x1fff651c:    9002        ..      STR      r0,[sp,#8]
        0x1fff651e:    4854        TH      LDR      r0,[pc,#336] ; [0x1fff6670] = 0x1fff7688
        0x1fff6520:    0179        y.      LSLS     r1,r7,#5
        0x1fff6522:    180d        ..      ADDS     r5,r1,r0
        0x1fff6524:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x1fff6526:    28ff        .(      CMP      r0,#0xff
        0x1fff6528:    d102        ..      BNE      0x1fff6530 ; uart_hw_init + 72
        0x1fff652a:    7c68        h|      LDRB     r0,[r5,#0x11]
        0x1fff652c:    28ff        .(      CMP      r0,#0xff
        0x1fff652e:    d02f        /.      BEQ      0x1fff6590 ; uart_hw_init + 168
        0x1fff6530:    3510        .5      ADDS     r5,r5,#0x10
        0x1fff6532:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff6534:    f7fdfa22    ..".    BL       hal_clk_gate_enable ; 0x1fff397c
        0x1fff6538:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff653a:    f7fdfa39    ..9.    BL       hal_clk_reset ; 0x1fff39b0
        0x1fff653e:    2101        .!      MOVS     r1,#1
        0x1fff6540:    2012        .       MOVS     r0,#0x12
        0x1fff6542:    f7fdfbaf    ....    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff6546:    2101        .!      MOVS     r1,#1
        0x1fff6548:    2012        .       MOVS     r0,#0x12
        0x1fff654a:    f7fdfbab    ....    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff654e:    2012        .       MOVS     r0,#0x12
        0x1fff6550:    9900        ..      LDR      r1,[sp,#0]
        0x1fff6552:    f7fdfaf1    ....    BL       hal_gpio_fmux_set ; 0x1fff3b38
        0x1fff6556:    2012        .       MOVS     r0,#0x12
        0x1fff6558:    9902        ..      LDR      r1,[sp,#8]
        0x1fff655a:    f7fdfaed    ....    BL       hal_gpio_fmux_set ; 0x1fff3b38
        0x1fff655e:    2000        .       MOVS     r0,#0
        0x1fff6560:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff6562:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff6564:    6869        ih      LDR      r1,[r5,#4]
        0x1fff6566:    1100        ..      ASRS     r0,r0,#4
        0x1fff6568:    084a        J.      LSRS     r2,r1,#1
        0x1fff656a:    1880        ..      ADDS     r0,r0,r2
        0x1fff656c:    f7fbfbba    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1ce4
        0x1fff6570:    2100        .!      MOVS     r1,#0
        0x1fff6572:    6121        !a      STR      r1,[r4,#0x10]
        0x1fff6574:    2180        .!      MOVS     r1,#0x80
        0x1fff6576:    7321        !s      STRB     r1,[r4,#0xc]
        0x1fff6578:    0a01        ..      LSRS     r1,r0,#8
        0x1fff657a:    7121        !q      STRB     r1,[r4,#4]
        0x1fff657c:    7020         p      STRB     r0,[r4,#0]
        0x1fff657e:    7ae8        .z      LDRB     r0,[r5,#0xb]
        0x1fff6580:    2800        .(      CMP      r0,#0
        0x1fff6582:    d052        R.      BEQ      0x1fff662a ; uart_hw_init + 322
        0x1fff6584:    4938        8I      LDR      r1,[pc,#224] ; [0x1fff6668] = 0x40004000
        0x1fff6586:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff6674] = 0x1fff6b92
        0x1fff6588:    428c        .B      CMP      r4,r1
        0x1fff658a:    d104        ..      BNE      0x1fff6596 ; uart_hw_init + 174
        0x1fff658c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff658e:    e003        ..      B        0x1fff6598 ; uart_hw_init + 176
        0x1fff6590:    2006        .       MOVS     r0,#6
        0x1fff6592:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff6594:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff6596:    7840        @x      LDRB     r0,[r0,#1]
        0x1fff6598:    2800        .(      CMP      r0,#0
        0x1fff659a:    d001        ..      BEQ      0x1fff65a0 ; uart_hw_init + 184
        0x1fff659c:    201b        .       MOVS     r0,#0x1b
        0x1fff659e:    e000        ..      B        0x1fff65a2 ; uart_hw_init + 186
        0x1fff65a0:    200b        .       MOVS     r0,#0xb
        0x1fff65a2:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff65a4:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff65a6:    2800        .(      CMP      r0,#0
        0x1fff65a8:    d000        ..      BEQ      0x1fff65ac ; uart_hw_init + 196
        0x1fff65aa:    2087        .       MOVS     r0,#0x87
        0x1fff65ac:    7220         r      STRB     r0,[r4,#8]
        0x1fff65ae:    2001        .       MOVS     r0,#1
        0x1fff65b0:    6060        ``      STR      r0,[r4,#4]
        0x1fff65b2:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff65b4:    2800        .(      CMP      r0,#0
        0x1fff65b6:    d003        ..      BEQ      0x1fff65c0 ; uart_hw_init + 216
        0x1fff65b8:    6860        `h      LDR      r0,[r4,#4]
        0x1fff65ba:    2180        .!      MOVS     r1,#0x80
        0x1fff65bc:    4308        .C      ORRS     r0,r0,r1
        0x1fff65be:    6060        ``      STR      r0,[r4,#4]
        0x1fff65c0:    7aa8        .z      LDRB     r0,[r5,#0xa]
        0x1fff65c2:    2800        .(      CMP      r0,#0
        0x1fff65c4:    d003        ..      BEQ      0x1fff65ce ; uart_hw_init + 230
        0x1fff65c6:    6860        `h      LDR      r0,[r4,#4]
        0x1fff65c8:    2102        .!      MOVS     r1,#2
        0x1fff65ca:    4308        .C      ORRS     r0,r0,r1
        0x1fff65cc:    6060        ``      STR      r0,[r4,#4]
        0x1fff65ce:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff65d0:    2101        .!      MOVS     r1,#1
        0x1fff65d2:    f7fdfb67    ..g.    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff65d6:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff65d8:    2101        .!      MOVS     r1,#1
        0x1fff65da:    f7fdfb63    ..c.    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff65de:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff65e0:    9900        ..      LDR      r1,[sp,#0]
        0x1fff65e2:    f7fdfaa9    ....    BL       hal_gpio_fmux_set ; 0x1fff3b38
        0x1fff65e6:    7868        hx      LDRB     r0,[r5,#1]
        0x1fff65e8:    9902        ..      LDR      r1,[sp,#8]
        0x1fff65ea:    f7fdfaa5    ....    BL       hal_gpio_fmux_set ; 0x1fff3b38
        0x1fff65ee:    2100        .!      MOVS     r1,#0
        0x1fff65f0:    2012        .       MOVS     r0,#0x12
        0x1fff65f2:    f7fdfa91    ....    BL       hal_gpio_fmux ; 0x1fff3b18
        0x1fff65f6:    2103        .!      MOVS     r1,#3
        0x1fff65f8:    2012        .       MOVS     r0,#0x12
        0x1fff65fa:    f7fdfb53    ..S.    BL       hal_gpio_pull_set ; 0x1fff3ca4
        0x1fff65fe:    2f00        ./      CMP      r7,#0
        0x1fff6600:    d015        ..      BEQ      0x1fff662e ; uart_hw_init + 326
        0x1fff6602:    491e        .I      LDR      r1,[pc,#120] ; [0x1fff667c] = 0x1fff03c0
        0x1fff6604:    481c        .H      LDR      r0,[pc,#112] ; [0x1fff6678] = 0x1fff38bd
        0x1fff6606:    6048        H`      STR      r0,[r1,#4]
        0x1fff6608:    20ff        .       MOVS     r0,#0xff
        0x1fff660a:    2e00        ..      CMP      r6,#0
        0x1fff660c:    db14        ..      BLT      0x1fff6638 ; uart_hw_init + 336
        0x1fff660e:    08b2        ..      LSRS     r2,r6,#2
        0x1fff6610:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff6680] = 0xe000e400
        0x1fff6612:    0092        ..      LSLS     r2,r2,#2
        0x1fff6614:    1851        Q.      ADDS     r1,r2,r1
        0x1fff6616:    680a        .h      LDR      r2,[r1,#0]
        0x1fff6618:    07b3        ..      LSLS     r3,r6,#30
        0x1fff661a:    0edb        ..      LSRS     r3,r3,#27
        0x1fff661c:    4098        .@      LSLS     r0,r0,r3
        0x1fff661e:    4382        .C      BICS     r2,r2,r0
        0x1fff6620:    2080        .       MOVS     r0,#0x80
        0x1fff6622:    4098        .@      LSLS     r0,r0,r3
        0x1fff6624:    4302        .C      ORRS     r2,r2,r0
        0x1fff6626:    600a        .`      STR      r2,[r1,#0]
        0x1fff6628:    e016        ..      B        0x1fff6658 ; uart_hw_init + 368
        0x1fff662a:    2003        .       MOVS     r0,#3
        0x1fff662c:    e7b9        ..      B        0x1fff65a2 ; uart_hw_init + 186
        0x1fff662e:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff667c] = 0x1fff03c0
        0x1fff6630:    4814        .H      LDR      r0,[pc,#80] ; [0x1fff6684] = 0x1fff3879
        0x1fff6632:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff6634:    62c8        .b      STR      r0,[r1,#0x2c]
        0x1fff6636:    e7e7        ..      B        0x1fff6608 ; uart_hw_init + 288
        0x1fff6638:    0731        1.      LSLS     r1,r6,#28
        0x1fff663a:    0f09        ..      LSRS     r1,r1,#28
        0x1fff663c:    3908        .9      SUBS     r1,r1,#8
        0x1fff663e:    088a        ..      LSRS     r2,r1,#2
        0x1fff6640:    4911        .I      LDR      r1,[pc,#68] ; [0x1fff6688] = 0xe000ed00
        0x1fff6642:    0092        ..      LSLS     r2,r2,#2
        0x1fff6644:    1851        Q.      ADDS     r1,r2,r1
        0x1fff6646:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff6648:    07b3        ..      LSLS     r3,r6,#30
        0x1fff664a:    0edb        ..      LSRS     r3,r3,#27
        0x1fff664c:    4098        .@      LSLS     r0,r0,r3
        0x1fff664e:    4382        .C      BICS     r2,r2,r0
        0x1fff6650:    2080        .       MOVS     r0,#0x80
        0x1fff6652:    4098        .@      LSLS     r0,r0,r3
        0x1fff6654:    4302        .C      ORRS     r2,r2,r0
        0x1fff6656:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff6658:    2e00        ..      CMP      r6,#0
        0x1fff665a:    db03        ..      BLT      0x1fff6664 ; uart_hw_init + 380
        0x1fff665c:    2001        .       MOVS     r0,#1
        0x1fff665e:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff668c] = 0xe000e100
        0x1fff6660:    40b0        .@      LSLS     r0,r0,r6
        0x1fff6662:    6008        .`      STR      r0,[r1,#0]
        0x1fff6664:    2000        .       MOVS     r0,#0
        0x1fff6666:    e794        ..      B        0x1fff6592 ; uart_hw_init + 170
    $d
        0x1fff6668:    40004000    .@.@    DCD    1073758208
        0x1fff666c:    40009000    ...@    DCD    1073778688
        0x1fff6670:    1fff7688    .v..    DCD    536835720
        0x1fff6674:    1fff6b92    .k..    DCD    536832914
        0x1fff6678:    1fff38bd    .8..    DCD    536819901
        0x1fff667c:    1fff03c0    ....    DCD    536806336
        0x1fff6680:    e000e400    ....    DCD    3758154752
        0x1fff6684:    1fff3879    y8..    DCD    536819833
        0x1fff6688:    e000ed00    ....    DCD    3758157056
        0x1fff668c:    e000e100    ....    DCD    3758153984
    $t
    i.uart_wakeup_process_0
    uart_wakeup_process_0
        0x1fff6690:    b510        ..      PUSH     {r4,lr}
        0x1fff6692:    2000        .       MOVS     r0,#0
        0x1fff6694:    f7ffff28    ..(.    BL       uart_hw_init ; 0x1fff64e8
        0x1fff6698:    bd10        ..      POP      {r4,pc}
    i.uart_wakeup_process_1
    uart_wakeup_process_1
        0x1fff669a:    b510        ..      PUSH     {r4,lr}
        0x1fff669c:    2001        .       MOVS     r0,#1
        0x1fff669e:    f7ffff23    ..#.    BL       uart_hw_init ; 0x1fff64e8
        0x1fff66a2:    bd10        ..      POP      {r4,pc}
    i.wakeupProcess1
    wakeupProcess1
        0x1fff66a4:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff66a6:    4c6e        nL      LDR      r4,[pc,#440] ; [0x1fff6860] = 0x1fff6bd0
        0x1fff66a8:    21ff        .!      MOVS     r1,#0xff
        0x1fff66aa:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1fff66ac:    31d5        .1      ADDS     r1,r1,#0xd5
        0x1fff66ae:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x1fff6864] = 0x1fff8000
        0x1fff66b0:    5809        .X      LDR      r1,[r1,r0]
        0x1fff66b2:    6011        .`      STR      r1,[r2,#0]
        0x1fff66b4:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff66b6:    6880        .h      LDR      r0,[r0,#8]
        0x1fff66b8:    f3808808    ....    MSR      MSP,r0
        0x1fff66bc:    f7fbfb0c    ....    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff1cd8
        0x1fff66c0:    4869        iH      LDR      r0,[pc,#420] ; [0x1fff6868] = 0x1fff0a0c
        0x1fff66c2:    496a        jI      LDR      r1,[pc,#424] ; [0x1fff686c] = 0x32141b6
        0x1fff66c4:    6800        .h      LDR      r0,[r0,#0]
        0x1fff66c6:    2602        .&      MOVS     r6,#2
        0x1fff66c8:    4288        .B      CMP      r0,r1
        0x1fff66ca:    d006        ..      BEQ      0x1fff66da ; wakeupProcess1 + 54
        0x1fff66cc:    2000        .       MOVS     r0,#0
        0x1fff66ce:    f7fbfa3d    ..=.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b4c
        0x1fff66d2:    0770        p.      LSLS     r0,r6,#29
        0x1fff66d4:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff66d6:    43b1        .C      BICS     r1,r1,r6
        0x1fff66d8:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff66da:    2000        .       MOVS     r0,#0
        0x1fff66dc:    f7fbfa36    ..6.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff1b4c
        0x1fff66e0:    f000f8ea    ....    BL       wakeup_init1 ; 0x1fff68b8
        0x1fff66e4:    4862        bH      LDR      r0,[pc,#392] ; [0x1fff6870] = 0x1fff0a49
        0x1fff66e6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff66e8:    f7fbfb5c    ..\.    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff1da4
        0x1fff66ec:    4d61        aM      LDR      r5,[pc,#388] ; [0x1fff6874] = 0x40001000
        0x1fff66ee:    2700        .'      MOVS     r7,#0
        0x1fff66f0:    61ef        .a      STR      r7,[r5,#0x1c]
        0x1fff66f2:    61ee        .a      STR      r6,[r5,#0x1c]
        0x1fff66f4:    4860        `H      LDR      r0,[pc,#384] ; [0x1fff6878] = 0x9c3
        0x1fff66f6:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff66f8:    2001        .       MOVS     r0,#1
        0x1fff66fa:    f7fbfa21    ..!.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff66fe:    2003        .       MOVS     r0,#3
        0x1fff6700:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff6702:    f7fbfa05    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b10
        0x1fff6706:    4606        .F      MOV      r6,r0
        0x1fff6708:    f7fbf954    ..T.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff670c:    4605        .F      MOV      r5,r0
        0x1fff670e:    f7fbf9ff    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b10
        0x1fff6712:    495a        ZI      LDR      r1,[pc,#360] ; [0x1fff687c] = 0x1fff0a10
        0x1fff6714:    6008        .`      STR      r0,[r1,#0]
        0x1fff6716:    f7fffcf7    ....    BL       rf_phy_ini ; 0x1fff6108
        0x1fff671a:    4859        YH      LDR      r0,[pc,#356] ; [0x1fff6880] = 0x1fff0a34
        0x1fff671c:    6800        .h      LDR      r0,[r0,#0]
        0x1fff671e:    4286        .B      CMP      r6,r0
        0x1fff6720:    d901        ..      BLS      0x1fff6726 ; wakeupProcess1 + 130
        0x1fff6722:    1a30        0.      SUBS     r0,r6,r0
        0x1fff6724:    e001        ..      B        0x1fff672a ; wakeupProcess1 + 134
        0x1fff6726:    1a30        0.      SUBS     r0,r6,r0
        0x1fff6728:    1e40        @.      SUBS     r0,r0,#1
        0x1fff672a:    4956        VI      LDR      r1,[pc,#344] ; [0x1fff6884] = 0x3fffff
        0x1fff672c:    4288        .B      CMP      r0,r1
        0x1fff672e:    d900        ..      BLS      0x1fff6732 ; wakeupProcess1 + 142
        0x1fff6730:    4008        .@      ANDS     r0,r0,r1
        0x1fff6732:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1fff6734:    8d8a        ..      LDRH     r2,[r1,#0x2c]
        0x1fff6736:    07d2        ..      LSLS     r2,r2,#31
        0x1fff6738:    d009        ..      BEQ      0x1fff674e ; wakeupProcess1 + 170
        0x1fff673a:    4a53        SJ      LDR      r2,[pc,#332] ; [0x1fff6888] = 0x1fff0a38
        0x1fff673c:    0c03        ..      LSRS     r3,r0,#16
        0x1fff673e:    6812        .h      LDR      r2,[r2,#0]
        0x1fff6740:    b280        ..      UXTH     r0,r0
        0x1fff6742:    4353        SC      MULS     r3,r2,r3
        0x1fff6744:    4350        PC      MULS     r0,r2,r0
        0x1fff6746:    021b        ..      LSLS     r3,r3,#8
        0x1fff6748:    0a00        ..      LSRS     r0,r0,#8
        0x1fff674a:    1818        ..      ADDS     r0,r3,r0
        0x1fff674c:    e00b        ..      B        0x1fff6766 ; wakeupProcess1 + 194
        0x1fff674e:    01c2        ..      LSLS     r2,r0,#7
        0x1fff6750:    0083        ..      LSLS     r3,r0,#2
        0x1fff6752:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff6754:    0043        C.      LSLS     r3,r0,#1
        0x1fff6756:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff6758:    00c3        ..      LSLS     r3,r0,#3
        0x1fff675a:    1818        ..      ADDS     r0,r3,r0
        0x1fff675c:    1c92        ..      ADDS     r2,r2,#2
        0x1fff675e:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff6760:    0892        ..      LSRS     r2,r2,#2
        0x1fff6762:    0a40        @.      LSRS     r0,r0,#9
        0x1fff6764:    1810        ..      ADDS     r0,r2,r0
        0x1fff6766:    6520         e      STR      r0,[r4,#0x50]
        0x1fff6768:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff676a:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff688c] = 0x1fff0a1c
        0x1fff676c:    3101        .1      ADDS     r1,#1
        0x1fff676e:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff6770:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6772:    1809        ..      ADDS     r1,r1,r0
        0x1fff6774:    4846        FH      LDR      r0,[pc,#280] ; [0x1fff6890] = 0x1fff0a20
        0x1fff6776:    6800        .h      LDR      r0,[r0,#0]
        0x1fff6778:    1a09        ..      SUBS     r1,r1,r0
        0x1fff677a:    483f        ?H      LDR      r0,[pc,#252] ; [0x1fff6878] = 0x9c3
        0x1fff677c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff677e:    1809        ..      ADDS     r1,r1,r0
        0x1fff6780:    088a        ..      LSRS     r2,r1,#2
        0x1fff6782:    4844        DH      LDR      r0,[pc,#272] ; [0x1fff6894] = 0x1fff0a24
        0x1fff6784:    078b        ..      LSLS     r3,r1,#30
        0x1fff6786:    4944        DI      LDR      r1,[pc,#272] ; [0x1fff6898] = 0x1fff0a28
        0x1fff6788:    6002        .`      STR      r2,[r0,#0]
        0x1fff678a:    680e        .h      LDR      r6,[r1,#0]
        0x1fff678c:    0f9b        ..      LSRS     r3,r3,#30
        0x1fff678e:    199b        ..      ADDS     r3,r3,r6
        0x1fff6790:    600b        .`      STR      r3,[r1,#0]
        0x1fff6792:    2b04        .+      CMP      r3,#4
        0x1fff6794:    d904        ..      BLS      0x1fff67a0 ; wakeupProcess1 + 252
        0x1fff6796:    1c52        R.      ADDS     r2,r2,#1
        0x1fff6798:    6002        .`      STR      r2,[r0,#0]
        0x1fff679a:    079a        ..      LSLS     r2,r3,#30
        0x1fff679c:    0f92        ..      LSRS     r2,r2,#30
        0x1fff679e:    600a        .`      STR      r2,[r1,#0]
        0x1fff67a0:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff67a2:    6800        .h      LDR      r0,[r0,#0]
        0x1fff67a4:    1808        ..      ADDS     r0,r1,r0
        0x1fff67a6:    493d        =I      LDR      r1,[pc,#244] ; [0x1fff689c] = 0x271
        0x1fff67a8:    f7fbfa9c    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1ce4
        0x1fff67ac:    4602        .F      MOV      r2,r0
        0x1fff67ae:    483c        <H      LDR      r0,[pc,#240] ; [0x1fff68a0] = 0x1fff0860
        0x1fff67b0:    4e3c        <N      LDR      r6,[pc,#240] ; [0x1fff68a4] = 0x1fff0a2c
        0x1fff67b2:    6803        .h      LDR      r3,[r0,#0]
        0x1fff67b4:    18d3        ..      ADDS     r3,r2,r3
        0x1fff67b6:    6003        .`      STR      r3,[r0,#0]
        0x1fff67b8:    6832        2h      LDR      r2,[r6,#0]
        0x1fff67ba:    188a        ..      ADDS     r2,r1,r2
        0x1fff67bc:    4937        7I      LDR      r1,[pc,#220] ; [0x1fff689c] = 0x271
        0x1fff67be:    6032        2`      STR      r2,[r6,#0]
        0x1fff67c0:    428a        .B      CMP      r2,r1
        0x1fff67c2:    d905        ..      BLS      0x1fff67d0 ; wakeupProcess1 + 300
        0x1fff67c4:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff67c6:    6003        .`      STR      r3,[r0,#0]
        0x1fff67c8:    4610        .F      MOV      r0,r2
        0x1fff67ca:    f7fbfa8b    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff1ce4
        0x1fff67ce:    6031        1`      STR      r1,[r6,#0]
        0x1fff67d0:    f7fbfafa    ....    BL       $Ven$TT$L$$osalTimeUpdate ; 0x1fff1dc8
        0x1fff67d4:    4834        4H      LDR      r0,[pc,#208] ; [0x1fff68a8] = 0x1fff091c
        0x1fff67d6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff67d8:    2800        .(      CMP      r0,#0
        0x1fff67da:    d010        ..      BEQ      0x1fff67fe ; wakeupProcess1 + 346
        0x1fff67dc:    f7fbf8ea    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff67e0:    4a32        2J      LDR      r2,[pc,#200] ; [0x1fff68ac] = 0x1fff08e4
        0x1fff67e2:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff67e4:    1b40        @.      SUBS     r0,r0,r5
        0x1fff67e6:    6812        .h      LDR      r2,[r2,#0]
        0x1fff67e8:    180b        ..      ADDS     r3,r1,r0
        0x1fff67ea:    4293        .B      CMP      r3,r2
        0x1fff67ec:    d202        ..      BCS      0x1fff67f4 ; wakeupProcess1 + 336
        0x1fff67ee:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff67f0:    1a09        ..      SUBS     r1,r1,r0
        0x1fff67f2:    e001        ..      B        0x1fff67f8 ; wakeupProcess1 + 340
        0x1fff67f4:    217d        }!      MOVS     r1,#0x7d
        0x1fff67f6:    00c9        ..      LSLS     r1,r1,#3
        0x1fff67f8:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff6874] = 0x40001000
        0x1fff67fa:    f7fbfaeb    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff67fe:    4e2c        ,N      LDR      r6,[pc,#176] ; [0x1fff68b0] = 0x1fff0b74
        0x1fff6800:    7a30        0z      LDRB     r0,[r6,#8]
        0x1fff6802:    2800        .(      CMP      r0,#0
        0x1fff6804:    d010        ..      BEQ      0x1fff6828 ; wakeupProcess1 + 388
        0x1fff6806:    f7fbf8d5    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff680a:    6d21        !m      LDR      r1,[r4,#0x50]
        0x1fff680c:    1b40        @.      SUBS     r0,r0,r5
        0x1fff680e:    68f2        .h      LDR      r2,[r6,#0xc]
        0x1fff6810:    180b        ..      ADDS     r3,r1,r0
        0x1fff6812:    429a        .B      CMP      r2,r3
        0x1fff6814:    d902        ..      BLS      0x1fff681c ; wakeupProcess1 + 376
        0x1fff6816:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff6818:    1a09        ..      SUBS     r1,r1,r0
        0x1fff681a:    e000        ..      B        0x1fff681e ; wakeupProcess1 + 378
        0x1fff681c:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff68b4] = 0x5dc
        0x1fff681e:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff6874] = 0x40001000
        0x1fff6820:    303c        <0      ADDS     r0,r0,#0x3c
        0x1fff6822:    f7fbfad7    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff6826:    7237        7r      STRB     r7,[r6,#8]
        0x1fff6828:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff682a:    2800        .(      CMP      r0,#0
        0x1fff682c:    d010        ..      BEQ      0x1fff6850 ; wakeupProcess1 + 428
        0x1fff682e:    f7fbf8c1    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff19b4
        0x1fff6832:    1b41        A.      SUBS     r1,r0,r5
        0x1fff6834:    6d22        "m      LDR      r2,[r4,#0x50]
        0x1fff6836:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff6874] = 0x40001000
        0x1fff6838:    6963        ci      LDR      r3,[r4,#0x14]
        0x1fff683a:    1855        U.      ADDS     r5,r2,r1
        0x1fff683c:    3050        P0      ADDS     r0,r0,#0x50
        0x1fff683e:    429d        .B      CMP      r5,r3
        0x1fff6840:    d202        ..      BCS      0x1fff6848 ; wakeupProcess1 + 420
        0x1fff6842:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff6844:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff6846:    e000        ..      B        0x1fff684a ; wakeupProcess1 + 422
        0x1fff6848:    491a        .I      LDR      r1,[pc,#104] ; [0x1fff68b4] = 0x5dc
        0x1fff684a:    f7fbfac3    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff684e:    70a7        .p      STRB     r7,[r4,#2]
        0x1fff6850:    f7fbfac6    ....    BL       $Ven$TT$L$$app_wakeup_process ; 0x1fff1de0
        0x1fff6854:    2002        .       MOVS     r0,#2
        0x1fff6856:    f7fbf8b3    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff19c0
        0x1fff685a:    f7fbf96b    ..k.    BL       $Ven$TT$L$$osal_start_system ; 0x1fff1b34
        0x1fff685e:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff6860:    1fff6bd0    .k..    DCD    536832976
        0x1fff6864:    1fff8000    ....    DCD    536838144
        0x1fff6868:    1fff0a0c    ....    DCD    536807948
        0x1fff686c:    032141b6    .A!.    DCD    52511158
        0x1fff6870:    1fff0a49    I...    DCD    536808009
        0x1fff6874:    40001000    ...@    DCD    1073745920
        0x1fff6878:    000009c3    ....    DCD    2499
        0x1fff687c:    1fff0a10    ....    DCD    536807952
        0x1fff6880:    1fff0a34    4...    DCD    536807988
        0x1fff6884:    003fffff    ..?.    DCD    4194303
        0x1fff6888:    1fff0a38    8...    DCD    536807992
        0x1fff688c:    1fff0a1c    ....    DCD    536807964
        0x1fff6890:    1fff0a20     ...    DCD    536807968
        0x1fff6894:    1fff0a24    $...    DCD    536807972
        0x1fff6898:    1fff0a28    (...    DCD    536807976
        0x1fff689c:    00000271    q...    DCD    625
        0x1fff68a0:    1fff0860    `...    DCD    536807520
        0x1fff68a4:    1fff0a2c    ,...    DCD    536807980
        0x1fff68a8:    1fff091c    ....    DCD    536807708
        0x1fff68ac:    1fff08e4    ....    DCD    536807652
        0x1fff68b0:    1fff0b74    t...    DCD    536808308
        0x1fff68b4:    000005dc    ....    DCD    1500
    $t
    i.wakeup_init1
    wakeup_init1
        0x1fff68b8:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff68ba:    2001        .       MOVS     r0,#1
        0x1fff68bc:    0781        ..      LSLS     r1,r0,#30
        0x1fff68be:    6288        .b      STR      r0,[r1,#0x28]
        0x1fff68c0:    f7fcfe90    ....    BL       efuse_init ; 0x1fff35e4
        0x1fff68c4:    f7fcfa54    ..T.    BL       __wdt_init ; 0x1fff2d70
        0x1fff68c8:    2001        .       MOVS     r0,#1
        0x1fff68ca:    9000        ..      STR      r0,[sp,#0]
        0x1fff68cc:    f7fdfdfc    ....    BL       hal_system_clock_change_process ; 0x1fff44c8
        0x1fff68d0:    4e43        CN      LDR      r6,[pc,#268] ; [0x1fff69e0] = 0x1fff0a4a
        0x1fff68d2:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff68d4:    4c43        CL      LDR      r4,[pc,#268] ; [0x1fff69e4] = 0x4000f040
        0x1fff68d6:    2802        .(      CMP      r0,#2
        0x1fff68d8:    d010        ..      BEQ      0x1fff68fc ; wakeup_init1 + 68
        0x1fff68da:    f7fbf919    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b10
        0x1fff68de:    4605        .F      MOV      r5,r0
        0x1fff68e0:    200f        .       MOVS     r0,#0xf
        0x1fff68e2:    f7fbf92d    ..-.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff68e6:    f7fcfc53    ..S.    BL       check_16MXtal_by_rcTracking ; 0x1fff3190
        0x1fff68ea:    2005        .       MOVS     r0,#5
        0x1fff68ec:    f7fbf928    ..(.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff68f0:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff68f2:    2801        .(      CMP      r0,#1
        0x1fff68f4:    d008        ..      BEQ      0x1fff6908 ; wakeup_init1 + 80
        0x1fff68f6:    f7fcfcf5    ....    BL       check_96MXtal_by_rcTracking ; 0x1fff32e4
        0x1fff68fa:    e01a        ..      B        0x1fff6932 ; wakeup_init1 + 122
        0x1fff68fc:    483a        :H      LDR      r0,[pc,#232] ; [0x1fff69e8] = 0x1fff6bd0
        0x1fff68fe:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff6900:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff6902:    f7fbf91d    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff6906:    e024        $.      B        0x1fff6952 ; wakeup_init1 + 154
        0x1fff6908:    4836        6H      LDR      r0,[pc,#216] ; [0x1fff69e4] = 0x4000f040
        0x1fff690a:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff690c:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff690e:    0740        @.      LSLS     r0,r0,#29
        0x1fff6910:    0f40        @.      LSRS     r0,r0,#29
        0x1fff6912:    2801        .(      CMP      r0,#1
        0x1fff6914:    d102        ..      BNE      0x1fff691c ; wakeup_init1 + 100
        0x1fff6916:    2000        .       MOVS     r0,#0
        0x1fff6918:    f7fcfd6c    ..l.    BL       clk_init ; 0x1fff33f4
        0x1fff691c:    6860        `h      LDR      r0,[r4,#4]
        0x1fff691e:    27ff        .'      MOVS     r7,#0xff
        0x1fff6920:    3701        .7      ADDS     r7,#1
        0x1fff6922:    43b8        .C      BICS     r0,r0,r7
        0x1fff6924:    6060        ``      STR      r0,[r4,#4]
        0x1fff6926:    2002        .       MOVS     r0,#2
        0x1fff6928:    f7fbf90a    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff1b40
        0x1fff692c:    6860        `h      LDR      r0,[r4,#4]
        0x1fff692e:    4338        8C      ORRS     r0,r0,r7
        0x1fff6930:    6060        ``      STR      r0,[r4,#4]
        0x1fff6932:    f7fbf8ed    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff1b10
        0x1fff6936:    42a8        .B      CMP      r0,r5
        0x1fff6938:    d301        ..      BCC      0x1fff693e ; wakeup_init1 + 134
        0x1fff693a:    1b40        @.      SUBS     r0,r0,r5
        0x1fff693c:    e001        ..      B        0x1fff6942 ; wakeup_init1 + 138
        0x1fff693e:    1b40        @.      SUBS     r0,r0,r5
        0x1fff6940:    1e40        @.      SUBS     r0,r0,#1
        0x1fff6942:    4929        )I      LDR      r1,[pc,#164] ; [0x1fff69e8] = 0x1fff6bd0
        0x1fff6944:    221e        ."      MOVS     r2,#0x1e
        0x1fff6946:    6348        Hc      STR      r0,[r1,#0x34]
        0x1fff6948:    4350        PC      MULS     r0,r2,r0
        0x1fff694a:    4a28        (J      LDR      r2,[pc,#160] ; [0x1fff69ec] = 0x672
        0x1fff694c:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff694e:    1880        ..      ADDS     r0,r0,r2
        0x1fff6950:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff6952:    4928        (I      LDR      r1,[pc,#160] ; [0x1fff69f4] = 0x40030000
        0x1fff6954:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff69f0] = 0x3d068001
        0x1fff6956:    6008        .`      STR      r0,[r1,#0]
        0x1fff6958:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff69f4] = 0x40030000
        0x1fff695a:    4927        'I      LDR      r1,[pc,#156] ; [0x1fff69f8] = 0x834
        0x1fff695c:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff695e:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff6960:    21ff        .!      MOVS     r1,#0xff
        0x1fff6962:    3141        A1      ADDS     r1,r1,#0x41
        0x1fff6964:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff6966:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff6968:    f7fcfd44    ..D.    BL       clk_init ; 0x1fff33f4
        0x1fff696c:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff69fc] = 0x271
        0x1fff696e:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff6a00] = 0x40001014
        0x1fff6970:    f7fbfa30    ..0.    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff6974:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff6a00] = 0x40001014
        0x1fff6976:    2100        .!      MOVS     r1,#0
        0x1fff6978:    3814        .8      SUBS     r0,r0,#0x14
        0x1fff697a:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff697c:    2102        .!      MOVS     r1,#2
        0x1fff697e:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6980:    4920         I      LDR      r1,[pc,#128] ; [0x1fff6a04] = 0x9c3
        0x1fff6982:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff6984:    2103        .!      MOVS     r1,#3
        0x1fff6986:    61c1        .a      STR      r1,[r0,#0x1c]
        0x1fff6988:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff6a00] = 0x40001014
        0x1fff698a:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff6a08] = 0x3fffff
        0x1fff698c:    3014        .0      ADDS     r0,r0,#0x14
        0x1fff698e:    f7fbfa21    ..!.    BL       $Ven$TT$L$$set_timer ; 0x1fff1dd4
        0x1fff6992:    2004        .       MOVS     r0,#4
        0x1fff6994:    f7fbff90    ....    BL       NVIC_EnableIRQ ; 0x1fff28b8
        0x1fff6998:    2014        .       MOVS     r0,#0x14
        0x1fff699a:    f7fbff8d    ....    BL       NVIC_EnableIRQ ; 0x1fff28b8
        0x1fff699e:    2015        .       MOVS     r0,#0x15
        0x1fff69a0:    f7fbff8a    ....    BL       NVIC_EnableIRQ ; 0x1fff28b8
        0x1fff69a4:    20ff        .       MOVS     r0,#0xff
        0x1fff69a6:    f7fbf97f    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff1ca8
        0x1fff69aa:    2001        .       MOVS     r0,#1
        0x1fff69ac:    f7fbfa1e    ....    BL       $Ven$TT$L$$ll_hw_set_empty_head ; 0x1fff1dec
        0x1fff69b0:    20ff        .       MOVS     r0,#0xff
        0x1fff69b2:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff69b4:    f7fbf8d6    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff1b64
        0x1fff69b8:    2058        X       MOVS     r0,#0x58
        0x1fff69ba:    f7fbf84f    ..O.    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff1a5c
        0x1fff69be:    4813        .H      LDR      r0,[pc,#76] ; [0x1fff6a0c] = 0x7530
        0x1fff69c0:    f7fbf960    ..`.    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff1c84
        0x1fff69c4:    9800        ..      LDR      r0,[sp,#0]
        0x1fff69c6:    f7fbfa17    ....    BL       $Ven$TT$L$$ll_hw_set_timing ; 0x1fff1df8
        0x1fff69ca:    2007        .       MOVS     r0,#7
        0x1fff69cc:    f7fbf9a2    ....    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff1d14
        0x1fff69d0:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff69d2:    490f        .I      LDR      r1,[pc,#60] ; [0x1fff6a10] = 0xfffefe00
        0x1fff69d4:    4008        .@      ANDS     r0,r0,r1
        0x1fff69d6:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff69d8:    3009        .0      ADDS     r0,r0,#9
        0x1fff69da:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff69dc:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff69de:    0000        ..      DCW    0
        0x1fff69e0:    1fff0a4a    J...    DCD    536808010
        0x1fff69e4:    4000f040    @..@    DCD    1073803328
        0x1fff69e8:    1fff6bd0    .k..    DCD    536832976
        0x1fff69ec:    00000672    r...    DCD    1650
        0x1fff69f0:    3d068001    ...=    DCD    1023836161
        0x1fff69f4:    40030000    ...@    DCD    1073938432
        0x1fff69f8:    00000834    4...    DCD    2100
        0x1fff69fc:    00000271    q...    DCD    625
        0x1fff6a00:    40001014    ...@    DCD    1073745940
        0x1fff6a04:    000009c3    ....    DCD    2499
        0x1fff6a08:    003fffff    ..?.    DCD    4194303
        0x1fff6a0c:    00007530    0u..    DCD    30000
        0x1fff6a10:    fffefe00    ....    DCD    4294901248
    $d.realdata
    .constdata
        0x1fff6a14:    0801003b    ;...    DCD    134283323
        0x1fff6a18:    00030002    ....    DCD    196610
        0x1fff6a1c:    02060205    ....    DCD    33948165
        0x1fff6a20:    03080307    ....    DCD    50856711
        0x1fff6a24:    000a0309    ....    DCD    656137
        0x1fff6a28:    030d030c    ....    DCD    51184396
        0x1fff6a2c:    03010300    ....    DCD    50397952
        0x1fff6a30:    000b0304    ....    DCD    721668
        0x1fff6a34:    030f030e    ....    DCD    51315470
        0x1fff6a38:    03110310    ....    DCD    51446544
        0x1fff6a3c:    03130312    ....    DCD    51577618
        0x1fff6a40:    03150314    ....    DCD    51708692
        0x1fff6a44:    00000316    ....    DCD    790
    .constdata
        0x1fff6a48:    00000003    ....    DCD    3
        0x1fff6a4c:    00000000    ....    DCD    0
        0x1fff6a50:    00000000    ....    DCD    0
    .constdata
    c_gpio_index
        0x1fff6a54:    03020100    ....    DCD    50462976
        0x1fff6a58:    0b0a0907    ....    DCD    185207047
        0x1fff6a5c:    11100f0e    ....    DCD    286265102
        0x1fff6a60:    18171412    ....    DCD    404165650
        0x1fff6a64:    1f1b1a19    ....    DCD    521869849
        0x1fff6a68:    2120         !      DCW    8480
        0x1fff6a6a:    22          "       DCB    34
    c_gpio_pull
        0x1fff6a6b:    00          .       DCB    0
        0x1fff6a6c:    05000102    ....    DCD    83886338
        0x1fff6a70:    07080004    ....    DCD    117964804
        0x1fff6a74:    000a0b00    ....    DCD    658176
        0x1fff6a78:    1d001617    ....    DCD    486544919
        0x1fff6a7c:    0102011c    ....    DCD    16908572
        0x1fff6a80:    01040501    ....    DCD    17040641
        0x1fff6a84:    11010d0e    ....    DCD    285281550
        0x1fff6a88:    13140110    ....    DCD    320078096
        0x1fff6a8c:    01161701    ....    DCD    18224897
        0x1fff6a90:    0202191a    ....    DCD    33691930
        0x1fff6a94:    0a0b0201    ....    DCD    168493569
        0x1fff6a98:    020d0e02    ....    DCD    34409986
        0x1fff6a9c:    14021011    ....    DCD    335679505
        0x1fff6aa0:    16170213    ....    DCD    370606611
        0x1fff6aa4:    03040503    ....    DCD    50595075
        0x1fff6aa8:    0b030708    ....    DCD    184747784
        0x1fff6aac:    0d0e030a    ....    DCD    219022090
    retention_reg
        0x1fff6ab0:    0e000d00    ....    DCD    234884352
        0x1fff6ab4:    11001000    ....    DCD    285216768
        0x1fff6ab8:    14001300    ....    DCD    335549184
        0x1fff6abc:    08010701    ....    DCD    134285057
        0x1fff6ac0:    0b010a01    ....    DCD    184617473
        0x1fff6ac4:    1d011c01    ....    DCD    486611969
        0x1fff6ac8:    05020402    ....    DCD    84018178
        0x1fff6acc:    08020702    ....    DCD    134350594
        0x1fff6ad0:    1a021902    ....    DCD    436345090
        0x1fff6ad4:    1d021c02    ....    DCD    486677506
        0x1fff6ad8:    02030103    ....    DCD    33751299
        0x1fff6adc:    00001703    ....    DCD    5891
    .constdata
        0x1fff6ae0:    ffff0605    ....    DCD    4294903301
        0x1fff6ae4:    0001c200    ....    DCD    115200
        0x1fff6ae8:    00000001    ....    DCD    1
        0x1fff6aec:    00000000    ....    DCD    0
    .conststring
        0x1fff6af0:    33323130    0123    DCD    858927408
        0x1fff6af4:    37363534    4567    DCD    926299444
        0x1fff6af8:    42413938    89AB    DCD    1111570744
        0x1fff6afc:    46454443    CDEF    DCD    1178944579
        0x1fff6b00:    4a494847    GHIJ    DCD    1246316615
        0x1fff6b04:    4e4d4c4b    KLMN    DCD    1313688651
        0x1fff6b08:    5251504f    OPQR    DCD    1381060687
        0x1fff6b0c:    56555453    STUV    DCD    1448432723
        0x1fff6b10:    5a595857    WXYZ    DCD    1515804759
        0x1fff6b14:    00000000    ....    DCD    0
        0x1fff6b18:    33323130    0123    DCD    858927408
        0x1fff6b1c:    37363534    4567    DCD    926299444
        0x1fff6b20:    62613938    89ab    DCD    1650538808
        0x1fff6b24:    66656463    cdef    DCD    1717920867
        0x1fff6b28:    6a696867    ghij    DCD    1785292903
        0x1fff6b2c:    6e6d6c6b    klmn    DCD    1852664939
        0x1fff6b30:    7271706f    opqr    DCD    1920036975
        0x1fff6b34:    76757473    stuv    DCD    1987409011
        0x1fff6b38:    7a797877    wxyz    DCD    2054781047
        0x1fff6b3c:    00000000    ....    DCD    0
    Region$$Table$$Base
        0x1fff6b40:    1fff0400    ....    DCD    536806400
        0x1fff6b44:    1fff6c44    Dl..    DCD    536833092
        0x1fff6b48:    0000000c    ....    DCD    12
        0x1fff6b4c:    1fff2d50    P-..    DCD    536816976
        0x1fff6b50:    1fff6c44    Dl..    DCD    536833092
        0x1fff6b54:    1fff0400    ....    DCD    536806400
        0x1fff6b58:    00000400    ....    DCD    1024
        0x1fff6b5c:    1fff18c4    ....    DCD    536811716
        0x1fff6b60:    1fff6c44    Dl..    DCD    536833092
        0x1fff6b64:    1fff6c44    Dl..    DCD    536833092
        0x1fff6b68:    000013d4    ....    DCD    5076
        0x1fff6b6c:    1fff2d60    `-..    DCD    536816992
    _section_sram_code_
    Region$$Table$$Limit
    tasksArr
        0x1fff6b70:    1fff2b75    u+..    DCD    536816501
    _section_sram_code_
    tasksCnt
        0x1fff6b74:    00000001    ....    DCD    1

====================================

** Section #2

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff6b78
    File Offset : 21364 (0x5374)
    Size        : 204 bytes (0xcc)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff6b78:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6b88:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6b98:   02 00 00 00 88 21 28 00 59 02 e0 01 00 00 00 00    .....!(.Y.......
    0x1fff6ba8:   00 00 00 00 00 00 00 00 18 6b ff 1f f0 6a ff 1f    .........k...j..
    0x1fff6bb8:   00 00 00 00 3b 00 01 08 00 00 00 00 00 00 00 00    ....;...........
    0x1fff6bc8:   00 00 00 00 40 78 7d 01 00 00 00 02 00 00 02 00    ....@x}.........
    0x1fff6bd8:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff6be8:   00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00    ................
    0x1fff6bf8:   00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00    ................
    0x1fff6c08:   00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00    ................
    0x1fff6c18:   00 00 00 00 00 10 00 00 00 00 00 00 02 05 09 0e    ................
    0x1fff6c28:   14 22 7e 00 00 1d 70 00 00 00 00 00 00 00 00 00    ."~...p.........
    0x1fff6c38:   00 00 00 00 00 00 00 00 00 00 00 00                ............


====================================

** Section #3

    Name        : ER_IROM1
    Type        : SHT_NOBITS (0x00000008)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff6c44
    File Offset : 21568 (0x5440)
    Size        : 5076 bytes (0x13d4)
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
    File Offset : 21568 (0x5440)
    Size        : 1024 bytes (0x400)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff0000:   00 00 00 00 55 56 ff 1f 70 6b ff 1f 74 6b ff 1f    ....UV..pk..tk..
    0x1fff0010:   7c 6b ff 1f 00 00 00 00 00 00 00 00 00 00 00 00    |k..............
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
    0x1fff0190:   61 42 ff 1f 05 43 ff 1f 09 61 ff 1f 00 00 00 00    aB...C...a......
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
    0x1fff03a0:   00 00 00 00 00 00 00 00 00 00 00 00 79 38 ff 1f    ............y8..
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
    File Offset : 22592 (0x5840)
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
    File Offset : 22604 (0x584c)
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
    File Offset : 24080 (0x5e10)
    Size        : 4948 bytes (0x1354)
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
    File Offset : 29028 (0x7164)
    Size        : 62784 bytes (0xf540)
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
    File Offset : 91812 (0x166a4)
    Size        : 22544 bytes (0x5810)
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
    File Offset : 114356 (0x1beb4)
    Size        : 8780 bytes (0x224c)
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
    File Offset : 123136 (0x1e100)
    Size        : 32976 bytes (0x80d0)
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
    File Offset : 156112 (0x261d0)
    Size        : 3594 bytes (0xe0a)
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
    File Offset : 159708 (0x26fdc)
    Size        : 34432 bytes (0x8680)
    Link        : Section 14 (.strtab)
    Info        : Last local symbol no = 831
    Alignment   : 4
    Entry Size  : 16


====================================

** Section #14

    Name        : .strtab
    Type        : SHT_STRTAB (0x00000003)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 194140 (0x2f65c)
    Size        : 31872 bytes (0x7c80)
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
    File Offset : 226012 (0x372dc)
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
    File Offset : 226048 (0x37300)
    Size        : 31940 bytes (0x7cc4)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0

    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    ArmLink --library_type=microlib --callgraph --load_addr_map_info --map --symbols --xref --diag_suppress=9931 --cpu=Cortex-M0 --list=.\Listings\smart_rf.map --output=.\Objects\smart_rf.axf --scatter=.\scatter_load.sct --keep=jump_table_base --keep=global_config --info=summarysizes,sizes,totals,unused,veneers

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
    
    p6398-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    main.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\main.o --depend=.\objects\main.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\main.crf main.c
    
    
    
    
    osal_phyplusphy.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\osal_phyplusphy.o --depend=.\objects\osal_phyplusphy.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\osal_phyplusphy.crf source\OSAL_PhyPlusPhy.c
    
    phy_plus_phy.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\phy_plus_phy.o --vfemode=force

    Input Comments:
    
    p377c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    phy_plus_phy.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\phy_plus_phy.o --depend=.\objects\phy_plus_phy.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\phy_plus_phy.crf source\phy_plus_phy.c
    
    
    
    
    
    uart.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\uart.o --vfemode=force

    Input Comments:
    
    p5120-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    uart.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\uart.o --depend=.\objects\uart.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\uart.crf ..\..\..\components\driver\uart\uart.c
    
    
    
    
    clock.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\clock.o --vfemode=force

    Input Comments:
    
    p52bc-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    clock.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\clock.o --depend=.\objects\clock.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\clock.crf ..\..\..\components\driver\clock\clock.c
    
    
    
    
    
    gpio.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gpio.o --vfemode=force

    Input Comments:
    
    p6054-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    gpio.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\gpio.o --depend=.\objects\gpio.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\gpio.crf ..\..\..\components\driver\gpio\gpio.c
    
    
    
    
    timer.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\timer.o --vfemode=force

    Input Comments:
    
    p5a8-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    timer.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\timer.o --depend=.\objects\timer.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\timer.crf ..\..\..\components\driver\timer\timer.c
    
    
    pwrmgr.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\pwrmgr.o --vfemode=force

    Input Comments:
    
    pac-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    pwrmgr.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\pwrmgr.o --depend=.\objects\pwrmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\pwrmgr.crf ..\..\..\components\driver\pwrmgr\pwrmgr.c
    
    
    
    
    my_printf.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\my_printf.o --vfemode=force

    Input Comments:
    
    p5624-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    my_printf.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\my_printf.o --depend=.\objects\my_printf.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\my_printf.crf ..\..\..\components\driver\log\my_printf.c
    
    
    
    flash.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\flash.o --vfemode=force

    Input Comments:
    
    p3c78-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    flash.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\flash.o --depend=.\objects\flash.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\flash.crf ..\..\..\components\driver\flash\flash.c
    
    
    
    
    
    jump_table.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\jump_table.o --vfemode=force

    Input Comments:
    
    p5c94-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    jump_table.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\jump_table.o --depend=.\objects\jump_table.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\jump_table.crf ..\..\..\misc\jump_table.c
    
    
    fs.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\fs.o --vfemode=force

    Input Comments:
    
    p644c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    fs.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\fs.o --depend=.\objects\fs.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\fs.crf ..\..\..\components\libraries\fs\fs.c
    
    
    
    startup_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    ArmAsm --debug --xref --diag_suppress=9931 --cpu=Cortex-M0 --apcs=interwork --depend=.\objects\startup_armcm0.d  -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM
    
    
    system_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\system_armcm0.o --vfemode=force

    Input Comments:
    
    p65b0-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --debug --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    system_armcm0.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections --debug -c -o.\objects\system_armcm0.o --depend=.\objects\system_armcm0.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\..\components\inc -I..\..\..\components\ble\controller -I..\..\..\components\osal\include -I..\..\..\components\common -I.\source -I..\..\..\components\libraries\crc16 -I..\..\..\components\driver\clock -I..\..\..\components\arch\cm0 -I..\..\..\components\driver\pwrmgr -I..\..\..\components\driver\uart -I..\..\..\components\driver\gpio -I..\..\..\components\driver\timer -I..\..\..\misc -I..\..\..\components\driver\log -I..\..\..\components\ble\include -I..\..\..\components\aoxEst -I..\..\..\components\driver\flash -I..\..\..\components\libraries\fs -I.\RTE\_Target_1 -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IE:\keil\keil_v5\ARM\CMSIS\5.9.0\Device\ARM\ARMCM0\Include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -D__UVISION_VERSION=537 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DOSAL_CBTIMER_NUM_TASKS=1 -DHOST_CONFIG=4 -DHCI_TL_NONE=1 -DENABLE_LOG_ROM_=0 -DDEBUG_INFO=1 -DPHY_MODE_DEF=1 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DCFG_SLEEP_MODE=PWR_MODE_SLEEP --omf_browse=.\objects\system_armcm0.crf RTE/Device/ARMCM0/system_ARMCM0.c
    
    
    
    
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
    File Offset : 257988 (0x3efc4)
    Size        : 172 bytes (0xac)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

address     size       variable name                            type
0x1fff6bcc  0x4        SystemCoreClock                          uint32_t

address     size       variable name                            type
0x1fff0400  0x400      global_config                            array[256] of uint32

address     size       variable name                            type
0x1fff0000  0x400      jump_table_base                          array[256] of const pointer to const uint32_t

address     size       variable name                            type
0x1fff6bc8  0x4        trap_c_callback                          pointer to function 

address     size       variable name                            type
0x1fff6bc0  0x7        g_chipMAddr                              chipMAddr_t
0x1fff6bc0  0x1        g_chipMAddr.chipMAddrStatus              CHIP_ID_STATUS_e
0x1fff6bc1  0x6        g_chipMAddr.mAddr                        array[6] of uint8_t

address     size       variable name                            type
0x1fff6bbc  0x4        s_xflashCtx                              xflash_Ctx_t
0x1fff6bbc  0x4        s_xflashCtx.rd_instr                     uint32_t

address     size       variable name                            type
0x1fff6bb8  0x1        spif_dma_use                             _Bool

address     size       variable name                            type
0x1fff6bb0  0x4        digits                                   pointer to const char

address     size       variable name                            type
0x1fff6bb4  0x4        upper_digits                             pointer to const char

address     size       variable name                            type
0x1fff77f8  0x78       mCtx                                     array[10] of pwrmgr_Ctx_t

address     size       variable name                            type
0x1fff6b98  0x1        mPwrMode                                 uint8_t

address     size       variable name                            type
0x1fff6bac  0x1        pwroff_register_number                   uint8

address     size       variable name                            type
0x1fff6b9c  0x4        s_config_swClk0                          uint32_t

address     size       variable name                            type
0x1fff6ba0  0x4        s_config_swClk1                          uint32_t

address     size       variable name                            type
0x1fff6ba4  0x4        s_gpio_wakeup_src_group1                 uint32_t

address     size       variable name                            type
0x1fff6ba8  0x4        s_gpio_wakeup_src_group2                 uint32_t

address     size       variable name                            type
0x1fff6b99  0x1        s_pwrmgr_cfg                             PWRMGR_CFG_BIT
0x1fff6b99  0x1(5:3)   s_pwrmgr_cfg.sramRet_config              uint8_t
0x1fff6b99  0x1(0:5)   s_pwrmgr_cfg.moudle_num                  uint8_t

address     size       variable name                            type
0x1fff7870  0xc        s_pwroff_cfg                             array[3] of pwroff_cfg_t

address     size       variable name                            type
0x00000000  0x8        TimerIndex                               array[2] of const pointer to AP_TIM_TypeDef

address     size       variable name                            type
0x1fff6b94  0x4        s_ap_callback                            ap_tm_hdl_t

address     size       variable name                            type
0x1fff6a54  0x17       c_gpio_index                             array[23] of const uint8_t

address     size       variable name                            type
0x1fff6a6b  0x45       c_gpio_pull                              array[23] of const PULL_TypeDef

address     size       variable name                            type
0x1fff76c8  0x130      m_gpioCtx                                gpio_Ctx_t
0x1fff76c8  0x1        m_gpioCtx.state                          _Bool
0x1fff76c9  0x17       m_gpioCtx.pin_assignments                array[23] of uint8_t
0x1fff76e0  0x4        m_gpioCtx.pin_retention_status           uint32_t
0x1fff76e4  0x114      m_gpioCtx.irq_ctx                        array[23] of gpioin_Ctx_t

address     size       variable name                            type
0x1fff6ab0  0x2e       retention_reg                            array[23] of array[2] of const signed char

address     size       variable name                            type
0x1fff6b92  0x1        m_uart0_even_parity                      _Bool

address     size       variable name                            type
0x1fff6b93  0x1        m_uart1_even_parity                      _Bool

address     size       variable name                            type
0x1fff7688  0x40       m_uartCtx                                array[2] of uart_Ctx_t

address     size       variable name                            type
0x1fff6b88  0x4        PHY_ISR_entry_time                       uint32

address     size       variable name                            type
0x1fff6b83  0x1        PhyPlusPhy_TaskID                        uint8

address     size       variable name                            type
0x1fff7644  0x20       adv_buffer                               array[32] of uint8_t

address     size       variable name                            type
0x1fff7444  0x100      phyBufRx                                 array[256] of uint8_t

address     size       variable name                            type
0x1fff7544  0x100      phyBufTx                                 array[256] of uint8_t

address     size       variable name                            type
0x1fff6b80  0x1        phyCarrSens                              uint8

address     size       variable name                            type
0x1fff6b84  0x2        phyFoff                                  uint16

address     size       variable name                            type
0x1fff6b81  0x1        phyRssi                                  uint8

address     size       variable name                            type
0x1fff7670  0x18       s_phy                                    phyCtx_t
0x1fff7670  0x1      * s_phy.Status                             uint8_t
0x1fff7674  0x4        s_phy.txIntv                             uint32_t
0x1fff7678  0x4        s_phy.rxIntv                             uint32_t
0x1fff767c  0x1      * s_phy.rfChn                              uint8_t
0x1fff767e  0x2        s_phy.rxOnlyTO                           uint16_t
0x1fff7680  0x2      * s_phy.rxAckTO                            uint16_t
0x1fff7684  0x4        s_phy.rxScanT0                           uint32_t

address     size       variable name                            type
0x1fff7664  0xc        s_pktCfg                                 pktCfg_t
0x1fff7664  0x1        s_pktCfg.pktFmt                          uint8_t
0x1fff7665  0x1        s_pktCfg.pduLen                          uint8_t
0x1fff7666  0x1        s_pktCfg.wtSeed                          uint8_t
0x1fff7667  0x1        s_pktCfg.crcFmt                          uint8_t
0x1fff7668  0x4        s_pktCfg.crcSeed                         uint32_t
0x1fff766c  0x4        s_pktCfg.syncWord                        uint32_t

address     size       variable name                            type
0x1fff6b8c  0x6        s_pubAddr                                array[6] of uint8_t

address     size       variable name                            type
0x1fff6b70  0x4        tasksArr                                 array[1] of const pTaskEventHandlerFn

address     size       variable name                            type
0x1fff6b74  0x1        tasksCnt                                 const uint8

address     size       variable name                            type
0x1fff6b7c  0x4        tasksEvents                              pointer to uint16

address     size       variable name                            type
0x1fff6b78  0x1        g_clk32K_config                          volatile uint8

address     size       variable name                            type
0x1fff6c44  0x800      g_largeHeap                              array[2048] of uint8

address     size       variable name                            type
0x00000000  0x1        g_spif_clk_config                        volatile sysclk_t

