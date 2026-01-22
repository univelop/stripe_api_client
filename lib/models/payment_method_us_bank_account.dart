// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_us_bank_account_account_holder_type.dart';
import './payment_method_us_bank_account_account_type.dart';
import './payment_method_us_bank_account_status_details.dart';
import './us_bank_account_networks.dart';

/// auto generated
class PaymentMethodUsBankAccount implements AdditionalDataHolder, Parsable {
  ///  Account holder type: individual or company.
  PaymentMethodUsBankAccountAccountHolderType? accountHolderType;

  ///  Account type: checkings or savings. Defaults to checking if omitted.
  PaymentMethodUsBankAccountAccountType? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The name of the bank.
  String? bankName;

  ///  The ID of the Financial Connections Account used to create the payment method.
  String? financialConnectionsAccount;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  Contains information about US bank account networks that can be used.
  UsBankAccountNetworks? networks;

  ///  Routing number of the bank account.
  String? routingNumber;

  ///  Contains information about the future reusability of this PaymentMethod.
  PaymentMethodUsBankAccountStatusDetails? statusDetails;

  /// Instantiates a new [PaymentMethodUsBankAccount] and sets the default values.
  PaymentMethodUsBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodUsBankAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_type'] = (node) => accountHolderType =
        node.getEnumValue<PaymentMethodUsBankAccountAccountHolderType>(
            (stringValue) => PaymentMethodUsBankAccountAccountHolderType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['account_type'] = (node) => accountType =
        node.getEnumValue<PaymentMethodUsBankAccountAccountType>(
            (stringValue) => PaymentMethodUsBankAccountAccountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['financial_connections_account'] =
        (node) => financialConnectionsAccount = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['networks'] = (node) => networks =
        node.getObjectValue<UsBankAccountNetworks>(
            UsBankAccountNetworks.createFromDiscriminatorValue);
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    deserializerMap['status_details'] = (node) => statusDetails =
        node.getObjectValue<PaymentMethodUsBankAccountStatusDetails>(
            PaymentMethodUsBankAccountStatusDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodUsBankAccountAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeEnumValue<PaymentMethodUsBankAccountAccountType>(
        'account_type', accountType, (e) => e?.value);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue(
        'financial_connections_account', financialConnectionsAccount);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeObjectValue<UsBankAccountNetworks>('networks', networks);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeObjectValue<PaymentMethodUsBankAccountStatusDetails>(
        'status_details', statusDetails);
    writer.writeAdditionalData(additionalData);
  }
}
