// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_bank_account_member1.dart';

/// auto generated
/// Composed type wrapper for classes [CardsPostRequestBodyBankAccountMember1], [String?]
class CardsPostRequestBodyBankAccount implements Parsable {
  ///  Composed type representation for type [CardsPostRequestBodyBankAccountMember1]
  CardsPostRequestBodyBankAccountMember1?
      cardsPostRequestBodyBankAccountMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBodyBankAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = CardsPostRequestBodyBankAccount();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.cardsPostRequestBodyBankAccountMember1 =
          CardsPostRequestBodyBankAccountMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (cardsPostRequestBodyBankAccountMember1 != null) {
      cardsPostRequestBodyBankAccountMember1!
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
      writer.writeObjectValue<CardsPostRequestBodyBankAccountMember1>(
          null, cardsPostRequestBodyBankAccountMember1);
    }
  }
}
