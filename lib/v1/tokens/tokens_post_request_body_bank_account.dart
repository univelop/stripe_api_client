// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_bank_account_account_holder_type.dart';
import './tokens_post_request_body_bank_account_account_type.dart';

/// auto generated
/// The bank account this token will represent.
class TokensPostRequestBodyBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_name property
  String? accountHolderName;

  ///  The account_holder_type property
  TokensPostRequestBodyBankAccountAccountHolderType? accountHolderType;

  ///  The account_number property
  String? accountNumber;

  ///  The account_type property
  TokensPostRequestBodyBankAccountAccountType? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The country property
  String? country;

  ///  The currency property
  String? currency;

  ///  The payment_method property
  String? paymentMethod;

  ///  The routing_number property
  String? routingNumber;

  /// Instantiates a new [TokensPostRequestBodyBankAccount] and sets the default values.
  TokensPostRequestBodyBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyBankAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_holder_type'] = (node) => accountHolderType =
        node.getEnumValue<TokensPostRequestBodyBankAccountAccountHolderType>(
            (stringValue) => TokensPostRequestBodyBankAccountAccountHolderType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['account_type'] = (node) => accountType =
        node.getEnumValue<TokensPostRequestBodyBankAccountAccountType>(
            (stringValue) => TokensPostRequestBodyBankAccountAccountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeEnumValue<TokensPostRequestBodyBankAccountAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeStringValue('account_number', accountNumber);
    writer.writeEnumValue<TokensPostRequestBodyBankAccountAccountType>(
        'account_type', accountType, (e) => e?.value);
    writer.writeStringValue('country', country);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
