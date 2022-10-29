.class final Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

.field c:Ljava/io/InputStream;

.field d:Ljava/io/OutputStream;

.field e:Ljava/lang/Object;

.field f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->c:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->d:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->a:Ljava/net/Socket;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->b:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->c:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->d:Ljava/io/OutputStream;

    iput-object p6, p0, Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$a;->f:Lcom/nuance/nmsp/client/sdk/oem/NetworkSystemOEM$c;

    return-void
.end method
