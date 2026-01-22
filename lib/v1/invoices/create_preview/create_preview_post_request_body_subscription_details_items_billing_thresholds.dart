// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_subscription_details_items_billing_thresholds_member1.dart';

/// auto generated
/// Composed type wrapper for classes [CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1], [String?]
class CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholds
    implements Parsable {
  ///  Composed type representation for type [CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1]
  CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1?
      createPreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholds
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholds();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.createPreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1 =
          CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (createPreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1 !=
        null) {
      createPreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1!
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
              CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1>(
          null,
          createPreviewPostRequestBodySubscriptionDetailsItemsBillingThresholdsMember1);
    }
  }
}
