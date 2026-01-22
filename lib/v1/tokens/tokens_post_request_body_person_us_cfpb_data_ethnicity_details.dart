// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_person_us_cfpb_data_ethnicity_details_ethnicity.dart';

/// auto generated
class TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ethnicity property
  Iterable<TokensPostRequestBodyPersonUsCfpbDataEthnicityDetailsEthnicity>?
      ethnicity;

  ///  The ethnicity_other property
  String? ethnicityOther;

  /// Instantiates a new [TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails] and sets the default values.
  TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ethnicity'] = (node) => ethnicity =
        node.getCollectionOfEnumValues<
                TokensPostRequestBodyPersonUsCfpbDataEthnicityDetailsEthnicity>(
            (stringValue) =>
                TokensPostRequestBodyPersonUsCfpbDataEthnicityDetailsEthnicity
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['ethnicity_other'] =
        (node) => ethnicityOther = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            TokensPostRequestBodyPersonUsCfpbDataEthnicityDetailsEthnicity>(
        'ethnicity', ethnicity, (e) => e?.value);
    writer.writeStringValue('ethnicity_other', ethnicityOther);
    writer.writeAdditionalData(additionalData);
  }
}
