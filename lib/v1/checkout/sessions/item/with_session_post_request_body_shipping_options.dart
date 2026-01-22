// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_session_post_request_body_shipping_options_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithSessionPostRequestBodyShippingOptionsMember1>], [String?]
class WithSessionPostRequestBodyShippingOptions implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithSessionPostRequestBodyShippingOptionsMember1>]
  Iterable<WithSessionPostRequestBodyShippingOptionsMember1>?
      withSessionPostRequestBodyShippingOptionsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSessionPostRequestBodyShippingOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithSessionPostRequestBodyShippingOptions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithSessionPostRequestBodyShippingOptionsMember1>(
            WithSessionPostRequestBodyShippingOptionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withSessionPostRequestBodyShippingOptionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithSessionPostRequestBodyShippingOptionsMember1>(
              WithSessionPostRequestBodyShippingOptionsMember1
                  .createFromDiscriminatorValue);
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else if (withSessionPostRequestBodyShippingOptionsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithSessionPostRequestBodyShippingOptionsMember1>(
          null, withSessionPostRequestBodyShippingOptionsMember1);
    }
  }
}
