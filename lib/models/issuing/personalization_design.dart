// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../issuing_personalization_design_carrier_text.dart';
import '../issuing_personalization_design_preferences.dart';
import '../issuing_personalization_design_rejection_reasons.dart';
import './personalization_design_card_logo.dart';
import './personalization_design_metadata.dart';
import './personalization_design_object.dart';
import './personalization_design_physical_bundle.dart';
import './personalization_design_status.dart';

/// auto generated
/// A Personalization Design is a logical grouping of a Physical Bundle, card logo, and carrier text that represents a product line.
class PersonalizationDesign implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The file for the card logo to use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
  PersonalizationDesignCardLogo? cardLogo;

  ///  Hash containing carrier text, for use with physical bundles that support carrier text.
  IssuingPersonalizationDesignCarrierText? carrierText;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
  String? lookupKey;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PersonalizationDesignMetadata? metadata;

  ///  Friendly display name.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  PersonalizationDesignObject? object;

  ///  The physical bundle object belonging to this personalization design.
  PersonalizationDesignPhysicalBundle? physicalBundle;

  ///  The preferences property
  IssuingPersonalizationDesignPreferences? preferences;

  ///  The rejection_reasons property
  IssuingPersonalizationDesignRejectionReasons? rejectionReasons;

  ///  Whether this personalization design can be used to create cards.
  PersonalizationDesignStatus? status;

  /// Instantiates a new [PersonalizationDesign] and sets the default values.
  PersonalizationDesign() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonalizationDesign createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PersonalizationDesign();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_logo'] = (node) => cardLogo =
        node.getObjectValue<PersonalizationDesignCardLogo>(
            PersonalizationDesignCardLogo.createFromDiscriminatorValue);
    deserializerMap['carrier_text'] = (node) => carrierText =
        node.getObjectValue<IssuingPersonalizationDesignCarrierText>(
            IssuingPersonalizationDesignCarrierText
                .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['lookup_key'] = (node) => lookupKey = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PersonalizationDesignMetadata>(
            PersonalizationDesignMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PersonalizationDesignObject>((stringValue) =>
            PersonalizationDesignObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['physical_bundle'] = (node) => physicalBundle =
        node.getObjectValue<PersonalizationDesignPhysicalBundle>(
            PersonalizationDesignPhysicalBundle.createFromDiscriminatorValue);
    deserializerMap['preferences'] = (node) => preferences =
        node.getObjectValue<IssuingPersonalizationDesignPreferences>(
            IssuingPersonalizationDesignPreferences
                .createFromDiscriminatorValue);
    deserializerMap['rejection_reasons'] = (node) => rejectionReasons =
        node.getObjectValue<IssuingPersonalizationDesignRejectionReasons>(
            IssuingPersonalizationDesignRejectionReasons
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<PersonalizationDesignStatus>((stringValue) =>
            PersonalizationDesignStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PersonalizationDesignCardLogo>(
        'card_logo', cardLogo);
    writer.writeObjectValue<IssuingPersonalizationDesignCarrierText>(
        'carrier_text', carrierText);
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('lookup_key', lookupKey);
    writer.writeObjectValue<PersonalizationDesignMetadata>(
        'metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<PersonalizationDesignObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<PersonalizationDesignPhysicalBundle>(
        'physical_bundle', physicalBundle);
    writer.writeObjectValue<IssuingPersonalizationDesignPreferences>(
        'preferences', preferences);
    writer.writeObjectValue<IssuingPersonalizationDesignRejectionReasons>(
        'rejection_reasons', rejectionReasons);
    writer.writeEnumValue<PersonalizationDesignStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
