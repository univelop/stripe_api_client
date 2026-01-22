// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_tipping_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfigurationsPostRequestBodyTippingMember1], [String?]
class ConfigurationsPostRequestBodyTipping implements Parsable {
  ///  Composed type representation for type [ConfigurationsPostRequestBodyTippingMember1]
  ConfigurationsPostRequestBodyTippingMember1?
      configurationsPostRequestBodyTippingMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyTipping createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = ConfigurationsPostRequestBodyTipping();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.configurationsPostRequestBodyTippingMember1 =
          ConfigurationsPostRequestBodyTippingMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (configurationsPostRequestBodyTippingMember1 != null) {
      configurationsPostRequestBodyTippingMember1!
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
      writer.writeObjectValue<ConfigurationsPostRequestBodyTippingMember1>(
          null, configurationsPostRequestBodyTippingMember1);
    }
  }
}
