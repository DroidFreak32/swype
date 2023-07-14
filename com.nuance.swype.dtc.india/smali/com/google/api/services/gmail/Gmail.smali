.class public Lcom/google/api/services/gmail/Gmail;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Builder;,
        Lcom/google/api/services/gmail/Gmail$Users;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/gmail/v1/users/"

.field public static final DEFAULT_ROOT_URL:Ljava/lang/String; = "https://www.googleapis.com/"

.field public static final DEFAULT_SERVICE_PATH:Ljava/lang/String; = "gmail/v1/users/"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MAJOR_VERSION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MINOR_VERSION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.22.0 of the Gmail API library."

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/google/api/client/googleapis/GoogleUtils;->VERSION:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 1199
    if-nez v0, :cond_1

    .line 1200
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    invoke-direct {p0, v0}, Lcom/google/api/services/gmail/Gmail;-><init>(Lcom/google/api/services/gmail/Gmail$Builder;)V

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/google/api/services/gmail/Gmail$Builder;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 119
    return-void
.end method

.method public users()Lcom/google/api/services/gmail/Gmail$Users;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users;-><init>(Lcom/google/api/services/gmail/Gmail;)V

    return-object v0
.end method
