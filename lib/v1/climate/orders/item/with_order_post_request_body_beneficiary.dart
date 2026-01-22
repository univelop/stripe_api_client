// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_order_post_request_body_beneficiary_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithOrderPostRequestBodyBeneficiaryMember1]
class WithOrderPostRequestBodyBeneficiary implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithOrderPostRequestBodyBeneficiaryMember1]
  WithOrderPostRequestBodyBeneficiaryMember1?
      withOrderPostRequestBodyBeneficiaryMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithOrderPostRequestBodyBeneficiary createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithOrderPostRequestBodyBeneficiary();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withOrderPostRequestBodyBeneficiaryMember1 =
          WithOrderPostRequestBodyBeneficiaryMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withOrderPostRequestBodyBeneficiaryMember1 != null) {
      withOrderPostRequestBodyBeneficiaryMember1!
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
      writer.writeObjectValue<WithOrderPostRequestBodyBeneficiaryMember1>(
          null, withOrderPostRequestBodyBeneficiaryMember1);
    }
  }
}
