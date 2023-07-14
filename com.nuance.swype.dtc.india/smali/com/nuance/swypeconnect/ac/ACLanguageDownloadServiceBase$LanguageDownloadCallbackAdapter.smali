.class final Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/LanguageService$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LanguageDownloadCallbackAdapter"
.end annotation


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

.field private flavor:Ljava/lang/String;

.field private notifiedStart:Z

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

.field private type:Ljava/lang/String;

.field private version:I

.field private xt9LanguageId:I


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;IILjava/lang/String;Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->notifiedStart:Z

    iput p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->xt9LanguageId:I

    iput p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->version:I

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->type:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->flavor:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    return-void
.end method


# virtual methods
.method public final downloadComplete(Ljava/io/File;)Z
    .locals 9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->notifiedStart:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->downloadStarted()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->LANGUAGE:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Language download Complete("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->xt9LanguageId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", v: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->version:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", t: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", f: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->flavor:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "). Status: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string/jumbo v1, "Success"

    :goto_0
    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v3, "Language download Complete saving"

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v1

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->xt9LanguageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;

    iget v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->xt9LanguageId:I

    iget v6, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->version:I

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->type:Ljava/lang/String;

    iget-object v8, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->flavor:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$ACDownloadedLanguage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V

    :cond_1
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v3, "Language download Complete: "

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-static {v4}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->xt9LanguageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    :goto_1
    return v0

    :cond_2
    const-string/jumbo v1, "Failed"

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final downloadFailed(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Language download failed. Reason: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadFailed(I)V

    :cond_0
    return-void
.end method

.method public final downloadPercentage(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->notifiedStart:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->downloadStarted()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadPercentage(I)V

    :cond_1
    return-void
.end method

.method public final downloadStarted()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Language download started"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->notifiedStart:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadStarted()V

    :cond_0
    return-void
.end method

.method public final downloadStopped(I)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Language download stopped. Reason: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadStopped(I)V

    :cond_0
    return-void
.end method

.method public final getVersion()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase$LanguageDownloadCallbackAdapter;->version:I

    return v0
.end method
