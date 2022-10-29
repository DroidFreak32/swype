.class public Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field public msgData:Ljava/lang/Object;

.field public msgHandler:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;

.field public msgReceiver:Ljava/lang/Thread;

.field public msgSender:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;->msgData:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;->msgHandler:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;

    return-void
.end method
