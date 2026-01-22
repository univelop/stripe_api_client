// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Details on the account's acceptance of the [Stripe Services Agreement](/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
class WithAccountPostRequestBodyTosAcceptance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The date property
  int? date;

  ///  The ip property
  String? ip;

  ///  The service_agreement property
  String? serviceAgreement;

  ///  The user_agent property
  String? userAgent;

  /// Instantiates a new [WithAccountPostRequestBodyTosAcceptance] and sets the default values.
  WithAccountPostRequestBodyTosAcceptance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyTosAcceptance createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithAccountPostRequestBodyTosAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['date'] = (node) => date = node.getIntValue();
    deserializerMap['ip'] = (node) => ip = node.getStringValue();
    deserializerMap['service_agreement'] =
        (node) => serviceAgreement = node.getStringValue();
    deserializerMap['user_agent'] = (node) => userAgent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('date', date);
    writer.writeStringValue('ip', ip);
    writer.writeStringValue('service_agreement', serviceAgreement);
    writer.writeStringValue('user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
