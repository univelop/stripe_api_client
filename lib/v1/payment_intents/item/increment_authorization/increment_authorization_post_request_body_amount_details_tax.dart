// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './increment_authorization_post_request_body_amount_details_tax_member1.dart';

/// auto generated
/// Composed type wrapper for classes [IncrementAuthorizationPostRequestBodyAmountDetailsTaxMember1], [String?]
class IncrementAuthorizationPostRequestBodyAmountDetailsTax
    implements Parsable {
  ///  Composed type representation for type [IncrementAuthorizationPostRequestBodyAmountDetailsTaxMember1]
  IncrementAuthorizationPostRequestBodyAmountDetailsTaxMember1?
      incrementAuthorizationPostRequestBodyAmountDetailsTaxMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IncrementAuthorizationPostRequestBodyAmountDetailsTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = IncrementAuthorizationPostRequestBodyAmountDetailsTax();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.incrementAuthorizationPostRequestBodyAmountDetailsTaxMember1 =
          IncrementAuthorizationPostRequestBodyAmountDetailsTaxMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (incrementAuthorizationPostRequestBodyAmountDetailsTaxMember1 != null) {
      incrementAuthorizationPostRequestBodyAmountDetailsTaxMember1!
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
              IncrementAuthorizationPostRequestBodyAmountDetailsTaxMember1>(
          null, incrementAuthorizationPostRequestBodyAmountDetailsTaxMember1);
    }
  }
}
