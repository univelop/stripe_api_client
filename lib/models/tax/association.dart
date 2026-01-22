// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../tax_product_resource_tax_association_transaction_attempts.dart';
import './association_object.dart';

/// auto generated
/// A Tax Association exposes the Tax Transactions that Stripe attempted to create on your behalf based on the PaymentIntent input
class Association implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The [Tax Calculation](https://docs.stripe.com/api/tax/calculations/object) that was included in PaymentIntent.
  String? calculation;

  ///  Unique identifier for the object.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  AssociationObject? object;

  ///  The [PaymentIntent](https://docs.stripe.com/api/payment_intents/object) that this Tax Association is tracking.
  String? paymentIntent;

  ///  Information about the tax transactions linked to this payment intent
  Iterable<TaxProductResourceTaxAssociationTransactionAttempts>?
      taxTransactionAttempts;

  /// Instantiates a new [Association] and sets the default values.
  Association() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Association createFromDiscriminatorValue(ParseNode parseNode) {
    return Association();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['calculation'] =
        (node) => calculation = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AssociationObject>((stringValue) => AssociationObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['payment_intent'] =
        (node) => paymentIntent = node.getStringValue();
    deserializerMap['tax_transaction_attempts'] = (node) =>
        taxTransactionAttempts = node.getCollectionOfObjectValues<
                TaxProductResourceTaxAssociationTransactionAttempts>(
            TaxProductResourceTaxAssociationTransactionAttempts
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('calculation', calculation);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<AssociationObject>('object', object, (e) => e?.value);
    writer.writeStringValue('payment_intent', paymentIntent);
    writer.writeCollectionOfObjectValues<
            TaxProductResourceTaxAssociationTransactionAttempts>(
        'tax_transaction_attempts', taxTransactionAttempts);
    writer.writeAdditionalData(additionalData);
  }
}
