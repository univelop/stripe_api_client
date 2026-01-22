// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
/// Iban Records contain E.U. bank account details per the SEPA format.
class FundingInstructionsBankTransferIbanRecord
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_address property
  Address? accountHolderAddress;

  ///  The name of the person or business that owns the bank account
  String? accountHolderName;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_address property
  Address? bankAddress;

  ///  The BIC/SWIFT code of the account.
  String? bic;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  The IBAN of the account.
  String? iban;

  /// Instantiates a new [FundingInstructionsBankTransferIbanRecord] and sets the default values.
  FundingInstructionsBankTransferIbanRecord() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsBankTransferIbanRecord createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FundingInstructionsBankTransferIbanRecord();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_address'] = (node) => accountHolderAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['bank_address'] = (node) => bankAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['bic'] = (node) => bic = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['iban'] = (node) => iban = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>(
        'account_holder_address', accountHolderAddress);
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeObjectValue<Address>('bank_address', bankAddress);
    writer.writeStringValue('bic', bic);
    writer.writeStringValue('country', country);
    writer.writeStringValue('iban', iban);
    writer.writeAdditionalData(additionalData);
  }
}
