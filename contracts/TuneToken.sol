pragma solidity ^0.4.9;

import './zeppelin/token/StandardToken.sol';
import './zeppelin/lifecycle/Pausable.sol';

contract TuneToken is Pausable, StandardToken {

  string public name;
  string public symbol;
  uint public decimals;
  address public upgradedAddress;
  bool public deprecated;

  //  The contract can be initialized with a number of tokens
  //  All the tokens are deposited to the owner address
  //
  // @param _balance Initial supply of the contract
  // @param _name Token Name
  // @param _symbol Token symbol
  // @param _decimals Token decimals
  function TuneToken(uint _initialSupply, string _name, string _symbol, uint _decimals){
      _totalSupply = _initialSupply;
      name = _name;
      symbol = _symbol;
      decimals = _decimals;
      balances[owner] = _initialSupply;
      deprecated = false;
  }

  // // Forward ERC20 methods to upgraded contract if this one is deprecated
  // function transfer(address _to, uint _value) whenNotPaused {
  //   if (deprecated) {
  //     return StandardToken(upgradedAddress).transfer(_to, _value);
  //   } else {
  //     return super.transfer(_to, _value);
  //   }
  // }

  // // Forward ERC20 methods to upgraded contract if this one is deprecated
  // function transferFrom(address _from, address _to, uint _value) whenNotPaused {
  //   if (deprecated) {
  //     return StandardToken(upgradedAddress).transferFrom(_from, _to, _value);
  //   } else {
  //     return super.transferFrom(_from, _to, _value);
  //   }
  // }

  // // Forward ERC20 methods to upgraded contract if this one is deprecated
  // function balanceOf(address who) constant returns (uint){
  //   if (deprecated) {
  //     return StandardToken(upgradedAddress).balanceOf(who);
  //   } else {
  //     return super.balanceOf(who);
  //   }
  // }

  // // Forward ERC20 methods to upgraded contract if this one is deprecated
  // function approve(address _spender, uint _value) onlyPayloadSize(2 * 32) {
  //   if (deprecated) {
  //     return StandardToken(upgradedAddress).approve(_spender, _value);
  //   } else {
  //     return super.approve(_spender, _value);
  //   }
  // }

  // // Forward ERC20 methods to upgraded contract if this one is deprecated
  // function allowance(address _owner, address _spender) constant returns (uint remaining) {
  //   if (deprecated) {
  //     return StandardToken(upgradedAddress).allowance(_owner, _spender);
  //   } else {
  //     return super.allowance(_owner, _spender);
  //   }
  // }

  // // deprecate current contract in favour of a new one
  // function deprecate(address _upgradedAddress) onlyOwner {
  //   deprecated = true;
  //   upgradedAddress = _upgradedAddress;
  //   Deprecate(_upgradedAddress);
  // }

  // // deprecate current contract if favour of a new one
  // function totalSupply() constant returns (uint){
  //   if (deprecated) {
  //     return StandardToken(upgradedAddress).totalSupply();
  //   } else {
  //     return _totalSupply;
  //   }
  // }

  // // Issue a new amount of tokens
  // // these tokens are deposited into the owner address
  // //
  // // @param _amount Number of tokens to be issued
  // function issue(uint amount) onlyOwner {
  //   if (_totalSupply + amount < _totalSupply) throw;
  //   if (balances[owner] + amount < balances[owner]) throw;

  //   balances[owner] += amount;
  //   _totalSupply += amount;
  //   Issue(amount);
  // }

  // // Redeem tokens.
  // // These tokens are withdrawn from the owner address
  // // if the balance must be enough to cover the redeem
  // // or the call will fail.
  // // @param _amount Number of tokens to be issued
  // function redeem(uint amount) onlyOwner {
  //     if (_totalSupply < amount) throw;
  //     if (balances[owner] < amount) throw;

  //     _totalSupply -= amount;
  //     balances[owner] -= amount;
  //     Redeem(amount);
  // }

  // function setParams(uint newBasisPoints, uint newMaxFee) onlyOwner {
  //     // Ensure transparency by hardcoding limit beyond which fees can never be added
  //     if (newBasisPoints > 20) throw;
  //     if (newMaxFee > 50) throw;

  //     basisPointsRate = newBasisPoints;
  //     maximumFee = newMaxFee.mul(10**decimals);

  //     Params(basisPointsRate, maximumFee);
  // }

  // // Called when new token are issued
  // event Issue(uint amount);

  // // Called when tokens are redeemed
  // event Redeem(uint amount);

  // // Called when contract is deprecated
  // event Deprecate(address newAddress);

  // // Called if contract ever adds fees
  // event Params(uint feeBasisPoints, uint maxFee);
}
