#!/usr/bin/env bash
set -e

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
pushd $SCRIPT_DIR

clean_up () {
    popd
}
trap clean_up EXIT

bin/dogechain genesis \
    --pos \
    --epoch-size 300 \
    --chain-id 23347 \
    --consensus ibft \
    --bootnode /ip4/10.5.0.15/tcp/1478/p2p/16Uiu2HAm7oonKfext8YgFCAMNWZKuXP2dpvnamCrN2VxjqTS54y3 \
    --ibft-validator 0xC035596a28ed3C5E357baf2860baCB6d665E81d5 \
    --ibft-validator 0x20E088469849516610a759C7Bd60434298a91589 \
    --ibft-validator 0x8F869426530DC8653d347B64be1A9420d5F8eD89 \
    --ibft-validator 0xcB4a9D4419f1cE42E5AC993A6E571C7587474C6E \
    --premine 0x23d7B7be9B63e63F2e76b39bEA23BcD517731a0b:0x3635C9ADC5DEA0000000 \
    --premine 0x612C307ae887230B3A5c7B0F93DeF10FF65cb722:0x3635C9ADC5DEA0000000 \
    --premine 0x3e6e4eA30e00965d902718c04095d2934366407A:0x3635C9ADC5DEA0000000 \
    --premine 0x21dc979ebc01E2dAED3f0792C13513CBe379E49A:0x3635C9ADC5DEA0000000 \
    --validatorset-owner 0x20E088469849516610a759C7Bd60434298a91589

