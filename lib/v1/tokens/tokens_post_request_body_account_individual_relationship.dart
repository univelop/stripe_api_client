// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_account_individual_relationship_percent_ownership.dart';

/// auto generated
class TokensPostRequestBodyAccountIndividualRelationship
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The director property
  bool? director;

  ///  The executive property
  bool? executive;

  ///  The owner property
  bool? owner;

  ///  The percent_ownership property
  TokensPostRequestBodyAccountIndividualRelationshipPercentOwnership?
      percentOwnership;

  ///  The title property
  String? title;

  /// Instantiates a new [TokensPostRequestBodyAccountIndividualRelationship] and sets the default values.
  TokensPostRequestBodyAccountIndividualRelationship() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyAccountIndividualRelationship
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TokensPostRequestBodyAccountIndividualRelationship();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['director'] = (node) => director = node.getBoolValue();
    deserializerMap['executive'] = (node) => executive = node.getBoolValue();
    deserializerMap['owner'] = (node) => owner = node.getBoolValue();
    deserializerMap[
        'percent_ownership'] = (node) => percentOwnership = node.getObjectValue<
            TokensPostRequestBodyAccountIndividualRelationshipPercentOwnership>(
        TokensPostRequestBodyAccountIndividualRelationshipPercentOwnership
            .createFromDiscriminatorValue);
    deserializerMap['title'] = (node) => title = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('director', value: director);
    writer.writeBoolValue('executive', value: executive);
    writer.writeBoolValue('owner', value: owner);
    writer.writeObjectValue<
            TokensPostRequestBodyAccountIndividualRelationshipPercentOwnership>(
        'percent_ownership', percentOwnership);
    writer.writeStringValue('title', title);
    writer.writeAdditionalData(additionalData);
  }
}
