// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_resource_recurring_interval.dart';
import './quotes_resource_total_details.dart';

/// auto generated
class QuotesResourceRecurring implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Total before any discounts or taxes are applied.
  int? amountSubtotal;

  ///  Total after discounts and taxes are applied.
  int? amountTotal;

  ///  The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
  QuotesResourceRecurringInterval? interval;

  ///  The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
  int? intervalCount;

  ///  The total_details property
  QuotesResourceTotalDetails? totalDetails;

  /// Instantiates a new [QuotesResourceRecurring] and sets the default values.
  QuotesResourceRecurring() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceRecurring createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesResourceRecurring();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_subtotal'] =
        (node) => amountSubtotal = node.getIntValue();
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<QuotesResourceRecurringInterval>((stringValue) =>
            QuotesResourceRecurringInterval.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_count'] =
        (node) => intervalCount = node.getIntValue();
    deserializerMap['total_details'] = (node) => totalDetails =
        node.getObjectValue<QuotesResourceTotalDetails>(
            QuotesResourceTotalDetails.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_subtotal', amountSubtotal);
    writer.writeIntValue('amount_total', amountTotal);
    writer.writeEnumValue<QuotesResourceRecurringInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeObjectValue<QuotesResourceTotalDetails>(
        'total_details', totalDetails);
    writer.writeAdditionalData(additionalData);
  }
}
