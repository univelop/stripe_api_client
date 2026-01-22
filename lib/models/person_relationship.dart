// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PersonRelationship implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the person is the authorizer of the account's representative.
  bool? authorizer;

  ///  Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
  bool? director;

  ///  Whether the person has significant responsibility to control, manage, or direct the organization.
  bool? executive;

  ///  Whether the person is the legal guardian of the account's representative.
  bool? legalGuardian;

  ///  Whether the person is an owner of the account’s legal entity.
  bool? owner;

  ///  The percent owned by the person of the account's legal entity.
  double? percentOwnership;

  ///  Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
  bool? representative;

  ///  The person's title (e.g., CEO, Support Engineer).
  String? title;

  /// Instantiates a new [PersonRelationship] and sets the default values.
  PersonRelationship() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonRelationship createFromDiscriminatorValue(ParseNode parseNode) {
    return PersonRelationship();
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
    deserializerMap['percent_ownership'] =
        (node) => percentOwnership = node.getDoubleValue();
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
    writer.writeDoubleValue('percent_ownership', percentOwnership);
    writer.writeBoolValue('representative', value: representative);
    writer.writeStringValue('title', title);
    writer.writeAdditionalData(additionalData);
  }
}
