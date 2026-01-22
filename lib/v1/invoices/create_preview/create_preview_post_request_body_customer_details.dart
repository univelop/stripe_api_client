// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_customer_details_address.dart';
import './create_preview_post_request_body_customer_details_shipping.dart';
import './create_preview_post_request_body_customer_details_tax.dart';
import './create_preview_post_request_body_customer_details_tax_exempt.dart';
import './create_preview_post_request_body_customer_details_tax_ids.dart';

/// auto generated
/// Details about the customer you want to invoice or overrides for an existing customer. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
class CreatePreviewPostRequestBodyCustomerDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  CreatePreviewPostRequestBodyCustomerDetailsAddress? address;

  ///  The shipping property
  CreatePreviewPostRequestBodyCustomerDetailsShipping? shipping;

  ///  The tax property
  CreatePreviewPostRequestBodyCustomerDetailsTax? tax;

  ///  The tax_exempt property
  CreatePreviewPostRequestBodyCustomerDetailsTaxExempt? taxExempt;

  ///  The tax_ids property
  Iterable<CreatePreviewPostRequestBodyCustomerDetailsTaxIds>? taxIds;

  /// Instantiates a new [CreatePreviewPostRequestBodyCustomerDetails] and sets the default values.
  CreatePreviewPostRequestBodyCustomerDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyCustomerDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyCustomerDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<CreatePreviewPostRequestBodyCustomerDetailsAddress>(
            CreatePreviewPostRequestBodyCustomerDetailsAddress
                .createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping = node
        .getObjectValue<CreatePreviewPostRequestBodyCustomerDetailsShipping>(
            CreatePreviewPostRequestBodyCustomerDetailsShipping
                .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<CreatePreviewPostRequestBodyCustomerDetailsTax>(
            CreatePreviewPostRequestBodyCustomerDetailsTax
                .createFromDiscriminatorValue);
    deserializerMap['tax_exempt'] = (node) => taxExempt =
        node.getEnumValue<CreatePreviewPostRequestBodyCustomerDetailsTaxExempt>(
            (stringValue) =>
                CreatePreviewPostRequestBodyCustomerDetailsTaxExempt.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['tax_ids'] = (node) => taxIds =
        node.getCollectionOfObjectValues<
                CreatePreviewPostRequestBodyCustomerDetailsTaxIds>(
            CreatePreviewPostRequestBodyCustomerDetailsTaxIds
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CreatePreviewPostRequestBodyCustomerDetailsAddress>(
        'address', address);
    writer
        .writeObjectValue<CreatePreviewPostRequestBodyCustomerDetailsShipping>(
            'shipping', shipping);
    writer.writeObjectValue<CreatePreviewPostRequestBodyCustomerDetailsTax>(
        'tax', tax);
    writer.writeEnumValue<CreatePreviewPostRequestBodyCustomerDetailsTaxExempt>(
        'tax_exempt', taxExempt, (e) => e?.value);
    writer.writeCollectionOfObjectValues<
        CreatePreviewPostRequestBodyCustomerDetailsTaxIds>('tax_ids', taxIds);
    writer.writeAdditionalData(additionalData);
  }
}
