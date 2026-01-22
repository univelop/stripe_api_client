// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsNzBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  The name on the bank account. Only present if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
  String? accountHolderName;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The numeric code for the bank account's bank.
  String? bankCode;

  ///  The name of the bank.
  String? bankName;

  ///  The numeric code for the bank account's bank branch.
  String? branchCode;

  ///  Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
  String? expectedDebitDate;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  The suffix of the bank account number.
  String? suffix;

  /// Instantiates a new [PaymentMethodDetailsNzBankAccount] and sets the default values.
  PaymentMethodDetailsNzBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsNzBankAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsNzBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['bank_code'] = (node) => bankCode = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['branch_code'] =
        (node) => branchCode = node.getStringValue();
    deserializerMap['expected_debit_date'] =
        (node) => expectedDebitDate = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['suffix'] = (node) => suffix = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeStringValue('bank_code', bankCode);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('branch_code', branchCode);
    writer.writeStringValue('expected_debit_date', expectedDebitDate);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('suffix', suffix);
    writer.writeAdditionalData(additionalData);
  }
}
