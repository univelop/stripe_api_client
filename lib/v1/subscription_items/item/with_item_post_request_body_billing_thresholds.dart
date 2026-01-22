// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_item_post_request_body_billing_thresholds_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithItemPostRequestBodyBillingThresholdsMember1]
class WithItemPostRequestBodyBillingThresholds implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithItemPostRequestBodyBillingThresholdsMember1]
  WithItemPostRequestBodyBillingThresholdsMember1?
      withItemPostRequestBodyBillingThresholdsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithItemPostRequestBodyBillingThresholds createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithItemPostRequestBodyBillingThresholds();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withItemPostRequestBodyBillingThresholdsMember1 =
          WithItemPostRequestBodyBillingThresholdsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withItemPostRequestBodyBillingThresholdsMember1 != null) {
      withItemPostRequestBodyBillingThresholdsMember1!
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
      writer.writeObjectValue<WithItemPostRequestBodyBillingThresholdsMember1>(
          null, withItemPostRequestBodyBillingThresholdsMember1);
    }
  }
}
