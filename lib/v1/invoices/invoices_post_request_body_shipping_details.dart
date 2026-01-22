// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_shipping_details_address.dart';
import './invoices_post_request_body_shipping_details_phone.dart';

/// auto generated
/// Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
class InvoicesPostRequestBodyShippingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  InvoicesPostRequestBodyShippingDetailsAddress? address;

  ///  The name property
  String? name;

  ///  The phone property
  InvoicesPostRequestBodyShippingDetailsPhone? phone;

  /// Instantiates a new [InvoicesPostRequestBodyShippingDetails] and sets the default values.
  InvoicesPostRequestBodyShippingDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyShippingDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesPostRequestBodyShippingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<InvoicesPostRequestBodyShippingDetailsAddress>(
            InvoicesPostRequestBodyShippingDetailsAddress
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone =
        node.getObjectValue<InvoicesPostRequestBodyShippingDetailsPhone>(
            InvoicesPostRequestBodyShippingDetailsPhone
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<InvoicesPostRequestBodyShippingDetailsAddress>(
        'address', address);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<InvoicesPostRequestBodyShippingDetailsPhone>(
        'phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
