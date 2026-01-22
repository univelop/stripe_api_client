// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_add_invoice_items_period_start_type.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp property
  int? timestamp;

  ///  The type property
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStartType? type_;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart] and sets the default values.
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['timestamp'] = (node) => timestamp = node.getIntValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStartType>(
        (stringValue) =>
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStartType
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
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStartType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
