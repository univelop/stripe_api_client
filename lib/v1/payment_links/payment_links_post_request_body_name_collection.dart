// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_name_collection_business.dart';
import './payment_links_post_request_body_name_collection_individual.dart';

/// auto generated
/// Controls settings applied for collecting the customer's name.
class PaymentLinksPostRequestBodyNameCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The business property
  PaymentLinksPostRequestBodyNameCollectionBusiness? business;

  ///  The individual property
  PaymentLinksPostRequestBodyNameCollectionIndividual? individual;

  /// Instantiates a new [PaymentLinksPostRequestBodyNameCollection] and sets the default values.
  PaymentLinksPostRequestBodyNameCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyNameCollection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksPostRequestBodyNameCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['business'] = (node) => business =
        node.getObjectValue<PaymentLinksPostRequestBodyNameCollectionBusiness>(
            PaymentLinksPostRequestBodyNameCollectionBusiness
                .createFromDiscriminatorValue);
    deserializerMap['individual'] = (node) => individual = node
        .getObjectValue<PaymentLinksPostRequestBodyNameCollectionIndividual>(
            PaymentLinksPostRequestBodyNameCollectionIndividual
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentLinksPostRequestBodyNameCollectionBusiness>(
        'business', business);
    writer
        .writeObjectValue<PaymentLinksPostRequestBodyNameCollectionIndividual>(
            'individual', individual);
    writer.writeAdditionalData(additionalData);
  }
}
