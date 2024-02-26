// Decompiled by library.dedaub.com
// 2024.01.16 08:09 UTC

object "contract" {
    code { }
    object "runtime" {
        code {
                mstore(0x40, 0x80)
                let _0 := lt(calldatasize(), 0x4)                
                if _0{
                    let _1 := calldatasize()                    
                    require(_1)
                    func_receive()
                }
                if not(_0){
                    let _2 := shr(0xe0, calldataload(0x0))                    
                    let _3 := gt(0x80f59a65, _2)                    
                    if _3{
                        let _4 := gt(0x20ea8d86, _2)                        
                        if _4{
                            let _5 := eq(0x25e7c27, _2)                            
                            switch _2
                                case 0x25e7c27{
                                    func_owners()
                                }
                                case 0xb8bb146{
                                    func_MAX_OWNERS()
                                }
                                case 0x13faede6{
                                    func_cost()
                                }
                                case 0x15d57992{
                                    func_0x15d57992()
                                }
                                case 0x173825d9{
                                    func_removeOwner()
                                }
                                default {
                                    revert(0x0, 0x0)
                                }
                        }
                        if not(_4){
                            let _6 := eq(0x20ea8d86, _2)                            
                            switch _2
                                case 0x20ea8d86{
                                    func_revokeConfirmation()
                                }
                                case 0x2e7700f0{
                                    func_getTransactionCount()
                                }
                                case 0x2f54bf6e{
                                    func_isOwner()
                                }
                                case 0x33ea3dc8{
                                    func_getTransaction()
                                }
                                case 0x610539b4{
                                    func_0x610539b4()
                                }
                                case 0x7065cb48{
                                    func_addOwner()
                                }
                                default {
                                    revert(0x0, 0x0)
                                }
                        }
                    }
                    if not(_3){
                        let _7 := gt(0xc6427474, _2)                        
                        if _7{
                            let _8 := eq(0x80f59a65, _2)                            
                            switch _2
                                case 0x80f59a65{
                                    func_isConfirmed()
                                }
                                case 0x82539a0d{
                                    func_0x82539a0d()
                                }
                                case 0x9ace38c2{
                                    func_transactions()
                                }
                                case 0xa0e67e2b{
                                    func_getOwners()
                                }
                                case 0xc01a8c84{
                                    func_confirmTransaction()
                                }
                                default {
                                    revert(0x0, 0x0)
                                }
                        }
                        if not(_7){
                            let _9 := eq(0xc6427474, _2)                            
                            switch _2
                                case 0xc6427474{
                                    func_submitTransaction()
                                }
                                case 0xd0549b85{
                                    func_numConfirmationsRequired()
                                }
                                case 0xee22610b{
                                    func_executeTransaction()
                                }
                                case 0xf247f02d{
                                    func_exchangeAmount()
                                }
                                case 0xf6291e43{
                                    func_0xf6291e43()
                                }
                                case 0xf9633930{
                                    func_getFlag()
                                }
                                default {
                                    revert(0x0, 0x0)
                                }
                        }
                    }
                }
            function func_0xc28(_10, _11)  -> ret_val_0, ret_val_1, ret_val_2, ret_val_3, ret_val_4 {
                    let _12 := 0x0                    
                    let _13 := sload(0x8)                    
                    let _14 := lt(_10, _13)                    
                    if _14{
                        mstore(0x0, 0x8)
                        let _15 := add(mul(0x5, _10), keccak256(0x0, 0x20))                        
                        let _16 := sload(add(0x0, _15))                        
                        let _17 := sload(add(0x1, _15))                        
                        let _18 := add(0x2, _15)                        
                        let _19 := sload(add(0x3, _15))                        
                        let _20 := sload(add(0x4, _15))                        
                        let _21 := sload(_18)                        
                        let _22 := func_0x243d(_21, 0xc9f)                        
                        let _23 := mload(0x40)                        
                        mstore(0x40, add(_23, add(0x20, mul(div(add(0x1f, _22), 0x20), 0x20))))
                        mstore(_23, _22)
                        let _24 := add(0x20, _23)                        
                        let _25 := _24                        
                        let _26 := sload(_18)                        
                        let _27 := func_0x243d(_26, 0xccb)                        
                        let _28 := iszero(_27)                        
                        if _28{
                            ret_val_0 := _20                            
                            ret_val_1 := and(0xff, div(_19, exp(0x100, 0x0)))                            
                            ret_val_2 := _23                            
                            ret_val_3 := _17                            
                            ret_val_4 := and(0xffffffffffffffffffffffffffffffffffffffff, div(_16, exp(0x100, 0x0)))                            
                            leave
                        }
                        if not(_28){
                            let _29 := lt(0x1f, _27)                            
                            if _29{
                                let _30 := add(_24, _27)                                
                                mstore(0x0, _18)
                                let _31 := keccak256(0x0, 0x20)                                
                                for {
                                    let _32 := 0x1                                    
                                    let _33 := add(_32, _31)                                    
                                    let _34 := 0x20                                    
                                    _12 := add(_34, _25)                                    
                                }
                                gt(_30, _12)                                
                                { }
                                {
                                    _25 := _12                                    
                                    _31 := _33                                    
                                    let _35 := sload(_31)                                    
                                    mstore(_25, _35)
                                    _32 := 0x1                                    
                                    _33 := add(_32, _31)                                    
                                    _31 := _33                                    
                                    _34 := 0x20                                    
                                    _12 := add(_34, _25)                                    
                                    _25 := _12                                    
                                    let _36 := gt(_30, _12)                                    
                                }
                                let _37 := add(_30, and(0x1f, sub(_12, _30)))                                
                                leave
                            }
                            if not(_29){
                                let _38 := sload(_18)                                
                                mstore(_24, mul(div(_38, 0x100), 0x100))
                                let _39 := add(0x20, _24)                                
                                leave
                            }
                        }
                    }
                    if not(_14){
                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                        mstore(0x4, 0x32)
                        revert(0x0, 0x24)
                    }
                }
            function func_0x19a0(_40)  -> ret_val_0 {
                    let _41 := 0x0                    
                    let _42 := sload(0x5)                    
                    let _43 := sload(0x4)                    
                    let _44 := gt(_43, _42)                    
                    if _44{
                        let _45 := sload(0x6)                        
                        let _46 := func_0x243d(_45, 0x19f5)                        
                        let _47 := mload(0x40)                        
                        mstore(0x40, add(_47, add(0x20, mul(div(add(0x1f, _46), 0x20), 0x20))))
                        mstore(_47, _46)
                        let _48 := add(0x20, _47)                        
                        let _49 := _48                        
                        let _50 := sload(0x6)                        
                        let _51 := func_0x243d(_50, 0x1a21)                        
                        let _52 := iszero(_51)                        
                        if _52{
                            ret_val_0 := _47                            
                            leave
                        }
                        if not(_52){
                            let _53 := lt(0x1f, _51)                            
                            if _53{
                                let _54 := add(_48, _51)                                
                                mstore(0x0, 0x6)
                                let _55 := keccak256(0x0, 0x20)                                
                                for {
                                    let _56 := 0x1                                    
                                    let _57 := add(_56, _55)                                    
                                    let _58 := 0x20                                    
                                    _41 := add(_58, _49)                                    
                                }
                                gt(_54, _41)                                
                                { }
                                {
                                    _49 := _41                                    
                                    _55 := _57                                    
                                    let _59 := sload(_55)                                    
                                    mstore(_49, _59)
                                    _56 := 0x1                                    
                                    _57 := add(_56, _55)                                    
                                    _55 := _57                                    
                                    _58 := 0x20                                    
                                    _41 := add(_58, _49)                                    
                                    _49 := _41                                    
                                    let _60 := gt(_54, _41)                                    
                                }
                                let _61 := add(_54, and(0x1f, sub(_41, _54)))                                
                                leave
                            }
                            if not(_53){
                                let _62 := sload(0x6)                                
                                mstore(_48, mul(div(_62, 0x100), 0x100))
                                let _63 := add(0x20, _48)                                
                                leave
                            }
                        }
                    }
                    if not(_44){
                        let _64 := mload(0x40)                        
                        mstore(_64, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                        let _65 := add(0x4, _64)                        
                        let _66 := add(_65, 0x20)                        
                        mstore(add(_65, 0x0), sub(_66, _65))
                        mstore(_66, 0x18)
                        let _67 := add(_66, 0x20)                        
                        mstore(add(_67, 0x0), 0x4e6f2068617320636f6e7365677569646f2070726f6669740000000000000000)
                        let _68 := mload(0x40)                        
                        revert(_68, sub(add(_67, 0x20), _68))
                    }
                }
            function func_0x243d(_69, _70)  -> ret_val_0 {
                    let _71 := div(_69, 0x2)                    
                    let _72 := _71                    
                    let _73 := _71                    
                    let _74 := and(_69, 0x1)                    
                    if not(_74){
                        let _75 := and(_71, 0x7f)                        
                        _72 := _75                        
                        _73 := _75                        
                    }
                    let _76 := sub(_74, lt(_72, 0x20))                    
                    if _76{
                        ret_val_0 := _73                        
                        leave
                    }
                    if not(_76){
                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                        mstore(0x4, 0x22)
                        revert(0x0, 0x24)
                    }
                }
            function func_0x206f(_77, _78, _79)  -> ret_val_0 {
                    if _78{
                        ret_val_0 := div(_77, _78)                        
                        leave
                    }
                    if not(_78){
                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                        mstore(0x4, 0x12)
                        revert(0x0, 0x24)
                    }
                }
            function func_0x209f(_80, _81, _82)  -> ret_val_0 {
                    let _83 := mul(_80, _81)                    
                    let _84 := or(iszero(_80), eq(_81, div(_83, _80)))                    
                    if _84{
                        ret_val_0 := _83                        
                        leave
                    }
                    if not(_84){
                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                        mstore(0x4, 0x11)
                        revert(0x0, 0x24)
                    }
                }
            function func_0x20e0(_85, _86, _87)  -> ret_val_0 {
                    let _88 := add(_85, _86)                    
                    let _89 := iszero(gt(_85, _88))                    
                    if _89{
                        ret_val_0 := _88                        
                        leave
                    }
                    if not(_89){
                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                        mstore(0x4, 0x11)
                        revert(0x0, 0x24)
                    }
                }
            function func_0x2210(_90, _91, _92)  -> ret_val_0 {
                    let _93 := sub(_90, _91)                    
                    let _94 := iszero(gt(_93, _90))                    
                    if _94{
                        ret_val_0 := _93                        
                        leave
                    }
                    if not(_94){
                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                        mstore(0x4, 0x11)
                        revert(0x0, 0x24)
                    }
                }
            function func_0x2919(_95, _96, _97)  -> ret_val_0 {
                    let _98 := sload(_95)                    
                    let _99 := func_0x243d(_98, 0x2925)                    
                    let _100 := and(_98, 0x1)                    
                    let _101 := eq(_100, 0x0)                    
                    switch _100
                        case 0x0{
                            mstore(_96, and(_98, not(0xff)))
                            ret_val_0 := add(_96, mul(_99, iszero(iszero(_99))))                            
                            leave
                        }
                        case 0x1{
                            mstore(0x0, _95)
                            let _102 := keccak256(0x0, 0x20)                            
                            let _103 := 0x0                            
                            let _104 := 0x0                            
                            for {
                                let _105 := lt(_103, _99)                                
                                let _106 := 0x1                                
                                let _107 := add(_102, _106)                                
                                let _108 := 0x20                                
                                let _109 := add(_104, _108)                                
                            }
                            not(iszero(_105))                            
                            { }
                            {
                                _103 := _109                                
                                _105 := lt(_103, _99)                                
                                let _110 := not(iszero(_105))                                
                                _104 := _109                                
                                _102 := _107                                
                                let _111 := sload(_102)                                
                                mstore(add(_96, _104), _111)
                                _106 := 0x1                                
                                _107 := add(_102, _106)                                
                                _102 := _107                                
                                _108 := 0x20                                
                                _109 := add(_104, _108)                                
                                _103 := _109                                
                                _104 := _109                                
                            }
                            let _112 := add(_96, _99)                            
                            leave
                        }
                        default {
                            leave
                        }
                }
            function func_owners() {
                    let _113 := iszero(callvalue())                    
                    require(not(_113))
                    let _114 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_114))
                    let _115 := calldataload(add(0x4, 0x0))                    
                    let _116 := eq(_115, _115)                    
                    require(not(_116))
                    let _117 := sload(0x0)                    
                    let _118 := lt(_115, _117)                    
                    require(not(_118))
                    mstore(0x0, 0x0)
                    let _119 := sload(add(keccak256(0x0, 0x20), _115))                    
                    let _120 := mload(0x40)                    
                    mstore(add(_120, 0x0), and(and(0xffffffffffffffffffffffffffffffffffffffff, div(_119, exp(0x100, 0x0))), 0xffffffffffffffffffffffffffffffffffffffff))
                    let _121 := mload(0x40)                    
                    return(_121, sub(add(_120, 0x20), _121))
                }
            function func_MAX_OWNERS() {
                    let _122 := iszero(callvalue())                    
                    require(not(_122))
                    let _123 := mload(0x40)                    
                    mstore(add(_123, 0x0), 0x3)
                    let _124 := mload(0x40)                    
                    return(_124, sub(add(_123, 0x20), _124))
                }
            function func_cost() {
                    let _125 := iszero(callvalue())                    
                    require(not(_125))
                    let _126 := sload(0x5)                    
                    let _127 := mload(0x40)                    
                    mstore(add(_127, 0x0), _126)
                    let _128 := mload(0x40)                    
                    return(_128, sub(add(_127, 0x20), _128))
                }
            function func_0x15d57992() {
                    let _129 := iszero(callvalue())                    
                    require(not(_129))
                    let _130 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_130))
                    let _131 := calldataload(add(0x4, 0x0))                    
                    let _132 := eq(_131, _131)                    
                    require(not(_132))
                    sstore(0x5, func_0x209f(func_0x206f(_131, 0x4, 0x621), 0x4, 0x62b))
                    let _133 := sload(0x3)                    
                    let _134 := sload(0x5)                    
                    sstore(0x5, func_0x20e0(_134, _133, 0x644))
                    sstore(0x4, _131)
                    let _135 := sload(0x5)                    
                    let _136 := mload(0x40)                    
                    mstore(add(_136, 0x0), _135)
                    let _137 := mload(0x40)                    
                    return(_137, sub(add(_136, 0x20), _137))
                }
            function func_removeOwner() {
                    let _138 := 0x0                    
                    let _139 := iszero(callvalue())                    
                    require(not(_139))
                    let _140 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_140))
                    let _141 := calldataload(add(0x4, 0x0))                    
                    let _142 := eq(_141, and(_141, 0xffffffffffffffffffffffffffffffffffffffff))                    
                    require(not(_142))
                    mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, _141)))
                    let _143 := add(0x20, 0x0)                    
                    mstore(_143, 0x1)
                    let _144 := sload(keccak256(0x0, add(0x20, _143)))                    
                    let _145 := and(0xff, div(_144, exp(0x100, 0x0)))                    
                    if _145{
                        let _146 := sload(0x0)                        
                        let _147 := gt(_146, 0x1)                        
                        if _147{
                            mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, _141)))
                            let _148 := add(0x20, 0x0)                            
                            mstore(_148, 0x1)
                            let _149 := keccak256(0x0, add(0x20, _148))                            
                            let _150 := exp(0x100, 0x0)                            
                            let _151 := sload(_149)                            
                            sstore(_149, or(mul(iszero(iszero(0x0)), _150), and(not(mul(0xff, _150)), _151)))
                            let _152 := 0x0                            
                            let _153 := 0x0                            
                            let _154 := 0x0                            
                            let _155 := 0x0                            
                            let _156 := 0x0                            
                            let _157 := 0x0                            
                            for {
                                let _159 := 0x0                                
                                let _160 := sload(_159)                                
                                let _158 := lt(_152, _160)                                
                                let _161 := 0x1                                
                                _138 := add(_161, _155)                                
                            }
                            not(iszero(_158))                            
                            { }
                            {
                                _152 := _138                                
                                _159 := 0x0                                
                                _160 := sload(_159)                                
                                _158 := lt(_152, _160)                                
                                let _162 := not(iszero(_158))                                
                                _153 := _138                                
                                let _163 := sload(0x0)                                
                                let _164 := lt(_153, _163)                                
                                if _164{
                                    _154 := _138                                    
                                    mstore(0x0, 0x0)
                                    let _165 := sload(add(keccak256(0x0, 0x20), _154))                                    
                                    let _166 := sub(and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, div(_165, exp(0x100, 0x0)))), and(0xffffffffffffffffffffffffffffffffffffffff, _141))                                    
                                    if _166{
                                        _155 := _138                                        
                                        _161 := 0x1                                        
                                        _138 := add(_161, _155)                                        
                                        _152 := _138                                        
                                        _153 := _138                                        
                                        _154 := _138                                        
                                        _155 := _138                                        
                                        _156 := _138                                        
                                        _157 := _138                                        
                                    }
                                    if not(_166){
                                        let _167 := sload(0x0)                                        
                                        let _168 := func_0x2210(_167, 0x1, 0x80d)                                        
                                        let _169 := sload(0x0)                                        
                                        let _170 := lt(_168, _169)                                        
                                        if _170{
                                            _156 := _138                                            
                                            mstore(0x0, 0x0)
                                            let _171 := sload(add(keccak256(0x0, 0x20), _168))                                            
                                            let _172 := sload(0x0)                                            
                                            let _173 := lt(_156, _172)                                            
                                            if _173{
                                                _157 := _138                                                
                                                mstore(0x0, 0x0)
                                                let _174 := add(keccak256(0x0, 0x20), _157)                                                
                                                let _175 := exp(0x100, 0x0)                                                
                                                let _176 := sload(_174)                                                
                                                sstore(_174, or(mul(and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, div(_171, exp(0x100, 0x0)))), _175), and(not(mul(0xffffffffffffffffffffffffffffffffffffffff, _175)), _176)))
                                                let _177 := sload(0x0)                                                
                                                if _177{
                                                    let _178 := sub(_177, 0x1)                                                    
                                                    mstore(0x0, 0x0)
                                                    let _179 := add(keccak256(0x0, 0x20), _178)                                                    
                                                    let _180 := sload(_179)                                                    
                                                    sstore(_179, and(not(mul(0xffffffffffffffffffffffffffffffffffffffff, exp(0x100, 0x0))), _180))
                                                    sstore(0x0, _178)
                                                }
                                                if not(_177){
                                                    mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                                    mstore(0x4, 0x31)
                                                    revert(0x0, 0x24)
                                                }
                                            }
                                            if not(_173){
                                                mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                                mstore(0x4, 0x32)
                                                revert(0x0, 0x24)
                                            }
                                        }
                                        if not(_170){
                                            mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                            mstore(0x4, 0x32)
                                            revert(0x0, 0x24)
                                        }
                                    }
                                }
                                if not(_164){
                                    mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                    mstore(0x4, 0x32)
                                    revert(0x0, 0x24)
                                    break
                                }
                            }
                            let _181 := mload(0x40)                            
                            let _182 := mload(0x40)                            
                            log2(_182, sub(_181, _182), 0x58619076adf5bb0943d100ef88d52d7c3fd691b19d3a9071b555b651fbf418da, and(0xffffffffffffffffffffffffffffffffffffffff, _141))
                            stop()
                        }
                        if not(_147){
                            let _183 := mload(0x40)                            
                            mstore(_183, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                            let _184 := add(0x4, _183)                            
                            let _185 := add(_184, 0x20)                            
                            mstore(add(_184, 0x0), sub(_185, _184))
                            mstore(_185, 0x18)
                            let _186 := add(_185, 0x20)                            
                            mstore(add(_186, 0x0), 0x63616e6e6f742072656d6f7665206c617374206f776e65720000000000000000)
                            let _187 := mload(0x40)                            
                            revert(_187, sub(add(_186, 0x20), _187))
                        }
                    }
                    if not(_145){
                        let _188 := mload(0x40)                        
                        mstore(_188, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                        let _189 := add(0x4, _188)                        
                        let _190 := add(_189, 0x20)                        
                        mstore(add(_189, 0x0), sub(_190, _189))
                        mstore(_190, 0xc)
                        let _191 := add(_190, 0x20)                        
                        mstore(add(_191, 0x0), 0x6e6f7420616e206f776e65720000000000000000000000000000000000000000)
                        let _192 := mload(0x40)                        
                        revert(_192, sub(add(_191, 0x20), _192))
                    }
                }
            function func_revokeConfirmation() {
                    let _193 := iszero(callvalue())                    
                    require(not(_193))
                    let _194 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_194))
                    let _195 := calldataload(add(0x4, 0x0))                    
                    let _196 := eq(_195, _195)                    
                    require(not(_196))
                    mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, caller())))
                    let _197 := add(0x20, 0x0)                    
                    mstore(_197, 0x1)
                    let _198 := sload(keccak256(0x0, add(0x20, _197)))                    
                    let _199 := and(0xff, div(_198, exp(0x100, 0x0)))                    
                    if _199{
                        let _200 := sload(0x8)                        
                        let _201 := lt(_195, _200)                        
                        if _201{
                            let _202 := sload(0x8)                            
                            let _203 := lt(_195, _202)                            
                            if _203{
                                mstore(0x0, 0x8)
                                let _204 := sload(add(0x3, add(mul(0x5, _195), keccak256(0x0, 0x20))))                                
                                let _205 := iszero(and(0xff, div(_204, exp(0x100, 0x0))))                                
                                if _205{
                                    let _206 := sload(0x8)                                    
                                    let _207 := lt(_195, _206)                                    
                                    if _207{
                                        mstore(0x0, 0x8)
                                        mstore(0x0, _195)
                                        let _208 := add(0x20, 0x0)                                        
                                        mstore(_208, 0x7)
                                        mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, caller())))
                                        let _209 := add(0x20, 0x0)                                        
                                        mstore(_209, keccak256(0x0, add(0x20, _208)))
                                        let _210 := sload(keccak256(0x0, add(0x20, _209)))                                        
                                        let _211 := and(0xff, div(_210, exp(0x100, 0x0)))                                        
                                        if _211{
                                            let _212 := add(0x4, add(mul(0x5, _195), keccak256(0x0, 0x20)))                                            
                                            let _213 := sload(_212)                                            
                                            sstore(_212, func_0x2210(_213, 0x1, 0xb4b))
                                            mstore(0x0, _195)
                                            let _214 := add(0x20, 0x0)                                            
                                            mstore(_214, 0x7)
                                            mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, caller())))
                                            let _215 := add(0x20, 0x0)                                            
                                            mstore(_215, keccak256(0x0, add(0x20, _214)))
                                            let _216 := keccak256(0x0, add(0x20, _215))                                            
                                            let _217 := exp(0x100, 0x0)                                            
                                            let _218 := sload(_216)                                            
                                            sstore(_216, or(mul(iszero(iszero(0x0)), _217), and(not(mul(0xff, _217)), _218)))
                                            let _219 := mload(0x40)                                            
                                            let _220 := mload(0x40)                                            
                                            log3(_220, sub(_219, _220), 0xf0dca620e2e81f7841d07bcc105e1704fb01475b278a9d4c236e1c62945edd55, and(0xffffffffffffffffffffffffffffffffffffffff, caller()), _195)
                                            stop()
                                        }
                                        if not(_211){
                                            let _221 := mload(0x40)                                            
                                            mstore(_221, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                            let _222 := add(0x4, _221)                                            
                                            let _223 := add(_222, 0x20)                                            
                                            mstore(add(_222, 0x0), sub(_223, _222))
                                            mstore(_223, 0x10)
                                            let _224 := add(_223, 0x20)                                            
                                            mstore(add(_224, 0x0), 0x7478206e6f7420636f6e6669726d656400000000000000000000000000000000)
                                            let _225 := mload(0x40)                                            
                                            revert(_225, sub(add(_224, 0x20), _225))
                                        }
                                    }
                                    if not(_207){
                                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                        mstore(0x4, 0x32)
                                        revert(0x0, 0x24)
                                    }
                                }
                                if not(_205){
                                    let _226 := mload(0x40)                                    
                                    mstore(_226, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                    let _227 := add(0x4, _226)                                    
                                    let _228 := add(_227, 0x20)                                    
                                    mstore(add(_227, 0x0), sub(_228, _227))
                                    mstore(_228, 0x13)
                                    let _229 := add(_228, 0x20)                                    
                                    mstore(add(_229, 0x0), 0x747820616c726561647920657865637574656400000000000000000000000000)
                                    let _230 := mload(0x40)                                    
                                    revert(_230, sub(add(_229, 0x20), _230))
                                }
                            }
                            if not(_203){
                                mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                mstore(0x4, 0x32)
                                revert(0x0, 0x24)
                            }
                        }
                        if not(_201){
                            let _231 := mload(0x40)                            
                            mstore(_231, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                            let _232 := add(0x4, _231)                            
                            let _233 := add(_232, 0x20)                            
                            mstore(add(_232, 0x0), sub(_233, _232))
                            mstore(_233, 0x11)
                            let _234 := add(_233, 0x20)                            
                            mstore(add(_234, 0x0), 0x747820646f6573206e6f74206578697374000000000000000000000000000000)
                            let _235 := mload(0x40)                            
                            revert(_235, sub(add(_234, 0x20), _235))
                        }
                    }
                    if not(_199){
                        let _236 := mload(0x40)                        
                        mstore(_236, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                        let _237 := add(0x4, _236)                        
                        let _238 := add(_237, 0x20)                        
                        mstore(add(_237, 0x0), sub(_238, _237))
                        mstore(_238, 0x9)
                        let _239 := add(_238, 0x20)                        
                        mstore(add(_239, 0x0), 0x6e6f74206f776e65720000000000000000000000000000000000000000000000)
                        let _240 := mload(0x40)                        
                        revert(_240, sub(add(_239, 0x20), _240))
                    }
                }
            function func_getTransactionCount() {
                    let _241 := iszero(callvalue())                    
                    require(not(_241))
                    let _242 := sload(0x8)                    
                    let _243 := mload(0x40)                    
                    mstore(add(_243, 0x0), _242)
                    let _244 := mload(0x40)                    
                    return(_244, sub(add(_243, 0x20), _244))
                }
            function func_isOwner() {
                    let _245 := iszero(callvalue())                    
                    require(not(_245))
                    let _246 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_246))
                    let _247 := calldataload(add(0x4, 0x0))                    
                    let _248 := eq(_247, and(_247, 0xffffffffffffffffffffffffffffffffffffffff))                    
                    require(not(_248))
                    mstore(0x20, 0x1)
                    mstore(0x0, _247)
                    let _249 := sload(keccak256(0x0, 0x40))                    
                    let _250 := mload(0x40)                    
                    mstore(add(_250, 0x0), iszero(iszero(and(0xff, div(_249, exp(0x100, 0x0))))))
                    let _251 := mload(0x40)                    
                    return(_251, sub(add(_250, 0x20), _251))
                }
            function func_getTransaction() {
                    let _252 := iszero(callvalue())                    
                    require(not(_252))
                    let _253 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_253))
                    let _254 := calldataload(add(0x4, 0x0))                    
                    let _255 := eq(_254, _254)                    
                    require(not(_255))
                    let _256, _257, _258, _259, _260 := func_0xc28(_254, 0x33b)                    
                    let _261 := mload(0x40)                    
                    let _262 := add(_261, 0xa0)                    
                    mstore(add(_261, 0x0), and(_260, 0xffffffffffffffffffffffffffffffffffffffff))
                    mstore(add(_261, 0x20), _259)
                    mstore(add(_261, 0x40), sub(_262, _261))
                    let _263 := mload(_258)                    
                    mstore(_262, _263)
                    let _264 := add(_262, 0x20)                    
                    let _265 := 0x0                    
                    let _266 := 0x0                    
                    for {
                        let _267 := lt(_265, _263)                        
                        let _268 := 0x20                        
                        let _269 := add(_266, _268)                        
                    }
                    not(iszero(_267))                    
                    { }
                    {
                        _265 := _269                        
                        _267 := lt(_265, _263)                        
                        let _270 := not(iszero(_267))                        
                        _266 := _269                        
                        let _271 := mload(add(add(_258, 0x20), _266))                        
                        mstore(add(_264, _266), _271)
                        _268 := 0x20                        
                        _269 := add(_266, _268)                        
                        _265 := _269                        
                        _266 := _269                        
                    }
                    mstore(add(_264, _263), 0x0)
                    mstore(add(_261, 0x60), iszero(iszero(_257)))
                    mstore(add(_261, 0x80), _256)
                    let _272 := mload(0x40)                    
                    return(_272, sub(add(_264, and(add(_263, 0x1f), not(0x1f))), _272))
                }
            function func_0x610539b4() {
                    let _273 := iszero(callvalue())                    
                    require(not(_273))
                    let _274 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_274))
                    let _275 := calldataload(add(0x4, 0x0))                    
                    let _276 := eq(_275, _275)                    
                    require(not(_276))
                    sstore(0x5, func_0x2210(func_0x20e0(_275, 0x4, 0xd40), 0x4, 0xd4a))
                    let _277 := sload(0x3)                    
                    let _278 := sload(0x5)                    
                    sstore(0x5, func_0x20e0(_278, _277, 0xd63))
                    sstore(0x4, _275)
                    let _279 := sload(0x5)                    
                    let _280 := mload(0x40)                    
                    mstore(add(_280, 0x0), _279)
                    let _281 := mload(0x40)                    
                    return(_281, sub(add(_280, 0x20), _281))
                }
            function func_addOwner() {
                    let _282 := iszero(callvalue())                    
                    require(not(_282))
                    let _283 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_283))
                    let _284 := calldataload(add(0x4, 0x0))                    
                    let _285 := eq(_284, and(_284, 0xffffffffffffffffffffffffffffffffffffffff))                    
                    require(not(_285))
                    let _286 := sub(and(0xffffffffffffffffffffffffffffffffffffffff, _284), and(0xffffffffffffffffffffffffffffffffffffffff, 0x0))                    
                    if _286{
                        mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, _284)))
                        let _287 := add(0x20, 0x0)                        
                        mstore(_287, 0x1)
                        let _288 := sload(keccak256(0x0, add(0x20, _287)))                        
                        let _289 := iszero(and(0xff, div(_288, exp(0x100, 0x0))))                        
                        if _289{
                            let _290 := sload(0x0)                            
                            let _291 := lt(_290, 0x3)                            
                            if _291{
                                mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, _284)))
                                let _292 := add(0x20, 0x0)                                
                                mstore(_292, 0x1)
                                let _293 := keccak256(0x0, add(0x20, _292))                                
                                let _294 := exp(0x100, 0x0)                                
                                let _295 := sload(_293)                                
                                sstore(_293, or(mul(iszero(iszero(0x1)), _294), and(not(mul(0xff, _294)), _295)))
                                let _296 := sload(0x0)                                
                                let _297 := add(_296, 0x1)                                
                                sstore(0x0, _297)
                                mstore(0x0, 0x0)
                                let _298 := add(keccak256(0x0, 0x20), sub(_297, 0x1))                                
                                let _299 := exp(0x100, 0x0)                                
                                let _300 := sload(_298)                                
                                sstore(_298, or(mul(and(0xffffffffffffffffffffffffffffffffffffffff, _284), _299), and(not(mul(0xffffffffffffffffffffffffffffffffffffffff, _299)), _300)))
                                let _301 := mload(0x40)                                
                                let _302 := mload(0x40)                                
                                log2(_302, sub(_301, _302), 0x994a936646fe87ffe4f1e469d3d6aa417d6b855598397f323de5b449f765f0c3, and(0xffffffffffffffffffffffffffffffffffffffff, _284))
                                stop()
                            }
                            if not(_291){
                                let _303 := mload(0x40)                                
                                mstore(_303, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                let _304 := add(0x4, _303)                                
                                let _305 := add(_304, 0x20)                                
                                mstore(add(_304, 0x0), sub(_305, _304))
                                mstore(_305, 0x12)
                                let _306 := add(_305, 0x20)                                
                                mstore(add(_306, 0x0), 0x6d6178206f776e65727320726561636865640000000000000000000000000000)
                                let _307 := mload(0x40)                                
                                revert(_307, sub(add(_306, 0x20), _307))
                            }
                        }
                        if not(_289){
                            let _308 := mload(0x40)                            
                            mstore(_308, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                            let _309 := add(0x4, _308)                            
                            let _310 := add(_309, 0x20)                            
                            mstore(add(_309, 0x0), sub(_310, _309))
                            mstore(_310, 0x14)
                            let _311 := add(_310, 0x20)                            
                            mstore(add(_311, 0x0), 0x6f776e657220616c726561647920657869737473000000000000000000000000)
                            let _312 := mload(0x40)                            
                            revert(_312, sub(add(_311, 0x20), _312))
                        }
                    }
                    if not(_286){
                        let _313 := mload(0x40)                        
                        mstore(_313, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                        let _314 := add(0x4, _313)                        
                        let _315 := add(_314, 0x20)                        
                        mstore(add(_314, 0x0), sub(_315, _314))
                        mstore(_315, 0xd)
                        let _316 := add(_315, 0x20)                        
                        mstore(add(_316, 0x0), 0x696e76616c6964206f776e657200000000000000000000000000000000000000)
                        let _317 := mload(0x40)                        
                        revert(_317, sub(add(_316, 0x20), _317))
                    }
                }
            function func_isConfirmed() {
                    let _318 := iszero(callvalue())                    
                    require(not(_318))
                    let _319 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x40))                    
                    require(not(_319))
                    let _320 := calldataload(add(0x4, 0x0))                    
                    let _321 := eq(_320, _320)                    
                    require(not(_321))
                    let _322 := calldataload(add(0x4, 0x20))                    
                    let _323 := eq(_322, and(_322, 0xffffffffffffffffffffffffffffffffffffffff))                    
                    require(not(_323))
                    mstore(0x20, 0x7)
                    mstore(0x0, _320)
                    mstore(0x20, keccak256(0x0, 0x40))
                    mstore(0x0, _322)
                    let _324 := sload(keccak256(0x0, 0x40))                    
                    let _325 := mload(0x40)                    
                    mstore(add(_325, 0x0), iszero(iszero(and(0xff, div(_324, exp(0x100, 0x0))))))
                    let _326 := mload(0x40)                    
                    return(_326, sub(add(_325, 0x20), _326))
                }
            function func_0x82539a0d() {
                    let _327 := iszero(callvalue())                    
                    require(not(_327))
                    let _328 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_328))
                    let _329 := calldataload(add(0x4, 0x0))                    
                    let _330 := eq(_329, _329)                    
                    require(not(_330))
                    sstore(0x5, func_0x206f(func_0x209f(_329, 0x4, 0xfec), 0x4, 0xff6))
                    let _331 := sload(0x3)                    
                    let _332 := sload(0x5)                    
                    sstore(0x5, func_0x20e0(_332, _331, 0x100f))
                    sstore(0x4, _329)
                    let _333 := sload(0x5)                    
                    let _334 := mload(0x40)                    
                    mstore(add(_334, 0x0), _333)
                    let _335 := mload(0x40)                    
                    return(_335, sub(add(_334, 0x20), _335))
                }
            function func_transactions() {
                    let _336 := 0x0                    
                    let _337 := 0x0                    
                    let _338 := 0x0                    
                    let _339 := iszero(callvalue())                    
                    require(not(_339))
                    let _340 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_340))
                    let _341 := calldataload(add(0x4, 0x0))                    
                    let _342 := eq(_341, _341)                    
                    require(not(_342))
                    let _343 := sload(0x8)                    
                    let _344 := lt(_341, _343)                    
                    require(not(_344))
                    mstore(0x0, 0x8)
                    let _345 := add(mul(0x5, _341), keccak256(0x0, 0x20))                    
                    let _346 := sload(add(0x0, _345))                    
                    let _347 := sload(add(0x1, _345))                    
                    let _348 := add(0x2, _345)                    
                    let _349 := sload(_348)                    
                    let _350 := func_0x243d(_349, 0x1080)                    
                    let _351 := mload(0x40)                    
                    mstore(0x40, add(_351, add(0x20, mul(div(add(0x1f, _350), 0x20), 0x20))))
                    mstore(_351, _350)
                    let _352 := add(0x20, _351)                    
                    let _353 := _352                    
                    let _354 := sload(_348)                    
                    let _355 := func_0x243d(_354, 0x10ac)                    
                    let _356 := iszero(_355)                    
                    if _356{
                        let _357 := sload(add(0x3, _345))                        
                        _338 := and(0xff, div(_357, exp(0x100, 0x0)))                        
                        let _358 := sload(add(0x4, _345))                        
                        _337 := _358                        
                    }
                    if not(_356){
                        let _359 := lt(0x1f, _355)                        
                        if _359{
                            let _360 := add(_352, _355)                            
                            mstore(0x0, _348)
                            let _361 := keccak256(0x0, 0x20)                            
                            for {
                                let _362 := 0x1                                
                                let _363 := add(_362, _361)                                
                                let _364 := 0x20                                
                                _336 := add(_364, _353)                                
                            }
                            gt(_360, _336)                            
                            { }
                            {
                                _353 := _336                                
                                _361 := _363                                
                                let _365 := sload(_361)                                
                                mstore(_353, _365)
                                _362 := 0x1                                
                                _363 := add(_362, _361)                                
                                _361 := _363                                
                                _364 := 0x20                                
                                _336 := add(_364, _353)                                
                                _353 := _336                                
                                let _366 := gt(_360, _336)                                
                            }
                            let _367 := add(_360, and(0x1f, sub(_336, _360)))                            
                            let _368 := sload(add(0x3, _345))                            
                            _338 := and(0xff, div(_368, exp(0x100, 0x0)))                            
                            let _369 := sload(add(0x4, _345))                            
                            _337 := _369                            
                        }
                        if not(_359){
                            let _370 := sload(_348)                            
                            mstore(_352, mul(div(_370, 0x100), 0x100))
                            let _371 := add(0x20, _352)                            
                            let _372 := sload(add(0x3, _345))                            
                            _338 := and(0xff, div(_372, exp(0x100, 0x0)))                            
                            let _373 := sload(add(0x4, _345))                            
                            _337 := _373                            
                        }
                    }
                    let _374 := mload(0x40)                    
                    let _375 := add(_374, 0xa0)                    
                    mstore(add(_374, 0x0), and(and(0xffffffffffffffffffffffffffffffffffffffff, div(_346, exp(0x100, 0x0))), 0xffffffffffffffffffffffffffffffffffffffff))
                    mstore(add(_374, 0x20), _347)
                    mstore(add(_374, 0x40), sub(_375, _374))
                    let _376 := mload(_351)                    
                    mstore(_375, _376)
                    let _377 := add(_375, 0x20)                    
                    let _378 := 0x0                    
                    let _379 := 0x0                    
                    for {
                        let _380 := lt(_378, _376)                        
                        let _381 := 0x20                        
                        let _382 := add(_379, _381)                        
                    }
                    not(iszero(_380))                    
                    { }
                    {
                        _378 := _382                        
                        _380 := lt(_378, _376)                        
                        let _383 := not(iszero(_380))                        
                        _379 := _382                        
                        let _384 := mload(add(add(_351, 0x20), _379))                        
                        mstore(add(_377, _379), _384)
                        _381 := 0x20                        
                        _382 := add(_379, _381)                        
                        _378 := _382                        
                        _379 := _382                        
                    }
                    mstore(add(_377, _376), 0x0)
                    mstore(add(_374, 0x60), iszero(iszero(_338)))
                    mstore(add(_374, 0x80), _337)
                    let _385 := mload(0x40)                    
                    return(_385, sub(add(_377, and(add(_376, 0x1f), not(0x1f))), _385))
                }
            function func_getOwners() {
                    let _386 := 0x0                    
                    let _387 := iszero(callvalue())                    
                    require(not(_387))
                    let _388 := sload(0x0)                    
                    let _389 := mload(0x40)                    
                    mstore(0x40, add(_389, add(0x20, mul(0x20, _388))))
                    mstore(_389, _388)
                    let _390 := add(0x20, _389)                    
                    let _391 := _390                    
                    let _392 := sload(0x0)                    
                    let _393 := iszero(_392)                    
                    if not(_393){
                        let _394 := add(_390, mul(0x20, _392))                        
                        mstore(0x0, 0x0)
                        let _395 := keccak256(0x0, 0x20)                        
                        for {
                            let _397 := 0x20                            
                            let _396 := add(_397, _391)                            
                            let _398 := 0x1                            
                            let _399 := add(_398, _395)                            
                        }
                        gt(_394, _396)                        
                        { }
                        {
                            _395 := _399                            
                            _391 := _396                            
                            let _400 := sload(_395)                            
                            mstore(_391, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, div(_400, exp(0x100, 0x0)))))
                            _397 := 0x20                            
                            _396 := add(_397, _391)                            
                            _391 := _396                            
                            _398 := 0x1                            
                            _399 := add(_398, _395)                            
                            _395 := _399                            
                            let _401 := gt(_394, _396)                            
                        }
                    }
                    let _402 := mload(0x40)                    
                    let _403 := add(_402, 0x20)                    
                    mstore(add(_402, 0x0), sub(_403, _402))
                    let _404 := mload(_389)                    
                    mstore(_403, _404)
                    let _405 := add(_403, 0x20)                    
                    let _406 := _405                    
                    let _407 := _405                    
                    let _408 := _405                    
                    let _409 := add(_389, 0x20)                    
                    let _410 := _409                    
                    let _411 := _409                    
                    let _412 := 0x0                    
                    let _413 := 0x0                    
                    for {
                        let _415 := 0x20                        
                        _386 := add(_407, _415)                        
                        let _416 := 0x20                        
                        let _417 := add(_411, _416)                        
                        let _414 := lt(_412, _404)                        
                        let _418 := 0x1                        
                        let _419 := add(_413, _418)                        
                    }
                    not(iszero(_414))                    
                    { }
                    {
                        _412 := _419                        
                        _414 := lt(_412, _404)                        
                        let _420 := not(iszero(_414))                        
                        _410 := _417                        
                        let _421 := mload(_410)                        
                        _406 := _386                        
                        mstore(_406, and(_421, 0xffffffffffffffffffffffffffffffffffffffff))
                        _407 := _386                        
                        _415 := 0x20                        
                        _386 := add(_407, _415)                        
                        _406 := _386                        
                        _407 := _386                        
                        _408 := _386                        
                        _411 := _417                        
                        _416 := 0x20                        
                        _417 := add(_411, _416)                        
                        _410 := _417                        
                        _411 := _417                        
                        _413 := _419                        
                        _418 := 0x1                        
                        _419 := add(_413, _418)                        
                        _412 := _419                        
                        _413 := _419                        
                    }
                    _408 := _386                    
                    let _422 := mload(0x40)                    
                    return(_422, sub(_408, _422))
                }
            function func_confirmTransaction() {
                    let _423 := iszero(callvalue())                    
                    require(not(_423))
                    let _424 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_424))
                    let _425 := calldataload(add(0x4, 0x0))                    
                    let _426 := eq(_425, _425)                    
                    require(not(_426))
                    mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, caller())))
                    let _427 := add(0x20, 0x0)                    
                    mstore(_427, 0x1)
                    let _428 := sload(keccak256(0x0, add(0x20, _427)))                    
                    let _429 := and(0xff, div(_428, exp(0x100, 0x0)))                    
                    if _429{
                        let _430 := sload(0x8)                        
                        let _431 := lt(_425, _430)                        
                        if _431{
                            let _432 := sload(0x8)                            
                            let _433 := lt(_425, _432)                            
                            if _433{
                                mstore(0x0, 0x8)
                                let _434 := sload(add(0x3, add(mul(0x5, _425), keccak256(0x0, 0x20))))                                
                                let _435 := iszero(and(0xff, div(_434, exp(0x100, 0x0))))                                
                                if _435{
                                    mstore(0x0, _425)
                                    let _436 := add(0x20, 0x0)                                    
                                    mstore(_436, 0x7)
                                    mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, caller())))
                                    let _437 := add(0x20, 0x0)                                    
                                    mstore(_437, keccak256(0x0, add(0x20, _436)))
                                    let _438 := sload(keccak256(0x0, add(0x20, _437)))                                    
                                    let _439 := iszero(and(0xff, div(_438, exp(0x100, 0x0))))                                    
                                    if _439{
                                        let _440 := sload(0x8)                                        
                                        let _441 := lt(_425, _440)                                        
                                        if _441{
                                            mstore(0x0, 0x8)
                                            let _442 := add(0x4, add(mul(0x5, _425), keccak256(0x0, 0x20)))                                            
                                            let _443 := sload(_442)                                            
                                            sstore(_442, func_0x20e0(_443, 0x1, 0x13b6))
                                            mstore(0x0, _425)
                                            let _444 := add(0x20, 0x0)                                            
                                            mstore(_444, 0x7)
                                            mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, caller())))
                                            let _445 := add(0x20, 0x0)                                            
                                            mstore(_445, keccak256(0x0, add(0x20, _444)))
                                            let _446 := keccak256(0x0, add(0x20, _445))                                            
                                            let _447 := exp(0x100, 0x0)                                            
                                            let _448 := sload(_446)                                            
                                            sstore(_446, or(mul(iszero(iszero(0x1)), _447), and(not(mul(0xff, _447)), _448)))
                                            let _449 := mload(0x40)                                            
                                            let _450 := mload(0x40)                                            
                                            log3(_450, sub(_449, _450), 0x5cbe105e36805f7820e291f799d5794ff948af2a5f664e580382defb63390041, and(0xffffffffffffffffffffffffffffffffffffffff, caller()), _425)
                                            stop()
                                        }
                                        if not(_441){
                                            mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                            mstore(0x4, 0x32)
                                            revert(0x0, 0x24)
                                        }
                                    }
                                    if not(_439){
                                        let _451 := mload(0x40)                                        
                                        mstore(_451, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                        let _452 := add(0x4, _451)                                        
                                        let _453 := add(_452, 0x20)                                        
                                        mstore(add(_452, 0x0), sub(_453, _452))
                                        mstore(_453, 0x14)
                                        let _454 := add(_453, 0x20)                                        
                                        mstore(add(_454, 0x0), 0x747820616c726561647920636f6e6669726d6564000000000000000000000000)
                                        let _455 := mload(0x40)                                        
                                        revert(_455, sub(add(_454, 0x20), _455))
                                    }
                                }
                                if not(_435){
                                    let _456 := mload(0x40)                                    
                                    mstore(_456, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                    let _457 := add(0x4, _456)                                    
                                    let _458 := add(_457, 0x20)                                    
                                    mstore(add(_457, 0x0), sub(_458, _457))
                                    mstore(_458, 0x13)
                                    let _459 := add(_458, 0x20)                                    
                                    mstore(add(_459, 0x0), 0x747820616c726561647920657865637574656400000000000000000000000000)
                                    let _460 := mload(0x40)                                    
                                    revert(_460, sub(add(_459, 0x20), _460))
                                }
                            }
                            if not(_433){
                                mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                mstore(0x4, 0x32)
                                revert(0x0, 0x24)
                            }
                        }
                        if not(_431){
                            let _461 := mload(0x40)                            
                            mstore(_461, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                            let _462 := add(0x4, _461)                            
                            let _463 := add(_462, 0x20)                            
                            mstore(add(_462, 0x0), sub(_463, _462))
                            mstore(_463, 0x11)
                            let _464 := add(_463, 0x20)                            
                            mstore(add(_464, 0x0), 0x747820646f6573206e6f74206578697374000000000000000000000000000000)
                            let _465 := mload(0x40)                            
                            revert(_465, sub(add(_464, 0x20), _465))
                        }
                    }
                    if not(_429){
                        let _466 := mload(0x40)                        
                        mstore(_466, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                        let _467 := add(0x4, _466)                        
                        let _468 := add(_467, 0x20)                        
                        mstore(add(_467, 0x0), sub(_468, _467))
                        mstore(_468, 0x9)
                        let _469 := add(_468, 0x20)                        
                        mstore(add(_469, 0x0), 0x6e6f74206f776e65720000000000000000000000000000000000000000000000)
                        let _470 := mload(0x40)                        
                        revert(_470, sub(add(_469, 0x20), _470))
                    }
                }
            function func_submitTransaction() {
                    let _471 := 0x0                    
                    let _472 := 0x0                    
                    let _473 := 0x0                    
                    let _474 := iszero(callvalue())                    
                    require(not(_474))
                    let _475 := add(0x4, sub(calldatasize(), 0x4))                    
                    let _476 := iszero(slt(sub(_475, 0x4), 0x60))                    
                    require(not(_476))
                    let _477 := calldataload(add(0x4, 0x0))                    
                    let _478 := eq(_477, and(_477, 0xffffffffffffffffffffffffffffffffffffffff))                    
                    require(not(_478))
                    let _479 := calldataload(add(0x4, 0x20))                    
                    let _480 := eq(_479, _479)                    
                    require(not(_480))
                    let _481 := calldataload(add(0x4, 0x40))                    
                    let _482 := iszero(gt(_481, 0xffffffffffffffff))                    
                    require(not(_482))
                    let _483 := add(0x4, _481)                    
                    let _484 := slt(add(_483, 0x1f), _475)                    
                    require(not(_484))
                    let _485 := calldataload(_483)                    
                    let _486 := add(_483, 0x20)                    
                    let _487 := iszero(gt(_485, 0xffffffffffffffff))                    
                    if _487{
                        let _488 := mload(0x40)                        
                        let _489 := add(_488, and(add(add(and(add(_485, 0x1f), not(0x1f)), 0x20), 0x1f), not(0x1f)))                        
                        let _490 := iszero(or(gt(_489, 0xffffffffffffffff), lt(_489, _488)))                        
                        if _490{
                            mstore(0x40, _489)
                            mstore(_488, _485)
                            let _491 := add(_488, 0x20)                            
                            let _492 := iszero(gt(add(_486, _485), _475))                            
                            require(not(_492))
                            calldatacopy(_491, _486, _485)
                            mstore(add(_491, _485), 0x0)
                            mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, caller())))
                            let _493 := add(0x20, 0x0)                            
                            mstore(_493, 0x1)
                            let _494 := sload(keccak256(0x0, add(0x20, _493)))                            
                            let _495 := and(0xff, div(_494, exp(0x100, 0x0)))                            
                            if _495{
                                let _496 := sload(0x8)                                
                                let _497 := mload(0x40)                                
                                mstore(0x40, add(0xa0, _497))
                                mstore(_497, and(0xffffffffffffffffffffffffffffffffffffffff, _477))
                                let _498 := add(0x20, _497)                                
                                mstore(_498, _479)
                                let _499 := add(0x20, _498)                                
                                mstore(_499, _488)
                                let _500 := add(0x20, _499)                                
                                mstore(_500, iszero(iszero(0x0)))
                                mstore(add(0x20, _500), 0x0)
                                let _501 := sload(0x8)                                
                                let _502 := add(_501, 0x1)                                
                                sstore(0x8, _502)
                                mstore(0x0, 0x8)
                                let _503 := add(mul(0x5, sub(_502, 0x1)), keccak256(0x0, 0x20))                                
                                let _504 := mload(add(_497, 0x0))                                
                                let _505 := add(0x0, _503)                                
                                let _506 := exp(0x100, 0x0)                                
                                let _507 := sload(_505)                                
                                sstore(_505, or(mul(and(0xffffffffffffffffffffffffffffffffffffffff, _504), _506), and(not(mul(0xffffffffffffffffffffffffffffffffffffffff, _506)), _507)))
                                let _508 := mload(add(_497, 0x20))                                
                                sstore(add(0x1, _503), _508)
                                let _509 := mload(add(_497, 0x40))                                
                                let _510 := add(0x2, _503)                                
                                let _511 := mload(_509)                                
                                let _512 := iszero(gt(_511, 0xffffffffffffffff))                                
                                if _512{
                                    let _513 := sload(_510)                                    
                                    let _514 := func_0x243d(_513, 0x27d6)                                    
                                    let _515 := iszero(gt(_514, 0x1f))                                    
                                    if not(_515){
                                        mstore(0x0, _510)
                                        let _516 := keccak256(0x0, 0x20)                                        
                                        let _517 := _516                                        
                                        _517 := add(_516, div(add(_511, 0x1f), 0x20))                                        
                                        let _518 := iszero(lt(_511, 0x20))                                        
                                        let _519 := add(_516, div(add(_514, 0x1f), 0x20))                                        
                                        for {
                                            let _521 := _473                                            
                                            let _520 := lt(_521, _519)                                            
                                            let _522 := _473                                            
                                            let _523 := 0x1                                            
                                            _473 := add(_522, _523)                                            
                                        }
                                        not(iszero(_520))                                        
                                        { }
                                        {
                                            _521 := _473                                            
                                            _520 := lt(_521, _519)                                            
                                            let _524 := not(iszero(_520))                                            
                                            let _525 := _473                                            
                                            let _526 := sload(_525)                                            
                                            let _527 := mul(0x0, 0x8)                                            
                                            let _528 := shl(_527, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)                                            
                                            sstore(_525, or(and(_526, not(_528)), and(shl(_527, 0x0), _528)))
                                            _522 := _473                                            
                                            _523 := 0x1                                            
                                            _473 := add(_522, _523)                                            
                                            _521 := _473                                            
                                            _525 := _473                                            
                                            _522 := _473                                            
                                        }
                                    }
                                    let _529 := 0x20                                    
                                    let _530 := 0x20                                    
                                    let _531 := gt(_511, 0x1f)                                    
                                    let _532 := eq(_531, 0x1)                                    
                                    switch _531
                                        case 0x1{
                                            let _533 := and(_511, not(0x1f))                                            
                                            mstore(0x0, _510)
                                            let _534 := keccak256(0x0, 0x20)                                            
                                            let _535 := _534                                            
                                            let _536 := _534                                            
                                            let _537 := 0x0                                            
                                            let _538 := 0x0                                            
                                            for {
                                                let _539 := lt(_537, _533)                                                
                                                let _540 := 0x1                                                
                                                _472 := add(_535, _540)                                                
                                                let _541 := 0x20                                                
                                                _471 := add(_529, _541)                                                
                                                let _542 := 0x20                                                
                                                let _543 := add(_538, _542)                                                
                                            }
                                            not(iszero(_539))                                            
                                            { }
                                            {
                                                _537 := _543                                                
                                                _539 := lt(_537, _533)                                                
                                                let _544 := not(iszero(_539))                                                
                                                _529 := _471                                                
                                                _535 := _472                                                
                                                _538 := _543                                                
                                                let _545 := mload(add(_509, _529))                                                
                                                sstore(_535, _545)
                                                _540 := 0x1                                                
                                                _472 := add(_535, _540)                                                
                                                _535 := _472                                                
                                                _536 := _472                                                
                                                _541 := 0x20                                                
                                                _471 := add(_529, _541)                                                
                                                _529 := _471                                                
                                                _530 := _471                                                
                                                _542 := 0x20                                                
                                                _543 := add(_538, _542)                                                
                                                _537 := _543                                                
                                                _538 := _543                                                
                                            }
                                            let _546 := iszero(lt(_533, _511))                                            
                                            if not(_546){
                                                _530 := _471                                                
                                                let _547 := mload(add(_509, _530))                                                
                                                _536 := _472                                                
                                                sstore(_536, and(_547, not(shr(mul(0x8, and(_511, 0x1f)), not(0x0)))))
                                            }
                                            sstore(_510, add(mul(_511, 0x2), 0x1))
                                        }
                                        default {
                                            let _548 := 0x0                                            
                                            let _549 := iszero(_511)                                            
                                            if not(_549){
                                                let _550 := mload(add(_509, 0x20))                                                
                                                _548 := _550                                                
                                            }
                                            sstore(_510, or(and(_548, not(shr(mul(0x8, _511), not(0x0)))), mul(0x2, _511)))
                                        }
                                    let _551 := mload(add(_497, 0x60))                                    
                                    let _552 := add(0x3, _503)                                    
                                    let _553 := exp(0x100, 0x0)                                    
                                    let _554 := sload(_552)                                    
                                    sstore(_552, or(mul(iszero(iszero(_551)), _553), and(not(mul(0xff, _553)), _554)))
                                    let _555 := mload(add(_497, 0x80))                                    
                                    sstore(add(0x4, _503), _555)
                                    let _556 := mload(0x40)                                    
                                    let _557 := add(_556, 0x40)                                    
                                    mstore(add(_556, 0x0), _479)
                                    mstore(add(_556, 0x20), sub(_557, _556))
                                    let _558 := mload(_488)                                    
                                    mstore(_557, _558)
                                    let _559 := add(_557, 0x20)                                    
                                    let _560 := 0x0                                    
                                    let _561 := 0x0                                    
                                    for {
                                        let _562 := lt(_560, _558)                                        
                                        let _563 := 0x20                                        
                                        let _564 := add(_561, _563)                                        
                                    }
                                    not(iszero(_562))                                    
                                    { }
                                    {
                                        _560 := _564                                        
                                        _562 := lt(_560, _558)                                        
                                        let _565 := not(iszero(_562))                                        
                                        _561 := _564                                        
                                        let _566 := mload(add(add(_488, 0x20), _561))                                        
                                        mstore(add(_559, _561), _566)
                                        _563 := 0x20                                        
                                        _564 := add(_561, _563)                                        
                                        _560 := _564                                        
                                        _561 := _564                                        
                                    }
                                    mstore(add(_559, _558), 0x0)
                                    let _567 := mload(0x40)                                    
                                    log4(_567, sub(add(_559, and(add(_558, 0x1f), not(0x1f))), _567), 0xd5a05bf70715ad82a09a756320284a1b54c9ff74cd0f8cce6219e79b563fe59d, and(0xffffffffffffffffffffffffffffffffffffffff, caller()), _496, and(0xffffffffffffffffffffffffffffffffffffffff, _477))
                                    stop()
                                }
                                if not(_512){
                                    mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                    mstore(0x4, 0x41)
                                    revert(0x0, 0x24)
                                }
                            }
                            if not(_495){
                                let _568 := mload(0x40)                                
                                mstore(_568, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                let _569 := add(0x4, _568)                                
                                let _570 := add(_569, 0x20)                                
                                mstore(add(_569, 0x0), sub(_570, _569))
                                mstore(_570, 0x9)
                                let _571 := add(_570, 0x20)                                
                                mstore(add(_571, 0x0), 0x6e6f74206f776e65720000000000000000000000000000000000000000000000)
                                let _572 := mload(0x40)                                
                                revert(_572, sub(add(_571, 0x20), _572))
                            }
                        }
                        if not(_490){
                            mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                            mstore(0x4, 0x41)
                            revert(0x0, 0x24)
                        }
                    }
                    if not(_487){
                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                        mstore(0x4, 0x41)
                        revert(0x0, 0x24)
                    }
                }
            function func_numConfirmationsRequired() {
                    let _573 := iszero(callvalue())                    
                    require(not(_573))
                    let _574 := sload(0x2)                    
                    let _575 := mload(0x40)                    
                    mstore(add(_575, 0x0), _574)
                    let _576 := mload(0x40)                    
                    return(_576, sub(add(_575, 0x20), _576))
                }
            function func_executeTransaction() {
                    let _577 := iszero(callvalue())                    
                    require(not(_577))
                    let _578 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_578))
                    let _579 := calldataload(add(0x4, 0x0))                    
                    let _580 := eq(_579, _579)                    
                    require(not(_580))
                    mstore(0x0, and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, caller())))
                    let _581 := add(0x20, 0x0)                    
                    mstore(_581, 0x1)
                    let _582 := sload(keccak256(0x0, add(0x20, _581)))                    
                    let _583 := and(0xff, div(_582, exp(0x100, 0x0)))                    
                    if _583{
                        let _584 := sload(0x8)                        
                        let _585 := lt(_579, _584)                        
                        if _585{
                            let _586 := sload(0x8)                            
                            let _587 := lt(_579, _586)                            
                            if _587{
                                mstore(0x0, 0x8)
                                let _588 := sload(add(0x3, add(mul(0x5, _579), keccak256(0x0, 0x20))))                                
                                let _589 := iszero(and(0xff, div(_588, exp(0x100, 0x0))))                                
                                if _589{
                                    let _590 := sload(0x8)                                    
                                    let _591 := lt(_579, _590)                                    
                                    if _591{
                                        mstore(0x0, 0x8)
                                        let _592 := add(mul(0x5, _579), keccak256(0x0, 0x20))                                        
                                        let _593 := sload(0x2)                                        
                                        let _594 := sload(add(0x4, _592))                                        
                                        let _595 := iszero(lt(_594, _593))                                        
                                        if _595{
                                            let _596 := add(0x3, _592)                                            
                                            let _597 := exp(0x100, 0x0)                                            
                                            let _598 := sload(_596)                                            
                                            sstore(_596, or(mul(iszero(iszero(0x1)), _597), and(not(mul(0xff, _597)), _598)))
                                            let _599 := sload(add(0x0, _592))                                            
                                            let _600 := sload(add(0x1, _592))                                            
                                            let _601 := mload(0x40)                                            
                                            let _602 := mload(0x40)                                            
                                            let _603 := call(gas(), and(0xffffffffffffffffffffffffffffffffffffffff, and(0xffffffffffffffffffffffffffffffffffffffff, div(_599, exp(0x100, 0x0)))), _600, _602, sub(func_0x2919(add(0x2, _592), _601, 0x29a4), _602), _602, 0x0)                                            
                                            let _604 := returndatasize()                                            
                                            let _605 := eq(_604, 0x0)                                            
                                            switch _604
                                                case 0x0{ }
                                                default {
                                                    let _606 := mload(0x40)                                                    
                                                    mstore(0x40, add(_606, and(add(returndatasize(), 0x3f), not(0x1f))))
                                                    mstore(_606, returndatasize())
                                                    returndatacopy(add(_606, 0x20), 0x0, returndatasize())
                                                }
                                            if _603{
                                                let _607 := mload(0x40)                                                
                                                let _608 := mload(0x40)                                                
                                                log3(_608, sub(_607, _608), 0x5445f318f4f5fcfb66592e68e0cc5822aa15664039bd5f0ffde24c5a8142b1ac, and(0xffffffffffffffffffffffffffffffffffffffff, caller()), _579)
                                                stop()
                                            }
                                            if not(_603){
                                                let _609 := mload(0x40)                                                
                                                mstore(_609, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                                let _610 := add(0x4, _609)                                                
                                                let _611 := add(_610, 0x20)                                                
                                                mstore(add(_610, 0x0), sub(_611, _610))
                                                mstore(_611, 0x9)
                                                let _612 := add(_611, 0x20)                                                
                                                mstore(add(_612, 0x0), 0x7478206661696c65640000000000000000000000000000000000000000000000)
                                                let _613 := mload(0x40)                                                
                                                revert(_613, sub(add(_612, 0x20), _613))
                                            }
                                        }
                                        if not(_595){
                                            let _614 := mload(0x40)                                            
                                            mstore(_614, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                            let _615 := add(0x4, _614)                                            
                                            let _616 := add(_615, 0x20)                                            
                                            mstore(add(_615, 0x0), sub(_616, _615))
                                            mstore(_616, 0x11)
                                            let _617 := add(_616, 0x20)                                            
                                            mstore(add(_617, 0x0), 0x63616e6e6f742065786563757465207478000000000000000000000000000000)
                                            let _618 := mload(0x40)                                            
                                            revert(_618, sub(add(_617, 0x20), _618))
                                        }
                                    }
                                    if not(_591){
                                        mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                        mstore(0x4, 0x32)
                                        revert(0x0, 0x24)
                                    }
                                }
                                if not(_589){
                                    let _619 := mload(0x40)                                    
                                    mstore(_619, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                                    let _620 := add(0x4, _619)                                    
                                    let _621 := add(_620, 0x20)                                    
                                    mstore(add(_620, 0x0), sub(_621, _620))
                                    mstore(_621, 0x13)
                                    let _622 := add(_621, 0x20)                                    
                                    mstore(add(_622, 0x0), 0x747820616c726561647920657865637574656400000000000000000000000000)
                                    let _623 := mload(0x40)                                    
                                    revert(_623, sub(add(_622, 0x20), _623))
                                }
                            }
                            if not(_587){
                                mstore(0x0, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                                mstore(0x4, 0x32)
                                revert(0x0, 0x24)
                            }
                        }
                        if not(_585){
                            let _624 := mload(0x40)                            
                            mstore(_624, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                            let _625 := add(0x4, _624)                            
                            let _626 := add(_625, 0x20)                            
                            mstore(add(_625, 0x0), sub(_626, _625))
                            mstore(_626, 0x11)
                            let _627 := add(_626, 0x20)                            
                            mstore(add(_627, 0x0), 0x747820646f6573206e6f74206578697374000000000000000000000000000000)
                            let _628 := mload(0x40)                            
                            revert(_628, sub(add(_627, 0x20), _628))
                        }
                    }
                    if not(_583){
                        let _629 := mload(0x40)                        
                        mstore(_629, 0x8c379a000000000000000000000000000000000000000000000000000000000)
                        let _630 := add(0x4, _629)                        
                        let _631 := add(_630, 0x20)                        
                        mstore(add(_630, 0x0), sub(_631, _630))
                        mstore(_631, 0x9)
                        let _632 := add(_631, 0x20)                        
                        mstore(add(_632, 0x0), 0x6e6f74206f776e65720000000000000000000000000000000000000000000000)
                        let _633 := mload(0x40)                        
                        revert(_633, sub(add(_632, 0x20), _633))
                    }
                }
            function func_exchangeAmount() {
                    let _634 := iszero(callvalue())                    
                    require(not(_634))
                    let _635 := sload(0x4)                    
                    let _636 := mload(0x40)                    
                    mstore(add(_636, 0x0), _635)
                    let _637 := mload(0x40)                    
                    return(_637, sub(add(_636, 0x20), _637))
                }
            function func_0xf6291e43() {
                    let _638 := iszero(callvalue())                    
                    require(not(_638))
                    let _639 := iszero(slt(sub(add(0x4, sub(calldatasize(), 0x4)), 0x4), 0x20))                    
                    require(not(_639))
                    let _640 := calldataload(add(0x4, 0x0))                    
                    let _641 := eq(_640, _640)                    
                    require(not(_641))
                    sstore(0x5, func_0x20e0(func_0x2210(_640, 0x4, 0x1965), 0x4, 0x196f))
                    let _642 := sload(0x3)                    
                    let _643 := sload(0x5)                    
                    sstore(0x5, func_0x20e0(_643, _642, 0x1988))
                    sstore(0x4, _640)
                    let _644 := sload(0x5)                    
                    let _645 := mload(0x40)                    
                    mstore(add(_645, 0x0), _644)
                    let _646 := mload(0x40)                    
                    return(_646, sub(add(_645, 0x20), _646))
                }
            function func_getFlag() {
                    let _647 := iszero(callvalue())                    
                    require(not(_647))
                    let _648 := func_0x19a0(0x5b7)                    
                    let _649 := mload(0x40)                    
                    let _650 := add(_649, 0x20)                    
                    mstore(add(_649, 0x0), sub(_650, _649))
                    let _651 := mload(_648)                    
                    mstore(_650, _651)
                    let _652 := add(_650, 0x20)                    
                    let _653 := 0x0                    
                    let _654 := 0x0                    
                    for {
                        let _655 := lt(_653, _651)                        
                        let _656 := 0x20                        
                        let _657 := add(_654, _656)                        
                    }
                    not(iszero(_655))                    
                    { }
                    {
                        _653 := _657                        
                        _655 := lt(_653, _651)                        
                        let _658 := not(iszero(_655))                        
                        _654 := _657                        
                        let _659 := mload(add(add(_648, 0x20), _654))                        
                        mstore(add(_652, _654), _659)
                        _656 := 0x20                        
                        _657 := add(_654, _656)                        
                        _653 := _657                        
                        _654 := _657                        
                    }
                    mstore(add(_652, _651), 0x0)
                    let _660 := mload(0x40)                    
                    return(_660, sub(add(_652, and(add(_651, 0x1f), not(0x1f))), _660))
                }
            function func_receive() {
                    let _661 := selfbalance()                    
                    let _662 := mload(0x40)                    
                    mstore(add(_662, 0x0), callvalue())
                    mstore(add(_662, 0x20), _661)
                    let _663 := mload(0x40)                    
                    log2(_663, sub(add(_662, 0x40), _663), 0x90890809c654f11d6e72a28fa60149770a0d11ec6c92319d6ceb2bb0a4ea1a15, and(0xffffffffffffffffffffffffffffffffffffffff, caller()))
                    stop()
                }
            function require(condition) {
                    if iszero(condition){
                        revert(0x0, 0x0)
                    }
                }
        }
    }
}
