// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_location_post_request_body_address.dart';
import './with_location_post_request_body_address_kana.dart';
import './with_location_post_request_body_address_kanji.dart';
import './with_location_post_request_body_configuration_overrides.dart';
import './with_location_post_request_body_display_name.dart';
import './with_location_post_request_body_display_name_kana.dart';
import './with_location_post_request_body_display_name_kanji.dart';
import './with_location_post_request_body_phone.dart';

/// auto generated
class WithLocationPostRequestBody implements Parsable {
  ///  The full address of the location. You can't change the location's `country`. If you need to modify the `country` field, create a new `Location` object and re-register any existing readers to that location.
  WithLocationPostRequestBodyAddress? address;

  ///  The Kana variation of the full address of the location (Japan only).
  WithLocationPostRequestBodyAddressKana? addressKana;

  ///  The Kanji variation of the full address of the location (Japan only).
  WithLocationPostRequestBodyAddressKanji? addressKanji;

  ///  The ID of a configuration that will be used to customize all readers in this location.
  WithLocationPostRequestBodyConfigurationOverrides? configurationOverrides;

  ///  A name for the location.
  WithLocationPostRequestBodyDisplayName? displayName;

  ///  The Kana variation of the name for the location (Japan only).
  WithLocationPostRequestBodyDisplayNameKana? displayNameKana;

  ///  The Kanji variation of the name for the location (Japan only).
  WithLocationPostRequestBodyDisplayNameKanji? displayNameKanji;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The phone number for the location.
  WithLocationPostRequestBodyPhone? phone;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithLocationPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithLocationPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<WithLocationPostRequestBodyAddress>(
            WithLocationPostRequestBodyAddress.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<WithLocationPostRequestBodyAddressKana>(
            WithLocationPostRequestBodyAddressKana
                .createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<WithLocationPostRequestBodyAddressKanji>(
            WithLocationPostRequestBodyAddressKanji
                .createFromDiscriminatorValue);
    deserializerMap['configuration_overrides'] = (node) =>
        configurationOverrides = node
            .getObjectValue<WithLocationPostRequestBodyConfigurationOverrides>(
                WithLocationPostRequestBodyConfigurationOverrides
                    .createFromDiscriminatorValue);
    deserializerMap['display_name'] = (node) => displayName =
        node.getObjectValue<WithLocationPostRequestBodyDisplayName>(
            WithLocationPostRequestBodyDisplayName
                .createFromDiscriminatorValue);
    deserializerMap['display_name_kana'] = (node) => displayNameKana =
        node.getObjectValue<WithLocationPostRequestBodyDisplayNameKana>(
            WithLocationPostRequestBodyDisplayNameKana
                .createFromDiscriminatorValue);
    deserializerMap['display_name_kanji'] = (node) => displayNameKanji =
        node.getObjectValue<WithLocationPostRequestBodyDisplayNameKanji>(
            WithLocationPostRequestBodyDisplayNameKanji
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['phone'] = (node) => phone =
        node.getObjectValue<WithLocationPostRequestBodyPhone>(
            WithLocationPostRequestBodyPhone.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithLocationPostRequestBodyAddress>(
        'address', address);
    writer.writeObjectValue<WithLocationPostRequestBodyAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<WithLocationPostRequestBodyAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<WithLocationPostRequestBodyConfigurationOverrides>(
        'configuration_overrides', configurationOverrides);
    writer.writeObjectValue<WithLocationPostRequestBodyDisplayName>(
        'display_name', displayName);
    writer.writeObjectValue<WithLocationPostRequestBodyDisplayNameKana>(
        'display_name_kana', displayNameKana);
    writer.writeObjectValue<WithLocationPostRequestBodyDisplayNameKanji>(
        'display_name_kanji', displayNameKanji);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithLocationPostRequestBodyPhone>('phone', phone);
  }
}
