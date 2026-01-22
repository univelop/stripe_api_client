// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_person_us_cfpb_data_ethnicity_details.dart';
import './tokens_post_request_body_person_us_cfpb_data_race_details.dart';

/// auto generated
class TokensPostRequestBodyPersonUsCfpbData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ethnicity_details property
  TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails? ethnicityDetails;

  ///  The race_details property
  TokensPostRequestBodyPersonUsCfpbDataRaceDetails? raceDetails;

  ///  The self_identified_gender property
  String? selfIdentifiedGender;

  /// Instantiates a new [TokensPostRequestBodyPersonUsCfpbData] and sets the default values.
  TokensPostRequestBodyPersonUsCfpbData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyPersonUsCfpbData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyPersonUsCfpbData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ethnicity_details'] = (node) => ethnicityDetails = node
        .getObjectValue<TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails>(
            TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails
                .createFromDiscriminatorValue);
    deserializerMap['race_details'] = (node) => raceDetails =
        node.getObjectValue<TokensPostRequestBodyPersonUsCfpbDataRaceDetails>(
            TokensPostRequestBodyPersonUsCfpbDataRaceDetails
                .createFromDiscriminatorValue);
    deserializerMap['self_identified_gender'] =
        (node) => selfIdentifiedGender = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TokensPostRequestBodyPersonUsCfpbDataEthnicityDetails>(
        'ethnicity_details', ethnicityDetails);
    writer.writeObjectValue<TokensPostRequestBodyPersonUsCfpbDataRaceDetails>(
        'race_details', raceDetails);
    writer.writeStringValue('self_identified_gender', selfIdentifiedGender);
    writer.writeAdditionalData(additionalData);
  }
}
