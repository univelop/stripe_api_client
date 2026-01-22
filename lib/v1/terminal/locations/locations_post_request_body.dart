// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './locations_post_request_body_address.dart';
import './locations_post_request_body_address_kana.dart';
import './locations_post_request_body_address_kanji.dart';

/// auto generated
class LocationsPostRequestBody implements Parsable {
  ///  The full address of the location.
  LocationsPostRequestBodyAddress? address;

  ///  The Kana variation of the full address of the location (Japan only).
  LocationsPostRequestBodyAddressKana? addressKana;

  ///  The Kanji variation of the full address of the location (Japan only).
  LocationsPostRequestBodyAddressKanji? addressKanji;

  ///  The ID of a configuration that will be used to customize all readers in this location.
  String? configurationOverrides;

  ///  A name for the location. Maximum length is 1000 characters.
  String? displayName;

  ///  The Kana variation of the name for the location (Japan only). Maximum length is 1000 characters.
  String? displayNameKana;

  ///  The Kanji variation of the name for the location (Japan only). Maximum length is 1000 characters.
  String? displayNameKanji;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The phone number for the location.
  String? phone;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LocationsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LocationsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<LocationsPostRequestBodyAddress>(
            LocationsPostRequestBodyAddress.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<LocationsPostRequestBodyAddressKana>(
            LocationsPostRequestBodyAddressKana.createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<LocationsPostRequestBodyAddressKanji>(
            LocationsPostRequestBodyAddressKanji.createFromDiscriminatorValue);
    deserializerMap['configuration_overrides'] =
        (node) => configurationOverrides = node.getStringValue();
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['display_name_kana'] =
        (node) => displayNameKana = node.getStringValue();
    deserializerMap['display_name_kanji'] =
        (node) => displayNameKanji = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<LocationsPostRequestBodyAddress>(
        'address', address);
    writer.writeObjectValue<LocationsPostRequestBodyAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<LocationsPostRequestBodyAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeStringValue('configuration_overrides', configurationOverrides);
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('display_name_kana', displayNameKana);
    writer.writeStringValue('display_name_kanji', displayNameKanji);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('phone', phone);
  }
}
