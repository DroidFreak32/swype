.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ackLanguagePack canceled: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    if-ltz p2, :cond_1

    int-to-float v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    int-to-float v1, p2

    div-float v0, v1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$700(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$700(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$800(Lcom/nuance/connect/service/manager/LanguageManager;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v3, "13"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed to install due to insufficient storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$902(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1002(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LanguageDownloadTransaction "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " onFileResponse"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$600(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ackLanguagePack canceled: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v0, v8}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1102(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1200(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "CHECKSUM"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LanguageDownloadTransaction "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " checksum verification: ["

    const-string/jumbo v5, "] to ["

    const-string/jumbo v7, "]"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LanguageDownloadTransaction "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ": file "

    iget-object v5, p1, Lcom/nuance/connect/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$700(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$700(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FILE_LOCATION"

    iget-object v3, p1, Lcom/nuance/connect/comm/Response;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v0, v8}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1302(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LanguageDownloadTransaction "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ": failed to verify the language pack, rollback will occur"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v0, v8}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1402(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$902(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->rollback()V

    goto/16 :goto_0
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LanguageDownloadTransaction "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ": ioException"

    iget-object v4, p1, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$700(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1200(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "FILE_LOCATION"

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1200(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "STEP"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$300(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$700(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v3}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1200(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1502(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$902(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;Z)Z

    if-lez v0, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v1, v1, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "No more space to complete download."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x19000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->access$1002(Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;I)I

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageDownloadTransaction;->this$0:Lcom/nuance/connect/service/manager/LanguageManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/LanguageManager;->access$200(Lcom/nuance/connect/service/manager/LanguageManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Shouldn\'t get here!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
