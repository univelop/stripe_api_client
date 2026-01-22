// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_shipping_details_member1_address.dart';
import './with_invoice_post_request_body_shipping_details_member1_phone.dart';

/// auto generated
class WithInvoicePostRequestBodyShippingDetailsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithInvoicePostRequestBodyShippingDetailsMember1Address? address;

  ///  The name property
  String? name;

  ///  The phone property
  WithInvoicePostRequestBodyShippingDetailsMember1Phone? phone;

  /// Instantiates a new [WithInvoicePostRequestBodyShippingDetailsMember1] and sets the default values.
  WithInvoicePostRequestBodyShippingDetailsMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyShippingDetailsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyShippingDetailsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            WithInvoicePostRequestBodyShippingDetailsMember1Address>(
        WithInvoicePostRequestBodyShippingDetailsMember1Address
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node
        .getObjectValue<WithInvoicePostRequestBodyShippingDetailsMember1Phone>(
            WithInvoicePostRequestBodyShippingDetailsMember1Phone
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithInvoicePostRequestBodyShippingDetailsMember1Address>(
        'address', address);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<
        WithInvoicePostRequestBodyShippingDetailsMember1Phone>('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
