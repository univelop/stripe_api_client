// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../issuing_cardholder_address.dart';
import '../issuing_cardholder_authorization_controls.dart';
import '../issuing_cardholder_company.dart';
import '../issuing_cardholder_individual.dart';
import '../issuing_cardholder_requirements.dart';
import './cardholder_metadata.dart';
import './cardholder_object.dart';
import './cardholder_preferred_locales.dart';
import './cardholder_status.dart';
import './cardholder_type.dart';

/// auto generated
/// An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://docs.stripe.com/issuing) cards.Related guide: [How to create a cardholder](https://docs.stripe.com/issuing/cards/virtual/issue-cards#create-cardholder)
class Cardholder implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing property
  IssuingCardholderAddress? billing;

  ///  Additional information about a `company` cardholder.
  IssuingCardholderCompany? company;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The cardholder's email address.
  String? email;

  ///  Unique identifier for the object.
  String? id;

  ///  Additional information about an `individual` cardholder.
  IssuingCardholderIndividual? individual;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CardholderMetadata? metadata;

  ///  The cardholder's name. This will be printed on cards issued to them.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  CardholderObject? object;

  ///  The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://docs.stripe.com/issuing/3d-secure#when-is-3d-secure-applied) for more details.
  String? phoneNumber;

  ///  The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`. This changes the language of the [3D Secure flow](https://docs.stripe.com/issuing/3d-secure) and one-time password messages sent to the cardholder.
  Iterable<CardholderPreferredLocales>? preferredLocales;

  ///  The requirements property
  IssuingCardholderRequirements? requirements;

  ///  Rules that control spending across this cardholder's cards. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
  IssuingCardholderAuthorizationControls? spendingControls;

  ///  Specifies whether to permit authorizations on this cardholder's cards.
  CardholderStatus? status;

  ///  One of `individual` or `company`. See [Choose a cardholder type](https://docs.stripe.com/issuing/other/choose-cardholder) for more details.
  CardholderType? type_;

  /// Instantiates a new [Cardholder] and sets the default values.
  Cardholder() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Cardholder createFromDiscriminatorValue(ParseNode parseNode) {
    return Cardholder();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing'] = (node) => billing =
        node.getObjectValue<IssuingCardholderAddress>(
            IssuingCardholderAddress.createFromDiscriminatorValue);
    deserializerMap['company'] = (node) => company =
        node.getObjectValue<IssuingCardholderCompany>(
            IssuingCardholderCompany.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['individual'] = (node) => individual =
        node.getObjectValue<IssuingCardholderIndividual>(
            IssuingCardholderIndividual.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CardholderMetadata>(
            CardholderMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<CardholderObject>((stringValue) => CardholderObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['phone_number'] =
        (node) => phoneNumber = node.getStringValue();
    deserializerMap['preferred_locales'] = (node) => preferredLocales =
        node.getCollectionOfEnumValues<CardholderPreferredLocales>(
            (stringValue) => CardholderPreferredLocales.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['requirements'] = (node) => requirements =
        node.getObjectValue<IssuingCardholderRequirements>(
            IssuingCardholderRequirements.createFromDiscriminatorValue);
    deserializerMap['spending_controls'] = (node) => spendingControls =
        node.getObjectValue<IssuingCardholderAuthorizationControls>(
            IssuingCardholderAuthorizationControls
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node
        .getEnumValue<CardholderStatus>((stringValue) => CardholderStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CardholderType>((stringValue) => CardholderType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingCardholderAddress>('billing', billing);
    writer.writeObjectValue<IssuingCardholderCompany>('company', company);
    writer.writeIntValue('created', created);
    writer.writeStringValue('email', email);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<IssuingCardholderIndividual>(
        'individual', individual);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<CardholderMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<CardholderObject>('object', object, (e) => e?.value);
    writer.writeStringValue('phone_number', phoneNumber);
    writer.writeCollectionOfEnumValues<CardholderPreferredLocales>(
        'preferred_locales', preferredLocales, (e) => e?.value);
    writer.writeObjectValue<IssuingCardholderRequirements>(
        'requirements', requirements);
    writer.writeObjectValue<IssuingCardholderAuthorizationControls>(
        'spending_controls', spendingControls);
    writer.writeEnumValue<CardholderStatus>('status', status, (e) => e?.value);
    writer.writeEnumValue<CardholderType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
