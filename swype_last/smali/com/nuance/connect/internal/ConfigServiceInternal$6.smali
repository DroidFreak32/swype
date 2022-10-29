.class Lcom/nuance/connect/internal/ConfigServiceInternal$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "SwypeConfigurationHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .registers 4

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_8
    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1fa

    :cond_1b
    :goto_1b
    return-void

    :pswitch_1c
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_GET_OEM_ID"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    sget-object v3, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$700(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_1b

    :pswitch_36
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_GET_LANGUAGE_INFO"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLanguageInfo()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLocaleInfo()V

    goto :goto_1b

    :pswitch_4d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v3, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getCoreVersions()Landroid/util/SparseArray;

    move-result-object v3

    const-string/jumbo v4, "PROP_CORE_ALPHA"

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "PROP_CORE_CHINESE"

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "PROP_CORE_JAPANESE"

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "PROP_CORE_KOREAN"

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :pswitch_9f
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    sget-object v3, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$700(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :pswitch_ae
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :pswitch_c7
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v2}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/AppSettings;->getCustomerString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getSwyperId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fb

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getSwyperId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_fb
    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->setSwyperId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    const-string/jumbo v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v2, "com.nuance.connect.TYPE_SWYPER_ID"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_1b

    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_130

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_130
    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->setDeviceId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    const-string/jumbo v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string/jumbo v2, "com.nuance.connect.TYPE_DEVICE_ID"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_1b

    :pswitch_146
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendConnectionConcurrentLimit()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$100(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_1b

    :pswitch_14d
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendDownloadIdleTimeout()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$200(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_1b

    :pswitch_154
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendForegroundDataState()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$300(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_1b

    :pswitch_15b
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendBackgroundDataState()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_1b

    :pswitch_162
    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v2, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    sget-object v3, Lcom/nuance/connect/host/service/BuildSettings$Property;->COLLECT_USER_PROPERTIES:Lcom/nuance/connect/host/service/BuildSettings$Property;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$700(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :pswitch_171
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendReportingAllowed()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$800(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_1b

    :pswitch_178
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_GET_BUILD_PROPERTIES_FILTER"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v3, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    const-string/jumbo v3, "filter_block"

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildPropertiesFilterBlock()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "filter_pre_tos"

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->getBuildPropertiesFilterPreTos()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_BUILD_PROPERTIES_FILTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :pswitch_1b2
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "MESSAGE_HOST_GET_PLATFORM_UPDATE_ENABLED"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/host/service/BuildSettings;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_PLATFORM_UPDATE_ENABLED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0}, Lcom/nuance/connect/host/service/BuildSettings;->isPlatformUpdateEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :pswitch_1db
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/AppSettings;->sendCustomProperties()V

    goto/16 :goto_1b

    :pswitch_1ea
    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$6;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    const/16 v1, 0x16

    const-string/jumbo v2, "A new or updated configuration is available."

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_36
        :pswitch_4d
        :pswitch_9f
        :pswitch_ae
        :pswitch_c7
        :pswitch_dc
        :pswitch_111
        :pswitch_146
        :pswitch_14d
        :pswitch_154
        :pswitch_15b
        :pswitch_162
        :pswitch_171
        :pswitch_178
        :pswitch_1b2
        :pswitch_1db
        :pswitch_1ea
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .registers 1

    return-void
.end method
