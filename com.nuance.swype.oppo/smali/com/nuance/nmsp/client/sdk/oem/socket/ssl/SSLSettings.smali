.class public Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;
.super Ljava/lang/Object;


# instance fields
.field public certData:Ljava/lang/String;

.field public certSummary:Ljava/lang/String;

.field public enableSelfSignedCert:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->enableSelfSignedCert:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->certSummary:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;->certData:Ljava/lang/String;

    return-void
.end method
