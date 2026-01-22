// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_methods_post_request_body_us_bank_account_account_holder_type.dart';
import './payment_methods_post_request_body_us_bank_account_account_type.dart';

/// auto generated
/// If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
class PaymentMethodsPostRequestBodyUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_type property
  PaymentMethodsPostRequestBodyUsBankAccountAccountHolderType?
      accountHolderType;

  ///  The account_number property
  String? accountNumber;

  ///  The account_type property
  PaymentMethodsPostRequestBodyUsBankAccountAccountType? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections_account property
  String? financialConnectionsAccount;

  ///  The routing_number property
  String? routingNumber;

  /// Instantiates a new [PaymentMethodsPostRequestBodyUsBankAccount] and sets the default values.
  PaymentMethodsPostRequestBodyUsBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodsPostRequestBodyUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodsPostRequestBodyUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_type'] = (node) => accountHolderType =
        node.getEnumValue<
                PaymentMethodsPostRequestBodyUsBankAccountAccountHolderType>(
            (stringValue) =>
                PaymentMethodsPostRequestBodyUsBankAccountAccountHolderType
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['account_type'] = (node) => accountType = node
        .getEnumValue<PaymentMethodsPostRequestBodyUsBankAccountAccountType>(
            (stringValue) =>
                PaymentMethodsPostRequestBodyUsBankAccountAccountType.values
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
            PaymentMethodsPostRequestBodyUsBankAccountAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeStringValue('account_number', accountNumber);
    writer
        .writeEnumValue<PaymentMethodsPostRequestBodyUsBankAccountAccountType>(
            'account_type', accountType, (e) => e?.value);
    writer.writeStringValue(
        'financial_connections_account', financialConnectionsAccount);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
