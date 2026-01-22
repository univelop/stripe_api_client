// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TopupsPostRequestBody implements Parsable {
  ///  A positive integer representing how much to transfer.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The ID of a source to transfer funds from. For most users, this should be left unspecified which will use the bank account that was set up in the dashboard for the specified currency. In test mode, this can be a test bank token (see [Testing Top-ups](https://docs.stripe.com/connect/testing#testing-top-ups)).
  String? source;

  ///  Extra information about a top-up for the source's bank statement. Limited to 15 ASCII characters.
  String? statementDescriptor;

  ///  A string that identifies this top-up as part of a group.
  String? transferGroup;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TopupsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TopupsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['source'] = (node) => source = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('source', source);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue('transfer_group', transferGroup);
  }
}
