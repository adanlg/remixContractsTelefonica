# Palkeoramix decompiler. 

const ethBalance = eth.balance(this.address)

def storage:
  stor0 is uint8 at storage 0
  stor0 is uint128 at storage 0 offset 8
  stor0 is uint128 at storage 0
  stor0 is uint128 at storage 0 offset 96
  stor0 is addr at storage 0 offset 96
  stor1 is uint32 at storage 1
  stor1 is uint128 at storage 1
  stor2 is addr at storage 2
  stor3 is addr at storage 3
  stor4 is mapping of uint8 at storage 4

#
#  Regular functions
#

def setRecipient(address _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == _param1
  if stor3 != caller:
      revert with 0, 'Ownable: caller is not the owner'
  stor2 = _param1

def unknown3d35b7e4(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  if stor3 != caller:
      revert with 0, 'Ownable: caller is not the owner'
  call caller with:
     value _param1 wei
       gas gas_remaining wei
  require ext_call.success

def setManager(address _manager): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _manager == _manager
  if stor3 != caller:
      revert with 0, 'Ownable: caller is not the owner'
  stor4[addr(_manager)] = 1

def removeManager(address _manager): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _manager == _manager
  if stor3 != caller:
      revert with 0, 'Ownable: caller is not the owner'
  stor4[addr(_manager)] = 0

def transferOwnership(address _newOwner): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _newOwner == _newOwner
  if stor3 != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if not _newOwner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
  stor3 = _newOwner

def unknown960427a4(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == addr(_param1)
  if stor3 != caller:
      revert with 0, 'Ownable: caller is not the owner'
  call _param1.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args caller, _param2
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknownede254c3(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == uint8(_param1)
  require _param2 == addr(_param2)
  if Mask(96, 0, stor0.field_0) != 1:
      revert with 0, '0'
  if _param1 == 1:
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args _param2, uint128(stor0.field_96)
  else:
      if _param1 == 2:
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args _param2, uint128(stor0.field_96)
      else:
          require _param1 == 3
          call 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args _param2, uint128(stor0.field_96)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  uint128(stor0.field_96) = 0

def unknown23a69e75(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require cd('cd', 68).length + 36 <= calldata.size
  if Mask(96, 0, stor0.field_0) != 1:
      revert with 0, '0'
  require ('cd', 68).length >=ΓÇ▓ 32
  require ('cd', 68) <= 18446744073709551615
  require cd('cd', 68) + 67 <ΓÇ▓ cd('cd', 68).length + 36
  require cd[(cd('cd', 68) + 36)] <= 18446744073709551615
  require (32 * cd[(cd('cd', 68) + 36)]) + 128 >= 96 and (32 * cd[(cd('cd', 68) + 36)]) + 128 <= 18446744073709551615
  mem[64] = (32 * cd[(cd('cd', 68) + 36)]) + 128
  mem[96] = cd[(cd('cd', 68) + 36)]
  idx = 0
  s = cd('cd', 68) + 68
  t = 128
  while idx < cd[(cd('cd', 68) + 36)]:
      require cd('cd', 68) + cd[s] + 99 <ΓÇ▓ cd('cd', 68).length + 36
      require cd[(cd('cd', 68) + cd[s] + 68)] <= 18446744073709551615
      _13 = mem[64]
      require mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + 68)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + 68)]) + 32
      mem[_13] = cd[(cd('cd', 68) + cd[s] + 68)]
      require ('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 68)] + 100 <= ('cd', 68).length + 36
      mem[_13 + 32 len cd[(cd('cd', 68) + cd[s] + 68)]] = call.data[cd('cd', 68) + cd[s] + 100 len cd[(cd('cd', 68) + cd[s] + 68)]]
      mem[_13 + cd[(cd('cd', 68) + cd[s] + 68)] + 32] = 0
      mem[t] = _13
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _11 = mem[96]
  idx = 0
  while idx < _11:
      require idx < mem[96]
      _19 = mem[(32 * idx) + 128]
      _20 = mem[mem[(32 * idx) + 128] + 20]
      mem[mem[(32 * idx) + 128] + 20] = mem[mem[(32 * idx) + 128]] - 20
      call _20.mem[_19 + 52 len 4] with:
           gas gas_remaining wei
          args mem[_19 + 56 len mem[_19 + 20] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 

def unknownfa461e33(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require cd('cd', 68).length + 36 <= calldata.size
  if Mask(96, 0, stor0.field_0) != 1:
      revert with 0, '0'
  require ('cd', 68).length >=ΓÇ▓ 32
  require ('cd', 68) <= 18446744073709551615
  require cd('cd', 68) + 67 <ΓÇ▓ cd('cd', 68).length + 36
  require cd[(cd('cd', 68) + 36)] <= 18446744073709551615
  require (32 * cd[(cd('cd', 68) + 36)]) + 128 >= 96 and (32 * cd[(cd('cd', 68) + 36)]) + 128 <= 18446744073709551615
  mem[64] = (32 * cd[(cd('cd', 68) + 36)]) + 128
  mem[96] = cd[(cd('cd', 68) + 36)]
  idx = 0
  s = cd('cd', 68) + 68
  t = 128
  while idx < cd[(cd('cd', 68) + 36)]:
      require cd('cd', 68) + cd[s] + 99 <ΓÇ▓ cd('cd', 68).length + 36
      require cd[(cd('cd', 68) + cd[s] + 68)] <= 18446744073709551615
      _13 = mem[64]
      require mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + 68)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd('cd', 68) + cd[s] + 68)]) + 32
      mem[_13] = cd[(cd('cd', 68) + cd[s] + 68)]
      require ('cd', 68) + cd[s] + cd[(cd('cd', 68) + cd[s] + 68)] + 100 <= ('cd', 68).length + 36
      mem[_13 + 32 len cd[(cd('cd', 68) + cd[s] + 68)]] = call.data[cd('cd', 68) + cd[s] + 100 len cd[(cd('cd', 68) + cd[s] + 68)]]
      mem[_13 + cd[(cd('cd', 68) + cd[s] + 68)] + 32] = 0
      mem[t] = _13
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _11 = mem[96]
  idx = 0
  while idx < _11:
      require idx < mem[96]
      _19 = mem[(32 * idx) + 128]
      _20 = mem[mem[(32 * idx) + 128] + 20]
      mem[mem[(32 * idx) + 128] + 20] = mem[mem[(32 * idx) + 128]] - 20
      call _20.mem[_19 + 52 len 4] with:
           gas gas_remaining wei
          args mem[_19 + 56 len mem[_19 + 20] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 

def unknown7d759d11(uint256 _param1, uint256 _param2, array _param3): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == uint8(_param1)
  require _param2 == addr(_param2)
  require _param3 <= 18446744073709551615
  require _param3 + 35 <ΓÇ▓ calldata.size
  require _param3.length <= 18446744073709551615
  require _param3 + _param3.length + 36 <= calldata.size
  if Mask(96, 0, stor0.field_0) != 1:
      revert with 0, '0'
  if uint8(_param1) < 3:
      if uint8(_param1) != 1:
          require ext_code.size(addr(_param2))
          call addr(_param2).0x22c0d9f with:
               gas gas_remaining wei
              args 0, uint32(stor1), 0, addr(this.address), 128, 0
      else:
          mem[260 len _param3.length] = _param3[all]
          mem[_param3.length + 260] = 0
          require ext_code.size(addr(_param2))
          call addr(_param2).0x22c0d9f with:
               gas gas_remaining wei
              args 0, 0, uint128(stor1), addr(this.address), 128, _param3.length, _param3[all], mem[_param3.length + 260 len ceil32(_param3.length) - _param3.length]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
  else:
      if not uint8(_param1):
          call _param2 with:
               gas gas_remaining wei
              args _param3[all]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
      else:
          mem[292 len _param3.length] = _param3[all]
          mem[_param3.length + 292] = 0
          require ext_code.size(addr(_param2))
          if uint8(_param1) == 3:
              call addr(_param2).0x128acb08 with:
                   gas gas_remaining wei
                  args 0, 0, uint8(_param1) == 3, -uint128(stor1), 4295128740, 160, _param3.length, _param3[all], mem[_param3.length + 292 len ceil32(_param3.length) - _param3.length]
          else:
              call addr(_param2).0x128acb08 with:
                   gas gas_remaining wei
                  args 0, 0, uint8(_param1) == 3, -uint128(stor1), 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, _param3.length, _param3[all], mem[_param3.length + 292 len ceil32(_param3.length) - _param3.length]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 64
  uint128(stor1) = 0

def unknown10d1e85c(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require cd('cd', 100).length + 36 <= calldata.size
  if Mask(96, 0, stor0.field_0) != 1:
      revert with 0, '0'
  require ('cd', 100).length >=ΓÇ▓ 32
  require ('cd', 100) <= 18446744073709551615
  require cd('cd', 100) + 67 <ΓÇ▓ cd('cd', 100).length + 36
  require cd[(cd('cd', 100) + 36)] <= 18446744073709551615
  require (32 * cd[(cd('cd', 100) + 36)]) + 128 >= 96 and (32 * cd[(cd('cd', 100) + 36)]) + 128 <= 18446744073709551615
  mem[64] = (32 * cd[(cd('cd', 100) + 36)]) + 128
  mem[96] = cd[(cd('cd', 100) + 36)]
  idx = 0
  s = cd('cd', 100) + 68
  t = 128
  while idx < cd[(cd('cd', 100) + 36)]:
      require cd('cd', 100) + cd[s] + 99 <ΓÇ▓ cd('cd', 100).length + 36
      require cd[(cd('cd', 100) + cd[s] + 68)] <= 18446744073709551615
      _13 = mem[64]
      require mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32
      mem[_13] = cd[(cd('cd', 100) + cd[s] + 68)]
      require ('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 68)] + 100 <= ('cd', 100).length + 36
      mem[_13 + 32 len cd[(cd('cd', 100) + cd[s] + 68)]] = call.data[cd('cd', 100) + cd[s] + 100 len cd[(cd('cd', 100) + cd[s] + 68)]]
      mem[_13 + cd[(cd('cd', 100) + cd[s] + 68)] + 32] = 0
      mem[t] = _13
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _11 = mem[96]
  idx = 0
  while idx < _11:
      require idx < mem[96]
      _19 = mem[(32 * idx) + 128]
      _20 = mem[mem[(32 * idx) + 128] + 20]
      mem[mem[(32 * idx) + 128] + 20] = mem[mem[(32 * idx) + 128]] - 20
      call _20.mem[_19 + 52 len 4] with:
           gas gas_remaining wei
          args mem[_19 + 56 len mem[_19 + 20] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 

def unknown84800812(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require cd('cd', 100).length + 36 <= calldata.size
  if Mask(96, 0, stor0.field_0) != 1:
      revert with 0, '0'
  require ('cd', 100).length >=ΓÇ▓ 32
  require ('cd', 100) <= 18446744073709551615
  require cd('cd', 100) + 67 <ΓÇ▓ cd('cd', 100).length + 36
  require cd[(cd('cd', 100) + 36)] <= 18446744073709551615
  require (32 * cd[(cd('cd', 100) + 36)]) + 128 >= 96 and (32 * cd[(cd('cd', 100) + 36)]) + 128 <= 18446744073709551615
  mem[64] = (32 * cd[(cd('cd', 100) + 36)]) + 128
  mem[96] = cd[(cd('cd', 100) + 36)]
  idx = 0
  s = cd('cd', 100) + 68
  t = 128
  while idx < cd[(cd('cd', 100) + 36)]:
      require cd('cd', 100) + cd[s] + 99 <ΓÇ▓ cd('cd', 100).length + 36
      require cd[(cd('cd', 100) + cd[s] + 68)] <= 18446744073709551615
      _13 = mem[64]
      require mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32
      mem[_13] = cd[(cd('cd', 100) + cd[s] + 68)]
      require ('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 68)] + 100 <= ('cd', 100).length + 36
      mem[_13 + 32 len cd[(cd('cd', 100) + cd[s] + 68)]] = call.data[cd('cd', 100) + cd[s] + 100 len cd[(cd('cd', 100) + cd[s] + 68)]]
      mem[_13 + cd[(cd('cd', 100) + cd[s] + 68)] + 32] = 0
      mem[t] = _13
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _11 = mem[96]
  idx = 0
  while idx < _11:
      require idx < mem[96]
      _19 = mem[(32 * idx) + 128]
      _20 = mem[mem[(32 * idx) + 128] + 20]
      mem[mem[(32 * idx) + 128] + 20] = mem[mem[(32 * idx) + 128]] - 20
      call _20.mem[_19 + 52 len 4] with:
           gas gas_remaining wei
          args mem[_19 + 56 len mem[_19 + 20] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 

def unknownccee33d7(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require cd('cd', 100).length + 36 <= calldata.size
  if Mask(96, 0, stor0.field_0) != 1:
      revert with 0, '0'
  require ('cd', 100).length >=ΓÇ▓ 32
  require ('cd', 100) <= 18446744073709551615
  require cd('cd', 100) + 67 <ΓÇ▓ cd('cd', 100).length + 36
  require cd[(cd('cd', 100) + 36)] <= 18446744073709551615
  require (32 * cd[(cd('cd', 100) + 36)]) + 128 >= 96 and (32 * cd[(cd('cd', 100) + 36)]) + 128 <= 18446744073709551615
  mem[64] = (32 * cd[(cd('cd', 100) + 36)]) + 128
  mem[96] = cd[(cd('cd', 100) + 36)]
  idx = 0
  s = cd('cd', 100) + 68
  t = 128
  while idx < cd[(cd('cd', 100) + 36)]:
      require cd('cd', 100) + cd[s] + 99 <ΓÇ▓ cd('cd', 100).length + 36
      require cd[(cd('cd', 100) + cd[s] + 68)] <= 18446744073709551615
      _15 = mem[64]
      require mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32
      mem[_15] = cd[(cd('cd', 100) + cd[s] + 68)]
      require ('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 68)] + 100 <= ('cd', 100).length + 36
      mem[_15 + 32 len cd[(cd('cd', 100) + cd[s] + 68)]] = call.data[cd('cd', 100) + cd[s] + 100 len cd[(cd('cd', 100) + cd[s] + 68)]]
      mem[_15 + cd[(cd('cd', 100) + cd[s] + 68)] + 32] = 0
      mem[t] = _15
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _13 = mem[96]
  idx = 0
  while idx < _13:
      require idx < mem[96]
      _23 = mem[(32 * idx) + 128]
      _24 = mem[mem[(32 * idx) + 128] + 20]
      mem[mem[(32 * idx) + 128] + 20] = mem[mem[(32 * idx) + 128]] - 20
      call _24.mem[_23 + 52 len 4] with:
           gas gas_remaining wei
          args mem[_23 + 56 len mem[_23 + 20] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 
  return 0

def unknownfffbde3e() payable: 
  require calldata.size - 4 >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      require cds] + 67 <ΓÇ▓ calldata.size
      require cd[(cds] + 36)] <= 18446744073709551615
      _22 = mem[64]
      require mem[64] + ceil32(cd[(cds] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cds] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cds] + 36)]) + 32
      mem[_22] = cd[(cds] + 36)]
      require cds] + cd[(cds] + 36)] + 68 <= calldata.size
      mem[_22 + 32 len cd[(cds] + 36)]] = call.data[cds] + 68 len cd[(cds] + 36)]]
      mem[_22 + cd[(cds] + 36)] + 32] = 0
      mem[t] = _22
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  mem[0] = caller
  mem[32] = 4
  require stor4[caller]
  idx = 0
  s = 96
  s = 0
  while idx < mem[96]:
      require idx < mem[96]
      require idx < mem[(32 * ('cd', 4).length) + 128]
      call mem[(32 * idx) + 128].mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32 len 4] with:
           gas gas_remaining wei
          args mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 36 len mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      s = mem[(32 * idx) + 128]
      continue 

