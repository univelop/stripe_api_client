// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './inbound_transfers_payment_method_details_us_bank_account_account_holder_type.dart';
import './inbound_transfers_payment_method_details_us_bank_account_account_type.dart';
import './inbound_transfers_payment_method_details_us_bank_account_mandate.dart';
import './inbound_transfers_payment_method_details_us_bank_account_network.dart';

/// auto generated
class InboundTransfersPaymentMethodDetailsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Account holder type: individual or company.
  InboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType?
      accountHolderType;

  ///  Account type: checkings or savings. Defaults to checking if omitted.
  InboundTransfersPaymentMethodDetailsUsBankAccountAccountType? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Name of the bank associated with the bank account.
  String? bankName;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  ID of the mandate used to make this payment.
  InboundTransfersPaymentMethodDetailsUsBankAccountMandate? mandate;

  ///  The network rails used. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
  InboundTransfersPaymentMethodDetailsUsBankAccountNetwork? network;

  ///  Routing number of the bank account.
  String? routingNumber;

  /// Instantiates a new [InboundTransfersPaymentMethodDetailsUsBankAccount] and sets the default values.
  InboundTransfersPaymentMethodDetailsUsBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InboundTransfersPaymentMethodDetailsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InboundTransfersPaymentMethodDetailsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'account_holder_type'] = (node) => accountHolderType = node.getEnumValue<
            InboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType>(
        (stringValue) =>
            InboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['account_type'] = (node) => accountType = node.getEnumValue<
            InboundTransfersPaymentMethodDetailsUsBankAccountAccountType>(
        (stringValue) =>
            InboundTransfersPaymentMethodDetailsUsBankAccountAccountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['mandate'] = (node) => mandate = node.getObjectValue<
            InboundTransfersPaymentMethodDetailsUsBankAccountMandate>(
        InboundTransfersPaymentMethodDetailsUsBankAccountMandate
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node
        .getEnumValue<InboundTransfersPaymentMethodDetailsUsBankAccountNetwork>(
            (stringValue) =>
                InboundTransfersPaymentMethodDetailsUsBankAccountNetwork.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            InboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeEnumValue<
            InboundTransfersPaymentMethodDetailsUsBankAccountAccountType>(
        'account_type', accountType, (e) => e?.value);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeObjectValue<
            InboundTransfersPaymentMethodDetailsUsBankAccountMandate>(
        'mandate', mandate);
    writer.writeEnumValue<
            InboundTransfersPaymentMethodDetailsUsBankAccountNetwork>(
        'network', network, (e) => e?.value);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
