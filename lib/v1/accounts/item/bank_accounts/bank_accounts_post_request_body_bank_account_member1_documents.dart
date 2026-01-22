// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_accounts_post_request_body_bank_account_member1_documents_bank_account_ownership_verification.dart';

/// auto generated
class BankAccountsPostRequestBodyBankAccountMember1Documents
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_account_ownership_verification property
  BankAccountsPostRequestBodyBankAccountMember1DocumentsBankAccountOwnershipVerification?
      bankAccountOwnershipVerification;

  /// Instantiates a new [BankAccountsPostRequestBodyBankAccountMember1Documents] and sets the default values.
  BankAccountsPostRequestBodyBankAccountMember1Documents()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankAccountsPostRequestBodyBankAccountMember1Documents
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BankAccountsPostRequestBodyBankAccountMember1Documents();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_account_ownership_verification'] = (node) =>
        bankAccountOwnershipVerification = node.getObjectValue<
                BankAccountsPostRequestBodyBankAccountMember1DocumentsBankAccountOwnershipVerification>(
            BankAccountsPostRequestBodyBankAccountMember1DocumentsBankAccountOwnershipVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BankAccountsPostRequestBodyBankAccountMember1DocumentsBankAccountOwnershipVerification>(
        'bank_account_ownership_verification',
        bankAccountOwnershipVerification);
    writer.writeAdditionalData(additionalData);
  }
}
