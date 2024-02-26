
def storage:
  stor0 is mapping of uint256 at storage 0

def addToWhitelist(address _account): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _account == _account
  require 0x115d6885bfb84f0baf5c45a200a10d0a5f16ef03 == caller
  stor0[addr(_account)] = 1

def withdrawTo(address _beneficiary, uint256 _amount): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _beneficiary == _beneficiary
  require 0x115d6885bfb84f0baf5c45a200a10d0a5f16ef03 == caller
  call _beneficiary with:
     value _amount wei
       gas 2300 * is_zero(value) wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown5b2e9917(uint256 _param1, uint256 _param2, uint256 _param3): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  require 0x115d6885bfb84f0baf5c45a200a10d0a5f16ef03 == caller
  mem[196 len 96] = transfer(address to, uint256 tokens), addr(_param1) << 64, 0, _param3, mem[196 len 28]
  call addr(_param2).mem[196 len 4] with:
       gas gas_remaining wei
      args mem[200 len 64]
  if not ext_call.success:
      revert with 0, 'Oopsie'

def _fallback() payable: # default function
  if cd == this.address:
      if 0x115d6885bfb84f0baf5c45a200a10d0a5f16ef03 != tx.origin:
      if 164 > !(uint16(('cd', 132)) >> 240):
          revert with 0, 17
      if 164 > !(cd[132] - 2):
          revert with 0, 17
  else:
      if 0x115d6885bfb84f0baf5c45a200a10d0a5f16ef03 != tx.origin:
          if bool(cd) >> 255:
              if 1 > !!cd[4]:
                  revert with 0, 17
          else:
              if 1 > !!cd[36]:
                  revert with 0, 17
      if 132 > !(uint16(('cd', 100)) >> 240):
          revert with 0, 17
      if 132 > !(cd[100] - 2):
          revert with 0, 17
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown96ce0a56(uint256 _param1, uint256 _param2) payable: 
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  require ext_code.size(addr(_param1))
  static call addr(_param1).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_code.size(addr(_param1))
  static call addr(_param1).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args addr(_param2)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  call _param1.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args _param2, ext_call.return_data[0]
  require ext_call.success
  require ext_code.size(addr(_param1))
  static call addr(_param1).balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args addr(_param2)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data > ext_call.return_data[0]
  revert with ext_call.return_data[0], 0

