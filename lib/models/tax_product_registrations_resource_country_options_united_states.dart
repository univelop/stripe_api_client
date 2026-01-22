// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_registrations_resource_country_options_united_states_type.dart';
import './tax_product_registrations_resource_country_options_us_local_amusement_tax.dart';
import './tax_product_registrations_resource_country_options_us_local_lease_tax.dart';
import './tax_product_registrations_resource_country_options_us_state_sales_tax.dart';

/// auto generated
class TaxProductRegistrationsResourceCountryOptionsUnitedStates
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The local_amusement_tax property
  TaxProductRegistrationsResourceCountryOptionsUsLocalAmusementTax?
      localAmusementTax;

  ///  The local_lease_tax property
  TaxProductRegistrationsResourceCountryOptionsUsLocalLeaseTax? localLeaseTax;

  ///  Two-letter US state code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
  String? state;

  ///  The state_sales_tax property
  TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax? stateSalesTax;

  ///  Type of registration in the US.
  TaxProductRegistrationsResourceCountryOptionsUnitedStatesType? type_;

  /// Instantiates a new [TaxProductRegistrationsResourceCountryOptionsUnitedStates] and sets the default values.
  TaxProductRegistrationsResourceCountryOptionsUnitedStates()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductRegistrationsResourceCountryOptionsUnitedStates
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductRegistrationsResourceCountryOptionsUnitedStates();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['local_amusement_tax'] = (node) => localAmusementTax =
        node.getObjectValue<
                TaxProductRegistrationsResourceCountryOptionsUsLocalAmusementTax>(
            TaxProductRegistrationsResourceCountryOptionsUsLocalAmusementTax
                .createFromDiscriminatorValue);
    deserializerMap['local_lease_tax'] = (node) => localLeaseTax =
        node.getObjectValue<
                TaxProductRegistrationsResourceCountryOptionsUsLocalLeaseTax>(
            TaxProductRegistrationsResourceCountryOptionsUsLocalLeaseTax
                .createFromDiscriminatorValue);
    deserializerMap['state'] = (node) => state = node.getStringValue();
    deserializerMap['state_sales_tax'] = (node) => stateSalesTax =
        node.getObjectValue<
                TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax>(
            TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            TaxProductRegistrationsResourceCountryOptionsUnitedStatesType>(
        (stringValue) =>
            TaxProductRegistrationsResourceCountryOptionsUnitedStatesType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TaxProductRegistrationsResourceCountryOptionsUsLocalAmusementTax>(
        'local_amusement_tax', localAmusementTax);
    writer.writeObjectValue<
            TaxProductRegistrationsResourceCountryOptionsUsLocalLeaseTax>(
        'local_lease_tax', localLeaseTax);
    writer.writeStringValue('state', state);
    writer.writeObjectValue<
            TaxProductRegistrationsResourceCountryOptionsUsStateSalesTax>(
        'state_sales_tax', stateSalesTax);
    writer.writeEnumValue<
            TaxProductRegistrationsResourceCountryOptionsUnitedStatesType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
