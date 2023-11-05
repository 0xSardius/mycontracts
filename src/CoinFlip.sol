// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract CoinFlip {
    enum CoinSide {HEADS, TAILS}
    enum FlipResult {WIN, LOSE}

    // Logs player address, side they chose, and whether they were correct
    event Result(address indexed player, CoinSide chosenSide, FlipResult result);

    function flipCoin(CoinSide chosenSide) public {
        // Generate a pseudo-random number between 0 and 1. Should use Chainlink IRL!
        uint256 randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % 2;

        CoinSide result = CoinSide(randomNumber);

        FlipResult flipResult = (chosenSide == result) ? FlipResult.WIN : FlipResult.LOSE;

        emit Result(msg.sender, chosenSide, flipResult);
    }
}