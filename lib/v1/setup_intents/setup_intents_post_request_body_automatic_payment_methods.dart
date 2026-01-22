// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_automatic_payment_methods_allow_redirects.dart';

/// auto generated
/// When you enable this parameter, this SetupIntent accepts payment methods that you enable in the Dashboard and that are compatible with its other parameters.
class SetupIntentsPostRequestBodyAutomaticPaymentMethods
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allow_redirects property
  SetupIntentsPostRequestBodyAutomaticPaymentMethodsAllowRedirects?
      allowRedirects;

  ///  The enabled property
  bool? enabled;

  /// Instantiates a new [SetupIntentsPostRequestBodyAutomaticPaymentMethods] and sets the default values.
  SetupIntentsPostRequestBodyAutomaticPaymentMethods() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyAutomaticPaymentMethods
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyAutomaticPaymentMethods();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'allow_redirects'] = (node) => allowRedirects = node.getEnumValue<
            SetupIntentsPostRequestBodyAutomaticPaymentMethodsAllowRedirects>(
        (stringValue) =>
            SetupIntentsPostRequestBodyAutomaticPaymentMethodsAllowRedirects
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyAutomaticPaymentMethodsAllowRedirects>(
        'allow_redirects', allowRedirects, (e) => e?.value);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeAdditionalData(additionalData);
  }
}
