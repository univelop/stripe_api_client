// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_invoice_creation_invoice_data_account_tax_ids.dart';
import './sessions_post_request_body_invoice_creation_invoice_data_custom_fields.dart';
import './sessions_post_request_body_invoice_creation_invoice_data_issuer.dart';
import './sessions_post_request_body_invoice_creation_invoice_data_metadata.dart';
import './sessions_post_request_body_invoice_creation_invoice_data_rendering_options.dart';

/// auto generated
class SessionsPostRequestBodyInvoiceCreationInvoiceData
    implements AdditionalDataHolder, Parsable {
  ///  The account_tax_ids property
  SessionsPostRequestBodyInvoiceCreationInvoiceDataAccountTaxIds? accountTaxIds;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_fields property
  SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFields? customFields;

  ///  The description property
  String? description;

  ///  The footer property
  String? footer;

  ///  The issuer property
  SessionsPostRequestBodyInvoiceCreationInvoiceDataIssuer? issuer;

  ///  The metadata property
  SessionsPostRequestBodyInvoiceCreationInvoiceDataMetadata? metadata;

  ///  The rendering_options property
  SessionsPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions?
      renderingOptions;

  /// Instantiates a new [SessionsPostRequestBodyInvoiceCreationInvoiceData] and sets the default values.
  SessionsPostRequestBodyInvoiceCreationInvoiceData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyInvoiceCreationInvoiceData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyInvoiceCreationInvoiceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_tax_ids'] = (node) => accountTaxIds =
        node.getObjectValue<
                SessionsPostRequestBodyInvoiceCreationInvoiceDataAccountTaxIds>(
            SessionsPostRequestBodyInvoiceCreationInvoiceDataAccountTaxIds
                .createFromDiscriminatorValue);
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getObjectValue<
                SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFields>(
            SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFields
                .createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['issuer'] = (node) => issuer = node.getObjectValue<
            SessionsPostRequestBodyInvoiceCreationInvoiceDataIssuer>(
        SessionsPostRequestBodyInvoiceCreationInvoiceDataIssuer
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SessionsPostRequestBodyInvoiceCreationInvoiceDataMetadata>(
        SessionsPostRequestBodyInvoiceCreationInvoiceDataMetadata
            .createFromDiscriminatorValue);
    deserializerMap[
        'rendering_options'] = (node) => renderingOptions = node.getObjectValue<
            SessionsPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions>(
        SessionsPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyInvoiceCreationInvoiceDataAccountTaxIds>(
        'account_tax_ids', accountTaxIds);
    writer.writeObjectValue<
            SessionsPostRequestBodyInvoiceCreationInvoiceDataCustomFields>(
        'custom_fields', customFields);
    writer.writeStringValue('description', description);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<
            SessionsPostRequestBodyInvoiceCreationInvoiceDataIssuer>(
        'issuer', issuer);
    writer.writeObjectValue<
            SessionsPostRequestBodyInvoiceCreationInvoiceDataMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            SessionsPostRequestBodyInvoiceCreationInvoiceDataRenderingOptions>(
        'rendering_options', renderingOptions);
    writer.writeAdditionalData(additionalData);
  }
}
