// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_person_post_request_body_relationship_percent_ownership.dart';

/// auto generated
/// The relationship that this person has with the account's legal entity.
class WithPersonPostRequestBodyRelationship
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The authorizer property
  bool? authorizer;

  ///  The director property
  bool? director;

  ///  The executive property
  bool? executive;

  ///  The legal_guardian property
  bool? legalGuardian;

  ///  The owner property
  bool? owner;

  ///  The percent_ownership property
  WithPersonPostRequestBodyRelationshipPercentOwnership? percentOwnership;

  ///  The representative property
  bool? representative;

  ///  The title property
  String? title;

  /// Instantiates a new [WithPersonPostRequestBodyRelationship] and sets the default values.
  WithPersonPostRequestBodyRelationship() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPersonPostRequestBodyRelationship createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPersonPostRequestBodyRelationship();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['authorizer'] = (node) => authorizer = node.getBoolValue();
    deserializerMap['director'] = (node) => director = node.getBoolValue();
    deserializerMap['executive'] = (node) => executive = node.getBoolValue();
    deserializerMap['legal_guardian'] =
        (node) => legalGuardian = node.getBoolValue();
    deserializerMap['owner'] = (node) => owner = node.getBoolValue();
    deserializerMap['percent_ownership'] = (node) => percentOwnership = node
        .getObjectValue<WithPersonPostRequestBodyRelationshipPercentOwnership>(
            WithPersonPostRequestBodyRelationshipPercentOwnership
                .createFromDiscriminatorValue);
    deserializerMap['representative'] =
        (node) => representative = node.getBoolValue();
    deserializerMap['title'] = (node) => title = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('authorizer', value: authorizer);
    writer.writeBoolValue('director', value: director);
    writer.writeBoolValue('executive', value: executive);
    writer.writeBoolValue('legal_guardian', value: legalGuardian);
    writer.writeBoolValue('owner', value: owner);
    writer.writeObjectValue<
            WithPersonPostRequestBodyRelationshipPercentOwnership>(
        'percent_ownership', percentOwnership);
    writer.writeBoolValue('representative', value: representative);
    writer.writeStringValue('title', title);
    writer.writeAdditionalData(additionalData);
  }
}
