// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_customer_details_tax_ip_address.dart';

/// auto generated
class CreatePreviewPostRequestBodyCustomerDetailsTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ip_address property
  CreatePreviewPostRequestBodyCustomerDetailsTaxIpAddress? ipAddress;

  /// Instantiates a new [CreatePreviewPostRequestBodyCustomerDetailsTax] and sets the default values.
  CreatePreviewPostRequestBodyCustomerDetailsTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyCustomerDetailsTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyCustomerDetailsTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ip_address'] = (node) => ipAddress = node.getObjectValue<
            CreatePreviewPostRequestBodyCustomerDetailsTaxIpAddress>(
        CreatePreviewPostRequestBodyCustomerDetailsTaxIpAddress
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyCustomerDetailsTaxIpAddress>(
        'ip_address', ipAddress);
    writer.writeAdditionalData(additionalData);
  }
}
