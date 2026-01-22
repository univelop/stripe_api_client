// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_customer_details_address_source.dart';
import './tax_product_resource_customer_details_resource_tax_id.dart';
import './tax_product_resource_customer_details_taxability_override.dart';
import './tax_product_resource_postal_address.dart';

/// auto generated
class TaxProductResourceCustomerDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer's postal address (for example, home or business location).
  TaxProductResourcePostalAddress? address;

  ///  The type of customer address provided.
  TaxProductResourceCustomerDetailsAddressSource? addressSource;

  ///  The customer's IP address (IPv4 or IPv6).
  String? ipAddress;

  ///  The taxability override used for taxation.
  TaxProductResourceCustomerDetailsTaxabilityOverride? taxabilityOverride;

  ///  The customer's tax IDs (for example, EU VAT numbers).
  Iterable<TaxProductResourceCustomerDetailsResourceTaxId>? taxIds;

  /// Instantiates a new [TaxProductResourceCustomerDetails] and sets the default values.
  TaxProductResourceCustomerDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceCustomerDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxProductResourceCustomerDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<TaxProductResourcePostalAddress>(
            TaxProductResourcePostalAddress.createFromDiscriminatorValue);
    deserializerMap['address_source'] = (node) => addressSource =
        node.getEnumValue<TaxProductResourceCustomerDetailsAddressSource>(
            (stringValue) => TaxProductResourceCustomerDetailsAddressSource
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['taxability_override'] = (node) => taxabilityOverride =
        node.getEnumValue<TaxProductResourceCustomerDetailsTaxabilityOverride>(
            (stringValue) => TaxProductResourceCustomerDetailsTaxabilityOverride
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_ids'] = (node) => taxIds =
        node.getCollectionOfObjectValues<
                TaxProductResourceCustomerDetailsResourceTaxId>(
            TaxProductResourceCustomerDetailsResourceTaxId
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TaxProductResourcePostalAddress>(
        'address', address);
    writer.writeEnumValue<TaxProductResourceCustomerDetailsAddressSource>(
        'address_source', addressSource, (e) => e?.value);
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeEnumValue<TaxProductResourceCustomerDetailsTaxabilityOverride>(
        'taxability_override', taxabilityOverride, (e) => e?.value);
    writer.writeCollectionOfObjectValues<
        TaxProductResourceCustomerDetailsResourceTaxId>('tax_ids', taxIds);
    writer.writeAdditionalData(additionalData);
  }
}
