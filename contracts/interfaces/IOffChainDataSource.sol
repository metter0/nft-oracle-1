// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

/// @title IOffChainDataSource
/// @notice Interface for interacting with an off-chain data source
interface IOffChainDataSource {
    /**
     * @notice Retrieves data associated with a specific user
     * @param user The address of the user whose data is being queried
     * @return data The data associated with the given user
     */
    function getData(address user) external view returns (string memory data);

    /**
     * @notice Initiates loading of data from an off-chain source
     * @param user The address of the user for whom data is being loaded
     * @param url The URL of the off-chain data source
     * @param path The specific path within the data source to fetch
     */
    function load(address user, string memory url, string memory path) external;
}
