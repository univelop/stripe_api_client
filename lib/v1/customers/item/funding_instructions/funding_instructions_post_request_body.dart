// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './funding_instructions_post_request_body_bank_transfer.dart';
import './funding_instructions_post_request_body_funding_type.dart';

/// auto generated
class FundingInstructionsPostRequestBody implements Parsable {
  ///  Additional parameters for `bank_transfer` funding types
  FundingInstructionsPostRequestBodyBankTransfer? bankTransfer;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The `funding_type` to get the instructions for.
  FundingInstructionsPostRequestBodyFundingType? fundingType;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FundingInstructionsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_transfer'] = (node) => bankTransfer =
        node.getObjectValue<FundingInstructionsPostRequestBodyBankTransfer>(
            FundingInstructionsPostRequestBodyBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['funding_type'] = (node) => fundingType =
        node.getEnumValue<FundingInstructionsPostRequestBodyFundingType>(
            (stringValue) => FundingInstructionsPostRequestBodyFundingType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<FundingInstructionsPostRequestBodyBankTransfer>(
        'bank_transfer', bankTransfer);
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeEnumValue<FundingInstructionsPostRequestBodyFundingType>(
        'funding_type', fundingType, (e) => e?.value);
  }
}
