// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_personalization_design_post_request_body_card_logo.dart';
import './with_personalization_design_post_request_body_carrier_text.dart';
import './with_personalization_design_post_request_body_lookup_key.dart';
import './with_personalization_design_post_request_body_metadata.dart';
import './with_personalization_design_post_request_body_name.dart';
import './with_personalization_design_post_request_body_preferences.dart';

/// auto generated
class WithPersonalizationDesignPostRequestBody implements Parsable {
  ///  The file for the card logo, for use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
  WithPersonalizationDesignPostRequestBodyCardLogo? cardLogo;

  ///  Hash containing carrier text, for use with physical bundles that support carrier text.
  WithPersonalizationDesignPostRequestBodyCarrierText? carrierText;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
  WithPersonalizationDesignPostRequestBodyLookupKey? lookupKey;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  WithPersonalizationDesignPostRequestBodyMetadata? metadata;

  ///  Friendly display name. Providing an empty string will set the field to null.
  WithPersonalizationDesignPostRequestBodyName? name;

  ///  The physical bundle object belonging to this personalization design.
  String? physicalBundle;

  ///  Information on whether this personalization design is used to create cards when one is not specified.
  WithPersonalizationDesignPostRequestBodyPreferences? preferences;

  ///  If set to true, will atomically remove the lookup key from the existing personalization design, and assign it to this personalization design.
  bool? transferLookupKey;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPersonalizationDesignPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPersonalizationDesignPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_logo'] = (node) => cardLogo =
        node.getObjectValue<WithPersonalizationDesignPostRequestBodyCardLogo>(
            WithPersonalizationDesignPostRequestBodyCardLogo
                .createFromDiscriminatorValue);
    deserializerMap['carrier_text'] = (node) => carrierText = node
        .getObjectValue<WithPersonalizationDesignPostRequestBodyCarrierText>(
            WithPersonalizationDesignPostRequestBodyCarrierText
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['lookup_key'] = (node) => lookupKey =
        node.getObjectValue<WithPersonalizationDesignPostRequestBodyLookupKey>(
            WithPersonalizationDesignPostRequestBodyLookupKey
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithPersonalizationDesignPostRequestBodyMetadata>(
            WithPersonalizationDesignPostRequestBodyMetadata
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name =
        node.getObjectValue<WithPersonalizationDesignPostRequestBodyName>(
            WithPersonalizationDesignPostRequestBodyName
                .createFromDiscriminatorValue);
    deserializerMap['physical_bundle'] =
        (node) => physicalBundle = node.getStringValue();
    deserializerMap['preferences'] = (node) => preferences = node
        .getObjectValue<WithPersonalizationDesignPostRequestBodyPreferences>(
            WithPersonalizationDesignPostRequestBodyPreferences
                .createFromDiscriminatorValue);
    deserializerMap['transfer_lookup_key'] =
        (node) => transferLookupKey = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithPersonalizationDesignPostRequestBodyCardLogo>(
        'card_logo', cardLogo);
    writer
        .writeObjectValue<WithPersonalizationDesignPostRequestBodyCarrierText>(
            'carrier_text', carrierText);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithPersonalizationDesignPostRequestBodyLookupKey>(
        'lookup_key', lookupKey);
    writer.writeObjectValue<WithPersonalizationDesignPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<WithPersonalizationDesignPostRequestBodyName>(
        'name', name);
    writer.writeStringValue('physical_bundle', physicalBundle);
    writer
        .writeObjectValue<WithPersonalizationDesignPostRequestBodyPreferences>(
            'preferences', preferences);
    writer.writeBoolValue('transfer_lookup_key', value: transferLookupKey);
  }
}
