// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './prices_post_request_body_recurring_interval.dart';
import './prices_post_request_body_recurring_usage_type.dart';

/// auto generated
/// The recurring components of a price such as `interval` and `usage_type`.
class PricesPostRequestBodyRecurring implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The interval property
  PricesPostRequestBodyRecurringInterval? interval;

  ///  The interval_count property
  int? intervalCount;

  ///  The meter property
  String? meter;

  ///  The usage_type property
  PricesPostRequestBodyRecurringUsageType? usageType;

  /// Instantiates a new [PricesPostRequestBodyRecurring] and sets the default values.
  PricesPostRequestBodyRecurring() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PricesPostRequestBodyRecurring createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PricesPostRequestBodyRecurring();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<PricesPostRequestBodyRecurringInterval>(
            (stringValue) => PricesPostRequestBodyRecurringInterval.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_count'] =
        (node) => intervalCount = node.getIntValue();
    deserializerMap['meter'] = (node) => meter = node.getStringValue();
    deserializerMap['usage_type'] = (node) => usageType =
        node.getEnumValue<PricesPostRequestBodyRecurringUsageType>(
            (stringValue) => PricesPostRequestBodyRecurringUsageType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PricesPostRequestBodyRecurringInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeStringValue('meter', meter);
    writer.writeEnumValue<PricesPostRequestBodyRecurringUsageType>(
        'usage_type', usageType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
