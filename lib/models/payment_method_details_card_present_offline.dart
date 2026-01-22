// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_card_present_offline_type.dart';

/// auto generated
class PaymentMethodDetailsCardPresentOffline
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the payment was collected while offline
  int? storedAt;

  ///  The method used to process this payment method offline. Only deferred is allowed.
  PaymentMethodDetailsCardPresentOfflineType? type_;

  /// Instantiates a new [PaymentMethodDetailsCardPresentOffline] and sets the default values.
  PaymentMethodDetailsCardPresentOffline() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsCardPresentOffline createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsCardPresentOffline();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['stored_at'] = (node) => storedAt = node.getIntValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentMethodDetailsCardPresentOfflineType>(
            (stringValue) => PaymentMethodDetailsCardPresentOfflineType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('stored_at', storedAt);
    writer.writeEnumValue<PaymentMethodDetailsCardPresentOfflineType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
