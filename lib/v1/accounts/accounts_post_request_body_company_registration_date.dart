// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_company_registration_date_member1.dart';

/// auto generated
/// Composed type wrapper for classes [AccountsPostRequestBodyCompanyRegistrationDateMember1], [String?]
class AccountsPostRequestBodyCompanyRegistrationDate implements Parsable {
  ///  Composed type representation for type [AccountsPostRequestBodyCompanyRegistrationDateMember1]
  AccountsPostRequestBodyCompanyRegistrationDateMember1?
      accountsPostRequestBodyCompanyRegistrationDateMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyCompanyRegistrationDate
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = AccountsPostRequestBodyCompanyRegistrationDate();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.accountsPostRequestBodyCompanyRegistrationDateMember1 =
          AccountsPostRequestBodyCompanyRegistrationDateMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (accountsPostRequestBodyCompanyRegistrationDateMember1 != null) {
      accountsPostRequestBodyCompanyRegistrationDateMember1!
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
              AccountsPostRequestBodyCompanyRegistrationDateMember1>(
          null, accountsPostRequestBodyCompanyRegistrationDateMember1);
    }
  }
}
