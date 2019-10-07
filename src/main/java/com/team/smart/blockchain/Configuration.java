package com.team.smart.blockchain;

import java.math.BigInteger;

public class Configuration {

    // see https://www.reddit.com/r/ethereum/comments/5g8ia6/attention_miners_we_recommend_raising_gas_limit/
    public static final BigInteger GAS_PRICE = BigInteger.valueOf(20_000_000_000L);

    // http://ethereum.stackexchange.com/questions/1832/cant-send-transaction-exceeds-block-gas-limit-or-intrinsic-gas-too-low
    public static final BigInteger GAS_LIMIT_ETHER_TX = BigInteger.valueOf(21_000);
    public static final BigInteger GAS_LIMIT_GREETER_TX = BigInteger.valueOf(500_000L);
    public static String RPC_URL = "https://ropsten.infura.io/v3/8540293cf7684d2594ff48e7cb44d34f";

    public static String contractAddress="0xac13e24c118c79b371441b35bb143e16d4aef00f";
    public static String contractOwner = "0x20BB5789f444e47a88c366f0bfE41EcB3c75BD4C";
}
