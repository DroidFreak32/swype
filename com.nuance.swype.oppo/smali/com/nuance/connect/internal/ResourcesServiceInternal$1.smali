.class Lcom/nuance/connect/internal/ResourcesServiceInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "ResourcesHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$900()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 5

    sget-object v0, Lcom/nuance/connect/internal/ResourcesServiceInternal$5;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ResourcesServiceInternal - caught unexpected message: "

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_GET_CONNECT_RESOURCES"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PROP_LANGUAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$200(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    const-string v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string v2, "com.nuance.connect.TYPE_RESOURCES_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/nuance/connect/internal/ConnectResources;->setBitmap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PROP_LANGUAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v3}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$200(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    const-string v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string v2, "com.nuance.connect.TYPE_RESOURCES_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v2}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/nuance/connect/internal/ConnectResources;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "PROP_LANGUAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$300(Lcom/nuance/connect/internal/ResourcesServiceInternal;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$402(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_SET_AVAILABLE_RESOURCES_LIST"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$500(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$600(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v3, "subscribing to queue"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->subscribe(Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$600(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$700(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "subscribing to queue [multi]"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Locale;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->subscribe([Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$700(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$800(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$800(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$800(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v3, "attempting to subscribe to a formerly failed match: "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->subscribe(Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
