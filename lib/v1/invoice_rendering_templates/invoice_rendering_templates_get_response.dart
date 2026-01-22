// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/invoice_rendering_template.dart';
import './invoice_rendering_templates_get_response_object.dart';

/// auto generated
class InvoiceRenderingTemplatesGetResponse
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details about each object.
  Iterable<InvoiceRenderingTemplate>? data;

  ///  True if this list has another page of items after this one that can be fetched.
  bool? hasMore;

  ///  String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
  InvoiceRenderingTemplatesGetResponseObject? object;

  ///  The URL where this list can be accessed.
  String? url;

  /// Instantiates a new [InvoiceRenderingTemplatesGetResponse] and sets the default values.
  InvoiceRenderingTemplatesGetResponse() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceRenderingTemplatesGetResponse createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceRenderingTemplatesGetResponse();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data =
        node.getCollectionOfObjectValues<InvoiceRenderingTemplate>(
            InvoiceRenderingTemplate.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<InvoiceRenderingTemplatesGetResponseObject>(
            (stringValue) => InvoiceRenderingTemplatesGetResponseObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<InvoiceRenderingTemplate>(
        'data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeEnumValue<InvoiceRenderingTemplatesGetResponseObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
