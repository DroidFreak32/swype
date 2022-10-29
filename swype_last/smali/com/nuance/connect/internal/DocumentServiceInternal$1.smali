.class Lcom/nuance/connect/internal/DocumentServiceInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "DocumentHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .registers 4

    # getter for: Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$100()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_8
    # getter for: Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$100()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    # getter for: Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$100()[Lcom/nuance/connect/internal/common/InternalMessages;

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
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    # invokes: Lcom/nuance/connect/internal/DocumentServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    invoke-static {v0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$000(Lcom/nuance/connect/internal/DocumentServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public onPostUpgrade()V
    .registers 1

    return-void
.end method
