// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_tax_location_source.dart';

/// auto generated
class CustomerTaxLocation implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The identified tax country of the customer.
  String? country;

  ///  The data source used to infer the customer's location.
  CustomerTaxLocationSource? source;

  ///  The identified tax state, county, province, or region of the customer.
  String? state;

  /// Instantiates a new [CustomerTaxLocation] and sets the default values.
  CustomerTaxLocation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerTaxLocation createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerTaxLocation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['source'] = (node) => source =
        node.getEnumValue<CustomerTaxLocationSource>((stringValue) =>
            CustomerTaxLocationSource.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['state'] = (node) => state = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('country', country);
    writer.writeEnumValue<CustomerTaxLocationSource>(
        'source', source, (e) => e?.value);
    writer.writeStringValue('state', state);
    writer.writeAdditionalData(additionalData);
  }
}
