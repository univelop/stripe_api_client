// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_tax_association_transaction_attempts_resource_committed.dart';
import './tax_product_resource_tax_association_transaction_attempts_resource_errored.dart';

/// auto generated
class TaxProductResourceTaxAssociationTransactionAttempts
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The committed property
  TaxProductResourceTaxAssociationTransactionAttemptsResourceCommitted?
      committed;

  ///  The errored property
  TaxProductResourceTaxAssociationTransactionAttemptsResourceErrored? errored;

  ///  The source of the tax transaction attempt. This is either a refund or a payment intent.
  String? source;

  ///  The status of the transaction attempt. This can be `errored` or `committed`.
  String? status;

  /// Instantiates a new [TaxProductResourceTaxAssociationTransactionAttempts] and sets the default values.
  TaxProductResourceTaxAssociationTransactionAttempts() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceTaxAssociationTransactionAttempts
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductResourceTaxAssociationTransactionAttempts();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['committed'] = (node) => committed = node.getObjectValue<
            TaxProductResourceTaxAssociationTransactionAttemptsResourceCommitted>(
        TaxProductResourceTaxAssociationTransactionAttemptsResourceCommitted
            .createFromDiscriminatorValue);
    deserializerMap['errored'] = (node) => errored = node.getObjectValue<
            TaxProductResourceTaxAssociationTransactionAttemptsResourceErrored>(
        TaxProductResourceTaxAssociationTransactionAttemptsResourceErrored
            .createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TaxProductResourceTaxAssociationTransactionAttemptsResourceCommitted>(
        'committed', committed);
    writer.writeObjectValue<
            TaxProductResourceTaxAssociationTransactionAttemptsResourceErrored>(
        'errored', errored);
    writer.writeStringValue('source', source);
    writer.writeStringValue('status', status);
    writer.writeAdditionalData(additionalData);
  }
}
