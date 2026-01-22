// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_cardholder_post_request_body_billing.dart';
import './with_cardholder_post_request_body_company.dart';
import './with_cardholder_post_request_body_individual.dart';
import './with_cardholder_post_request_body_metadata.dart';
import './with_cardholder_post_request_body_preferred_locales.dart';
import './with_cardholder_post_request_body_spending_controls.dart';
import './with_cardholder_post_request_body_status.dart';

/// auto generated
class WithCardholderPostRequestBody implements Parsable {
  ///  The cardholder's billing address.
  WithCardholderPostRequestBodyBilling? billing;

  ///  Additional information about a `company` cardholder.
  WithCardholderPostRequestBodyCompany? company;

  ///  The cardholder's email address.
  String? email;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Additional information about an `individual` cardholder.
  WithCardholderPostRequestBodyIndividual? individual;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  WithCardholderPostRequestBodyMetadata? metadata;

  ///  The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://docs.stripe.com/issuing/3d-secure) for more details.
  String? phoneNumber;

  ///  The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`. This changes the language of the [3D Secure flow](https://docs.stripe.com/issuing/3d-secure) and one-time password messages sent to the cardholder.
  Iterable<WithCardholderPostRequestBodyPreferredLocales>? preferredLocales;

  ///  Rules that control spending across this cardholder's cards. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
  WithCardholderPostRequestBodySpendingControls? spendingControls;

  ///  Specifies whether to permit authorizations on this cardholder's cards.
  WithCardholderPostRequestBodyStatus? status;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCardholderPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCardholderPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing'] = (node) => billing =
        node.getObjectValue<WithCardholderPostRequestBodyBilling>(
            WithCardholderPostRequestBodyBilling.createFromDiscriminatorValue);
    deserializerMap['company'] = (node) => company =
        node.getObjectValue<WithCardholderPostRequestBodyCompany>(
            WithCardholderPostRequestBodyCompany.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['individual'] = (node) => individual = node.getObjectValue<
            WithCardholderPostRequestBodyIndividual>(
        WithCardholderPostRequestBodyIndividual.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithCardholderPostRequestBodyMetadata>(
            WithCardholderPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['phone_number'] =
        (node) => phoneNumber = node.getStringValue();
    deserializerMap['preferred_locales'] = (node) => preferredLocales =
        node.getCollectionOfEnumValues<
                WithCardholderPostRequestBodyPreferredLocales>(
            (stringValue) => WithCardholderPostRequestBodyPreferredLocales
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['spending_controls'] = (node) => spendingControls =
        node.getObjectValue<WithCardholderPostRequestBodySpendingControls>(
            WithCardholderPostRequestBodySpendingControls
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<WithCardholderPostRequestBodyStatus>((stringValue) =>
            WithCardholderPostRequestBodyStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithCardholderPostRequestBodyBilling>(
        'billing', billing);
    writer.writeObjectValue<WithCardholderPostRequestBodyCompany>(
        'company', company);
    writer.writeStringValue('email', email);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithCardholderPostRequestBodyIndividual>(
        'individual', individual);
    writer.writeObjectValue<WithCardholderPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('phone_number', phoneNumber);
    writer.writeCollectionOfEnumValues<
            WithCardholderPostRequestBodyPreferredLocales>(
        'preferred_locales', preferredLocales, (e) => e?.value);
    writer.writeObjectValue<WithCardholderPostRequestBodySpendingControls>(
        'spending_controls', spendingControls);
    writer.writeEnumValue<WithCardholderPostRequestBodyStatus>(
        'status', status, (e) => e?.value);
  }
}
