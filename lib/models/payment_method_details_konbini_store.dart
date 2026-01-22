// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_konbini_store_chain.dart';

/// auto generated
class PaymentMethodDetailsKonbiniStore
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The name of the convenience store chain where the payment was completed.
  PaymentMethodDetailsKonbiniStoreChain? chain;

  /// Instantiates a new [PaymentMethodDetailsKonbiniStore] and sets the default values.
  PaymentMethodDetailsKonbiniStore() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsKonbiniStore createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsKonbiniStore();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['chain'] = (node) => chain =
        node.getEnumValue<PaymentMethodDetailsKonbiniStoreChain>(
            (stringValue) => PaymentMethodDetailsKonbiniStoreChain.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodDetailsKonbiniStoreChain>(
        'chain', chain, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
