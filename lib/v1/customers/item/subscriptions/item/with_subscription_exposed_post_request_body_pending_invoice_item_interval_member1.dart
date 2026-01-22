// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_pending_invoice_item_interval_member1_interval.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The interval property
  WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1Interval?
      interval;

  ///  The interval_count property
  int? intervalCount;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1Interval>(
        (stringValue) =>
            WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1Interval
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
            WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1Interval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeAdditionalData(additionalData);
  }
}
