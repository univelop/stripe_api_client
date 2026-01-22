// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_line_items_price_data_recurring_interval.dart';

/// auto generated
class PaymentLinksPostRequestBodyLineItemsPriceDataRecurring
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The interval property
  PaymentLinksPostRequestBodyLineItemsPriceDataRecurringInterval? interval;

  ///  The interval_count property
  int? intervalCount;

  /// Instantiates a new [PaymentLinksPostRequestBodyLineItemsPriceDataRecurring] and sets the default values.
  PaymentLinksPostRequestBodyLineItemsPriceDataRecurring()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyLineItemsPriceDataRecurring
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodyLineItemsPriceDataRecurring();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            PaymentLinksPostRequestBodyLineItemsPriceDataRecurringInterval>(
        (stringValue) =>
            PaymentLinksPostRequestBodyLineItemsPriceDataRecurringInterval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_count'] =
        (node) => intervalCount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentLinksPostRequestBodyLineItemsPriceDataRecurringInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeAdditionalData(additionalData);
  }
}