def unknown00000009(uint256 _param1, uint256 _param2, uint256 _param3, array _param4) payable: 
  require calldata.size - 4 >=ΓÇ▓ 128
  require _param1 == uint8(_param1)
  require _param2 == uint32(_param2)
  require _param3 == addr(_param3)
  require _param4 <= 18446744073709551615
  require _param4 + 35 <ΓÇ▓ calldata.size
  require _param4.length <= 18446744073709551615
  require ceil32(_param4.length) + 128 >= 96 and ceil32(_param4.length) + 128 <= 18446744073709551615
  require _param4 + _param4.length + 36 <= calldata.size
  require stor4[caller]
  uint8(stor0.field_0) = 1
  Mask(88, 0, stor0.field_8) = 0
  call _param3 with:
       gas gas_remaining wei
      args _param4[all]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if _param1 == 1:
      Mask(96, 0, stor0.field_0) = 0
      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args stor2, 0, ext_call.return_data[4 len 28]
  else:
      if _param1 == 2:
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
          static call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, 0, ext_call.return_data[4 len 28]
      else:
          require _param1 == 3
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
          static call 0xdac17f958d2ee523a2206206994597c13d831ec7.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, 0, ext_call.return_data[4 len 28]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if 0, ext_call.return_data * uint32(_param2) <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if (0, ext_call.return_data * uint32(_param2) * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
      call block.coinbase with:
         value (0, ext_call.return_data * uint32(_param2) * call.value) - (10000 * block.gasprice * call.value) / 100 wei
           gas gas_remaining wei
  else:
      call block.coinbase with:
         value eth.balance(this.address) wei
           gas gas_remaining wei

def _fallback() payable: # default function
  require calldata.size - 4 >=ΓÇ▓ 192
  require _param1 == bool(_param1)
  require _param2 == uint8(_param2)
  require _param3 == uint32(_param3)
  require _param4 == uint128(_param4)
  require _param5 == addr(_param5)
  require _param6 <= 18446744073709551615
  require _param6 + 35 <ΓÇ▓ calldata.size
  require _param6.length <= 18446744073709551615
  require _param6 + _param6.length + 36 <= calldata.size
  require stor4[caller]
  uint8(stor0.field_0) = 1
  Mask(88, 0, stor0.field_8) = 0
  mem[260 len _param6.length] = _param6[all]
  mem[_param6.length + 260] = 0
  require ext_code.size(addr(_param5))
  if _param1:
      call addr(_param5).0x22c0d9f with:
           gas gas_remaining wei
          args 0, 0, _param4 << 128, addr(this.address), 128, _param6.length, _param6[all], mem[_param6.length + 260 len ceil32(_param6.length) - _param6.length]
  else:
      call addr(_param5).0x22c0d9f with:
           gas gas_remaining wei
          args 0, 0, 0, addr(this.address), 128, _param6.length, _param6[all], mem[_param6.length + 260 len ceil32(_param6.length) - _param6.length]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if _param2 == 1:
      Mask(96, 0, stor0.field_0) = 0
      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args stor2, ext_call.return_data[0]
  else:
      if _param2 == 2:
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
          static call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
      else:
          require _param2 == 3
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
          static call 0xdac17f958d2ee523a2206206994597c13d831ec7.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if ext_call.return_data * uint32(_param3) <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if (ext_call.return_data * uint32(_param3) * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
      call block.coinbase with:
         value (ext_call.return_data * uint32(_param3) * call.value) - (10000 * block.gasprice * call.value) / 100 wei
           gas gas_remaining wei
  else:
      call block.coinbase with:
         value eth.balance(this.address) wei
           gas gas_remaining wei

def account_info_rotate_tine(uint256 _param1) payable: 
  require calldata.size - 4 >=ΓÇ▓ 192
  require _param1 == bool(_param1)
  require cd == uint8(cd)
  require cd == uint32(cd)
  require cd == uint128(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 164).length <= 18446744073709551615
  require cd('cd', 164).length + 36 <= calldata.size
  require stor4[caller]
  uint8(stor0.field_0) = 1
  Mask(88, 0, stor0.field_8) = 0
  mem[292 len ('cd', 164).length] = call.data[cd('cd', 164).length]
  mem[('cd', 164).length + 292] = 0
  require ext_code.size(addr(cd))
  if _param1:
      call addr(cd).0x128acb08 with:
           gas gas_remaining wei
          args 0, 0, bool(_param1), -uint128(cd), 4295128740, 160, ('cd', 164).length, call.data[cd('cd', 164).length], mem[('cd', 164).length + 292 len ceil32(('cd', 164).length) - ('cd', 164).length]
  else:
      call addr(cd).0x128acb08 with:
           gas gas_remaining wei
          args 0, 0, bool(_param1), -uint128(cd), 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, ('cd', 164).length, call.data[cd('cd', 164).length], mem[('cd', 164).length + 292 len ceil32(('cd', 164).length) - ('cd', 164).length]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 64
  if cd == 1:
      Mask(96, 0, stor0.field_0) = 0
      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args stor2, ext_call.return_data[0]
  else:
      if cd == 2:
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
          static call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
      else:
          require cd == 3
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
          static call 0xdac17f958d2ee523a2206206994597c13d831ec7.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if ext_call.return_data * uint32(cd) <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
      call block.coinbase with:
         value (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 wei
           gas gas_remaining wei
  else:
      call block.coinbase with:
         value eth.balance(this.address) wei
           gas gas_remaining wei

def razor_balance(bool _param1) payable: 
  require calldata.size - 4 >=ΓÇ▓ 128
  require _param1 == uint8(_param1)
  require cd == uint32(cd)
  require cd == uint128(cd)
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require cd('cd', 100).length + 36 <= calldata.size
  require stor4[caller]
  uint8(stor0.field_0) = 1
  Mask(88, 0, stor0.field_8) = 0
  if _param1 == 1:
      mem[128] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
      mem[160] = 1
      idx = 0
      s = 388
      t = 128
      while idx < 1:
          mem[s] = mem[t + 12 len 20]
          idx = idx + 1
          s = s + 32
          t = t + 32
          continue 
      mem[516 len ('cd', 100).length] = call.data[cd('cd', 100).length]
      mem[('cd', 100).length + 516] = 0
      require ext_code.size(0xba12222222228d8ba445958a75a0704d566bf2c8)
      call 0xba12222222228d8ba445958a75a0704d566bf2c8.0x5c38449e with:
           gas gas_remaining wei
          args addr(this.address), 128, 192, 256, 1, mem[388], 1, cd << 128, ('cd', 100).length, call.data[cd('cd', 100).length], mem[('cd', 100).length + 516 len ceil32(('cd', 100).length) - ('cd', 100).length]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      Mask(96, 0, stor0.field_0) = 0
      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args stor2, ext_call.return_data[0]
  else:
      if _param1 == 2:
          mem[128] = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48
          mem[160] = 1
          idx = 0
          s = 388
          t = 128
          while idx < 1:
              mem[s] = mem[t + 12 len 20]
              idx = idx + 1
              s = s + 32
              t = t + 32
              continue 
          mem[516 len ('cd', 100).length] = call.data[cd('cd', 100).length]
          mem[('cd', 100).length + 516] = 0
          require ext_code.size(0xba12222222228d8ba445958a75a0704d566bf2c8)
          call 0xba12222222228d8ba445958a75a0704d566bf2c8.0x5c38449e with:
               gas gas_remaining wei
              args addr(this.address), 128, 192, 256, 1, mem[388], 1, cd << 128, ('cd', 100).length, call.data[cd('cd', 100).length], mem[('cd', 100).length + 516 len ceil32(('cd', 100).length) - ('cd', 100).length]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
          static call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
      else:
          require _param1 == 3
          mem[128] = 0xdac17f958d2ee523a2206206994597c13d831ec7
          mem[160] = 1
          idx = 0
          s = 388
          t = 128
          while idx < 1:
              mem[s] = mem[t + 12 len 20]
              idx = idx + 1
              s = s + 32
              t = t + 32
              continue 
          mem[516 len ('cd', 100).length] = call.data[cd('cd', 100).length]
          mem[('cd', 100).length + 516] = 0
          require ext_code.size(0xba12222222228d8ba445958a75a0704d566bf2c8)
          call 0xba12222222228d8ba445958a75a0704d566bf2c8.0x5c38449e with:
               gas gas_remaining wei
              args addr(this.address), 128, 192, 256, 1, mem[388], 1, cd << 128, ('cd', 100).length, call.data[cd('cd', 100).length], mem[('cd', 100).length + 516 len ceil32(('cd', 100).length) - ('cd', 100).length]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
          static call 0xdac17f958d2ee523a2206206994597c13d831ec7.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if ext_call.return_data * uint32(cd) <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
      call block.coinbase with:
         value (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 wei
           gas gas_remaining wei
  else:
      call block.coinbase with:
         value eth.balance(this.address) wei
           gas gas_remaining wei

def unknown00000004() payable: 
  require calldata.size - 4 >=ΓÇ▓ 192
  require cd == uint8(cd)
  require cd == uint8(cd)
  require cd == uint32(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 164).length <= 18446744073709551615
  require cd('cd', 164).length + 36 <= calldata.size
  require stor4[caller]
  require ('cd', 132).length == addr(('cd', 132).length)
  require ('cd', 132) <ΓÇ▓ calldata.size + -cd[132] - 35
  require cd[(cd('cd', 132) + 4)] <= 18446744073709551615
  require cd('cd', 132) + 36 <=ΓÇ▓ calldata.size - cd[(cd('cd', 132) + 4)]
  mem[164 len cd[(cd('cd', 132) + 4)]] = call.data[cd('cd', 132) + 36 len cd[(cd('cd', 132) + 4)]]
  mem[cd[(cd('cd', 132) + 4)] + 164] = 0
  require ext_code.size(addr(('cd', 132).length))
  static call addr(('cd', 132).length).0x5a58420d with:
          gas gas_remaining wei
         args Array(len=cd[(cd('cd', 132) + 4)], data=call.data[cd('cd', 132) + 36 len cd[(cd('cd', 132) + 4)]])
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[16 len 16]
  uint8(stor0.field_0) = 1
  Mask(88, 0, stor0.field_8) = 0
  if uint8(cd) >= 3:
      require ext_code.size(addr(cd))
      if uint8(cd) == 3:
          call addr(cd).0x128acb08 with:
               gas gas_remaining wei
              args addr(this.address), uint8(cd) == 3, -uint128(ext_call.return_data), 4295128740, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
      else:
          call addr(cd).0x128acb08 with:
               gas gas_remaining wei
              args addr(this.address), uint8(cd) == 3, -uint128(ext_call.return_data), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 164).length, data=call.data[cd('cd', 164).length])
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 64
  else:
      mem[ceil32(return_data.size) + 260 len ('cd', 164).length] = call.data[cd('cd', 164).length]
      mem[ceil32(return_data.size) + ('cd', 164).length + 260] = 0
      require ext_code.size(addr(cd))
      if 1 == uint8(cd):
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args 0, ext_call.return_data << 128, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[ceil32(return_data.size) + ('cd', 164).length + 260 len ceil32(('cd', 164).length) - ('cd', 164).length]
      else:
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args ext_call.return_data << 128, 0, addr(this.address), 128, ('cd', 164).length, call.data[cd('cd', 164).length], mem[ceil32(return_data.size) + ('cd', 164).length + 260 len ceil32(('cd', 164).length) - ('cd', 164).length]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
  if cd == 1:
      Mask(96, 0, stor0.field_0) = 0
      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args stor2, ext_call.return_data[0]
  else:
      if cd == 2:
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
          static call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
      else:
          require cd == 3
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
          static call 0xdac17f958d2ee523a2206206994597c13d831ec7.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if ext_call.return_data * uint32(cd) <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
      call block.coinbase with:
         value (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 wei
           gas gas_remaining wei
  else:
      call block.coinbase with:
         value eth.balance(this.address) wei
           gas gas_remaining wei

def unknown00000007() payable: 
  require calldata.size - 4 >=ΓÇ▓ 224
  require cd == uint8(cd)
  require cd == uint8(cd)
  require cd == uint32(cd)
  require cd == uint128(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require calldata.size + -cd >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 196).length <= 18446744073709551615
  require cd('cd', 196).length + 36 <= calldata.size
  require stor4[caller]
  require ('cd', 164).length == addr(('cd', 164).length)
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 35
  require cd[(cd('cd', 164) + 4)] <= 18446744073709551615
  require cd('cd', 164) + 36 <=ΓÇ▓ calldata.size - cd[(cd('cd', 164) + 4)]
  mem[164 len cd[(cd('cd', 164) + 4)]] = call.data[cd('cd', 164) + 36 len cd[(cd('cd', 164) + 4)]]
  mem[cd[(cd('cd', 164) + 4)] + 164] = 0
  require ext_code.size(addr(('cd', 164).length))
  static call addr(('cd', 164).length).0x5a58420d with:
          gas gas_remaining wei
         args Array(len=cd[(cd('cd', 164) + 4)], data=call.data[cd('cd', 164) + 36 len cd[(cd('cd', 164) + 4)]])
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[16 len 16]
  uint8(stor0.field_0) = 1
  Mask(88, 0, stor0.field_8) = 0
  addr(stor0.field_96) = 0
  uint128(stor0.field_96) = ext_call.return_data[16 len 16]
  if uint8(cd) >= 3:
      require ext_code.size(addr(cd))
      if uint8(cd) == 3:
          call addr(cd).0x128acb08 with:
               gas gas_remaining wei
              args addr(this.address), uint8(cd) == 3, -uint128(cd), 4295128740, Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
      else:
          call addr(cd).0x128acb08 with:
               gas gas_remaining wei
              args addr(this.address), uint8(cd) == 3, -uint128(cd), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 64
  else:
      mem[ceil32(return_data.size) + 260 len ('cd', 196).length] = call.data[cd('cd', 196).length]
      mem[ceil32(return_data.size) + ('cd', 196).length + 260] = 0
      require ext_code.size(addr(cd))
      if 1 == uint8(cd):
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args 0, cd << 128, addr(this.address), 128, ('cd', 196).length, call.data[cd('cd', 196).length], mem[ceil32(return_data.size) + ('cd', 196).length + 260 len ceil32(('cd', 196).length) - ('cd', 196).length]
      else:
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args cd << 128, 0, addr(this.address), 128, ('cd', 196).length, call.data[cd('cd', 196).length], mem[ceil32(return_data.size) + ('cd', 196).length + 260 len ceil32(('cd', 196).length) - ('cd', 196).length]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
  if cd == 1:
      Mask(96, 0, stor0.field_0) = 0
      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args stor2, ext_call.return_data[0]
  else:
      if cd == 2:
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
          static call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
      else:
          require cd == 3
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
          static call 0xdac17f958d2ee523a2206206994597c13d831ec7.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if ext_call.return_data * uint32(cd) <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
      call block.coinbase with:
         value (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 wei
           gas gas_remaining wei
  else:
      call block.coinbase with:
         value eth.balance(this.address) wei
           gas gas_remaining wei

def unknownf04f2707(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 128
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  require calldata.size >= cd * ('cd', 68).length) + 36
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require cd('cd', 100).length + 36 <= calldata.size
  if Mask(96, 0, stor0.field_0) != 1:
      revert with 0, '0'
  require ('cd', 100).length >=ΓÇ▓ 32
  require ('cd', 100) <= 18446744073709551615
  require cd('cd', 100) + 67 <ΓÇ▓ cd('cd', 100).length + 36
  require cd[(cd('cd', 100) + 36)] <= 18446744073709551615
  require (32 * cd[(cd('cd', 100) + 36)]) + 224 >= 192 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * cd[(cd('cd', 100) + 36)]) + 224 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * cd[(cd('cd', 100) + 36)]) + 224
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[(cd('cd', 100) + 36)]
  idx = 0
  s = cd('cd', 100) + 68
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
  while idx < cd[(cd('cd', 100) + 36)]:
      require cd('cd', 100) + cd[s] + 99 <ΓÇ▓ cd('cd', 100).length + 36
      require cd[(cd('cd', 100) + cd[s] + 68)] <= 18446744073709551615
      _69 = mem[64]
      require mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cd('cd', 100) + cd[s] + 68)]) + 32
      mem[_69] = cd[(cd('cd', 100) + cd[s] + 68)]
      require ('cd', 100) + cd[s] + cd[(cd('cd', 100) + cd[s] + 68)] + 100 <= ('cd', 100).length + 36
      mem[_69 + 32 len cd[(cd('cd', 100) + cd[s] + 68)]] = call.data[cd('cd', 100) + cd[s] + 100 len cd[(cd('cd', 100) + cd[s] + 68)]]
      mem[_69 + cd[(cd('cd', 100) + cd[s] + 68)] + 32] = 0
      mem[t] = _69
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _67 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
  idx = 0
  while idx < _67:
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
      _81 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
      _82 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + 20]
      mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] + 20] = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]] - 20
      call _82.mem[_81 + 52 len 4] with:
           gas gas_remaining wei
          args mem[_81 + 56 len mem[_81 + 20] - 4]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 
  require 0 < mem[96]
  require 0 < mem[(32 * ('cd', 4).length) + 128]
  call mem[128].transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args 0xba12222222228d8ba445958a75a0704d566bf2c8, mem[(32 * ('cd', 4).length) + 160]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown00000003() payable: 
  require calldata.size - 4 >=ΓÇ▓ 224
  require cd == uint8(cd)
  require cd == uint8(cd)
  require cd == uint32(cd)
  require cd == uint128(cd)
  require cd == addr(cd)
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 164).length <= 18446744073709551615
  require cd * ('cd', 164).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 196).length <= 18446744073709551615
  require cd('cd', 196).length + 36 <= calldata.size
  require stor4[caller]
  require 0 < ('cd', 164).length
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 99
  require cd[(('cd', 164) + cd == addr(cd[(('cd', 164) + cd)
  require 0 < ('cd', 164).length
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 99
  require cd[(('cd', 164) + cd <ΓÇ▓ calldata.size + -('cd', 164) + -cd[164] - 67
  require cd[(('cd', 164) + cd('cd', 164) + cd <= 18446744073709551615
  require ('cd', 164) + cd('cd', 164) + cd <=ΓÇ▓ calldata.size - cd[(('cd', 164) + cd('cd', 164) + cd[164] + 68)] + 36)]
  mem[164 len cd[(('cd', 164) + cd('cd', 164) + cd] = call.data[('cd', 164) + cd('cd', 164) + cd('cd', 164) + cd('cd', 164) + cd[164] + 68)] + 36)]]
  mem[cd[(('cd', 164) + cd('cd', 164) + cd] = 0
  require ext_code.size(addr(cd[(('cd', 164) + cd))
  static call addr(cd[(('cd', 164) + cd).0x5a58420d with:
          gas gas_remaining wei
         args Array(len=cd[(('cd', 164) + cd('cd', 164) + cd, data=call.data[('cd', 164) + cd('cd', 164) + cd('cd', 164) + cd('cd', 164) + cd)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[16 len 16]
  require 1 < ('cd', 164).length
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 99
  require cd[(('cd', 164) + cd == addr(cd[(('cd', 164) + cd)
  require 1 < ('cd', 164).length
  require ('cd', 164) <ΓÇ▓ calldata.size + -cd[164] - 99
  require cd[(('cd', 164) + cd <ΓÇ▓ calldata.size + -('cd', 164) + -cd[164] - 67
  require cd[(('cd', 164) + cd('cd', 164) + cd <= 18446744073709551615
  require ('cd', 164) + cd('cd', 164) + cd <=ΓÇ▓ calldata.size - cd[(('cd', 164) + cd('cd', 164) + cd[164] + 68)] + 36)]
  mem[ceil32(return_data.size) + 164 len cd[(('cd', 164) + cd('cd', 164) + cd] = call.data[('cd', 164) + cd('cd', 164) + cd('cd', 164) + cd('cd', 164) + cd[164] + 68)] + 36)]]
  mem[ceil32(return_data.size) + cd[(('cd', 164) + cd('cd', 164) + cd] = 0
  require ext_code.size(addr(cd[(('cd', 164) + cd))
  static call addr(cd[(('cd', 164) + cd).0x5a58420d with:
          gas gas_remaining wei
         args Array(len=cd[(('cd', 164) + cd('cd', 164) + cd, data=call.data[('cd', 164) + cd('cd', 164) + cd('cd', 164) + cd('cd', 164) + cd)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[16 len 16]
  uint128(stor1) = ext_call.return_data[16 len 16]
  uint8(stor0.field_0) = 1
  Mask(88, 0, stor0.field_8) = 0
  uint128(stor0.field_96) = uint128(ext_call.return_data)
  addr(stor0.field_96) = 0
  if uint8(cd) >= 3:
      require ext_code.size(addr(cd))
      if uint8(cd) == 3:
          call addr(cd).0x128acb08 with:
               gas gas_remaining wei
              args addr(this.address), uint8(cd) == 3, -uint128(cd), 4295128740, Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
      else:
          call addr(cd).0x128acb08 with:
               gas gas_remaining wei
              args addr(this.address), uint8(cd) == 3, -uint128(cd), 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=('cd', 196).length, data=call.data[cd('cd', 196).length])
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 64
  else:
      mem[(2 * ceil32(return_data.size)) + 260 len ('cd', 196).length] = call.data[cd('cd', 196).length]
      mem[(2 * ceil32(return_data.size)) + ('cd', 196).length + 260] = 0
      require ext_code.size(addr(cd))
      if 1 == uint8(cd):
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args 0, cd << 128, addr(this.address), 128, ('cd', 196).length, call.data[cd('cd', 196).length], mem[(2 * ceil32(return_data.size)) + ('cd', 196).length + 260 len ceil32(('cd', 196).length) - ('cd', 196).length]
      else:
          call addr(cd).0x22c0d9f with:
               gas gas_remaining wei
              args cd << 128, 0, addr(this.address), 128, ('cd', 196).length, call.data[cd('cd', 196).length], mem[(2 * ceil32(return_data.size)) + ('cd', 196).length + 260 len ceil32(('cd', 196).length) - ('cd', 196).length]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
  if cd == 1:
      Mask(96, 0, stor0.field_0) = 0
      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
      static call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args this.address
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args stor2, ext_call.return_data[0]
  else:
      if cd == 2:
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)
          static call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
      else:
          require cd == 3
          Mask(96, 0, stor0.field_0) = 0
          require ext_code.size(0xdac17f958d2ee523a2206206994597c13d831ec7)
          static call 0xdac17f958d2ee523a2206206994597c13d831ec7.balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >=ΓÇ▓ 32
          call 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(address to, uint256 tokens) with:
               gas gas_remaining wei
              args stor2, ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  if ext_call.return_data * uint32(cd) <= 10000 * block.gasprice:
      revert with 0, 'earned.sub(gasUser) le zero'
  if (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 <= eth.balance(this.address):
      call block.coinbase with:
         value (ext_call.return_data * uint32(cd) * call.value) - (10000 * block.gasprice * call.value) / 100 wei
           gas gas_remaining wei
  else:
      call block.coinbase with:
         value eth.balance(this.address) wei
           gas gas_remaining wei


