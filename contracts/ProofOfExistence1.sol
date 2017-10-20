pragma solidity ^0.4.4;

contract existence {

	bytes32 public proof;
	address owner;

  function existence() {
  	owner = msg.sender; // save the owner.
  }

  function doc2sha(string document) returns (bytes32) {
  	return sha256(document); // convert the document string to bytes32 (sha256)
  }

  function store(string document) {
  	proof = doc2sha(document); // then save it into a constant called proof.
  }

  function destroy() {
  	if(msg.sender == owner) {
  		selfdesruct(owner); // if you want to delete the existence of the document and recieve the ether, then this would help!
  	}
  }

}
