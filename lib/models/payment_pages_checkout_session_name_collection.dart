// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_business_name.dart';
import './payment_pages_checkout_session_individual_name.dart';

/// auto generated
class PaymentPagesCheckoutSessionNameCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The business property
  PaymentPagesCheckoutSessionBusinessName? business;

  ///  The individual property
  PaymentPagesCheckoutSessionIndividualName? individual;

  /// Instantiates a new [PaymentPagesCheckoutSessionNameCollection] and sets the default values.
  PaymentPagesCheckoutSessionNameCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionNameCollection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionNameCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['business'] = (node) => business = node.getObjectValue<
            PaymentPagesCheckoutSessionBusinessName>(
        PaymentPagesCheckoutSessionBusinessName.createFromDiscriminatorValue);
    deserializerMap['individual'] = (node) => individual = node.getObjectValue<
            PaymentPagesCheckoutSessionIndividualName>(
        PaymentPagesCheckoutSessionIndividualName.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentPagesCheckoutSessionBusinessName>(
        'business', business);
    writer.writeObjectValue<PaymentPagesCheckoutSessionIndividualName>(
        'individual', individual);
    writer.writeAdditionalData(additionalData);
  }
}
