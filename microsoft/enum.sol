// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract shippingStatus {
  
  enum Status{
    pending,
    shipped,
    accepted,
    rejected,
    canceled
  }
  Status public status; 
  
  function get() public view returns (Status){
    return status;
  }

  function set(Status _status) public {
    status = _status;
  }


  function cancel() public {
    status = Status.canceled;
  }

  function Delete() public {
    delete status;
  }
}