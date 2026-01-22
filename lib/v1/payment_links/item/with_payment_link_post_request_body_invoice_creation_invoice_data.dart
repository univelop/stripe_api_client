// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_invoice_creation_invoice_data_account_tax_ids.dart';
import './with_payment_link_post_request_body_invoice_creation_invoice_data_custom_fields.dart';
import './with_payment_link_post_request_body_invoice_creation_invoice_data_issuer.dart';
import './with_payment_link_post_request_body_invoice_creation_invoice_data_rendering_options.dart';

/// auto generated
class WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceData
    implements AdditionalDataHolder, Parsable {
  ///  The account_tax_ids property
  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataAccountTaxIds?
      accountTaxIds;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_fields property
  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFields?
      customFields;

  ///  The description property
  String? description;

  ///  The footer property
  String? footer;

  ///  The issuer property
  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataIssuer? issuer;

  ///  The metadata property
  String? metadata;

  ///  The rendering_options property
  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions?
      renderingOptions;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceData] and sets the default values.
  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceData()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'account_tax_ids'] = (node) => accountTaxIds = node.getObjectValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataAccountTaxIds>(
        WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataAccountTaxIds
            .createFromDiscriminatorValue);
    deserializerMap[
        'custom_fields'] = (node) => customFields = node.getObjectValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFields>(
        WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFields
            .createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['issuer'] = (node) => issuer = node.getObjectValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataIssuer>(
        WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataIssuer
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap[
        'rendering_options'] = (node) => renderingOptions = node.getObjectValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions>(
        WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataAccountTaxIds>(
        'account_tax_ids', accountTaxIds);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataCustomFields>(
        'custom_fields', customFields);
    writer.writeStringValue('description', description);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataIssuer>(
        'issuer', issuer);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions>(
        'rendering_options', renderingOptions);
    writer.writeAdditionalData(additionalData);
  }
}
