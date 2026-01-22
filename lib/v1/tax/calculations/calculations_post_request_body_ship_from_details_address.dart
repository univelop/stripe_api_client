// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './calculations_post_request_body_ship_from_details_address_city.dart';
import './calculations_post_request_body_ship_from_details_address_line1.dart';
import './calculations_post_request_body_ship_from_details_address_line2.dart';
import './calculations_post_request_body_ship_from_details_address_postal_code.dart';
import './calculations_post_request_body_ship_from_details_address_state.dart';

/// auto generated
class CalculationsPostRequestBodyShipFromDetailsAddress
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The city property
  CalculationsPostRequestBodyShipFromDetailsAddressCity? city;

  ///  The country property
  String? country;

  ///  The line1 property
  CalculationsPostRequestBodyShipFromDetailsAddressLine1? line1;

  ///  The line2 property
  CalculationsPostRequestBodyShipFromDetailsAddressLine2? line2;

  ///  The postal_code property
  CalculationsPostRequestBodyShipFromDetailsAddressPostalCode? postalCode;

  ///  The state property
  CalculationsPostRequestBodyShipFromDetailsAddressState? state;

  /// Instantiates a new [CalculationsPostRequestBodyShipFromDetailsAddress] and sets the default values.
  CalculationsPostRequestBodyShipFromDetailsAddress() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationsPostRequestBodyShipFromDetailsAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CalculationsPostRequestBodyShipFromDetailsAddress();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['city'] = (node) => city = node
        .getObjectValue<CalculationsPostRequestBodyShipFromDetailsAddressCity>(
            CalculationsPostRequestBodyShipFromDetailsAddressCity
                .createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['line1'] = (node) => line1 = node
        .getObjectValue<CalculationsPostRequestBodyShipFromDetailsAddressLine1>(
            CalculationsPostRequestBodyShipFromDetailsAddressLine1
                .createFromDiscriminatorValue);
    deserializerMap['line2'] = (node) => line2 = node
        .getObjectValue<CalculationsPostRequestBodyShipFromDetailsAddressLine2>(
            CalculationsPostRequestBodyShipFromDetailsAddressLine2
                .createFromDiscriminatorValue);
    deserializerMap['postal_code'] = (node) => postalCode = node.getObjectValue<
            CalculationsPostRequestBodyShipFromDetailsAddressPostalCode>(
        CalculationsPostRequestBodyShipFromDetailsAddressPostalCode
            .createFromDiscriminatorValue);
    deserializerMap['state'] = (node) => state = node
        .getObjectValue<CalculationsPostRequestBodyShipFromDetailsAddressState>(
            CalculationsPostRequestBodyShipFromDetailsAddressState
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        CalculationsPostRequestBodyShipFromDetailsAddressCity>('city', city);
    writer.writeStringValue('country', country);
    writer.writeObjectValue<
        CalculationsPostRequestBodyShipFromDetailsAddressLine1>('line1', line1);
    writer.writeObjectValue<
        CalculationsPostRequestBodyShipFromDetailsAddressLine2>('line2', line2);
    writer.writeObjectValue<
            CalculationsPostRequestBodyShipFromDetailsAddressPostalCode>(
        'postal_code', postalCode);
    writer.writeObjectValue<
        CalculationsPostRequestBodyShipFromDetailsAddressState>('state', state);
    writer.writeAdditionalData(additionalData);
  }
}
