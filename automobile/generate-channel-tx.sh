# Generates the orderer | generate the airline channel transaction

# export ORDERER_GENERAL_LOGLEVEL=debug
export FABRIC_LOGGING_SPEC=INFO
export FABRIC_CFG_PATH=$PWD

function usage {
    echo "./generate-channel-tx.sh "
    echo "     Creates the automobile-channel.tx for the channel airlinechannel"
}

echo    '================ Writing airlinechannel ================'

configtxgen -profile AutomobileChannel -outputCreateChannelTx ./automobile-channel.tx -channelID automobilechannel



echo    '======= Done. Launch by executing orderer ======'
