.class Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/LivingLanguageService$Callback;


# instance fields
.field available:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->val$callback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->available:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public downloadProgress(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 20

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isShutdown:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->val$callback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;->downloadProgress(IIILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->access$000(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "download progress categoryId="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "type="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " languageId="

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, " locale="

    const-string/jumbo v9, " country="

    const-string/jumbo v11, " percent="

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    return-void
.end method

.method public subscriptionAdded(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 20

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isShutdown:Z

    if-nez v0, :cond_55

    const/16 v0, 0x400

    if-ne p1, v0, :cond_56

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->HOTWORDS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->val$callback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;->subscribed(IIILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->access$000(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "subscribed id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " type="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " languageId="

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, " locale="

    const-string/jumbo v9, " country="

    const-string/jumbo v11, " count="

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    return-void

    :cond_56
    const/16 v0, 0x401

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->LLUDA:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    goto :goto_17
.end method

.method public subscriptionRemoved(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isShutdown:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->val$callback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;->unsubscribed(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->access$000(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "unsubscribed id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "type="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " languageId="

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, " locale="

    const-string/jumbo v9, " country="

    move-object v8, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    return-void
.end method

.method public subscriptionUpdated(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 20

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isShutdown:Z

    if-nez v0, :cond_55

    const/16 v0, 0x400

    if-ne p1, v0, :cond_56

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->HOTWORDS:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->val$callback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;->updated(IIILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->access$000(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "updated id="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "type="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " languageId="

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, " locale="

    const-string/jumbo v9, " country="

    const-string/jumbo v11, " count="

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    return-void

    :cond_56
    const/16 v0, 0x401

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->LLUDA:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    goto :goto_17
.end method

.method public updatesAvailable(Z)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->access$000(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "updatesAvailable("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->available:Ljava/lang/Boolean;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->available:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq p1, v1, :cond_27

    :cond_20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->available:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_27
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isShutdown:Z

    if-nez v1, :cond_3a

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->val$callback:Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;->available:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;->updatesAvailable(Z)V

    :cond_3a
    return-void
.end method
