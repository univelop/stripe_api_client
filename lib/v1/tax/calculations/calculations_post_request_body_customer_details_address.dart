// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './calculations_post_request_body_customer_details_address_city.dart';
import './calculations_post_request_body_customer_details_address_line1.dart';
import './calculations_post_request_body_customer_details_address_line2.dart';
import './calculations_post_request_body_customer_details_address_postal_code.dart';
import './calculations_post_request_body_customer_details_address_state.dart';

/// auto generated
class CalculationsPostRequestBodyCustomerDetailsAddress
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The city property
  CalculationsPostRequestBodyCustomerDetailsAddressCity? city;

  ///  The country property
  String? country;

  ///  The line1 property
  CalculationsPostRequestBodyCustomerDetailsAddressLine1? line1;

  ///  The line2 property
  CalculationsPostRequestBodyCustomerDetailsAddressLine2? line2;

  ///  The postal_code property
  CalculationsPostRequestBodyCustomerDetailsAddressPostalCode? postalCode;

  ///  The state property
  CalculationsPostRequestBodyCustomerDetailsAddressState? state;

  /// Instantiates a new [CalculationsPostRequestBodyCustomerDetailsAddress] and sets the default values.
  CalculationsPostRequestBodyCustomerDetailsAddress() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationsPostRequestBodyCustomerDetailsAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CalculationsPostRequestBodyCustomerDetailsAddress();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['city'] = (node) => city = node
        .getObjectValue<CalculationsPostRequestBodyCustomerDetailsAddressCity>(
            CalculationsPostRequestBodyCustomerDetailsAddressCity
                .createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['line1'] = (node) => line1 = node
        .getObjectValue<CalculationsPostRequestBodyCustomerDetailsAddressLine1>(
            CalculationsPostRequestBodyCustomerDetailsAddressLine1
                .createFromDiscriminatorValue);
    deserializerMap['line2'] = (node) => line2 = node
        .getObjectValue<CalculationsPostRequestBodyCustomerDetailsAddressLine2>(
            CalculationsPostRequestBodyCustomerDetailsAddressLine2
                .createFromDiscriminatorValue);
    deserializerMap['postal_code'] = (node) => postalCode = node.getObjectValue<
            CalculationsPostRequestBodyCustomerDetailsAddressPostalCode>(
        CalculationsPostRequestBodyCustomerDetailsAddressPostalCode
            .createFromDiscriminatorValue);
    deserializerMap['state'] = (node) => state = node
        .getObjectValue<CalculationsPostRequestBodyCustomerDetailsAddressState>(
            CalculationsPostRequestBodyCustomerDetailsAddressState
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        CalculationsPostRequestBodyCustomerDetailsAddressCity>('city', city);
    writer.writeStringValue('country', country);
    writer.writeObjectValue<
        CalculationsPostRequestBodyCustomerDetailsAddressLine1>('line1', line1);
    writer.writeObjectValue<
        CalculationsPostRequestBodyCustomerDetailsAddressLine2>('line2', line2);
    writer.writeObjectValue<
            CalculationsPostRequestBodyCustomerDetailsAddressPostalCode>(
        'postal_code', postalCode);
    writer.writeObjectValue<
        CalculationsPostRequestBodyCustomerDetailsAddressState>('state', state);
    writer.writeAdditionalData(additionalData);
  }
}
