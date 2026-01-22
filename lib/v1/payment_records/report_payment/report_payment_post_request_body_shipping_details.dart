// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_post_request_body_shipping_details_address.dart';

/// auto generated
/// Shipping information for this payment.
class ReportPaymentPostRequestBodyShippingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  ReportPaymentPostRequestBodyShippingDetailsAddress? address;

  ///  The name property
  String? name;

  ///  The phone property
  String? phone;

  /// Instantiates a new [ReportPaymentPostRequestBodyShippingDetails] and sets the default values.
  ReportPaymentPostRequestBodyShippingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentPostRequestBodyShippingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentPostRequestBodyShippingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<ReportPaymentPostRequestBodyShippingDetailsAddress>(
            ReportPaymentPostRequestBodyShippingDetailsAddress
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ReportPaymentPostRequestBodyShippingDetailsAddress>(
        'address', address);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
