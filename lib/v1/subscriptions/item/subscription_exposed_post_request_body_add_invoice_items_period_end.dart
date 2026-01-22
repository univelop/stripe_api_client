// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_add_invoice_items_period_end_type.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp property
  int? timestamp;

  ///  The type property
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEndType? type_;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd] and sets the default values.
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['timestamp'] = (node) => timestamp = node.getIntValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEndType>(
        (stringValue) =>
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEndType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('timestamp', timestamp);
    writer.writeEnumValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEndType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
