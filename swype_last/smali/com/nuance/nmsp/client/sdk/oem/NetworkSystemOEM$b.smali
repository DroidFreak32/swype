.class final Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:[B

.field b:I

.field c:I

.field d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;Ljava/lang/Object;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->a:[B

    iput p4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->b:I

    iput p5, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->c:I

    iput-object p6, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;

    iput-object p7, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$b;->e:Ljava/lang/Object;

    return-void
.end method
