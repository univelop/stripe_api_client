// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './calculations_post_request_body_customer_details_address.dart';
import './calculations_post_request_body_customer_details_address_source.dart';
import './calculations_post_request_body_customer_details_tax_ids.dart';
import './calculations_post_request_body_customer_details_taxability_override.dart';

/// auto generated
/// Details about the customer, including address and tax IDs.
class CalculationsPostRequestBodyCustomerDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  CalculationsPostRequestBodyCustomerDetailsAddress? address;

  ///  The address_source property
  CalculationsPostRequestBodyCustomerDetailsAddressSource? addressSource;

  ///  The ip_address property
  String? ipAddress;

  ///  The taxability_override property
  CalculationsPostRequestBodyCustomerDetailsTaxabilityOverride?
      taxabilityOverride;

  ///  The tax_ids property
  Iterable<CalculationsPostRequestBodyCustomerDetailsTaxIds>? taxIds;

  /// Instantiates a new [CalculationsPostRequestBodyCustomerDetails] and sets the default values.
  CalculationsPostRequestBodyCustomerDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationsPostRequestBodyCustomerDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CalculationsPostRequestBodyCustomerDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<CalculationsPostRequestBodyCustomerDetailsAddress>(
            CalculationsPostRequestBodyCustomerDetailsAddress
                .createFromDiscriminatorValue);
    deserializerMap['address_source'] = (node) => addressSource = node
        .getEnumValue<CalculationsPostRequestBodyCustomerDetailsAddressSource>(
            (stringValue) =>
                CalculationsPostRequestBodyCustomerDetailsAddressSource.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['taxability_override'] = (node) => taxabilityOverride =
        node.getEnumValue<
                CalculationsPostRequestBodyCustomerDetailsTaxabilityOverride>(
            (stringValue) =>
                CalculationsPostRequestBodyCustomerDetailsTaxabilityOverride
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['tax_ids'] = (node) => taxIds =
        node.getCollectionOfObjectValues<
                CalculationsPostRequestBodyCustomerDetailsTaxIds>(
            CalculationsPostRequestBodyCustomerDetailsTaxIds
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CalculationsPostRequestBodyCustomerDetailsAddress>(
        'address', address);
    writer.writeEnumValue<
            CalculationsPostRequestBodyCustomerDetailsAddressSource>(
        'address_source', addressSource, (e) => e?.value);
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeEnumValue<
            CalculationsPostRequestBodyCustomerDetailsTaxabilityOverride>(
        'taxability_override', taxabilityOverride, (e) => e?.value);
    writer.writeCollectionOfObjectValues<
        CalculationsPostRequestBodyCustomerDetailsTaxIds>('tax_ids', taxIds);
    writer.writeAdditionalData(additionalData);
  }
}
