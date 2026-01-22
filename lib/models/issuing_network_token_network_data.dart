// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_network_token_device.dart';
import './issuing_network_token_mastercard.dart';
import './issuing_network_token_network_data_type.dart';
import './issuing_network_token_visa.dart';
import './issuing_network_token_wallet_provider.dart';

/// auto generated
class IssuingNetworkTokenNetworkData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The device property
  IssuingNetworkTokenDevice? device;

  ///  The mastercard property
  IssuingNetworkTokenMastercard? mastercard;

  ///  The network that the token is associated with. An additional hash is included with a name matching this value, containing tokenization data specific to the card network.
  IssuingNetworkTokenNetworkDataType? type_;

  ///  The visa property
  IssuingNetworkTokenVisa? visa;

  ///  The wallet_provider property
  IssuingNetworkTokenWalletProvider? walletProvider;

  /// Instantiates a new [IssuingNetworkTokenNetworkData] and sets the default values.
  IssuingNetworkTokenNetworkData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingNetworkTokenNetworkData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingNetworkTokenNetworkData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['device'] = (node) => device =
        node.getObjectValue<IssuingNetworkTokenDevice>(
            IssuingNetworkTokenDevice.createFromDiscriminatorValue);
    deserializerMap['mastercard'] = (node) => mastercard =
        node.getObjectValue<IssuingNetworkTokenMastercard>(
            IssuingNetworkTokenMastercard.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<IssuingNetworkTokenNetworkDataType>((stringValue) =>
            IssuingNetworkTokenNetworkDataType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['visa'] = (node) => visa =
        node.getObjectValue<IssuingNetworkTokenVisa>(
            IssuingNetworkTokenVisa.createFromDiscriminatorValue);
    deserializerMap['wallet_provider'] = (node) => walletProvider =
        node.getObjectValue<IssuingNetworkTokenWalletProvider>(
            IssuingNetworkTokenWalletProvider.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingNetworkTokenDevice>('device', device);
    writer.writeObjectValue<IssuingNetworkTokenMastercard>(
        'mastercard', mastercard);
    writer.writeEnumValue<IssuingNetworkTokenNetworkDataType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<IssuingNetworkTokenVisa>('visa', visa);
    writer.writeObjectValue<IssuingNetworkTokenWalletProvider>(
        'wallet_provider', walletProvider);
    writer.writeAdditionalData(additionalData);
  }
}