def unknown20376f55() payable: 
  if uint8(cd) >> 248 < 4:
      if calldata.size < 20:
          revert with 0, 17
      if 2 > !(calldata.size - 20):
          revert with 0, 17
      if calldata.size - 18 > 18446744073709551615:
          revert with 0, 65
      if uint8(cd) >> 248:
          if uint8(cd) >> 248 != 1:
              if uint128(cd) >> 128 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                  revert with 0, 17
  else:
      require uint8(cd) >> 248 >= 10
      require uint8(cd) >> 248 < 13
      if uint8(cd) >> 248 == 10:
          if uint128(cd) >> 128 <= 0:
              revert with 0, 'No opp'
          require uint8(cd) >> 248 >= 13
          if uint8(cd) >> 248 >= 17:
              require uint8(cd) >> 248 < 19
              if uint128(cd) >> 128 <= eth.balance(this.address):
                  require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                     value uint128(cd) >> 128 wei
                       gas gas_remaining wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
              else:
                  if calldata.size < 20:
                      revert with 0, 17
                  if 2 > !(calldata.size - 20):
                      revert with 0, 17
                  if calldata.size - 18 > 18446744073709551615:
                      revert with 0, 65
          else:
              if calldata.size < 20:
                  revert with 0, 17
              if 21 > !(calldata.size - 20):
                  revert with 0, 17
              if calldata.size + 1 > 18446744073709551615:
                  revert with 0, 65
              if not Mask(256, -240, cd[59]):
              else:
                  if not calldata.size + 1:
              if uint8(cd) >> 248 == 13:
                  require ext_code.size(uint64(cd))
                  static call uint64(cd).getReserves() with:
                          gas gas_remaining wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 96
                  require ext_call.return_data == ext_call.return_data[18 len 14]
                  require ext_call.return_data == ext_call.return_data[50 len 14]
                  require ext_call.return_data == ext_call.return_data[92 len 4]
                  if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                      revert with 0, 17
                  if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                      revert with 0, 17
                  if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                      revert with 0, 17
              else:
                  if 14 == uint8(cd) >> 248:
                      require ext_code.size(uint64(cd))
                      static call uint64(cd).getReserves() with:
                              gas gas_remaining wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >=ΓÇ▓ 96
                      require ext_call.return_data == ext_call.return_data[18 len 14]
                      require ext_call.return_data == ext_call.return_data[50 len 14]
                      require ext_call.return_data == ext_call.return_data[92 len 4]
                      if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                          revert with 0, 17
                      if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                          revert with 0, 17
                      if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                          revert with 0, 17
      else:
          if 11 == uint8(cd) >> 248:
              require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 20)]) >> 96)
              if uint8(cd[((uint16(cd) >> 240) + 18)]) >> 248 >= 15:
                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 20)]) >> 96.0x3850c7bd with:
                          gas gas_remaining wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 224
                  require ext_call.return_data == ext_call.return_data[12 len 20]
                  require ext_call.return_data == ('signextend', 2, ('ext_call.return_data', 32, 32))
                  require ext_call.return_data == ext_call.return_data[94 len 2]
                  require ext_call.return_data == ext_call.return_data[126 len 2]
                  require ext_call.return_data == ext_call.return_data[158 len 2]
                  require ext_call.return_data == ext_call.return_data[191 len 1]
                  require ext_call.return_data == bool(ext_call.return_data[192])
                  if uint8(cd[((uint16(cd) >> 240) + 18)]) >> 248 % 2 != 1:
                      if ext_call.return_data < 0x100000000000000000000000000000000:
                          if ext_call.return_data and ext_call.return_data > -1 / ext_call.return_data[12 len 20]:
                              revert with 0, 17
                      else:
                          if Mask(112, 48, ext_call.return_data and ext_call.return_data > -1 / ext_call.return_data[12 len 14]:
                              revert with 0, 17
                  else:
                      if not ext_call.return_data[12 len 20]:
                          revert with 0, 18
                      if 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data < 0x100000000000000000000000000000000:
                          if 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data and 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data > -1 / 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data[12 len 20]:
                              revert with 0, 17
              else:
                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 20)]) >> 96.getReserves() with:
                          gas gas_remaining wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 96
                  require ext_call.return_data == ext_call.return_data[18 len 14]
                  require ext_call.return_data == ext_call.return_data[50 len 14]
                  require ext_call.return_data == ext_call.return_data[92 len 4]
                  if uint8(cd[((uint16(cd) >> 240) + 18)]) >> 248 % 2 != 1:
                      if ext_call.return_data and 0x1000000000000000000000000 > -1 / ext_call.return_data[50 len 14]:
                          revert with 0, 17
                      if not ext_call.return_data[18 len 14]:
                          revert with 0, 18
                      if cd < cd[73]:
                          revert with 0, 17
                      if not mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)):
                          if (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) / 1000 > !cd[73]:
                              revert with 0, 17
                      else:
                          require 1000 > mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240))
                          if 0xac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d5 * (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) - mulmod(cduint16(cd) >> 240, 1000) / 8 or mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) - (mulmod(cduint16(cd) >> 240, 1000) > (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) << 253 > !cd[73]:
                              revert with 0, 17
                  else:
                      if ext_call.return_data and 0x1000000000000000000000000 > -1 / ext_call.return_data[18 len 14]:
                          revert with 0, 17
                      if not ext_call.return_data[50 len 14]:
                          revert with 0, 18
                      if cd < cd[73]:
                          revert with 0, 17
                      if mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)):
                          require 1000 > mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240))
                          if 0xac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d5 * (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) - mulmod(cduint16(cd) >> 240, 1000) / 8 or mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) - (mulmod(cduint16(cd) >> 240, 1000) > (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) << 253 > !cd[73]:
                              revert with 0, 17
          else:
              if 0x6d2e57c8c3992bf0dddbd87dd55e18cb521a8167 == uint64(cd):
                  delegate (addr(cd) >> 96).0x33f89b0e with:
                       gas gas_remaining wei
                      args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                  require delegate.return_code
                  if delegate.return_data <= 0:
                      revert with 0, 'No opp'
                  require uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 >= 13
                  if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 >= 17:
                      require uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 < 19
                      if delegate.return_data <= eth.balance(this.address):
                          require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                             value delegate.return_datawei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if calldata.size < 20:
                              revert with 0, 17
                          if 2 > !(calldata.size - 20):
                              revert with 0, 17
                          if calldata.size - 18 > 18446744073709551615:
                              revert with 0, 65
                  else:
                      if calldata.size < 20:
                          revert with 0, 17
                      if 21 > !(calldata.size - 20):
                          revert with 0, 17
                      if calldata.size + 1 > 18446744073709551615:
                          revert with 0, 65
                      if not Mask(256, -240, cd[((uint16(cd) >> 240) + 81)]):
                          if not calldata.size + 1:
                              if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 == 13:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
                                  if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                      revert with 0, 17
                              else:
                                  if 14 == uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                      if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                          revert with 0, 17
                          else:
                              if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 == 13:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
                              else:
                                  if 14 == uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                      else:
                          if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 == 13:
                              require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                              static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                      gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >=ΓÇ▓ 96
                              require ext_call.return_data == ext_call.return_data[18 len 14]
                              require ext_call.return_data == ext_call.return_data[50 len 14]
                              require ext_call.return_data == ext_call.return_data[92 len 4]
                              if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                  revert with 0, 17
                          else:
                              if 14 == uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
              else:
                  if 0xdf19ef96367ed704433f21690ea6077bdf6ee5f6 == uint64(cd):
                      delegate (addr(cd) >> 96).0x33f89b0e with:
                           gas gas_remaining wei
                          args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                      require delegate.return_code
                      if delegate.return_data <= 0:
                          revert with 0, 'No opp'
                      require uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 >= 13
                      if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 >= 17:
                          require uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 < 19
                          if delegate.return_data <= eth.balance(this.address):
                              require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                                 value delegate.return_datawei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if calldata.size < 20:
                                  revert with 0, 17
                              if 2 > !(calldata.size - 20):
                                  revert with 0, 17
                              if calldata.size - 18 > 18446744073709551615:
                                  revert with 0, 65
                      else:
                          if calldata.size < 20:
                              revert with 0, 17
                          if 21 > !(calldata.size - 20):
                              revert with 0, 17
                          if calldata.size + 1 > 18446744073709551615:
                              revert with 0, 65
                          if not Mask(256, -240, cd[((uint16(cd) >> 240) + 81)]):
                          else:
                              if not calldata.size + 1:
                          if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 == 13:
                              require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                              static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                      gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >=ΓÇ▓ 96
                              require ext_call.return_data == ext_call.return_data[18 len 14]
                              require ext_call.return_data == ext_call.return_data[50 len 14]
                              require ext_call.return_data == ext_call.return_data[92 len 4]
                              if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                  revert with 0, 17
                          else:
                              if 14 == uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
                  else:
                      if uint64(cd) != 0xad8b387a86b07316c6996aaf8e990a2a321d2653:
                          if not stor0[cd << 192]:
                              revert with 0, 'No hax'
                      delegate (addr(cd) >> 96).0x33f89b0e with:
                           gas gas_remaining wei
                          args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                      require delegate.return_code
                      if delegate.return_data <= 0:
                          revert with 0, 'No opp'
                      require uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 >= 13
                      if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 >= 17:
                          require uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 < 19
                          if delegate.return_data <= eth.balance(this.address):
                              require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                                 value delegate.return_datawei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if calldata.size < 20:
                                  revert with 0, 17
                              if 2 > !(calldata.size - 20):
                                  revert with 0, 17
                              if calldata.size - 18 > 18446744073709551615:
                                  revert with 0, 65
                      else:
                          if calldata.size < 20:
                              revert with 0, 17
                          if 21 > !(calldata.size - 20):
                              revert with 0, 17
                          if calldata.size + 1 > 18446744073709551615:
                              revert with 0, 65
                          if Mask(256, -240, cd[((uint16(cd) >> 240) + 81)]):
                              if not calldata.size + 1:
                                  if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
                              else:
                                  if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                          else:
                              if not calldata.size + 1:
                              if uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248 == 13:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
                              else:
                                  if 14 == uint8(cd[((uint16(cd) >> 240) + 59)]) >> 248:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 61)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown9481ab4b() payable: 
  if 6 > !(uint16(cd) >> 240):
      revert with 0, 17
  if (uint16(cd) >> 240) + 6 == calldata.size:
      if uint8(cd) >> 248 < 4:
          if calldata.size < 6:
              revert with 0, 17
          if 2 > !(calldata.size - 6):
              revert with 0, 17
          if calldata.size - 4 > 18446744073709551615:
              revert with 0, 65
          if uint8(cd) >> 248:
              if uint8(cd) >> 248 != 1:
                  if uint128(cd) >> 128 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                      revert with 0, 17
      else:
          require uint8(cd) >> 248 >= 10
          require uint8(cd) >> 248 < 13
          if uint8(cd) >> 248 == 10:
              if uint128(cd) >> 128 <= 0:
                  revert with 0, 'No opp'
              require uint8(cd) >> 248 >= 13
              if uint8(cd) >> 248 >= 17:
                  require uint8(cd) >> 248 < 19
                  if uint128(cd) >> 128 <= eth.balance(this.address):
                      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                         value uint128(cd) >> 128 wei
                           gas gas_remaining wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                  else:
                      if calldata.size < 6:
                          revert with 0, 17
                      if 2 > !(calldata.size - 6):
                          revert with 0, 17
                      if calldata.size - 4 > 18446744073709551615:
                          revert with 0, 65
              else:
                  if calldata.size < 6:
                      revert with 0, 17
                  if 21 > !(calldata.size - 6):
                      revert with 0, 17
                  if calldata.size + 15 > 18446744073709551615:
                      revert with 0, 65
                  if not Mask(256, -240, cd[45]):
                  else:
                      if not calldata.size + 15:
                  if uint8(cd) >> 248 == 13:
                      require ext_code.size(uint64(cd))
                      static call uint64(cd).getReserves() with:
                              gas gas_remaining wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >=ΓÇ▓ 96
                      require ext_call.return_data == ext_call.return_data[18 len 14]
                      require ext_call.return_data == ext_call.return_data[50 len 14]
                      require ext_call.return_data == ext_call.return_data[92 len 4]
                      if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                          revert with 0, 17
                      if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                          revert with 0, 17
                      if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                          revert with 0, 17
                  else:
                      if 14 == uint8(cd) >> 248:
                          require ext_code.size(uint64(cd))
                          static call uint64(cd).getReserves() with:
                                  gas gas_remaining wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >=ΓÇ▓ 96
                          require ext_call.return_data == ext_call.return_data[18 len 14]
                          require ext_call.return_data == ext_call.return_data[50 len 14]
                          require ext_call.return_data == ext_call.return_data[92 len 4]
                          if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                              revert with 0, 17
                          if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                              revert with 0, 17
                          if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                              revert with 0, 17
          else:
              if 11 == uint8(cd) >> 248:
                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 6)]) >> 96)
                  if uint8(cd[((uint16(cd) >> 240) + 4)]) >> 248 >= 15:
                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 6)]) >> 96.0x3850c7bd with:
                              gas gas_remaining wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >=ΓÇ▓ 224
                      require ext_call.return_data == ext_call.return_data[12 len 20]
                      require ext_call.return_data == ('signextend', 2, ('ext_call.return_data', 32, 32))
                      require ext_call.return_data == ext_call.return_data[94 len 2]
                      require ext_call.return_data == ext_call.return_data[126 len 2]
                      require ext_call.return_data == ext_call.return_data[158 len 2]
                      require ext_call.return_data == ext_call.return_data[191 len 1]
                      require ext_call.return_data == bool(ext_call.return_data[192])
                      if uint8(cd[((uint16(cd) >> 240) + 4)]) >> 248 % 2 != 1:
                          if ext_call.return_data < 0x100000000000000000000000000000000:
                              if ext_call.return_data and ext_call.return_data > -1 / ext_call.return_data[12 len 20]:
                                  revert with 0, 17
                          else:
                              if Mask(112, 48, ext_call.return_data and ext_call.return_data > -1 / ext_call.return_data[12 len 14]:
                                  revert with 0, 17
                      else:
                          if not ext_call.return_data[12 len 20]:
                              revert with 0, 18
                          if 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data < 0x100000000000000000000000000000000:
                              if 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data and 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data > -1 / 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data[12 len 20]:
                                  revert with 0, 17
                  else:
                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 6)]) >> 96.getReserves() with:
                              gas gas_remaining wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >=ΓÇ▓ 96
                      require ext_call.return_data == ext_call.return_data[18 len 14]
                      require ext_call.return_data == ext_call.return_data[50 len 14]
                      require ext_call.return_data == ext_call.return_data[92 len 4]
                      if uint8(cd[((uint16(cd) >> 240) + 4)]) >> 248 % 2 != 1:
                          if ext_call.return_data and 0x1000000000000000000000000 > -1 / ext_call.return_data[50 len 14]:
                              revert with 0, 17
                          if not ext_call.return_data[18 len 14]:
                              revert with 0, 18
                          if cd < cd[59]:
                              revert with 0, 17
                          if not mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)):
                              if (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) / 1000 > !cd[59]:
                                  revert with 0, 17
                          else:
                              require 1000 > mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240))
                              if 0xac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d5 * (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) - mulmod(cduint16(cd) >> 240, 1000) / 8 or mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) - (mulmod(cduint16(cd) >> 240, 1000) > (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) << 253 > !cd[59]:
                                  revert with 0, 17
                      else:
                          if ext_call.return_data and 0x1000000000000000000000000 > -1 / ext_call.return_data[18 len 14]:
                              revert with 0, 17
                          if not ext_call.return_data[50 len 14]:
                              revert with 0, 18
                          if cd < cd[59]:
                              revert with 0, 17
                          if mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)):
                              require 1000 > mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240))
                              if 0xac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d5 * (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) - mulmod(cduint16(cd) >> 240, 1000) / 8 or mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) - (mulmod(cduint16(cd) >> 240, 1000) > (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) << 253 > !cd[59]:
                                  revert with 0, 17
              else:
                  if 0x6d2e57c8c3992bf0dddbd87dd55e18cb521a8167 == uint64(cd):
                      delegate (addr(cd) >> 96).0x33f89b0e with:
                           gas gas_remaining wei
                          args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                      require delegate.return_code
                      if delegate.return_data <= 0:
                          revert with 0, 'No opp'
                      require uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 >= 13
                      if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 >= 17:
                          require uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 < 19
                          if delegate.return_data <= eth.balance(this.address):
                              require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                                 value delegate.return_datawei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if calldata.size < 6:
                                  revert with 0, 17
                              if 2 > !(calldata.size - 6):
                                  revert with 0, 17
                              if calldata.size - 4 > 18446744073709551615:
                                  revert with 0, 65
                      else:
                          if calldata.size < 6:
                              revert with 0, 17
                          if 21 > !(calldata.size - 6):
                              revert with 0, 17
                          if calldata.size + 15 > 18446744073709551615:
                              revert with 0, 65
                          if not Mask(256, -240, cd[((uint16(cd) >> 240) + 67)]):
                              if not calldata.size + 15:
                                  if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                      if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                          revert with 0, 17
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
                                          if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                              revert with 0, 17
                              else:
                                  if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
                          else:
                              if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 == 13:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
                              else:
                                  if 14 == uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                  else:
                      if 0xdf19ef96367ed704433f21690ea6077bdf6ee5f6 == uint64(cd):
                          delegate (addr(cd) >> 96).0x33f89b0e with:
                               gas gas_remaining wei
                              args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                          require delegate.return_code
                          if delegate.return_data <= 0:
                              revert with 0, 'No opp'
                          require uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 >= 13
                          if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 >= 17:
                              require uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 < 19
                              if delegate.return_data <= eth.balance(this.address):
                                  require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                                  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                                     value delegate.return_datawei
                                       gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if calldata.size < 6:
                                      revert with 0, 17
                                  if 2 > !(calldata.size - 6):
                                      revert with 0, 17
                                  if calldata.size - 4 > 18446744073709551615:
                                      revert with 0, 65
                          else:
                              if calldata.size < 6:
                                  revert with 0, 17
                              if 21 > !(calldata.size - 6):
                                  revert with 0, 17
                              if calldata.size + 15 > 18446744073709551615:
                                  revert with 0, 65
                              if not Mask(256, -240, cd[((uint16(cd) >> 240) + 67)]):
                              else:
                                  if not calldata.size + 15:
                              if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 == 13:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
                              else:
                                  if 14 == uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                      else:
                          if uint64(cd) != 0xad8b387a86b07316c6996aaf8e990a2a321d2653:
                              if not stor0[cd << 192]:
                                  revert with 0, 'No hax'
                          delegate (addr(cd) >> 96).0x33f89b0e with:
                               gas gas_remaining wei
                              args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                          require delegate.return_code
                          if delegate.return_data <= 0:
                              revert with 0, 'No opp'
                          require uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 >= 13
                          if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 >= 17:
                              require uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 < 19
                              if delegate.return_data <= eth.balance(this.address):
                                  require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                                  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                                     value delegate.return_datawei
                                       gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if calldata.size < 6:
                                      revert with 0, 17
                                  if 2 > !(calldata.size - 6):
                                      revert with 0, 17
                                  if calldata.size - 4 > 18446744073709551615:
                                      revert with 0, 65
                          else:
                              if calldata.size < 6:
                                  revert with 0, 17
                              if 21 > !(calldata.size - 6):
                                  revert with 0, 17
                              if calldata.size + 15 > 18446744073709551615:
                                  revert with 0, 65
                              if Mask(256, -240, cd[((uint16(cd) >> 240) + 67)]):
                                  if not calldata.size + 15:
                                      if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 == 13:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
                                      else:
                                          if 14 == uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248:
                                              require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                              static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                                      gas gas_remaining wei
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              require return_data.size >=ΓÇ▓ 96
                                              require ext_call.return_data == ext_call.return_data[18 len 14]
                                              require ext_call.return_data == ext_call.return_data[50 len 14]
                                              require ext_call.return_data == ext_call.return_data[92 len 4]
                                              if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                  revert with 0, 17
                                  else:
                                      if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 == 13:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                      else:
                                          if 14 == uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248:
                                              require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                              static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                                      gas gas_remaining wei
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              require return_data.size >=ΓÇ▓ 96
                                              require ext_call.return_data == ext_call.return_data[18 len 14]
                                              require ext_call.return_data == ext_call.return_data[50 len 14]
                                              require ext_call.return_data == ext_call.return_data[92 len 4]
                              else:
                                  if not calldata.size + 15:
                                  if uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 45)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 47)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown051e65ae() payable: 
  if uint8(cd) >> 248 < 4:
      if calldata.size < 4:
          revert with 0, 17
      if 2 > !(calldata.size - 4):
          revert with 0, 17
      if calldata.size - 2 > 18446744073709551615:
          revert with 0, 65
      if uint8(cd) >> 248:
          if uint8(cd) >> 248 != 1:
              if uint128(cd) >> 128 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                  revert with 0, 17
  else:
      require uint8(cd) >> 248 >= 10
      require uint8(cd) >> 248 < 13
      if uint8(cd) >> 248 == 10:
          if uint128(cd) >> 128 <= 0:
              revert with 0, 'No opp'
          require uint8(cd) >> 248 >= 13
          if uint8(cd) >> 248 >= 17:
              require uint8(cd) >> 248 < 19
              if uint128(cd) >> 128 <= eth.balance(this.address):
                  require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                     value uint128(cd) >> 128 wei
                       gas gas_remaining wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
              else:
                  if calldata.size < 4:
                      revert with 0, 17
                  if 2 > !(calldata.size - 4):
                      revert with 0, 17
                  if calldata.size - 2 > 18446744073709551615:
                      revert with 0, 65
          else:
              if calldata.size < 4:
                  revert with 0, 17
              if 21 > !(calldata.size - 4):
                  revert with 0, 17
              if calldata.size + 17 > 18446744073709551615:
                  revert with 0, 65
              if Mask(256, -240, cd[43]):
                  if not calldata.size + 17:
                      if uint8(cd) >> 248 == 13:
                          require ext_code.size(uint64(cd))
                          static call uint64(cd).getReserves() with:
                                  gas gas_remaining wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >=ΓÇ▓ 96
                          require ext_call.return_data == ext_call.return_data[18 len 14]
                          require ext_call.return_data == ext_call.return_data[50 len 14]
                          require ext_call.return_data == ext_call.return_data[92 len 4]
                          if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                              revert with 0, 17
                          if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                              revert with 0, 17
                          if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                              revert with 0, 17
                          if 997 * uint128(cd) >> 128 and ext_call.return_data > -1 / 997 * uint128(cd) >> 128:
                              revert with 0, 17
                      else:
                          if 14 == uint8(cd) >> 248:
                              require ext_code.size(uint64(cd))
                              static call uint64(cd).getReserves() with:
                                      gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >=ΓÇ▓ 96
                              require ext_call.return_data == ext_call.return_data[18 len 14]
                              require ext_call.return_data == ext_call.return_data[50 len 14]
                              require ext_call.return_data == ext_call.return_data[92 len 4]
                              if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                  revert with 0, 17
                              if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                  revert with 0, 17
                              if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                                  revert with 0, 17
                              if 997 * uint128(cd) >> 128 and ext_call.return_data > -1 / 997 * uint128(cd) >> 128:
                                  revert with 0, 17
                  else:
                      if uint8(cd) >> 248 == 13:
                          require ext_code.size(uint64(cd))
                          static call uint64(cd).getReserves() with:
                                  gas gas_remaining wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >=ΓÇ▓ 96
                          require ext_call.return_data == ext_call.return_data[18 len 14]
                          require ext_call.return_data == ext_call.return_data[50 len 14]
                          require ext_call.return_data == ext_call.return_data[92 len 4]
                          if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                              revert with 0, 17
                          if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                              revert with 0, 17
                          if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                              revert with 0, 17
                      else:
                          if 14 == uint8(cd) >> 248:
                              require ext_code.size(uint64(cd))
                              static call uint64(cd).getReserves() with:
                                      gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >=ΓÇ▓ 96
                              require ext_call.return_data == ext_call.return_data[18 len 14]
                              require ext_call.return_data == ext_call.return_data[50 len 14]
                              require ext_call.return_data == ext_call.return_data[92 len 4]
                              if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                  revert with 0, 17
                              if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                  revert with 0, 17
                              if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                                  revert with 0, 17
              else:
                  if not calldata.size + 17:
                  if uint8(cd) >> 248 == 13:
                      require ext_code.size(uint64(cd))
                      static call uint64(cd).getReserves() with:
                              gas gas_remaining wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >=ΓÇ▓ 96
                      require ext_call.return_data == ext_call.return_data[18 len 14]
                      require ext_call.return_data == ext_call.return_data[50 len 14]
                      require ext_call.return_data == ext_call.return_data[92 len 4]
                      if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                          revert with 0, 17
                      if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                          revert with 0, 17
                      if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                          revert with 0, 17
                      if 997 * uint128(cd) >> 128 and ext_call.return_data > -1 / 997 * uint128(cd) >> 128:
                          revert with 0, 17
                  else:
                      if 14 == uint8(cd) >> 248:
                          require ext_code.size(uint64(cd))
                          static call uint64(cd).getReserves() with:
                                  gas gas_remaining wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >=ΓÇ▓ 96
                          require ext_call.return_data == ext_call.return_data[18 len 14]
                          require ext_call.return_data == ext_call.return_data[50 len 14]
                          require ext_call.return_data == ext_call.return_data[92 len 4]
                          if uint128(cd) >> 128 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                              revert with 0, 17
                          if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                              revert with 0, 17
                          if 1000 * ext_call.return_data > !(997 * uint128(cd) >> 128):
                              revert with 0, 17
                          if 997 * uint128(cd) >> 128 and ext_call.return_data > -1 / 997 * uint128(cd) >> 128:
                              revert with 0, 17
      else:
          if 11 == uint8(cd) >> 248:
              require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 4)]) >> 96)
              if uint8(cd[((uint16(cd) >> 240) + 2)]) >> 248 >= 15:
                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 4)]) >> 96.0x3850c7bd with:
                          gas gas_remaining wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 224
                  require ext_call.return_data == ext_call.return_data[12 len 20]
                  require ext_call.return_data == ('signextend', 2, ('ext_call.return_data', 32, 32))
                  require ext_call.return_data == ext_call.return_data[94 len 2]
                  require ext_call.return_data == ext_call.return_data[126 len 2]
                  require ext_call.return_data == ext_call.return_data[158 len 2]
                  require ext_call.return_data == ext_call.return_data[191 len 1]
                  require ext_call.return_data == bool(ext_call.return_data[192])
                  if uint8(cd[((uint16(cd) >> 240) + 2)]) >> 248 % 2 != 1:
                      if ext_call.return_data >= 0x100000000000000000000000000000000:
                          if Mask(112, 48, ext_call.return_data and ext_call.return_data > -1 / ext_call.return_data[12 len 14]:
                              revert with 0, 17
                          if cd < cd[57]:
                              revert with 0, 17
                      else:
                          if ext_call.return_data and ext_call.return_data > -1 / ext_call.return_data[12 len 20]:
                              revert with 0, 17
                  else:
                      if not ext_call.return_data[12 len 20]:
                          revert with 0, 18
                      if 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data >= 0x100000000000000000000000000000000:
                          if Mask(208, 48, 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data and Mask(208, 48, 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data >> 48 > -1 / Mask(208, 48, 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data >> 48:
                              revert with 0, 17
                      else:
                          if 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data and 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data > -1 / 0x1000000000000000000000000000000000000000000000000 / ext_call.return_data[12 len 20]:
                              revert with 0, 17
              else:
                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 4)]) >> 96.getReserves() with:
                          gas gas_remaining wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >=ΓÇ▓ 96
                  require ext_call.return_data == ext_call.return_data[18 len 14]
                  require ext_call.return_data == ext_call.return_data[50 len 14]
                  require ext_call.return_data == ext_call.return_data[92 len 4]
                  if uint8(cd[((uint16(cd) >> 240) + 2)]) >> 248 % 2 != 1:
                      if ext_call.return_data and 0x1000000000000000000000000 > -1 / ext_call.return_data[50 len 14]:
                          revert with 0, 17
                      if not ext_call.return_data[18 len 14]:
                          revert with 0, 18
                      if cd < cd[57]:
                          revert with 0, 17
                      if not mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)):
                          if (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) / 1000 > !cd[57]:
                              revert with 0, 17
                          if Mask(112, 0, ext_call.return_data << 96 / ext_call.return_data >= ((cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) / 1000) + cd[57]:
                      else:
                          require 1000 > mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240))
                          if 0xac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d5 * (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) - mulmod(cduint16(cd) >> 240, 1000) / 8 or mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) - (mulmod(cduint16(cd) >> 240, 1000) > (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) << 253 > !cd[57]:
                              revert with 0, 17
                          if Mask(112, 0, ext_call.return_data << 96 / ext_call.return_data >= (0xac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d5 * (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) - mulmod(cduint16(cd) >> 240, 1000) / 8 or mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) - (mulmod(cduint16(cd) >> 240, 1000) > (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) << 253) + cd[57]:
                  else:
                      if ext_call.return_data and 0x1000000000000000000000000 > -1 / ext_call.return_data[18 len 14]:
                          revert with 0, 17
                      if not ext_call.return_data[50 len 14]:
                          revert with 0, 18
                      if cd < cd[57]:
                          revert with 0, 17
                      if not mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)):
                          if (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) / 1000 > !cd[57]:
                              revert with 0, 17
                      else:
                          require 1000 > mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240))
                          if 0xac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d5 * (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) - mulmod(cduint16(cd) >> 240, 1000) / 8 or mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) - (mulmod(cduint16(cd) >> 240, 1000) > (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) << 253 > !cd[57]:
                              revert with 0, 17
                          if Mask(112, 0, ext_call.return_data << 96 / ext_call.return_data >= (0xac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d5 * (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240) - mulmod(cduint16(cd) >> 240, 1000) / 8 or mulmod(cduint16(cd) >> 240, -1) - (cd * uint16(cd) >> 240) + (cd * uint16(cd) >> 240) - (mulmod(cduint16(cd) >> 240, -1) < (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) - (mulmod(cduint16(cd) >> 240, 1000) > (cd * uint16(cd) >> 240) - (cd * uint16(cd) >> 240)) << 253) + cd[57]:
          else:
              if 0x6d2e57c8c3992bf0dddbd87dd55e18cb521a8167 == uint64(cd):
                  delegate (addr(cd) >> 96).0x33f89b0e with:
                       gas gas_remaining wei
                      args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                  require delegate.return_code
                  if delegate.return_data <= 0:
                      revert with 0, 'No opp'
                  require uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 >= 13
                  if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 >= 17:
                      require uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 < 19
                      if delegate.return_data <= eth.balance(this.address):
                          require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                          call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                             value delegate.return_datawei
                               gas gas_remaining wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                      else:
                          if calldata.size < 4:
                              revert with 0, 17
                          if 2 > !(calldata.size - 4):
                              revert with 0, 17
                          if calldata.size - 2 > 18446744073709551615:
                              revert with 0, 65
                  else:
                      if calldata.size < 4:
                          revert with 0, 17
                      if 21 > !(calldata.size - 4):
                          revert with 0, 17
                      if calldata.size + 17 > 18446744073709551615:
                          revert with 0, 65
                      if not Mask(256, -240, cd[((uint16(cd) >> 240) + 65)]):
                      else:
                          if not calldata.size + 17:
                      if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 == 13:
                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                  gas gas_remaining wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >=ΓÇ▓ 96
                          require ext_call.return_data == ext_call.return_data[18 len 14]
                          require ext_call.return_data == ext_call.return_data[50 len 14]
                          require ext_call.return_data == ext_call.return_data[92 len 4]
                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                              revert with 0, 17
                          if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                              revert with 0, 17
                      else:
                          if 14 == uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248:
                              require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                              static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                      gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >=ΓÇ▓ 96
                              require ext_call.return_data == ext_call.return_data[18 len 14]
                              require ext_call.return_data == ext_call.return_data[50 len 14]
                              require ext_call.return_data == ext_call.return_data[92 len 4]
                              if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                  revert with 0, 17
                              if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                  revert with 0, 17
              else:
                  if 0xdf19ef96367ed704433f21690ea6077bdf6ee5f6 == uint64(cd):
                      delegate (addr(cd) >> 96).0x33f89b0e with:
                           gas gas_remaining wei
                          args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                      require delegate.return_code
                      if delegate.return_data <= 0:
                          revert with 0, 'No opp'
                      require uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 >= 13
                      if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 >= 17:
                          require uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 < 19
                          if delegate.return_data <= eth.balance(this.address):
                              require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                                 value delegate.return_datawei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if calldata.size < 4:
                                  revert with 0, 17
                              if 2 > !(calldata.size - 4):
                                  revert with 0, 17
                              if calldata.size - 2 > 18446744073709551615:
                                  revert with 0, 65
                      else:
                          if calldata.size < 4:
                              revert with 0, 17
                          if 21 > !(calldata.size - 4):
                              revert with 0, 17
                          if calldata.size + 17 > 18446744073709551615:
                              revert with 0, 65
                          if Mask(256, -240, cd[((uint16(cd) >> 240) + 65)]):
                              if not calldata.size + 17:
                                  if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                      if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                          revert with 0, 17
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
                                          if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                              revert with 0, 17
                              else:
                                  if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
                          else:
                              if not calldata.size + 17:
                              if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 == 13:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
                                  if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                      revert with 0, 17
                              else:
                                  if 14 == uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                      if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                          revert with 0, 17
                  else:
                      if uint64(cd) != 0xad8b387a86b07316c6996aaf8e990a2a321d2653:
                          if not stor0[cd << 192]:
                              revert with 0, 'No hax'
                      delegate (addr(cd) >> 96).0x33f89b0e with:
                           gas gas_remaining wei
                          args Mask(256, -128, cd << 128, 64, Mask(256, -240, cd << 240
                      require delegate.return_code
                      if delegate.return_data <= 0:
                          revert with 0, 'No opp'
                      require uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 >= 13
                      if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 >= 17:
                          require uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 < 19
                          if delegate.return_data <= eth.balance(this.address):
                              require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                              call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                                 value delegate.return_datawei
                                   gas gas_remaining wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          else:
                              if calldata.size < 4:
                                  revert with 0, 17
                              if 2 > !(calldata.size - 4):
                                  revert with 0, 17
                              if calldata.size - 2 > 18446744073709551615:
                                  revert with 0, 65
                      else:
                          if calldata.size < 4:
                              revert with 0, 17
                          if 21 > !(calldata.size - 4):
                              revert with 0, 17
                          if calldata.size + 17 > 18446744073709551615:
                              revert with 0, 65
                          if not Mask(256, -240, cd[((uint16(cd) >> 240) + 65)]):
                              if not calldata.size + 17:
                                  if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                      if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                          revert with 0, 17
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
                                          if ext_call.return_data > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                              revert with 0, 17
                              else:
                                  if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 == 13:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
                                  else:
                                      if 14 == uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248:
                                          require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                          static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                                  gas gas_remaining wei
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          require return_data.size >=ΓÇ▓ 96
                                          require ext_call.return_data == ext_call.return_data[18 len 14]
                                          require ext_call.return_data == ext_call.return_data[50 len 14]
                                          require ext_call.return_data == ext_call.return_data[92 len 4]
                                          if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                              revert with 0, 17
                          else:
                              if uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248 == 13:
                                  require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                  static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                          gas gas_remaining wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >=ΓÇ▓ 96
                                  require ext_call.return_data == ext_call.return_data[18 len 14]
                                  require ext_call.return_data == ext_call.return_data[50 len 14]
                                  require ext_call.return_data == ext_call.return_data[92 len 4]
                                  if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                      revert with 0, 17
                              else:
                                  if 14 == uint8(cd[((uint16(cd) >> 240) + 43)]) >> 248:
                                      require ext_code.size(Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96)
                                      static call Mask(64, 96, cd[((uint16(cd) >> 240) + 45)]) >> 96.getReserves() with:
                                              gas gas_remaining wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      require return_data.size >=ΓÇ▓ 96
                                      require ext_call.return_data == ext_call.return_data[18 len 14]
                                      require ext_call.return_data == ext_call.return_data[50 len 14]
                                      require ext_call.return_data == ext_call.return_data[92 len 4]
                                      if delegate.return_data > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                          revert with 0, 17
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknownf04f2707() payable: 
  mem[64] = 96
  require not call.value
  require calldata.size - 4 >=ΓÇ▓ 128
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require cd * ('cd', 4).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require cd * ('cd', 36).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require cd * ('cd', 68).length) + 36 <= calldata.size
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 100).length <= 18446744073709551615
  require cd('cd', 100).length + 36 <= calldata.size
  if ('cd', 100).length < 2:
      revert with 0, 17
  if 356 > !(uint16(('cd', 100).length) >> 240):
      revert with 0, 17
  if 356 > !(('cd', 100).length - 2):
      revert with 0, 17
  if 0 >= ('cd', 36).length:
      revert with 0, 50
  s = 0
  s = ('cd', 36)
  idx = (uint16(('cd', 100).length) >> 240) + 356
  while idx < ('cd', 100).length + 354:
      require uint8(cd[idx]) >> 248 >= 13
      if uint8(cd[idx]) >> 248 >= 17:
          if 17 == uint8(cd[idx]) >> 248:
              if Mask(64, 96, cd[(idx + 2)]) >> 96 != 0x6d2e57c8c3992bf0dddbd87dd55e18cb521a8167:
                  if Mask(64, 96, cd[(idx + 2)]) >> 96 != 0xdf19ef96367ed704433f21690ea6077bdf6ee5f6:
                      if Mask(64, 96, cd[(idx + 2)]) >> 96 != 0xad8b387a86b07316c6996aaf8e990a2a321d2653:
                          mem[0] = Mask(64, 96, cd[(idx + 2)]) >> 96
                          mem[32] = 0
                          if not stor0[Mask(64, 96, cd[(idx + 2)]) << 96]:
                              revert with 0, 'No hax'
              mem[96] = 0xb411666f00000000000000000000000000000000000000000000000000000000
              mem[100] = s
              mem[132] = uint8(cd[(idx + 1)]) >> 248
              if not Mask(256, -240, cd[(idx + 22)]):
                  mem[164] = this.address
                  mem[196] = 128
                  mem[228] = uint16(cd[(idx + 24)]) >> 240
                  mem[260 len uint16(cd[(idx + 24)]) >> 240] = call.data[idx + 26 len uint16(cd[(idx + 24)]) >> 240]
                  delegate (addr(cd[(idx + 2)]) >> 96).0xb411666f with:
                       gas gas_remaining wei
                      args s, Mask(256, -248, cd[(idx + 1)]) << 248, this.address, 128, Mask(256, -240, cd[(idx + 24)]) << 240
              else:
                  mem[164] = addr(cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                  mem[196] = 128
                  mem[228] = uint16(cd[(idx + 24)]) >> 240
                  mem[260 len uint16(cd[(idx + 24)]) >> 240] = call.data[idx + 26 len uint16(cd[(idx + 24)]) >> 240]
                  delegate (addr(cd[(idx + 2)]) >> 96).0xb411666f with:
                       gas gas_remaining wei
                      args s, Mask(256, -248, cd[(idx + 1)]) << 248, Mask(256, -96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, Mask(256, -240, cd[(idx + 24)]) << 240
              mem[(uint16(cd[(idx + 24)]) >> 240) + 260] = delegate.return_data[0]
              require delegate.return_code
              s = uint8(cd[idx]) >> 248
              s = delegate.return_data[0]
              idx = idx + (uint16(cd[(idx + 24)]) >> 240) + 26
              continue 
          if 18 == uint8(cd[idx]) >> 248:
              if Mask(64, 96, cd[(idx + 1)]) >> 96 != 0x6d2e57c8c3992bf0dddbd87dd55e18cb521a8167:
                  if Mask(64, 96, cd[(idx + 1)]) >> 96 != 0xdf19ef96367ed704433f21690ea6077bdf6ee5f6:
                      if Mask(64, 96, cd[(idx + 1)]) >> 96 != 0xad8b387a86b07316c6996aaf8e990a2a321d2653:
                          mem[0] = Mask(64, 96, cd[(idx + 1)]) >> 96
                          mem[32] = 0
                          if not stor0[Mask(64, 96, cd[(idx + 1)]) << 96]:
                              revert with 0, 'No hax'
              mem[96 len uint16(cd[(idx + 21)]) >> 240] = call.data[idx + 23 len uint16(cd[(idx + 21)]) >> 240]
              delegate (addr(cd[(idx + 1)]) >> 96) with:
                 funct call.data[idx + 23 len uint16(cd[(idx + 21)]) >> 240], mem[(uint16(cd[(idx + 21)]) >> 240) + 96 len -(uint16(cd[(idx + 21)]) >> 240) + 4]
                   gas gas_remaining wei
                  args mem[100 len (uint16(cd[(idx + 21)]) >> 240) - 4]
              require delegate.return_code
              s = uint8(cd[idx]) >> 248
              s = s
              idx = (uint16(cd[(idx + 21)]) >> 240) + idx + 23
              continue 
          if uint8(cd[idx]) >> 248 != 19:
              if uint8(cd[idx]) >> 248 != 20:
                  require 21 == uint8(cd[idx]) >> 248
                  if idx > -20:
                      revert with 0, 17
                  if not Mask(256, -240, cd[(idx + 17)]):
                      mem[mem[64] + 4] = this.address
                      mem[mem[64] + 36] = uint128(cd[(idx + 1)]) >> 128
                      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
                           gas gas_remaining wei
                          args addr(this.address), uint128(cd[(idx + 1)]) >> 128
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _735 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      require mem[_735] == bool(mem[_735])
                  else:
                      mem[mem[64] + 4] = Mask(64, 96, cd[((uint16(cd[(idx + 17)]) >> 240) + 356)]) >> 96
                      mem[mem[64] + 36] = uint128(cd[(idx + 1)]) >> 128
                      require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                      call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
                           gas gas_remaining wei
                          args Mask(64, 96, cd[((uint16(cd[(idx + 17)]) >> 240) + 356)]) << 96, uint128(cd[(idx + 1)]) >> 128
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _748 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      require mem[_748] == bool(mem[_748])
                  s = uint8(cd[idx]) >> 248
                  s = s
                  idx = idx + 19
                  continue 
              if idx > -18:
                  revert with 0, 17
              require ext_code.size(caller)
              if not Mask(256, -255, cd[4]):
                  static call caller.0xdfe1681 with:
                          gas gas_remaining wei
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if not Mask(256, -128, cd[(idx + 1)]):
                      _749 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      _767 = mem[_749]
                      require mem[_749] == mem[_749 + 12 len 20]
                      _823 = mem[64]
                      mem[mem[64] + 36] = caller
                      mem[mem[64] + 68] = cd[4]
                      _824 = mem[64]
                      mem[mem[64]] = 68
                      mem[64] = mem[64] + 100
                      mem[_824 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_824 + 36 len 28]
                      _841 = mem[_824]
                      t = 0
                      while t < _841:
                          mem[t + _823 + 100] = mem[t + _824 + 32]
                          t = t + 32
                          continue 
                      if ceil32(_841) <= _841:
                          call addr(_767).mem[mem[64] len 4] with:
                               gas gas_remaining wei
                              args mem[mem[64] + 4 len _841 + _823 + -mem[64] + 96]
                          if return_data.size:
                              _1405 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_1405] = return_data.size
                              mem[_1405 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      else:
                          mem[_841 + _823 + 100] = 0
                          call addr(_767).mem[mem[64] len 4] with:
                               gas gas_remaining wei
                              args mem[mem[64] + 4 len _841 + _823 + -mem[64] + 96]
                          if return_data.size:
                              _1406 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_1406] = return_data.size
                              mem[_1406 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  else:
                      _761 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      _770 = mem[_761]
                      require mem[_761] == mem[_761 + 12 len 20]
                      _842 = mem[64]
                      mem[mem[64] + 36] = caller
                      mem[mem[64] + 68] = uint128(cd[(idx + 1)]) >> 128
                      _843 = mem[64]
                      mem[mem[64]] = 68
                      mem[64] = mem[64] + 100
                      mem[_843 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_843 + 36 len 28]
                      _874 = mem[_843]
                      t = 0
                      while t < _874:
                          mem[t + _842 + 100] = mem[t + _843 + 32]
                          t = t + 32
                          continue 
                      if ceil32(_874) <= _874:
                          call addr(_770).mem[mem[64] len 4] with:
                               gas gas_remaining wei
                              args mem[mem[64] + 4 len _874 + _842 + -mem[64] + 96]
                          if return_data.size:
                              _1407 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_1407] = return_data.size
                              mem[_1407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      else:
                          mem[_874 + _842 + 100] = 0
                          call addr(_770).mem[mem[64] len 4] with:
                               gas gas_remaining wei
                              args mem[mem[64] + 4 len _874 + _842 + -mem[64] + 96]
                          if return_data.size:
                              _1408 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_1408] = return_data.size
                              mem[_1408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              else:
                  static call caller.token1() with:
                          gas gas_remaining wei
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  if not Mask(256, -128, cd[(idx + 1)]):
                      _762 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      _771 = mem[_762]
                      require mem[_762] == mem[_762 + 12 len 20]
                      _846 = mem[64]
                      mem[mem[64] + 36] = caller
                      mem[mem[64] + 68] = cd[36]
                      _847 = mem[64]
                      mem[mem[64]] = 68
                      mem[64] = mem[64] + 100
                      mem[_847 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_847 + 36 len 28]
                      _875 = mem[_847]
                      t = 0
                      while t < _875:
                          mem[t + _846 + 100] = mem[t + _847 + 32]
                          t = t + 32
                          continue 
                      if ceil32(_875) <= _875:
                          call addr(_771).mem[mem[64] len 4] with:
                               gas gas_remaining wei
                              args mem[mem[64] + 4 len _875 + _846 + -mem[64] + 96]
                          if return_data.size:
                              _1409 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_1409] = return_data.size
                              mem[_1409 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      else:
                          mem[_875 + _846 + 100] = 0
                          call addr(_771).mem[mem[64] len 4] with:
                               gas gas_remaining wei
                              args mem[mem[64] + 4 len _875 + _846 + -mem[64] + 96]
                          if return_data.size:
                              _1410 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_1410] = return_data.size
                              mem[_1410 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  else:
                      _768 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      _781 = mem[_768]
                      require mem[_768] == mem[_768 + 12 len 20]
                      _876 = mem[64]
                      mem[mem[64] + 36] = caller
                      mem[mem[64] + 68] = uint128(cd[(idx + 1)]) >> 128
                      _877 = mem[64]
                      mem[mem[64]] = 68
                      mem[64] = mem[64] + 100
                      mem[_877 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_877 + 36 len 28]
                      _892 = mem[_877]
                      t = 0
                      while t < _892:
                          mem[t + _876 + 100] = mem[t + _877 + 32]
                          t = t + 32
                          continue 
                      if ceil32(_892) <= _892:
                          call addr(_781).mem[mem[64] len 4] with:
                               gas gas_remaining wei
                              args mem[mem[64] + 4 len _892 + _876 + -mem[64] + 96]
                          if return_data.size:
                              _1411 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_1411] = return_data.size
                              mem[_1411 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                      else:
                          mem[_892 + _876 + 100] = 0
                          call addr(_781).mem[mem[64] len 4] with:
                               gas gas_remaining wei
                              args mem[mem[64] + 4 len _892 + _876 + -mem[64] + 96]
                          if return_data.size:
                              _1412 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_1412] = return_data.size
                              mem[_1412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with 0, 'Oopsie'
              s = uint8(cd[idx]) >> 248
              s = s
              idx = idx + 17
              continue 
          require Mask(256, -240, cd[(idx + 1)])
          require uint8(cd[((uint16(cd[(idx + 1)]) >> 240) + 354)]) >> 248 < 17
          require uint8(cd[((uint16(cd[(idx + 1)]) >> 240) + 354)]) >> 248 > 12
          if idx > -4:
              revert with 0, 17
          require ext_code.size(Mask(64, 96, cd[((uint16(cd[(idx + 1)]) >> 240) + 356)]) >> 96)
          if uint8(cd[((uint16(cd[(idx + 1)]) >> 240) + 354)]) >> 248 % 2 != 1:
              static call Mask(64, 96, cd[((uint16(cd[(idx + 1)]) >> 240) + 356)]) >> 96.0xdfe1681 with:
                      gas gas_remaining wei
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _795 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _815 = mem[_795]
              require mem[_795] == mem[_795 + 12 len 20]
              if not Mask(256, -248, cd[((uint16(cd[(idx + 1)]) >> 240) + 355)]):
                  _929 = mem[64]
                  mem[mem[64] + 36] = Mask(64, 96, cd[((uint16(cd[(idx + 1)]) >> 240) + 356)]) >> 96
                  mem[mem[64] + 68] = s
                  _930 = mem[64]
                  mem[mem[64]] = 68
                  mem[64] = mem[64] + 100
                  mem[_930 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_930 + 36 len 28]
                  _949 = mem[_930]
                  t = 0
                  while t < _949:
                      mem[t + _929 + 100] = mem[t + _930 + 32]
                      t = t + 32
                      continue 
                  if ceil32(_949) <= _949:
                      call addr(_815).mem[mem[64] len 4] with:
                           gas gas_remaining wei
                          args mem[mem[64] + 4 len _949 + _929 + -mem[64] + 96]
                      if return_data.size:
                          _1413 = mem[64]
                          mem[64] = mem[64] + ceil32(return_data.size) + 1
                          mem[_1413] = return_data.size
                          mem[_1413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  else:
                      mem[_949 + _929 + 100] = 0
                      call addr(_815).mem[mem[64] len 4] with:
                           gas gas_remaining wei
                          args mem[mem[64] + 4 len _949 + _929 + -mem[64] + 96]
                      if return_data.size:
                          _1414 = mem[64]
                          mem[64] = mem[64] + ceil32(return_data.size) + 1
                          mem[_1414] = return_data.size
                          mem[_1414 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if not ext_call.success:
                      revert with 0, 'Oopsie'
                  s = uint8(cd[idx]) >> 248
                  s = s
                  idx = idx + 3
                  continue 
              mem[mem[64] + 4] = this.address
              require ext_code.size(addr(_815))
              static call addr(_815).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args this.address
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _950 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _991 = mem[_950]
              _1063 = mem[64]
              mem[mem[64] + 36] = Mask(64, 96, cd[((uint16(cd[(idx + 1)]) >> 240) + 356)]) >> 96
              mem[mem[64] + 68] = _991
              _1064 = mem[64]
              mem[mem[64]] = 68
              mem[64] = mem[64] + 100
              mem[_1064 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1064 + 36 len 28]
              _1095 = mem[_1064]
              s = 0
              while s < _1095:
                  mem[s + _1063 + 100] = mem[s + _1064 + 32]
                  s = s + 32
                  continue 
              if ceil32(_1095) <= _1095:
                  call addr(_815).mem[mem[64] len 4] with:
                       gas gas_remaining wei
                      args mem[mem[64] + 4 len _1095 + _1063 + -mem[64] + 96]
                  if return_data.size:
                      _1415 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size) + 1
                      mem[_1415] = return_data.size
                      mem[_1415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              else:
                  mem[_1095 + _1063 + 100] = 0
                  call addr(_815).mem[mem[64] len 4] with:
                       gas gas_remaining wei
                      args mem[mem[64] + 4 len _1095 + _1063 + -mem[64] + 96]
                  if return_data.size:
                      _1416 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size) + 1
                      mem[_1416] = return_data.size
                      mem[_1416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with 0, 'Oopsie'
              s = uint8(cd[idx]) >> 248
              s = _991
              idx = idx + 3
              continue 
          static call Mask(64, 96, cd[((uint16(cd[(idx + 1)]) >> 240) + 356)]) >> 96.token1() with:
                  gas gas_remaining wei
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _796 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _816 = mem[_796]
          require mem[_796] == mem[_796 + 12 len 20]
          if not Mask(256, -248, cd[((uint16(cd[(idx + 1)]) >> 240) + 355)]):
              _933 = mem[64]
              mem[mem[64] + 36] = Mask(64, 96, cd[((uint16(cd[(idx + 1)]) >> 240) + 356)]) >> 96
              mem[mem[64] + 68] = s
              _934 = mem[64]
              mem[mem[64]] = 68
              mem[64] = mem[64] + 100
              mem[_934 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_934 + 36 len 28]
              _951 = mem[_934]
              t = 0
              while t < _951:
                  mem[t + _933 + 100] = mem[t + _934 + 32]
                  t = t + 32
                  continue 
              if ceil32(_951) <= _951:
                  call addr(_816).mem[mem[64] len 4] with:
                       gas gas_remaining wei
                      args mem[mem[64] + 4 len _951 + _933 + -mem[64] + 96]
                  if return_data.size:
                      _1417 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size) + 1
                      mem[_1417] = return_data.size
                      mem[_1417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              else:
                  mem[_951 + _933 + 100] = 0
                  call addr(_816).mem[mem[64] len 4] with:
                       gas gas_remaining wei
                      args mem[mem[64] + 4 len _951 + _933 + -mem[64] + 96]
                  if return_data.size:
                      _1418 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size) + 1
                      mem[_1418] = return_data.size
                      mem[_1418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  revert with 0, 'Oopsie'
              s = uint8(cd[idx]) >> 248
              s = s
              idx = idx + 3
              continue 
          mem[mem[64] + 4] = this.address
          require ext_code.size(addr(_816))
          static call addr(_816).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args this.address
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _952 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _992 = mem[_952]
          _1067 = mem[64]
          mem[mem[64] + 36] = Mask(64, 96, cd[((uint16(cd[(idx + 1)]) >> 240) + 356)]) >> 96
          mem[mem[64] + 68] = _992
          _1068 = mem[64]
          mem[mem[64]] = 68
          mem[64] = mem[64] + 100
          mem[_1068 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1068 + 36 len 28]
          _1098 = mem[_1068]
          s = 0
          while s < _1098:
              mem[s + _1067 + 100] = mem[s + _1068 + 32]
              s = s + 32
              continue 
          if ceil32(_1098) <= _1098:
              call addr(_816).mem[mem[64] len 4] with:
                   gas gas_remaining wei
                  args mem[mem[64] + 4 len _1098 + _1067 + -mem[64] + 96]
              if return_data.size:
                  _1419 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                  mem[_1419] = return_data.size
                  mem[_1419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
          else:
              mem[_1098 + _1067 + 100] = 0
              call addr(_816).mem[mem[64] len 4] with:
                   gas gas_remaining wei
                  args mem[mem[64] + 4 len _1098 + _1067 + -mem[64] + 96]
              if return_data.size:
                  _1420 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                  mem[_1420] = return_data.size
                  mem[_1420 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if not ext_call.success:
              revert with 0, 'Oopsie'
          s = uint8(cd[idx]) >> 248
          s = _992
          idx = idx + 3
          continue 
      if idx > -25:
          revert with 0, 17
      if not Mask(256, -240, cd[(idx + 22)]):
          if uint8(cd[idx]) >> 248 >= 15:
              if not Mask(256, -248, cd[(idx + 1)]):
                  _681 = mem[64]
                  mem[64] = mem[64] + 64
                  mem[_681 + 32] = 0x1400000000000000000000000000000000000000000000000000000000000000
                  mem[_681 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                  mem[_681 + 68] = this.address
                  if uint8(cd[idx]) >> 248 != 15:
                      mem[_681 + 100] = 1
                      mem[_681 + 132] = s
                      mem[_681 + 164] = 4295128740
                      mem[_681 + 196] = 160
                      mem[_681 + 228] = mem[_681]
                      t = 0
                      while t < mem[_681]:
                          mem[t + _681 + 260] = mem[t + _681 + 32]
                          t = t + 32
                          continue 
                      if ceil32(mem[_681]) > mem[_681]:
                          mem[mem[_681] + _681 + 260] = 0
                      require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                      call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                           gas gas_remaining wei
                          args addr(this.address), 1, s, 4295128740, Array(len=mem[_681], data=mem[_681 + 260 len ceil32(mem[_681])])
                      mem[_681 + 64 len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = _681 + ceil32(return_data.size) + 64
                      require return_data.size >=ΓÇ▓ 64
                      if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                          revert with 0, 17
                      s = uint8(cd[idx]) >> 248
                      s = -ext_call.return_data[32]
                      idx = idx + 24
                      continue 
                  mem[_681 + 100] = 0
                  mem[_681 + 132] = s
                  mem[_681 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                  mem[_681 + 196] = 160
                  mem[_681 + 228] = mem[_681]
                  t = 0
                  while t < mem[_681]:
                      mem[t + _681 + 260] = mem[t + _681 + 32]
                      t = t + 32
                      continue 
                  if ceil32(mem[_681]) > mem[_681]:
                      mem[mem[_681] + _681 + 260] = 0
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                       gas gas_remaining wei
                      args addr(this.address), 0, s, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_681], mem[_681 + 260 len ceil32(mem[_681])]
                  mem[_681 + 64 len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _681 + ceil32(return_data.size) + 64
              else:
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  if uint8(cd[idx]) >> 248 != 15:
                      static call Mask(64, 96, cd[(idx + 2)]) >> 96.0xdfe1681 with:
                              gas gas_remaining wei
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _715 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      _744 = mem[_715]
                      require mem[_715] == mem[_715 + 12 len 20]
                      mem[mem[64]] = 0x96ce0a5600000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 4] = addr(_744)
                      mem[mem[64] + 36] = Mask(64, 96, cd[(idx + 2)]) >> 96
                      require ext_code.size(this.address)
                      call this.address.0x96ce0a56 with:
                           gas gas_remaining wei
                          args addr(_744), Mask(64, 96, cd[(idx + 2)]) >> 96
                      if ext_call.success:
                          _836 = mem[64]
                          mem[64] = mem[64] + 64
                          mem[_836 + 32] = 0x1400000000000000000000000000000000000000000000000000000000000000
                          mem[_836 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                          mem[_836 + 68] = this.address
                          if uint8(cd[idx]) >> 248 != 15:
                              mem[_836 + 100] = 1
                              mem[_836 + 132] = s
                              mem[_836 + 164] = 4295128740
                              mem[_836 + 196] = 160
                              mem[_836 + 228] = mem[_836]
                              t = 0
                              while t < mem[_836]:
                                  mem[t + _836 + 260] = mem[t + _836 + 32]
                                  t = t + 32
                                  continue 
                              if ceil32(mem[_836]) > mem[_836]:
                                  mem[mem[_836] + _836 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args addr(this.address), 1, s, 4295128740, Array(len=mem[_836], data=mem[_836 + 260 len ceil32(mem[_836])])
                              mem[_836 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _836 + ceil32(return_data.size) + 64
                              require return_data.size >=ΓÇ▓ 64
                              if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                  revert with 0, 17
                              s = uint8(cd[idx]) >> 248
                              s = -ext_call.return_data[32]
                              idx = idx + 24
                              continue 
                          mem[_836 + 100] = 0
                          mem[_836 + 132] = s
                          mem[_836 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                          mem[_836 + 196] = 160
                          mem[_836 + 228] = mem[_836]
                          t = 0
                          while t < mem[_836]:
                              mem[t + _836 + 260] = mem[t + _836 + 32]
                              t = t + 32
                              continue 
                          if ceil32(mem[_836]) > mem[_836]:
                              mem[mem[_836] + _836 + 260] = 0
                          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                               gas gas_remaining wei
                              args addr(this.address), 0, s, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_836], mem[_836 + 260 len ceil32(mem[_836])]
                          mem[_836 + 64 len 64] = ext_call.return_data[0 len 64]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[64] = _836 + ceil32(return_data.size) + 64
                      else:
                          if not return_data.size:
                              require mem[96] >=ΓÇ▓ 64
                              _894 = mem[160]
                              require mem[128]
                              _937 = mem[64]
                              mem[64] = mem[64] + 64
                              mem[_937 + 32] = (mem[128] << 120) + 0x1400000000000000000000000000000000000000000000000000000000000000
                              mem[_937 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                              mem[_937 + 68] = this.address
                              if uint8(cd[idx]) >> 248 != 15:
                                  mem[_937 + 100] = 1
                                  mem[_937 + 132] = _894
                                  mem[_937 + 164] = 4295128740
                                  mem[_937 + 196] = 160
                                  mem[_937 + 228] = mem[_937]
                                  s = 0
                                  while s < mem[_937]:
                                      mem[s + _937 + 260] = mem[s + _937 + 32]
                                      s = s + 32
                                      continue 
                                  if ceil32(mem[_937]) > mem[_937]:
                                      mem[mem[_937] + _937 + 260] = 0
                                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                       gas gas_remaining wei
                                      args addr(this.address), 1, _894, 4295128740, Array(len=mem[_937], data=mem[_937 + 260 len ceil32(mem[_937])])
                                  mem[_937 + 64 len 64] = ext_call.return_data[0 len 64]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[64] = _937 + ceil32(return_data.size) + 64
                                  require return_data.size >=ΓÇ▓ 64
                                  if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                      revert with 0, 17
                                  s = uint8(cd[idx]) >> 248
                                  s = -ext_call.return_data[32]
                                  idx = idx + 24
                                  continue 
                              mem[_937 + 100] = 0
                              mem[_937 + 132] = _894
                              mem[_937 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                              mem[_937 + 196] = 160
                              mem[_937 + 228] = mem[_937]
                              s = 0
                              while s < mem[_937]:
                                  mem[s + _937 + 260] = mem[s + _937 + 32]
                                  s = s + 32
                                  continue 
                              if ceil32(mem[_937]) > mem[_937]:
                                  mem[mem[_937] + _937 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args addr(this.address), 0, _894, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_937], mem[_937 + 260 len ceil32(mem[_937])]
                              mem[_937 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _937 + ceil32(return_data.size) + 64
                          else:
                              _835 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_835] = return_data.size
                              mem[_835 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              require return_data.size >=ΓÇ▓ 64
                              _895 = mem[_835 + 32]
                              _896 = mem[_835 + 64]
                              require mem[_835 + 32]
                              _938 = mem[64]
                              mem[64] = mem[64] + 64
                              mem[_938 + 32] = (_895 << 120) + 0x1400000000000000000000000000000000000000000000000000000000000000
                              mem[_938 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                              mem[_938 + 68] = this.address
                              if uint8(cd[idx]) >> 248 != 15:
                                  mem[_938 + 100] = 1
                                  mem[_938 + 132] = _896
                                  mem[_938 + 164] = 4295128740
                                  mem[_938 + 196] = 160
                                  mem[_938 + 228] = mem[_938]
                                  s = 0
                                  while s < mem[_938]:
                                      mem[s + _938 + 260] = mem[s + _938 + 32]
                                      s = s + 32
                                      continue 
                                  if ceil32(mem[_938]) > mem[_938]:
                                      mem[mem[_938] + _938 + 260] = 0
                                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                       gas gas_remaining wei
                                      args addr(this.address), 1, _896, 4295128740, Array(len=mem[_938], data=mem[_938 + 260 len ceil32(mem[_938])])
                                  mem[_938 + 64 len 64] = ext_call.return_data[0 len 64]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[64] = _938 + ceil32(return_data.size) + 64
                                  require return_data.size >=ΓÇ▓ 64
                                  if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                      revert with 0, 17
                                  s = uint8(cd[idx]) >> 248
                                  s = -ext_call.return_data[32]
                                  idx = idx + 24
                                  continue 
                              mem[_938 + 100] = 0
                              mem[_938 + 132] = _896
                              mem[_938 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                              mem[_938 + 196] = 160
                              mem[_938 + 228] = mem[_938]
                              s = 0
                              while s < mem[_938]:
                                  mem[s + _938 + 260] = mem[s + _938 + 32]
                                  s = s + 32
                                  continue 
                              if ceil32(mem[_938]) > mem[_938]:
                                  mem[mem[_938] + _938 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args addr(this.address), 0, _896, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_938], mem[_938 + 260 len ceil32(mem[_938])]
                              mem[_938 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _938 + ceil32(return_data.size) + 64
                  else:
                      static call Mask(64, 96, cd[(idx + 2)]) >> 96.token1() with:
                              gas gas_remaining wei
                      mem[mem[64]] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      _716 = mem[64]
                      mem[64] = mem[64] + ceil32(return_data.size)
                      require return_data.size >=ΓÇ▓ 32
                      _745 = mem[_716]
                      require mem[_716] == mem[_716 + 12 len 20]
                      mem[mem[64]] = 0x96ce0a5600000000000000000000000000000000000000000000000000000000
                      mem[mem[64] + 4] = addr(_745)
                      mem[mem[64] + 36] = Mask(64, 96, cd[(idx + 2)]) >> 96
                      require ext_code.size(this.address)
                      call this.address.0x96ce0a56 with:
                           gas gas_remaining wei
                          args addr(_745), Mask(64, 96, cd[(idx + 2)]) >> 96
                      if ext_call.success:
                          _838 = mem[64]
                          mem[64] = mem[64] + 64
                          mem[_838 + 32] = 0x1400000000000000000000000000000000000000000000000000000000000000
                          mem[_838 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                          mem[_838 + 68] = this.address
                          if uint8(cd[idx]) >> 248 != 15:
                              mem[_838 + 100] = 1
                              mem[_838 + 132] = s
                              mem[_838 + 164] = 4295128740
                              mem[_838 + 196] = 160
                              mem[_838 + 228] = mem[_838]
                              t = 0
                              while t < mem[_838]:
                                  mem[t + _838 + 260] = mem[t + _838 + 32]
                                  t = t + 32
                                  continue 
                              if ceil32(mem[_838]) > mem[_838]:
                                  mem[mem[_838] + _838 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args addr(this.address), 1, s, 4295128740, Array(len=mem[_838], data=mem[_838 + 260 len ceil32(mem[_838])])
                              mem[_838 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _838 + ceil32(return_data.size) + 64
                              require return_data.size >=ΓÇ▓ 64
                              if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                  revert with 0, 17
                              s = uint8(cd[idx]) >> 248
                              s = -ext_call.return_data[32]
                              idx = idx + 24
                              continue 
                          mem[_838 + 100] = 0
                          mem[_838 + 132] = s
                          mem[_838 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                          mem[_838 + 196] = 160
                          mem[_838 + 228] = mem[_838]
                          t = 0
                          while t < mem[_838]:
                              mem[t + _838 + 260] = mem[t + _838 + 32]
                              t = t + 32
                              continue 
                          if ceil32(mem[_838]) > mem[_838]:
                              mem[mem[_838] + _838 + 260] = 0
                          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                               gas gas_remaining wei
                              args addr(this.address), 0, s, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_838], mem[_838 + 260 len ceil32(mem[_838])]
                          mem[_838 + 64 len 64] = ext_call.return_data[0 len 64]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[64] = _838 + ceil32(return_data.size) + 64
                      else:
                          if not return_data.size:
                              require mem[96] >=ΓÇ▓ 64
                              _900 = mem[160]
                              require mem[128]
                              _941 = mem[64]
                              mem[64] = mem[64] + 64
                              mem[_941 + 32] = (mem[128] << 120) + 0x1400000000000000000000000000000000000000000000000000000000000000
                              mem[_941 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                              mem[_941 + 68] = this.address
                              if uint8(cd[idx]) >> 248 != 15:
                                  mem[_941 + 100] = 1
                                  mem[_941 + 132] = _900
                                  mem[_941 + 164] = 4295128740
                                  mem[_941 + 196] = 160
                                  mem[_941 + 228] = mem[_941]
                                  s = 0
                                  while s < mem[_941]:
                                      mem[s + _941 + 260] = mem[s + _941 + 32]
                                      s = s + 32
                                      continue 
                                  if ceil32(mem[_941]) > mem[_941]:
                                      mem[mem[_941] + _941 + 260] = 0
                                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                       gas gas_remaining wei
                                      args addr(this.address), 1, _900, 4295128740, Array(len=mem[_941], data=mem[_941 + 260 len ceil32(mem[_941])])
                                  mem[_941 + 64 len 64] = ext_call.return_data[0 len 64]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[64] = _941 + ceil32(return_data.size) + 64
                                  require return_data.size >=ΓÇ▓ 64
                                  if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                      revert with 0, 17
                                  s = uint8(cd[idx]) >> 248
                                  s = -ext_call.return_data[32]
                                  idx = idx + 24
                                  continue 
                              mem[_941 + 100] = 0
                              mem[_941 + 132] = _900
                              mem[_941 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                              mem[_941 + 196] = 160
                              mem[_941 + 228] = mem[_941]
                              s = 0
                              while s < mem[_941]:
                                  mem[s + _941 + 260] = mem[s + _941 + 32]
                                  s = s + 32
                                  continue 
                              if ceil32(mem[_941]) > mem[_941]:
                                  mem[mem[_941] + _941 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args addr(this.address), 0, _900, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_941], mem[_941 + 260 len ceil32(mem[_941])]
                              mem[_941 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _941 + ceil32(return_data.size) + 64
                          else:
                              _837 = mem[64]
                              mem[64] = mem[64] + ceil32(return_data.size) + 1
                              mem[_837] = return_data.size
                              mem[_837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                              require return_data.size >=ΓÇ▓ 64
                              _901 = mem[_837 + 32]
                              _902 = mem[_837 + 64]
                              require mem[_837 + 32]
                              _942 = mem[64]
                              mem[64] = mem[64] + 64
                              mem[_942 + 32] = (_901 << 120) + 0x1400000000000000000000000000000000000000000000000000000000000000
                              mem[_942 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                              mem[_942 + 68] = this.address
                              if uint8(cd[idx]) >> 248 != 15:
                                  mem[_942 + 100] = 1
                                  mem[_942 + 132] = _902
                                  mem[_942 + 164] = 4295128740
                                  mem[_942 + 196] = 160
                                  mem[_942 + 228] = mem[_942]
                                  s = 0
                                  while s < mem[_942]:
                                      mem[s + _942 + 260] = mem[s + _942 + 32]
                                      s = s + 32
                                      continue 
                                  if ceil32(mem[_942]) > mem[_942]:
                                      mem[mem[_942] + _942 + 260] = 0
                                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                       gas gas_remaining wei
                                      args addr(this.address), 1, _902, 4295128740, Array(len=mem[_942], data=mem[_942 + 260 len ceil32(mem[_942])])
                                  mem[_942 + 64 len 64] = ext_call.return_data[0 len 64]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  mem[64] = _942 + ceil32(return_data.size) + 64
                                  require return_data.size >=ΓÇ▓ 64
                                  if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                      revert with 0, 17
                                  s = uint8(cd[idx]) >> 248
                                  s = -ext_call.return_data[32]
                                  idx = idx + 24
                                  continue 
                              mem[_942 + 100] = 0
                              mem[_942 + 132] = _902
                              mem[_942 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                              mem[_942 + 196] = 160
                              mem[_942 + 228] = mem[_942]
                              s = 0
                              while s < mem[_942]:
                                  mem[s + _942 + 260] = mem[s + _942 + 32]
                                  s = s + 32
                                  continue 
                              if ceil32(mem[_942]) > mem[_942]:
                                  mem[mem[_942] + _942 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args addr(this.address), 0, _902, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_942], mem[_942 + 260 len ceil32(mem[_942])]
                              mem[_942 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _942 + ceil32(return_data.size) + 64
              require return_data.size >=ΓÇ▓ 64
              if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                  revert with 0, 17
              s = uint8(cd[idx]) >> 248
              s = -ext_call.return_data[0]
              idx = idx + 24
              continue 
          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
          if not Mask(256, -248, cd[(idx + 1)]):
              static call Mask(64, 96, cd[(idx + 2)]) >> 96.getReserves() with:
                      gas gas_remaining wei
              mem[mem[64] len 96] = ext_call.return_data[0 len 96]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _717 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 96
              _756 = mem[_717]
              require mem[_717] == mem[_717 + 18 len 14]
              _776 = mem[_717 + 32]
              require mem[_717 + 32] == mem[_717 + 50 len 14]
              require mem[_717 + 64] == mem[_717 + 92 len 4]
              if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                  revert with 0, 17
              if 14 == uint8(cd[idx]) >> 248:
                  if mem[_717 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                      revert with 0, 17
                  if 1000 * mem[_717 + 18 len 14] > !(997 * s):
                      revert with 0, 17
                  if 997 * s and mem[_717 + 50 len 14] > -1 / 997 * s:
                      revert with 0, 17
                  if not (1000 * mem[_717 + 18 len 14]) + (997 * s):
                      revert with 0, 18
                  mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                  if uint8(cd[idx]) >> 248 != 13:
                      mem[mem[64] + 4] = 0
                      mem[mem[64] + 36] = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _756)) + (997 * s)
                      mem[mem[64] + 68] = this.address
                      mem[mem[64] + 100] = 128
                      mem[mem[64] + 132] = 0
                      require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                      call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 0, 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _756)) + (997 * s), addr(this.address), 128, 0
                  else:
                      mem[mem[64] + 4] = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _756)) + (997 * s)
                      mem[mem[64] + 36] = 0
                      mem[mem[64] + 68] = this.address
                      mem[mem[64] + 100] = 128
                      mem[mem[64] + 132] = 0
                      require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                      call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                           gas gas_remaining wei
                          args 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _756)) + (997 * s), 0, addr(this.address), 128, 0
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  s = uint8(cd[idx]) >> 248
                  s = 997 * s * Mask(112, 0, _776) / (1000 * Mask(112, 0, _756)) + (997 * s)
                  idx = idx + 24
                  continue 
              if mem[_717 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                  revert with 0, 17
              if 1000 * mem[_717 + 50 len 14] > !(997 * s):
                  revert with 0, 17
              if 997 * s and mem[_717 + 18 len 14] > -1 / 997 * s:
                  revert with 0, 17
              if not (1000 * mem[_717 + 50 len 14]) + (997 * s):
                  revert with 0, 18
              mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if uint8(cd[idx]) >> 248 != 13:
                  mem[mem[64] + 4] = 0
                  mem[mem[64] + 36] = 997 * s * Mask(112, 0, _756) / (1000 * Mask(112, 0, _776)) + (997 * s)
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = 0
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, 997 * s * Mask(112, 0, _756) / (1000 * Mask(112, 0, _776)) + (997 * s), addr(this.address), 128, 0
              else:
                  mem[mem[64] + 4] = 997 * s * Mask(112, 0, _756) / (1000 * Mask(112, 0, _776)) + (997 * s)
                  mem[mem[64] + 36] = 0
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = 0
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 997 * s * Mask(112, 0, _756) / (1000 * Mask(112, 0, _776)) + (997 * s), 0, addr(this.address), 128, 0
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              s = uint8(cd[idx]) >> 248
              s = 997 * s * Mask(112, 0, _756) / (1000 * Mask(112, 0, _776)) + (997 * s)
              idx = idx + 24
              continue 
          if uint8(cd[idx]) >> 248 != 13:
              static call Mask(64, 96, cd[(idx + 2)]) >> 96.0xdfe1681 with:
                      gas gas_remaining wei
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _718 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _746 = mem[_718]
              require mem[_718] == mem[_718 + 12 len 20]
              mem[mem[64] + 4] = Mask(64, 96, cd[(idx + 2)]) >> 96
              require ext_code.size(addr(_746))
              static call addr(_746).balanceOf(address tokenOwner) with:
                      gas gas_remaining wei
                     args (Mask(64, 96, cd[(idx + 2)]) << 96)
              mem[mem[64]] = ext_call.return_data[0]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _798 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 32
              _817 = mem[_798]
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              static call Mask(64, 96, cd[(idx + 2)]) >> 96.getReserves() with:
                      gas gas_remaining wei
              mem[mem[64] len 96] = ext_call.return_data[0 len 96]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              _905 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size)
              require return_data.size >=ΓÇ▓ 96
              _945 = mem[_905]
              require mem[_905] == mem[_905 + 18 len 14]
              _1001 = mem[_905 + 32]
              require mem[_905 + 32] == mem[_905 + 50 len 14]
              require mem[_905 + 64] == mem[_905 + 92 len 4]
              if _817 < mem[_905 + 18 len 14]:
                  revert with 0, 17
              if _817 - mem[_905 + 18 len 14] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                  revert with 0, 17
              if mem[_905 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                  revert with 0, 17
              if 1000 * mem[_905 + 18 len 14] > !((997 * _817) - (997 * mem[_905 + 18 len 14])):
                  revert with 0, 17
              if (997 * _817) - (997 * mem[_905 + 18 len 14]) and mem[_905 + 50 len 14] > -1 / (997 * _817) - (997 * mem[_905 + 18 len 14]):
                  revert with 0, 17
              if not (3 * mem[_905 + 18 len 14]) + (997 * _817):
                  revert with 0, 18
              mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if uint8(cd[idx]) >> 248 != 13:
                  mem[mem[64] + 4] = 0
                  mem[mem[64] + 36] = (997 * _817 * Mask(112, 0, _1001)) - (997 * Mask(112, 0, _945) * Mask(112, 0, _1001)) / (3 * Mask(112, 0, _945)) + (997 * _817)
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = 0
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, (997 * _817 * Mask(112, 0, _1001)) - (997 * Mask(112, 0, _945) * Mask(112, 0, _1001)) / (3 * Mask(112, 0, _945)) + (997 * _817), addr(this.address), 128, 0
              else:
                  mem[mem[64] + 4] = (997 * _817 * Mask(112, 0, _1001)) - (997 * Mask(112, 0, _945) * Mask(112, 0, _1001)) / (3 * Mask(112, 0, _945)) + (997 * _817)
                  mem[mem[64] + 36] = 0
                  mem[mem[64] + 68] = this.address
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = 0
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args (997 * _817 * Mask(112, 0, _1001)) - (997 * Mask(112, 0, _945) * Mask(112, 0, _1001)) / (3 * Mask(112, 0, _945)) + (997 * _817), 0, addr(this.address), 128, 0
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              s = uint8(cd[idx]) >> 248
              s = (997 * _817 * Mask(112, 0, _1001)) - (997 * Mask(112, 0, _945) * Mask(112, 0, _1001)) / (3 * Mask(112, 0, _945)) + (997 * _817)
              idx = idx + 24
              continue 
          static call Mask(64, 96, cd[(idx + 2)]) >> 96.token1() with:
                  gas gas_remaining wei
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _719 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _747 = mem[_719]
          require mem[_719] == mem[_719 + 12 len 20]
          mem[mem[64] + 4] = Mask(64, 96, cd[(idx + 2)]) >> 96
          require ext_code.size(addr(_747))
          static call addr(_747).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args (Mask(64, 96, cd[(idx + 2)]) << 96)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _799 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _818 = mem[_799]
          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
          static call Mask(64, 96, cd[(idx + 2)]) >> 96.getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _906 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _946 = mem[_906]
          require mem[_906] == mem[_906 + 18 len 14]
          _1002 = mem[_906 + 32]
          require mem[_906 + 32] == mem[_906 + 50 len 14]
          require mem[_906 + 64] == mem[_906 + 92 len 4]
          if _818 < mem[_906 + 50 len 14]:
              revert with 0, 17
          if _818 - mem[_906 + 50 len 14] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
              revert with 0, 17
          if mem[_906 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
              revert with 0, 17
          if 1000 * mem[_906 + 50 len 14] > !((997 * _818) - (997 * mem[_906 + 50 len 14])):
              revert with 0, 17
          if (997 * _818) - (997 * mem[_906 + 50 len 14]) and mem[_906 + 18 len 14] > -1 / (997 * _818) - (997 * mem[_906 + 50 len 14]):
              revert with 0, 17
          if not (3 * mem[_906 + 50 len 14]) + (997 * _818):
              revert with 0, 18
          mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
          if uint8(cd[idx]) >> 248 != 13:
              mem[mem[64] + 4] = 0
              mem[mem[64] + 36] = (997 * _818 * Mask(112, 0, _946)) - (997 * Mask(112, 0, _1002) * Mask(112, 0, _946)) / (3 * Mask(112, 0, _1002)) + (997 * _818)
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = 0
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, (997 * _818 * Mask(112, 0, _946)) - (997 * Mask(112, 0, _1002) * Mask(112, 0, _946)) / (3 * Mask(112, 0, _1002)) + (997 * _818), addr(this.address), 128, 0
          else:
              mem[mem[64] + 4] = (997 * _818 * Mask(112, 0, _946)) - (997 * Mask(112, 0, _1002) * Mask(112, 0, _946)) / (3 * Mask(112, 0, _1002)) + (997 * _818)
              mem[mem[64] + 36] = 0
              mem[mem[64] + 68] = this.address
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = 0
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args (997 * _818 * Mask(112, 0, _946)) - (997 * Mask(112, 0, _1002) * Mask(112, 0, _946)) / (3 * Mask(112, 0, _1002)) + (997 * _818), 0, addr(this.address), 128, 0
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          s = uint8(cd[idx]) >> 248
          s = (997 * _818 * Mask(112, 0, _946)) - (997 * Mask(112, 0, _1002) * Mask(112, 0, _946)) / (3 * Mask(112, 0, _1002)) + (997 * _818)
          idx = idx + 24
          continue 
      if uint8(cd[idx]) >> 248 >= 15:
          if not Mask(256, -248, cd[(idx + 1)]):
              _695 = mem[64]
              mem[64] = mem[64] + 64
              mem[_695 + 32] = 0x1400000000000000000000000000000000000000000000000000000000000000
              mem[_695 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
              mem[_695 + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
              if uint8(cd[idx]) >> 248 != 15:
                  mem[_695 + 100] = 1
                  mem[_695 + 132] = s
                  mem[_695 + 164] = 4295128740
                  mem[_695 + 196] = 160
                  mem[_695 + 228] = mem[_695]
                  t = 0
                  while t < mem[_695]:
                      mem[t + _695 + 260] = mem[t + _695 + 32]
                      t = t + 32
                      continue 
                  if ceil32(mem[_695]) > mem[_695]:
                      mem[mem[_695] + _695 + 260] = 0
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                       gas gas_remaining wei
                      args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 1, s, 4295128740, Array(len=mem[_695], data=mem[_695 + 260 len ceil32(mem[_695])])
                  mem[_695 + 64 len 64] = ext_call.return_data[0 len 64]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _695 + ceil32(return_data.size) + 64
                  require return_data.size >=ΓÇ▓ 64
                  if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                      revert with 0, 17
                  s = uint8(cd[idx]) >> 248
                  s = -ext_call.return_data[32]
                  idx = idx + 24
                  continue 
              mem[_695 + 100] = 0
              mem[_695 + 132] = s
              mem[_695 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
              mem[_695 + 196] = 160
              mem[_695 + 228] = mem[_695]
              t = 0
              while t < mem[_695]:
                  mem[t + _695 + 260] = mem[t + _695 + 32]
                  t = t + 32
                  continue 
              if ceil32(mem[_695]) > mem[_695]:
                  mem[mem[_695] + _695 + 260] = 0
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                   gas gas_remaining wei
                  args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 0, s, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_695], mem[_695 + 260 len ceil32(mem[_695])]
              mem[_695 + 64 len 64] = ext_call.return_data[0 len 64]
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[64] = _695 + ceil32(return_data.size) + 64
          else:
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              if uint8(cd[idx]) >> 248 != 15:
                  static call Mask(64, 96, cd[(idx + 2)]) >> 96.0xdfe1681 with:
                          gas gas_remaining wei
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _730 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  _757 = mem[_730]
                  require mem[_730] == mem[_730 + 12 len 20]
                  mem[mem[64]] = 0x96ce0a5600000000000000000000000000000000000000000000000000000000
                  mem[mem[64] + 4] = addr(_757)
                  mem[mem[64] + 36] = Mask(64, 96, cd[(idx + 2)]) >> 96
                  require ext_code.size(this.address)
                  call this.address.0x96ce0a56 with:
                       gas gas_remaining wei
                      args addr(_757), Mask(64, 96, cd[(idx + 2)]) >> 96
                  if ext_call.success:
                      _871 = mem[64]
                      mem[64] = mem[64] + 64
                      mem[_871 + 32] = 0x1400000000000000000000000000000000000000000000000000000000000000
                      mem[_871 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                      mem[_871 + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                      if uint8(cd[idx]) >> 248 != 15:
                          mem[_871 + 100] = 1
                          mem[_871 + 132] = s
                          mem[_871 + 164] = 4295128740
                          mem[_871 + 196] = 160
                          mem[_871 + 228] = mem[_871]
                          t = 0
                          while t < mem[_871]:
                              mem[t + _871 + 260] = mem[t + _871 + 32]
                              t = t + 32
                              continue 
                          if ceil32(mem[_871]) > mem[_871]:
                              mem[mem[_871] + _871 + 260] = 0
                          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                               gas gas_remaining wei
                              args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 1, s, 4295128740, Array(len=mem[_871], data=mem[_871 + 260 len ceil32(mem[_871])])
                          mem[_871 + 64 len 64] = ext_call.return_data[0 len 64]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[64] = _871 + ceil32(return_data.size) + 64
                          require return_data.size >=ΓÇ▓ 64
                          if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                              revert with 0, 17
                          s = uint8(cd[idx]) >> 248
                          s = -ext_call.return_data[32]
                          idx = idx + 24
                          continue 
                      mem[_871 + 100] = 0
                      mem[_871 + 132] = s
                      mem[_871 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                      mem[_871 + 196] = 160
                      mem[_871 + 228] = mem[_871]
                      t = 0
                      while t < mem[_871]:
                          mem[t + _871 + 260] = mem[t + _871 + 32]
                          t = t + 32
                          continue 
                      if ceil32(mem[_871]) > mem[_871]:
                          mem[mem[_871] + _871 + 260] = 0
                      require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                      call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                           gas gas_remaining wei
                          args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 0, s, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_871], mem[_871 + 260 len ceil32(mem[_871])]
                      mem[_871 + 64 len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = _871 + ceil32(return_data.size) + 64
                  else:
                      if not return_data.size:
                          require mem[96] >=ΓÇ▓ 64
                          _909 = mem[160]
                          require mem[128]
                          _961 = mem[64]
                          mem[64] = mem[64] + 64
                          mem[_961 + 32] = (mem[128] << 120) + 0x1400000000000000000000000000000000000000000000000000000000000000
                          mem[_961 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                          mem[_961 + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                          if uint8(cd[idx]) >> 248 != 15:
                              mem[_961 + 100] = 1
                              mem[_961 + 132] = _909
                              mem[_961 + 164] = 4295128740
                              mem[_961 + 196] = 160
                              mem[_961 + 228] = mem[_961]
                              s = 0
                              while s < mem[_961]:
                                  mem[s + _961 + 260] = mem[s + _961 + 32]
                                  s = s + 32
                                  continue 
                              if ceil32(mem[_961]) > mem[_961]:
                                  mem[mem[_961] + _961 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 1, _909, 4295128740, Array(len=mem[_961], data=mem[_961 + 260 len ceil32(mem[_961])])
                              mem[_961 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _961 + ceil32(return_data.size) + 64
                              require return_data.size >=ΓÇ▓ 64
                              if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                  revert with 0, 17
                              s = uint8(cd[idx]) >> 248
                              s = -ext_call.return_data[32]
                              idx = idx + 24
                              continue 
                          mem[_961 + 100] = 0
                          mem[_961 + 132] = _909
                          mem[_961 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                          mem[_961 + 196] = 160
                          mem[_961 + 228] = mem[_961]
                          s = 0
                          while s < mem[_961]:
                              mem[s + _961 + 260] = mem[s + _961 + 32]
                              s = s + 32
                              continue 
                          if ceil32(mem[_961]) > mem[_961]:
                              mem[mem[_961] + _961 + 260] = 0
                          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                               gas gas_remaining wei
                              args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 0, _909, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_961], mem[_961 + 260 len ceil32(mem[_961])]
                          mem[_961 + 64 len 64] = ext_call.return_data[0 len 64]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[64] = _961 + ceil32(return_data.size) + 64
                      else:
                          _870 = mem[64]
                          mem[64] = mem[64] + ceil32(return_data.size) + 1
                          mem[_870] = return_data.size
                          mem[_870 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          require return_data.size >=ΓÇ▓ 64
                          _910 = mem[_870 + 32]
                          _911 = mem[_870 + 64]
                          require mem[_870 + 32]
                          _962 = mem[64]
                          mem[64] = mem[64] + 64
                          mem[_962 + 32] = (_910 << 120) + 0x1400000000000000000000000000000000000000000000000000000000000000
                          mem[_962 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                          mem[_962 + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                          if uint8(cd[idx]) >> 248 != 15:
                              mem[_962 + 100] = 1
                              mem[_962 + 132] = _911
                              mem[_962 + 164] = 4295128740
                              mem[_962 + 196] = 160
                              mem[_962 + 228] = mem[_962]
                              s = 0
                              while s < mem[_962]:
                                  mem[s + _962 + 260] = mem[s + _962 + 32]
                                  s = s + 32
                                  continue 
                              if ceil32(mem[_962]) > mem[_962]:
                                  mem[mem[_962] + _962 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 1, _911, 4295128740, Array(len=mem[_962], data=mem[_962 + 260 len ceil32(mem[_962])])
                              mem[_962 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _962 + ceil32(return_data.size) + 64
                              require return_data.size >=ΓÇ▓ 64
                              if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                  revert with 0, 17
                              s = uint8(cd[idx]) >> 248
                              s = -ext_call.return_data[32]
                              idx = idx + 24
                              continue 
                          mem[_962 + 100] = 0
                          mem[_962 + 132] = _911
                          mem[_962 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                          mem[_962 + 196] = 160
                          mem[_962 + 228] = mem[_962]
                          s = 0
                          while s < mem[_962]:
                              mem[s + _962 + 260] = mem[s + _962 + 32]
                              s = s + 32
                              continue 
                          if ceil32(mem[_962]) > mem[_962]:
                              mem[mem[_962] + _962 + 260] = 0
                          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                               gas gas_remaining wei
                              args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 0, _911, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_962], mem[_962 + 260 len ceil32(mem[_962])]
                          mem[_962 + 64 len 64] = ext_call.return_data[0 len 64]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[64] = _962 + ceil32(return_data.size) + 64
              else:
                  static call Mask(64, 96, cd[(idx + 2)]) >> 96.token1() with:
                          gas gas_remaining wei
                  mem[mem[64]] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  _731 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size)
                  require return_data.size >=ΓÇ▓ 32
                  _758 = mem[_731]
                  require mem[_731] == mem[_731 + 12 len 20]
                  mem[mem[64]] = 0x96ce0a5600000000000000000000000000000000000000000000000000000000
                  mem[mem[64] + 4] = addr(_758)
                  mem[mem[64] + 36] = Mask(64, 96, cd[(idx + 2)]) >> 96
                  require ext_code.size(this.address)
                  call this.address.0x96ce0a56 with:
                       gas gas_remaining wei
                      args addr(_758), Mask(64, 96, cd[(idx + 2)]) >> 96
                  if ext_call.success:
                      _873 = mem[64]
                      mem[64] = mem[64] + 64
                      mem[_873 + 32] = 0x1400000000000000000000000000000000000000000000000000000000000000
                      mem[_873 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                      mem[_873 + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                      if uint8(cd[idx]) >> 248 != 15:
                          mem[_873 + 100] = 1
                          mem[_873 + 132] = s
                          mem[_873 + 164] = 4295128740
                          mem[_873 + 196] = 160
                          mem[_873 + 228] = mem[_873]
                          t = 0
                          while t < mem[_873]:
                              mem[t + _873 + 260] = mem[t + _873 + 32]
                              t = t + 32
                              continue 
                          if ceil32(mem[_873]) > mem[_873]:
                              mem[mem[_873] + _873 + 260] = 0
                          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                               gas gas_remaining wei
                              args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 1, s, 4295128740, Array(len=mem[_873], data=mem[_873 + 260 len ceil32(mem[_873])])
                          mem[_873 + 64 len 64] = ext_call.return_data[0 len 64]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[64] = _873 + ceil32(return_data.size) + 64
                          require return_data.size >=ΓÇ▓ 64
                          if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                              revert with 0, 17
                          s = uint8(cd[idx]) >> 248
                          s = -ext_call.return_data[32]
                          idx = idx + 24
                          continue 
                      mem[_873 + 100] = 0
                      mem[_873 + 132] = s
                      mem[_873 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                      mem[_873 + 196] = 160
                      mem[_873 + 228] = mem[_873]
                      t = 0
                      while t < mem[_873]:
                          mem[t + _873 + 260] = mem[t + _873 + 32]
                          t = t + 32
                          continue 
                      if ceil32(mem[_873]) > mem[_873]:
                          mem[mem[_873] + _873 + 260] = 0
                      require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                      call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                           gas gas_remaining wei
                          args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 0, s, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_873], mem[_873 + 260 len ceil32(mem[_873])]
                      mem[_873 + 64 len 64] = ext_call.return_data[0 len 64]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      mem[64] = _873 + ceil32(return_data.size) + 64
                  else:
                      if not return_data.size:
                          require mem[96] >=ΓÇ▓ 64
                          _915 = mem[160]
                          require mem[128]
                          _965 = mem[64]
                          mem[64] = mem[64] + 64
                          mem[_965 + 32] = (mem[128] << 120) + 0x1400000000000000000000000000000000000000000000000000000000000000
                          mem[_965 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                          mem[_965 + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                          if uint8(cd[idx]) >> 248 != 15:
                              mem[_965 + 100] = 1
                              mem[_965 + 132] = _915
                              mem[_965 + 164] = 4295128740
                              mem[_965 + 196] = 160
                              mem[_965 + 228] = mem[_965]
                              s = 0
                              while s < mem[_965]:
                                  mem[s + _965 + 260] = mem[s + _965 + 32]
                                  s = s + 32
                                  continue 
                              if ceil32(mem[_965]) > mem[_965]:
                                  mem[mem[_965] + _965 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 1, _915, 4295128740, Array(len=mem[_965], data=mem[_965 + 260 len ceil32(mem[_965])])
                              mem[_965 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _965 + ceil32(return_data.size) + 64
                              require return_data.size >=ΓÇ▓ 64
                              if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                  revert with 0, 17
                              s = uint8(cd[idx]) >> 248
                              s = -ext_call.return_data[32]
                              idx = idx + 24
                              continue 
                          mem[_965 + 100] = 0
                          mem[_965 + 132] = _915
                          mem[_965 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                          mem[_965 + 196] = 160
                          mem[_965 + 228] = mem[_965]
                          s = 0
                          while s < mem[_965]:
                              mem[s + _965 + 260] = mem[s + _965 + 32]
                              s = s + 32
                              continue 
                          if ceil32(mem[_965]) > mem[_965]:
                              mem[mem[_965] + _965 + 260] = 0
                          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                               gas gas_remaining wei
                              args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 0, _915, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_965], mem[_965 + 260 len ceil32(mem[_965])]
                          mem[_965 + 64 len 64] = ext_call.return_data[0 len 64]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[64] = _965 + ceil32(return_data.size) + 64
                      else:
                          _872 = mem[64]
                          mem[64] = mem[64] + ceil32(return_data.size) + 1
                          mem[_872] = return_data.size
                          mem[_872 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                          require return_data.size >=ΓÇ▓ 64
                          _916 = mem[_872 + 32]
                          _917 = mem[_872 + 64]
                          require mem[_872 + 32]
                          _966 = mem[64]
                          mem[64] = mem[64] + 64
                          mem[_966 + 32] = (_916 << 120) + 0x1400000000000000000000000000000000000000000000000000000000000000
                          mem[_966 + 64] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                          mem[_966 + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                          if uint8(cd[idx]) >> 248 != 15:
                              mem[_966 + 100] = 1
                              mem[_966 + 132] = _917
                              mem[_966 + 164] = 4295128740
                              mem[_966 + 196] = 160
                              mem[_966 + 228] = mem[_966]
                              s = 0
                              while s < mem[_966]:
                                  mem[s + _966 + 260] = mem[s + _966 + 32]
                                  s = s + 32
                                  continue 
                              if ceil32(mem[_966]) > mem[_966]:
                                  mem[mem[_966] + _966 + 260] = 0
                              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                                   gas gas_remaining wei
                                  args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 1, _917, 4295128740, Array(len=mem[_966], data=mem[_966 + 260 len ceil32(mem[_966])])
                              mem[_966 + 64 len 64] = ext_call.return_data[0 len 64]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              mem[64] = _966 + ceil32(return_data.size) + 64
                              require return_data.size >=ΓÇ▓ 64
                              if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                  revert with 0, 17
                              s = uint8(cd[idx]) >> 248
                              s = -ext_call.return_data[32]
                              idx = idx + 24
                              continue 
                          mem[_966 + 100] = 0
                          mem[_966 + 132] = _917
                          mem[_966 + 164] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                          mem[_966 + 196] = 160
                          mem[_966 + 228] = mem[_966]
                          s = 0
                          while s < mem[_966]:
                              mem[s + _966 + 260] = mem[s + _966 + 32]
                              s = s + 32
                              continue 
                          if ceil32(mem[_966]) > mem[_966]:
                              mem[mem[_966] + _966 + 260] = 0
                          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x128acb08 with:
                               gas gas_remaining wei
                              args Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 0, _917, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, mem[_966], mem[_966 + 260 len ceil32(mem[_966])]
                          mem[_966 + 64 len 64] = ext_call.return_data[0 len 64]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          mem[64] = _966 + ceil32(return_data.size) + 64
          require return_data.size >=ΓÇ▓ 64
          if ext_call.return_data == 0x8000000000000000000000000000000000000000000000000000000000000000:
              revert with 0, 17
          s = uint8(cd[idx]) >> 248
          s = -ext_call.return_data[0]
          idx = idx + 24
          continue 
      require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
      if not Mask(256, -248, cd[(idx + 1)]):
          static call Mask(64, 96, cd[(idx + 2)]) >> 96.getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _732 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _765 = mem[_732]
          require mem[_732] == mem[_732 + 18 len 14]
          _790 = mem[_732 + 32]
          require mem[_732 + 32] == mem[_732 + 50 len 14]
          require mem[_732 + 64] == mem[_732 + 92 len 4]
          if s > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
              revert with 0, 17
          if 14 == uint8(cd[idx]) >> 248:
              if mem[_732 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                  revert with 0, 17
              if 1000 * mem[_732 + 18 len 14] > !(997 * s):
                  revert with 0, 17
              if 997 * s and mem[_732 + 50 len 14] > -1 / 997 * s:
                  revert with 0, 17
              if not (1000 * mem[_732 + 18 len 14]) + (997 * s):
                  revert with 0, 18
              mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
              if uint8(cd[idx]) >> 248 != 13:
                  mem[mem[64] + 4] = 0
                  mem[mem[64] + 36] = 997 * s * Mask(112, 0, _790) / (1000 * Mask(112, 0, _765)) + (997 * s)
                  mem[mem[64] + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = 0
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 0, 997 * s * Mask(112, 0, _790) / (1000 * Mask(112, 0, _765)) + (997 * s), Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, 0
              else:
                  mem[mem[64] + 4] = 997 * s * Mask(112, 0, _790) / (1000 * Mask(112, 0, _765)) + (997 * s)
                  mem[mem[64] + 36] = 0
                  mem[mem[64] + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
                  mem[mem[64] + 100] = 128
                  mem[mem[64] + 132] = 0
                  require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
                  call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                       gas gas_remaining wei
                      args 997 * s * Mask(112, 0, _790) / (1000 * Mask(112, 0, _765)) + (997 * s), 0, Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, 0
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
              s = uint8(cd[idx]) >> 248
              s = 997 * s * Mask(112, 0, _790) / (1000 * Mask(112, 0, _765)) + (997 * s)
              idx = idx + 24
              continue 
          if mem[_732 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
              revert with 0, 17
          if 1000 * mem[_732 + 50 len 14] > !(997 * s):
              revert with 0, 17
          if 997 * s and mem[_732 + 18 len 14] > -1 / 997 * s:
              revert with 0, 17
          if not (1000 * mem[_732 + 50 len 14]) + (997 * s):
              revert with 0, 18
          mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
          if uint8(cd[idx]) >> 248 != 13:
              mem[mem[64] + 4] = 0
              mem[mem[64] + 36] = 997 * s * Mask(112, 0, _765) / (1000 * Mask(112, 0, _790)) + (997 * s)
              mem[mem[64] + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = 0
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, 997 * s * Mask(112, 0, _765) / (1000 * Mask(112, 0, _790)) + (997 * s), Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, 0
          else:
              mem[mem[64] + 4] = 997 * s * Mask(112, 0, _765) / (1000 * Mask(112, 0, _790)) + (997 * s)
              mem[mem[64] + 36] = 0
              mem[mem[64] + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = 0
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 997 * s * Mask(112, 0, _765) / (1000 * Mask(112, 0, _790)) + (997 * s), 0, Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, 0
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          s = uint8(cd[idx]) >> 248
          s = 997 * s * Mask(112, 0, _765) / (1000 * Mask(112, 0, _790)) + (997 * s)
          idx = idx + 24
          continue 
      if uint8(cd[idx]) >> 248 != 13:
          static call Mask(64, 96, cd[(idx + 2)]) >> 96.0xdfe1681 with:
                  gas gas_remaining wei
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _733 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _759 = mem[_733]
          require mem[_733] == mem[_733 + 12 len 20]
          mem[mem[64] + 4] = Mask(64, 96, cd[(idx + 2)]) >> 96
          require ext_code.size(addr(_759))
          static call addr(_759).balanceOf(address tokenOwner) with:
                  gas gas_remaining wei
                 args (Mask(64, 96, cd[(idx + 2)]) << 96)
          mem[mem[64]] = ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _813 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 32
          _839 = mem[_813]
          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
          static call Mask(64, 96, cd[(idx + 2)]) >> 96.getReserves() with:
                  gas gas_remaining wei
          mem[mem[64] len 96] = ext_call.return_data[0 len 96]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          _920 = mem[64]
          mem[64] = mem[64] + ceil32(return_data.size)
          require return_data.size >=ΓÇ▓ 96
          _969 = mem[_920]
          require mem[_920] == mem[_920 + 18 len 14]
          _1027 = mem[_920 + 32]
          require mem[_920 + 32] == mem[_920 + 50 len 14]
          require mem[_920 + 64] == mem[_920 + 92 len 4]
          if _839 < mem[_920 + 18 len 14]:
              revert with 0, 17
          if _839 - mem[_920 + 18 len 14] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
              revert with 0, 17
          if mem[_920 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
              revert with 0, 17
          if 1000 * mem[_920 + 18 len 14] > !((997 * _839) - (997 * mem[_920 + 18 len 14])):
              revert with 0, 17
          if (997 * _839) - (997 * mem[_920 + 18 len 14]) and mem[_920 + 50 len 14] > -1 / (997 * _839) - (997 * mem[_920 + 18 len 14]):
              revert with 0, 17
          if not (3 * mem[_920 + 18 len 14]) + (997 * _839):
              revert with 0, 18
          mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
          if uint8(cd[idx]) >> 248 != 13:
              mem[mem[64] + 4] = 0
              mem[mem[64] + 36] = (997 * _839 * Mask(112, 0, _1027)) - (997 * Mask(112, 0, _969) * Mask(112, 0, _1027)) / (3 * Mask(112, 0, _969)) + (997 * _839)
              mem[mem[64] + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = 0
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args 0, (997 * _839 * Mask(112, 0, _1027)) - (997 * Mask(112, 0, _969) * Mask(112, 0, _1027)) / (3 * Mask(112, 0, _969)) + (997 * _839), Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, 0
          else:
              mem[mem[64] + 4] = (997 * _839 * Mask(112, 0, _1027)) - (997 * Mask(112, 0, _969) * Mask(112, 0, _1027)) / (3 * Mask(112, 0, _969)) + (997 * _839)
              mem[mem[64] + 36] = 0
              mem[mem[64] + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
              mem[mem[64] + 100] = 128
              mem[mem[64] + 132] = 0
              require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
              call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
                   gas gas_remaining wei
                  args (997 * _839 * Mask(112, 0, _1027)) - (997 * Mask(112, 0, _969) * Mask(112, 0, _1027)) / (3 * Mask(112, 0, _969)) + (997 * _839), 0, Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, 0
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          s = uint8(cd[idx]) >> 248
          s = (997 * _839 * Mask(112, 0, _1027)) - (997 * Mask(112, 0, _969) * Mask(112, 0, _1027)) / (3 * Mask(112, 0, _969)) + (997 * _839)
          idx = idx + 24
          continue 
      static call Mask(64, 96, cd[(idx + 2)]) >> 96.token1() with:
              gas gas_remaining wei
      mem[mem[64]] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      _734 = mem[64]
      mem[64] = mem[64] + ceil32(return_data.size)
      require return_data.size >=ΓÇ▓ 32
      _760 = mem[_734]
      require mem[_734] == mem[_734 + 12 len 20]
      mem[mem[64] + 4] = Mask(64, 96, cd[(idx + 2)]) >> 96
      require ext_code.size(addr(_760))
      static call addr(_760).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args (Mask(64, 96, cd[(idx + 2)]) << 96)
      mem[mem[64]] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      _814 = mem[64]
      mem[64] = mem[64] + ceil32(return_data.size)
      require return_data.size >=ΓÇ▓ 32
      _840 = mem[_814]
      require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
      static call Mask(64, 96, cd[(idx + 2)]) >> 96.getReserves() with:
              gas gas_remaining wei
      mem[mem[64] len 96] = ext_call.return_data[0 len 96]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      _921 = mem[64]
      mem[64] = mem[64] + ceil32(return_data.size)
      require return_data.size >=ΓÇ▓ 96
      _970 = mem[_921]
      require mem[_921] == mem[_921 + 18 len 14]
      _1028 = mem[_921 + 32]
      require mem[_921 + 32] == mem[_921 + 50 len 14]
      require mem[_921 + 64] == mem[_921 + 92 len 4]
      if _840 < mem[_921 + 50 len 14]:
          revert with 0, 17
      if _840 - mem[_921 + 50 len 14] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
          revert with 0, 17
      if mem[_921 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
          revert with 0, 17
      if 1000 * mem[_921 + 50 len 14] > !((997 * _840) - (997 * mem[_921 + 50 len 14])):
          revert with 0, 17
      if (997 * _840) - (997 * mem[_921 + 50 len 14]) and mem[_921 + 18 len 14] > -1 / (997 * _840) - (997 * mem[_921 + 50 len 14]):
          revert with 0, 17
      if not (3 * mem[_921 + 50 len 14]) + (997 * _840):
          revert with 0, 18
      mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
      if uint8(cd[idx]) >> 248 != 13:
          mem[mem[64] + 4] = 0
          mem[mem[64] + 36] = (997 * _840 * Mask(112, 0, _970)) - (997 * Mask(112, 0, _1028) * Mask(112, 0, _970)) / (3 * Mask(112, 0, _1028)) + (997 * _840)
          mem[mem[64] + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
          mem[mem[64] + 100] = 128
          mem[mem[64] + 132] = 0
          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args 0, (997 * _840 * Mask(112, 0, _970)) - (997 * Mask(112, 0, _1028) * Mask(112, 0, _970)) / (3 * Mask(112, 0, _1028)) + (997 * _840), Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, 0
      else:
          mem[mem[64] + 4] = (997 * _840 * Mask(112, 0, _970)) - (997 * Mask(112, 0, _1028) * Mask(112, 0, _970)) / (3 * Mask(112, 0, _1028)) + (997 * _840)
          mem[mem[64] + 36] = 0
          mem[mem[64] + 68] = Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) >> 96
          mem[mem[64] + 100] = 128
          mem[mem[64] + 132] = 0
          require ext_code.size(Mask(64, 96, cd[(idx + 2)]) >> 96)
          call Mask(64, 96, cd[(idx + 2)]) >> 96.0x22c0d9f with:
               gas gas_remaining wei
              args (997 * _840 * Mask(112, 0, _970)) - (997 * Mask(112, 0, _1028) * Mask(112, 0, _970)) / (3 * Mask(112, 0, _1028)) + (997 * _840), 0, Mask(64, 96, cd[((uint16(cd[(idx + 22)]) >> 240) + 356)]) << 96, 128, 0
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      s = uint8(cd[idx]) >> 248
      s = (997 * _840 * Mask(112, 0, _970)) - (997 * Mask(112, 0, _1028) * Mask(112, 0, _970)) / (3 * Mask(112, 0, _1028)) + (997 * _840)
      idx = idx + 24
      continue 
  if not ('cd', 36).length:
      revert with 0, 50
  mem[mem[64] + 4] = caller
  mem[mem[64] + 36] = ('cd', 36)
  require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
  call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args caller, ('cd', 36)
  mem[mem[64]] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  _679 = mem[64]
  mem[64] = mem[64] + ceil32(return_data.size)
  require return_data.size >=ΓÇ▓ 32
  require mem[_679] == bool(mem[_679])


