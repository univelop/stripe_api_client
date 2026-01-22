// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './funding_instructions_post_request_body_bank_transfer_eu_bank_transfer.dart';
import './funding_instructions_post_request_body_bank_transfer_requested_address_types.dart';
import './funding_instructions_post_request_body_bank_transfer_type.dart';

/// auto generated
/// Additional parameters for `bank_transfer` funding types
class FundingInstructionsPostRequestBodyBankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  FundingInstructionsPostRequestBodyBankTransferEuBankTransfer? euBankTransfer;

  ///  The requested_address_types property
  Iterable<FundingInstructionsPostRequestBodyBankTransferRequestedAddressTypes>?
      requestedAddressTypes;

  ///  The type property
  FundingInstructionsPostRequestBodyBankTransferType? type_;

  /// Instantiates a new [FundingInstructionsPostRequestBodyBankTransfer] and sets the default values.
  FundingInstructionsPostRequestBodyBankTransfer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsPostRequestBodyBankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return FundingInstructionsPostRequestBodyBankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['eu_bank_transfer'] = (node) => euBankTransfer =
        node.getObjectValue<
                FundingInstructionsPostRequestBodyBankTransferEuBankTransfer>(
            FundingInstructionsPostRequestBodyBankTransferEuBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['requested_address_types'] = (node) =>
        requestedAddressTypes = node.getCollectionOfEnumValues<
                FundingInstructionsPostRequestBodyBankTransferRequestedAddressTypes>(
            (stringValue) =>
                FundingInstructionsPostRequestBodyBankTransferRequestedAddressTypes
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<FundingInstructionsPostRequestBodyBankTransferType>(
            (stringValue) => FundingInstructionsPostRequestBodyBankTransferType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            FundingInstructionsPostRequestBodyBankTransferEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeCollectionOfEnumValues<
            FundingInstructionsPostRequestBodyBankTransferRequestedAddressTypes>(
        'requested_address_types', requestedAddressTypes, (e) => e?.value);
    writer.writeEnumValue<FundingInstructionsPostRequestBodyBankTransferType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
