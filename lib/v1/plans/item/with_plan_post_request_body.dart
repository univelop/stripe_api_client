// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithPlanPostRequestBody implements Parsable {
  ///  Whether the plan is currently available for new subscriptions.
  bool? active;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  A brief description of the plan, hidden from customers.
  String? nickname;

  ///  The product the plan belongs to. This cannot be changed once it has been used in a subscription or subscription schedule.
  String? product;

  ///  Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://docs.stripe.com/api#create_subscription-trial_from_plan).
  int? trialPeriodDays;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPlanPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPlanPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['nickname'] = (node) => nickname = node.getStringValue();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['trial_period_days'] =
        (node) => trialPeriodDays = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('nickname', nickname);
    writer.writeStringValue('product', product);
    writer.writeIntValue('trial_period_days', trialPeriodDays);
  }
}
