// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cardholders_post_request_body_billing.dart';
import './cardholders_post_request_body_company.dart';
import './cardholders_post_request_body_individual.dart';
import './cardholders_post_request_body_metadata.dart';
import './cardholders_post_request_body_preferred_locales.dart';
import './cardholders_post_request_body_spending_controls.dart';
import './cardholders_post_request_body_status.dart';
import './cardholders_post_request_body_type.dart';

/// auto generated
class CardholdersPostRequestBody implements Parsable {
  ///  The cardholder's billing address.
  CardholdersPostRequestBodyBilling? billing;

  ///  Additional information about a `company` cardholder.
  CardholdersPostRequestBodyCompany? company;

  ///  The cardholder's email address.
  String? email;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Additional information about an `individual` cardholder.
  CardholdersPostRequestBodyIndividual? individual;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  CardholdersPostRequestBodyMetadata? metadata;

  ///  The cardholder's name. This will be printed on cards issued to them. The maximum length of this field is 24 characters. This field cannot contain any special characters or numbers.
  String? name;

  ///  The cardholder's phone number. This will be transformed to [E.164](https://en.wikipedia.org/wiki/E.164) if it is not provided in that format already. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://docs.stripe.com/issuing/3d-secure#when-is-3d-secure-applied) for more details.
  String? phoneNumber;

  ///  The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`. This changes the language of the [3D Secure flow](https://docs.stripe.com/issuing/3d-secure) and one-time password messages sent to the cardholder.
  Iterable<CardholdersPostRequestBodyPreferredLocales>? preferredLocales;

  ///  Rules that control spending across this cardholder's cards. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
  CardholdersPostRequestBodySpendingControls? spendingControls;

  ///  Specifies whether to permit authorizations on this cardholder's cards. Defaults to `active`.
  CardholdersPostRequestBodyStatus? status;

  ///  One of `individual` or `company`. See [Choose a cardholder type](https://docs.stripe.com/issuing/other/choose-cardholder) for more details.
  CardholdersPostRequestBodyType? type_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardholdersPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardholdersPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing'] = (node) => billing =
        node.getObjectValue<CardholdersPostRequestBodyBilling>(
            CardholdersPostRequestBodyBilling.createFromDiscriminatorValue);
    deserializerMap['company'] = (node) => company =
        node.getObjectValue<CardholdersPostRequestBodyCompany>(
            CardholdersPostRequestBodyCompany.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['individual'] = (node) => individual =
        node.getObjectValue<CardholdersPostRequestBodyIndividual>(
            CardholdersPostRequestBodyIndividual.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CardholdersPostRequestBodyMetadata>(
            CardholdersPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone_number'] =
        (node) => phoneNumber = node.getStringValue();
    deserializerMap['preferred_locales'] = (node) => preferredLocales = node
        .getCollectionOfEnumValues<CardholdersPostRequestBodyPreferredLocales>(
            (stringValue) => CardholdersPostRequestBodyPreferredLocales.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['spending_controls'] = (node) => spendingControls =
        node.getObjectValue<CardholdersPostRequestBodySpendingControls>(
            CardholdersPostRequestBodySpendingControls
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<CardholdersPostRequestBodyStatus>((stringValue) =>
            CardholdersPostRequestBodyStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CardholdersPostRequestBodyType>((stringValue) =>
            CardholdersPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CardholdersPostRequestBodyBilling>(
        'billing', billing);
    writer.writeObjectValue<CardholdersPostRequestBodyCompany>(
        'company', company);
    writer.writeStringValue('email', email);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<CardholdersPostRequestBodyIndividual>(
        'individual', individual);
    writer.writeObjectValue<CardholdersPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone_number', phoneNumber);
    writer.writeCollectionOfEnumValues<
            CardholdersPostRequestBodyPreferredLocales>(
        'preferred_locales', preferredLocales, (e) => e?.value);
    writer.writeObjectValue<CardholdersPostRequestBodySpendingControls>(
        'spending_controls', spendingControls);
    writer.writeEnumValue<CardholdersPostRequestBodyStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<CardholdersPostRequestBodyType>(
        'type', type_, (e) => e?.value);
  }
}
