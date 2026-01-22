// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_stripe_s700_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithConfigurationPostRequestBodyStripeS700Member1]
class WithConfigurationPostRequestBodyStripeS700 implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithConfigurationPostRequestBodyStripeS700Member1]
  WithConfigurationPostRequestBodyStripeS700Member1?
      withConfigurationPostRequestBodyStripeS700Member1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyStripeS700
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithConfigurationPostRequestBodyStripeS700();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withConfigurationPostRequestBodyStripeS700Member1 =
          WithConfigurationPostRequestBodyStripeS700Member1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withConfigurationPostRequestBodyStripeS700Member1 != null) {
      withConfigurationPostRequestBodyStripeS700Member1!
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
      writer
          .writeObjectValue<WithConfigurationPostRequestBodyStripeS700Member1>(
              null, withConfigurationPostRequestBodyStripeS700Member1);
    }
  }
}
