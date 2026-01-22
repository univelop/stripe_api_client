// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_crypto_network.dart';
import './payment_method_details_crypto_token_currency.dart';

/// auto generated
class PaymentMethodDetailsCrypto implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The wallet address of the customer.
  String? buyerAddress;

  ///  The blockchain network that the transaction was sent on.
  PaymentMethodDetailsCryptoNetwork? network;

  ///  The token currency that the transaction was sent with.
  PaymentMethodDetailsCryptoTokenCurrency? tokenCurrency;

  ///  The blockchain transaction hash of the crypto payment.
  String? transactionHash;

  /// Instantiates a new [PaymentMethodDetailsCrypto] and sets the default values.
  PaymentMethodDetailsCrypto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsCrypto createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsCrypto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['buyer_address'] =
        (node) => buyerAddress = node.getStringValue();
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<PaymentMethodDetailsCryptoNetwork>((stringValue) =>
            PaymentMethodDetailsCryptoNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['token_currency'] = (node) => tokenCurrency =
        node.getEnumValue<PaymentMethodDetailsCryptoTokenCurrency>(
            (stringValue) => PaymentMethodDetailsCryptoTokenCurrency.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transaction_hash'] =
        (node) => transactionHash = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('buyer_address', buyerAddress);
    writer.writeEnumValue<PaymentMethodDetailsCryptoNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<PaymentMethodDetailsCryptoTokenCurrency>(
        'token_currency', tokenCurrency, (e) => e?.value);
    writer.writeStringValue('transaction_hash', transactionHash);
    writer.writeAdditionalData(additionalData);
  }
}
