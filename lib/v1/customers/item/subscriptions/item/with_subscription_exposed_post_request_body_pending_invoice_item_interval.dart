// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_pending_invoice_item_interval_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1]
class WithSubscriptionExposedPostRequestBodyPendingInvoiceItemInterval
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1]
  WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1?
      withSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPendingInvoiceItemInterval
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithSubscriptionExposedPostRequestBodyPendingInvoiceItemInterval();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1 =
          WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1 !=
        null) {
      withSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              WithSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1>(
          null,
          withSubscriptionExposedPostRequestBodyPendingInvoiceItemIntervalMember1);
    }
  }
}
