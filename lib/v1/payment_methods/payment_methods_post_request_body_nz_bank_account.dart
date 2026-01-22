// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
class PaymentMethodsPostRequestBodyNzBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_name property
  String? accountHolderName;

  ///  The account_number property
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_code property
  String? bankCode;

  ///  The branch_code property
  String? branchCode;

  ///  The reference property
  String? reference;

  ///  The suffix property
  String? suffix;

  /// Instantiates a new [PaymentMethodsPostRequestBodyNzBankAccount] and sets the default values.
  PaymentMethodsPostRequestBodyNzBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodsPostRequestBodyNzBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodsPostRequestBodyNzBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['bank_code'] = (node) => bankCode = node.getStringValue();
    deserializerMap['branch_code'] =
        (node) => branchCode = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['suffix'] = (node) => suffix = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('bank_code', bankCode);
    writer.writeStringValue('branch_code', branchCode);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('suffix', suffix);
    writer.writeAdditionalData(additionalData);
  }
}
