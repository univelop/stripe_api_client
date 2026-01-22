// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../address.dart';
import '../legal_entity_japan_address.dart';
import './location_metadata.dart';
import './location_object.dart';

/// auto generated
/// A Location represents a grouping of readers.Related guide: [Fleet management](https://docs.stripe.com/terminal/fleet/locations)
class Location implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  Address? address;

  ///  The address_kana property
  LegalEntityJapanAddress? addressKana;

  ///  The address_kanji property
  LegalEntityJapanAddress? addressKanji;

  ///  The ID of a configuration that will be used to customize all readers in this location.
  String? configurationOverrides;

  ///  The display name of the location.
  String? displayName;

  ///  The Kana variation of the display name of the location.
  String? displayNameKana;

  ///  The Kanji variation of the display name of the location.
  String? displayNameKanji;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  LocationMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  LocationObject? object;

  ///  The phone number of the location.
  String? phone;

  /// Instantiates a new [Location] and sets the default values.
  Location() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Location createFromDiscriminatorValue(ParseNode parseNode) {
    return Location();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<LegalEntityJapanAddress>(
            LegalEntityJapanAddress.createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<LegalEntityJapanAddress>(
            LegalEntityJapanAddress.createFromDiscriminatorValue);
    deserializerMap['configuration_overrides'] =
        (node) => configurationOverrides = node.getStringValue();
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['display_name_kana'] =
        (node) => displayNameKana = node.getStringValue();
    deserializerMap['display_name_kanji'] =
        (node) => displayNameKanji = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<LocationMetadata>(
            LocationMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<LocationObject>((stringValue) => LocationObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeObjectValue<LegalEntityJapanAddress>(
        'address_kana', addressKana);
    writer.writeObjectValue<LegalEntityJapanAddress>(
        'address_kanji', addressKanji);
    writer.writeStringValue('configuration_overrides', configurationOverrides);
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('display_name_kana', displayNameKana);
    writer.writeStringValue('display_name_kanji', displayNameKanji);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<LocationMetadata>('metadata', metadata);
    writer.writeEnumValue<LocationObject>('object', object, (e) => e?.value);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
