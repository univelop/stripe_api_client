// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_us_local_amusement_tax.dart';
import './registrations_post_request_body_country_options_us_local_lease_tax.dart';
import './registrations_post_request_body_country_options_us_state_sales_tax.dart';
import './registrations_post_request_body_country_options_us_type.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsUs
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The local_amusement_tax property
  RegistrationsPostRequestBodyCountryOptionsUsLocalAmusementTax?
      localAmusementTax;

  ///  The local_lease_tax property
  RegistrationsPostRequestBodyCountryOptionsUsLocalLeaseTax? localLeaseTax;

  ///  The state property
  String? state;

  ///  The state_sales_tax property
  RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax? stateSalesTax;

  ///  The type property
  RegistrationsPostRequestBodyCountryOptionsUsType? type_;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsUs] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsUs() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsUs
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsUs();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['local_amusement_tax'] = (node) => localAmusementTax =
        node.getObjectValue<
                RegistrationsPostRequestBodyCountryOptionsUsLocalAmusementTax>(
            RegistrationsPostRequestBodyCountryOptionsUsLocalAmusementTax
                .createFromDiscriminatorValue);
    deserializerMap['local_lease_tax'] = (node) => localLeaseTax =
        node.getObjectValue<
                RegistrationsPostRequestBodyCountryOptionsUsLocalLeaseTax>(
            RegistrationsPostRequestBodyCountryOptionsUsLocalLeaseTax
                .createFromDiscriminatorValue);
    deserializerMap['state'] = (node) => state = node.getStringValue();
    deserializerMap['state_sales_tax'] = (node) => stateSalesTax =
        node.getObjectValue<
                RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax>(
            RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<RegistrationsPostRequestBodyCountryOptionsUsType>(
            (stringValue) => RegistrationsPostRequestBodyCountryOptionsUsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            RegistrationsPostRequestBodyCountryOptionsUsLocalAmusementTax>(
        'local_amusement_tax', localAmusementTax);
    writer.writeObjectValue<
            RegistrationsPostRequestBodyCountryOptionsUsLocalLeaseTax>(
        'local_lease_tax', localLeaseTax);
    writer.writeStringValue('state', state);
    writer.writeObjectValue<
            RegistrationsPostRequestBodyCountryOptionsUsStateSalesTax>(
        'state_sales_tax', stateSalesTax);
    writer.writeEnumValue<RegistrationsPostRequestBodyCountryOptionsUsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
