// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './person_race_details_race.dart';

/// auto generated
class PersonRaceDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The persons race.
  Iterable<PersonRaceDetailsRace>? race;

  ///  Please specify your race, when other is selected.
  String? raceOther;

  /// Instantiates a new [PersonRaceDetails] and sets the default values.
  PersonRaceDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonRaceDetails createFromDiscriminatorValue(ParseNode parseNode) {
    return PersonRaceDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['race'] = (node) => race =
        node.getCollectionOfEnumValues<PersonRaceDetailsRace>((stringValue) =>
            PersonRaceDetailsRace.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['race_other'] = (node) => raceOther = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<PersonRaceDetailsRace>(
        'race', race, (e) => e?.value);
    writer.writeStringValue('race_other', raceOther);
    writer.writeAdditionalData(additionalData);
  }
}
