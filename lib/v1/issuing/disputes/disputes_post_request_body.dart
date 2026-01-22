// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence.dart';
import './disputes_post_request_body_metadata.dart';
import './disputes_post_request_body_treasury.dart';

/// auto generated
class DisputesPostRequestBody implements Parsable {
  ///  The dispute amount in the card's currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). If not set, defaults to the full transaction amount.
  int? amount;

  ///  Evidence provided for the dispute.
  DisputesPostRequestBodyEvidence? evidence;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  DisputesPostRequestBodyMetadata? metadata;

  ///  The ID of the issuing transaction to create a dispute for. For transaction on Treasury FinancialAccounts, use `treasury.received_debit`.
  String? transaction;

  ///  Params for disputes related to Treasury FinancialAccounts
  DisputesPostRequestBodyTreasury? treasury;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['evidence'] = (node) => evidence =
        node.getObjectValue<DisputesPostRequestBodyEvidence>(
            DisputesPostRequestBodyEvidence.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<DisputesPostRequestBodyMetadata>(
            DisputesPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['transaction'] =
        (node) => transaction = node.getStringValue();
    deserializerMap['treasury'] = (node) => treasury =
        node.getObjectValue<DisputesPostRequestBodyTreasury>(
            DisputesPostRequestBodyTreasury.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<DisputesPostRequestBodyEvidence>(
        'evidence', evidence);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<DisputesPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('transaction', transaction);
    writer.writeObjectValue<DisputesPostRequestBodyTreasury>(
        'treasury', treasury);
  }
}
