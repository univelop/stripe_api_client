// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_member1_mandate_options_collection_method.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The collection_method property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptionsCollectionMethod?
      collectionMethod;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'collection_method'] = (node) => collectionMethod = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptionsCollectionMethod>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptionsCollectionMethod
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
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptionsCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
