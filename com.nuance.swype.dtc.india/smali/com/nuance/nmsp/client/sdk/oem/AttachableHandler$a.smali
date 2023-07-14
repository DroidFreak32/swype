.class Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Message;

.field final b:J


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler;Landroid/os/Message;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;->a:Landroid/os/Message;

    iput-wide p3, p0, Lcom/nuance/nmsp/client/sdk/oem/AttachableHandler$a;->b:J

    return-void
.end method
