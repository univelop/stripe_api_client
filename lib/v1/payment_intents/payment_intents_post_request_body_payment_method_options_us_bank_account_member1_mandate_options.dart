// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_mandate_options_collection_method.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The collection_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptionsCollectionMethod?
      collectionMethod;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'collection_method'] = (node) => collectionMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptionsCollectionMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptionsCollectionMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptionsCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
