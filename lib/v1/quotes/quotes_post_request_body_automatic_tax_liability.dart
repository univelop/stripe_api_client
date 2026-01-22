// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_automatic_tax_liability_type.dart';

/// auto generated
class QuotesPostRequestBodyAutomaticTaxLiability
    implements AdditionalDataHolder, Parsable {
  ///  The account property
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  QuotesPostRequestBodyAutomaticTaxLiabilityType? type_;

  /// Instantiates a new [QuotesPostRequestBodyAutomaticTaxLiability] and sets the default values.
  QuotesPostRequestBodyAutomaticTaxLiability() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodyAutomaticTaxLiability
      createFromDiscriminatorValue(ParseNode parseNode) {
    return QuotesPostRequestBodyAutomaticTaxLiability();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<QuotesPostRequestBodyAutomaticTaxLiabilityType>(
            (stringValue) => QuotesPostRequestBodyAutomaticTaxLiabilityType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeEnumValue<QuotesPostRequestBodyAutomaticTaxLiabilityType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
