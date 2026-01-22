// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_items_post_request_body_price_data_recurring_interval.dart';

/// auto generated
class SubscriptionItemsPostRequestBodyPriceDataRecurring
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The interval property
  SubscriptionItemsPostRequestBodyPriceDataRecurringInterval? interval;

  ///  The interval_count property
  int? intervalCount;

  /// Instantiates a new [SubscriptionItemsPostRequestBodyPriceDataRecurring] and sets the default values.
  SubscriptionItemsPostRequestBodyPriceDataRecurring() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionItemsPostRequestBodyPriceDataRecurring
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionItemsPostRequestBodyPriceDataRecurring();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            SubscriptionItemsPostRequestBodyPriceDataRecurringInterval>(
        (stringValue) =>
            SubscriptionItemsPostRequestBodyPriceDataRecurringInterval.values
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
            SubscriptionItemsPostRequestBodyPriceDataRecurringInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeAdditionalData(additionalData);
  }
}
