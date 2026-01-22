// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customers_post_request_body_tax_ip_address.dart';
import './customers_post_request_body_tax_validate_location.dart';

/// auto generated
/// Tax details about the customer.
class CustomersPostRequestBodyTax implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ip_address property
  CustomersPostRequestBodyTaxIpAddress? ipAddress;

  ///  The validate_location property
  CustomersPostRequestBodyTaxValidateLocation? validateLocation;

  /// Instantiates a new [CustomersPostRequestBodyTax] and sets the default values.
  CustomersPostRequestBodyTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomersPostRequestBodyTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomersPostRequestBodyTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ip_address'] = (node) => ipAddress =
        node.getObjectValue<CustomersPostRequestBodyTaxIpAddress>(
            CustomersPostRequestBodyTaxIpAddress.createFromDiscriminatorValue);
    deserializerMap['validate_location'] = (node) => validateLocation =
        node.getEnumValue<CustomersPostRequestBodyTaxValidateLocation>(
            (stringValue) => CustomersPostRequestBodyTaxValidateLocation.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CustomersPostRequestBodyTaxIpAddress>(
        'ip_address', ipAddress);
    writer.writeEnumValue<CustomersPostRequestBodyTaxValidateLocation>(
        'validate_location', validateLocation, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
