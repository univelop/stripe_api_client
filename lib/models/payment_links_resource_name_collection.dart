// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_business_name.dart';
import './payment_links_resource_individual_name.dart';

/// auto generated
class PaymentLinksResourceNameCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The business property
  PaymentLinksResourceBusinessName? business;

  ///  The individual property
  PaymentLinksResourceIndividualName? individual;

  /// Instantiates a new [PaymentLinksResourceNameCollection] and sets the default values.
  PaymentLinksResourceNameCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceNameCollection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceNameCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['business'] = (node) => business =
        node.getObjectValue<PaymentLinksResourceBusinessName>(
            PaymentLinksResourceBusinessName.createFromDiscriminatorValue);
    deserializerMap['individual'] = (node) => individual =
        node.getObjectValue<PaymentLinksResourceIndividualName>(
            PaymentLinksResourceIndividualName.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentLinksResourceBusinessName>(
        'business', business);
    writer.writeObjectValue<PaymentLinksResourceIndividualName>(
        'individual', individual);
    writer.writeAdditionalData(additionalData);
  }
}
