// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_amount_details_member1_tax_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithIntentPostRequestBodyAmountDetailsMember1TaxMember1]
class WithIntentPostRequestBodyAmountDetailsMember1Tax implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithIntentPostRequestBodyAmountDetailsMember1TaxMember1]
  WithIntentPostRequestBodyAmountDetailsMember1TaxMember1?
      withIntentPostRequestBodyAmountDetailsMember1TaxMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyAmountDetailsMember1Tax
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithIntentPostRequestBodyAmountDetailsMember1Tax();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withIntentPostRequestBodyAmountDetailsMember1TaxMember1 =
          WithIntentPostRequestBodyAmountDetailsMember1TaxMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withIntentPostRequestBodyAmountDetailsMember1TaxMember1 != null) {
      withIntentPostRequestBodyAmountDetailsMember1TaxMember1!
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
              WithIntentPostRequestBodyAmountDetailsMember1TaxMember1>(
          null, withIntentPostRequestBodyAmountDetailsMember1TaxMember1);
    }
  }
}
