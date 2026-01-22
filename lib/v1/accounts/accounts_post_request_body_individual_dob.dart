// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_individual_dob_member1.dart';

/// auto generated
/// Composed type wrapper for classes [AccountsPostRequestBodyIndividualDobMember1], [String?]
class AccountsPostRequestBodyIndividualDob implements Parsable {
  ///  Composed type representation for type [AccountsPostRequestBodyIndividualDobMember1]
  AccountsPostRequestBodyIndividualDobMember1?
      accountsPostRequestBodyIndividualDobMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyIndividualDob createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = AccountsPostRequestBodyIndividualDob();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.accountsPostRequestBodyIndividualDobMember1 =
          AccountsPostRequestBodyIndividualDobMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (accountsPostRequestBodyIndividualDobMember1 != null) {
      accountsPostRequestBodyIndividualDobMember1!
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
      writer.writeObjectValue<AccountsPostRequestBodyIndividualDobMember1>(
          null, accountsPostRequestBodyIndividualDobMember1);
    }
  }
}
