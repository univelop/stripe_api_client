// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_from_calculation_post_request_body_metadata.dart';

/// auto generated
class CreateFromCalculationPostRequestBody implements Parsable {
  ///  Tax Calculation ID to be used as input when creating the transaction.
  String? calculation;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  CreateFromCalculationPostRequestBodyMetadata? metadata;

  ///  The Unix timestamp representing when the tax liability is assumed or reduced, which determines the liability posting period and handling in tax liability reports. The timestamp must fall within the `tax_date` and the current time, unless the `tax_date` is scheduled in advance. Defaults to the current time.
  int? postedAt;

  ///  A custom order or sale identifier, such as 'myOrder_123'. Must be unique across all transactions, including reversals.
  String? reference;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateFromCalculationPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreateFromCalculationPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['calculation'] =
        (node) => calculation = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreateFromCalculationPostRequestBodyMetadata>(
            CreateFromCalculationPostRequestBodyMetadata
                .createFromDiscriminatorValue);
    deserializerMap['posted_at'] = (node) => postedAt = node.getIntValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('calculation', calculation);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<CreateFromCalculationPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeIntValue('posted_at', postedAt);
    writer.writeStringValue('reference', reference);
  }
}
