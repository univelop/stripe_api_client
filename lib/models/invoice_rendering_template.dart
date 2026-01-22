// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_rendering_template_metadata.dart';
import './invoice_rendering_template_object.dart';
import './invoice_rendering_template_status.dart';

/// auto generated
/// Invoice Rendering Templates are used to configure how invoices are rendered on surfaces like the PDF. Invoice Rendering Templatescan be created from within the Dashboard, and they can be used over the API when creating invoices.
class InvoiceRenderingTemplate implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  InvoiceRenderingTemplateMetadata? metadata;

  ///  A brief description of the template, hidden from customers
  String? nickname;

  ///  String representing the object's type. Objects of the same type share the same value.
  InvoiceRenderingTemplateObject? object;

  ///  The status of the template, one of `active` or `archived`.
  InvoiceRenderingTemplateStatus? status;

  ///  Version of this template; version increases by one when an update on the template changes any field that controls invoice rendering
  int? version;

  /// Instantiates a new [InvoiceRenderingTemplate] and sets the default values.
  InvoiceRenderingTemplate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceRenderingTemplate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceRenderingTemplate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<InvoiceRenderingTemplateMetadata>(
            InvoiceRenderingTemplateMetadata.createFromDiscriminatorValue);
    deserializerMap['nickname'] = (node) => nickname = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<InvoiceRenderingTemplateObject>((stringValue) =>
            InvoiceRenderingTemplateObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<InvoiceRenderingTemplateStatus>((stringValue) =>
            InvoiceRenderingTemplateStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['version'] = (node) => version = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<InvoiceRenderingTemplateMetadata>(
        'metadata', metadata);
    writer.writeStringValue('nickname', nickname);
    writer.writeEnumValue<InvoiceRenderingTemplateObject>(
        'object', object, (e) => e?.value);
    writer.writeEnumValue<InvoiceRenderingTemplateStatus>(
        'status', status, (e) => e?.value);
    writer.writeIntValue('version', version);
    writer.writeAdditionalData(additionalData);
  }
}
