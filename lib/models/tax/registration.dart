// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../tax_product_registrations_resource_country_options.dart';
import './registration_object.dart';
import './registration_status.dart';

/// auto generated
/// A Tax `Registration` lets us know that your business is registered to collect tax on payments within a region, enabling you to [automatically collect tax](https://docs.stripe.com/tax).Stripe doesn't register on your behalf with the relevant authorities when you create a Tax `Registration` object. For more information on how to register to collect tax, see [our guide](https://docs.stripe.com/tax/registering).Related guide: [Using the Registrations API](https://docs.stripe.com/tax/registrations-api)
class Registration implements AdditionalDataHolder, Parsable {
  ///  Time at which the registration becomes active. Measured in seconds since the Unix epoch.
  int? activeFrom;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  The country_options property
  TaxProductRegistrationsResourceCountryOptions? countryOptions;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. Measured in seconds since the Unix epoch.
  int? expiresAt;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  RegistrationObject? object;

  ///  The status of the registration. This field is present for convenience and can be deduced from `active_from` and `expires_at`.
  RegistrationStatus? status;

  /// Instantiates a new [Registration] and sets the default values.
  Registration() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Registration createFromDiscriminatorValue(ParseNode parseNode) {
    return Registration();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active_from'] = (node) => activeFrom = node.getIntValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['country_options'] = (node) => countryOptions =
        node.getObjectValue<TaxProductRegistrationsResourceCountryOptions>(
            TaxProductRegistrationsResourceCountryOptions
                .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<RegistrationObject>((stringValue) =>
            RegistrationObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<RegistrationStatus>((stringValue) =>
            RegistrationStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('active_from', activeFrom);
    writer.writeStringValue('country', country);
    writer.writeObjectValue<TaxProductRegistrationsResourceCountryOptions>(
        'country_options', countryOptions);
    writer.writeIntValue('created', created);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<RegistrationObject>(
        'object', object, (e) => e?.value);
    writer.writeEnumValue<RegistrationStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
