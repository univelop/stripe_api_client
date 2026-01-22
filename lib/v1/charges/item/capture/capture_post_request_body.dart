// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_transfer_data.dart';

/// auto generated
class CapturePostRequestBody implements Parsable {
  ///  The amount to capture, which must be less than or equal to the original amount.
  int? amount;

  ///  An application fee to add on to this charge.
  int? applicationFee;

  ///  An application fee amount to add on to this charge, which must be less than or equal to the original amount.
  int? applicationFeeAmount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The email address to send this charge's receipt to. This will override the previously-specified email address for this charge, if one was set. Receipts will not be sent in test mode.
  String? receiptEmail;

  ///  For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
  String? statementDescriptor;

  ///  Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
  String? statementDescriptorSuffix;

  ///  An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
  CapturePostRequestBodyTransferData? transferData;

  ///  A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options) for details.
  String? transferGroup;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CapturePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['application_fee'] =
        (node) => applicationFee = node.getIntValue();
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['receipt_email'] =
        (node) => receiptEmail = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_suffix'] =
        (node) => statementDescriptorSuffix = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<CapturePostRequestBodyTransferData>(
            CapturePostRequestBodyTransferData.createFromDiscriminatorValue);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('application_fee', applicationFee);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('receipt_email', receiptEmail);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeObjectValue<CapturePostRequestBodyTransferData>(
        'transfer_data', transferData);
    writer.writeStringValue('transfer_group', transferGroup);
  }
}
