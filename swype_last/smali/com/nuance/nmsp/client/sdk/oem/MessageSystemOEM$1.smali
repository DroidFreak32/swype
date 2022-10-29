.class final Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$1;->a:Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;->attachToCurrentThread()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
