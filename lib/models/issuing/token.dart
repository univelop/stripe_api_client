// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../issuing_network_token_network_data.dart';
import './token_card.dart';
import './token_network.dart';
import './token_object.dart';
import './token_status.dart';
import './token_wallet_provider.dart';

/// auto generated
/// An issuing token object is created when an issued card is added to a digital wallet. As a [card issuer](https://docs.stripe.com/issuing), you can [view and manage these tokens](https://docs.stripe.com/issuing/controls/token-management) through Stripe.
class Token implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Card associated with this token.
  TokenCard? card;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The hashed ID derived from the device ID from the card network associated with the token.
  String? deviceFingerprint;

  ///  Unique identifier for the object.
  String? id;

  ///  The last four digits of the token.
  String? last4;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The token service provider / card network associated with the token.
  TokenNetwork? network;

  ///  The network_data property
  IssuingNetworkTokenNetworkData? networkData;

  ///  Time at which the token was last updated by the card network. Measured in seconds since the Unix epoch.
  int? networkUpdatedAt;

  ///  String representing the object's type. Objects of the same type share the same value.
  TokenObject? object;

  ///  The usage state of the token.
  TokenStatus? status;

  ///  The digital wallet for this token, if one was used.
  TokenWalletProvider? walletProvider;

  /// Instantiates a new [Token] and sets the default values.
  Token() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Token createFromDiscriminatorValue(ParseNode parseNode) {
    return Token();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<TokenCard>(TokenCard.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['device_fingerprint'] =
        (node) => deviceFingerprint = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<TokenNetwork>((stringValue) => TokenNetwork.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['network_data'] = (node) => networkData =
        node.getObjectValue<IssuingNetworkTokenNetworkData>(
            IssuingNetworkTokenNetworkData.createFromDiscriminatorValue);
    deserializerMap['network_updated_at'] =
        (node) => networkUpdatedAt = node.getIntValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TokenObject>((stringValue) => TokenObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<TokenStatus>((stringValue) => TokenStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['wallet_provider'] = (node) => walletProvider =
        node.getEnumValue<TokenWalletProvider>((stringValue) =>
            TokenWalletProvider.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TokenCard>('card', card);
    writer.writeIntValue('created', created);
    writer.writeStringValue('device_fingerprint', deviceFingerprint);
    writer.writeStringValue('id', id);
    writer.writeStringValue('last4', last4);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<TokenNetwork>('network', network, (e) => e?.value);
    writer.writeObjectValue<IssuingNetworkTokenNetworkData>(
        'network_data', networkData);
    writer.writeIntValue('network_updated_at', networkUpdatedAt);
    writer.writeEnumValue<TokenObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<TokenStatus>('status', status, (e) => e?.value);
    writer.writeEnumValue<TokenWalletProvider>(
        'wallet_provider', walletProvider, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
