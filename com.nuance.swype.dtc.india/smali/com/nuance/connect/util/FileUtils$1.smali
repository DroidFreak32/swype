.class final Lcom/nuance/connect/util/FileUtils$1;
.super Lcom/nuance/connect/util/FileUtils$CountingIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/connect/util/FileUtils$CountingIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field isClosed:Z

.field final synthetic val$deleteOnExit:Z

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$s:Ljava/util/Scanner;


# direct methods
.method constructor <init>(Ljava/util/Scanner;ZLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$s:Ljava/util/Scanner;

    iput-boolean p2, p0, Lcom/nuance/connect/util/FileUtils$1;->val$deleteOnExit:Z

    iput-object p3, p0, Lcom/nuance/connect/util/FileUtils$1;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nuance/connect/util/FileUtils$CountingIterator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/util/FileUtils$1;->isClosed:Z

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/util/FileUtils$1;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/util/FileUtils$1;->val$s:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/util/FileUtils$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nuance/connect/util/FileUtils$CountingIterator;->next()Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/util/FileUtils$1;->val$s:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$s:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/nuance/connect/util/FileUtils$1;->isClosed:Z

    iget-object v1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$s:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    iget-boolean v1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$deleteOnExit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$location:Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$s:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/nuance/connect/util/FileUtils$1;->isClosed:Z

    iget-object v1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$s:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    iget-boolean v1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$deleteOnExit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/util/FileUtils$1;->val$location:Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    throw v0
.end method

.method public final remove()V
    .locals 4

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "streamFile: "

    iget-object v2, p0, Lcom/nuance/connect/util/FileUtils$1;->val$location:Ljava/lang/String;

    const-string/jumbo v3, "; remove not supported"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
