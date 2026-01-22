// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_method_post_request_body_us_bank_account_account_holder_type.dart';
import './with_payment_method_post_request_body_us_bank_account_account_type.dart';

/// auto generated
/// If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
class WithPaymentMethodPostRequestBodyUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_type property
  WithPaymentMethodPostRequestBodyUsBankAccountAccountHolderType?
      accountHolderType;

  ///  The account_type property
  WithPaymentMethodPostRequestBodyUsBankAccountAccountType? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [WithPaymentMethodPostRequestBodyUsBankAccount] and sets the default values.
  WithPaymentMethodPostRequestBodyUsBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentMethodPostRequestBodyUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentMethodPostRequestBodyUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_type'] = (node) => accountHolderType =
        node.getEnumValue<
                WithPaymentMethodPostRequestBodyUsBankAccountAccountHolderType>(
            (stringValue) =>
                WithPaymentMethodPostRequestBodyUsBankAccountAccountHolderType
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['account_type'] = (node) => accountType = node
        .getEnumValue<WithPaymentMethodPostRequestBodyUsBankAccountAccountType>(
            (stringValue) =>
                WithPaymentMethodPostRequestBodyUsBankAccountAccountType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithPaymentMethodPostRequestBodyUsBankAccountAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeEnumValue<
            WithPaymentMethodPostRequestBodyUsBankAccountAccountType>(
        'account_type', accountType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
