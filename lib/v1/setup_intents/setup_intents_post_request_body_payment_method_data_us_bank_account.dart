// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_data_us_bank_account_account_holder_type.dart';
import './setup_intents_post_request_body_payment_method_data_us_bank_account_account_type.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_type property
  SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccountAccountHolderType?
      accountHolderType;

  ///  The account_number property
  String? accountNumber;

  ///  The account_type property
  SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccountAccountType?
      accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections_account property
  String? financialConnectionsAccount;

  ///  The routing_number property
  String? routingNumber;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'account_holder_type'] = (node) => accountHolderType = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccountAccountHolderType>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccountAccountHolderType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['account_type'] = (node) => accountType = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccountAccountType>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccountAccountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['financial_connections_account'] =
        (node) => financialConnectionsAccount = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccountAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeStringValue('account_number', accountNumber);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccountAccountType>(
        'account_type', accountType, (e) => e?.value);
    writer.writeStringValue(
        'financial_connections_account', financialConnectionsAccount);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
