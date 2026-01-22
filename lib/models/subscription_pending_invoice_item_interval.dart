// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_pending_invoice_item_interval_interval.dart';

/// auto generated
class SubscriptionPendingInvoiceItemInterval
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Specifies invoicing frequency. Either `day`, `week`, `month` or `year`.
  SubscriptionPendingInvoiceItemIntervalInterval? interval;

  ///  The number of intervals between invoices. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
  int? intervalCount;

  /// Instantiates a new [SubscriptionPendingInvoiceItemInterval] and sets the default values.
  SubscriptionPendingInvoiceItemInterval() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionPendingInvoiceItemInterval createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionPendingInvoiceItemInterval();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<SubscriptionPendingInvoiceItemIntervalInterval>(
            (stringValue) => SubscriptionPendingInvoiceItemIntervalInterval
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
    writer.writeEnumValue<SubscriptionPendingInvoiceItemIntervalInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeAdditionalData(additionalData);
  }
}
