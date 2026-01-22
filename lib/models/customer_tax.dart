// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_tax_automatic_tax.dart';
import './customer_tax_location.dart';
import './customer_tax_provider.dart';

/// auto generated
class CustomerTax implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Surfaces if automatic tax computation is possible given the current customer location information.
  CustomerTaxAutomaticTax? automaticTax;

  ///  A recent IP address of the customer used for tax reporting and tax location inference.
  String? ipAddress;

  ///  The identified tax location of the customer.
  CustomerTaxLocation? location;

  ///  The tax calculation provider used for location resolution. Defaults to `stripe` when not using a [third-party provider](/tax/third-party-apps).
  CustomerTaxProvider? provider;

  /// Instantiates a new [CustomerTax] and sets the default values.
  CustomerTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerTax createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getEnumValue<CustomerTaxAutomaticTax>((stringValue) =>
            CustomerTaxAutomaticTax.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['location'] = (node) => location =
        node.getObjectValue<CustomerTaxLocation>(
            CustomerTaxLocation.createFromDiscriminatorValue);
    deserializerMap['provider'] = (node) => provider =
        node.getEnumValue<CustomerTaxProvider>((stringValue) =>
            CustomerTaxProvider.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<CustomerTaxAutomaticTax>(
        'automatic_tax', automaticTax, (e) => e?.value);
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeObjectValue<CustomerTaxLocation>('location', location);
    writer.writeEnumValue<CustomerTaxProvider>(
        'provider', provider, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
