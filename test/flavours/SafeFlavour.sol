// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../src/interfaces/ISafe.sol";

struct AccountInstance {
    address account;
    Rhinestone4337 rhinestoneManager;
    RhinestoneAuxiliary aux;
    bytes32 salt;
}

struct Auxiliary {
    EntryPoint entrypoint;
    Rhinestone4337 rhinestoneManager;
    IBootstrap rhinestoneBootstrap;
    IProtocol rhinestoneProtocol;
    IValidator validator;
    IRecovery recovery;
    IRegistry registry;
    AccountFlavour accountFlavour;
}

struct AccountFlavour {
    SafeProxyFactory accountFactory;
    ISafe accountSingleton;
}