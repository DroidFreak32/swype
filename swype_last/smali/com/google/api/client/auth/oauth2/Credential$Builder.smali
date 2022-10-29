.class public Lcom/google/api/client/auth/oauth2/Credential$Builder;
.super Ljava/lang/Object;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field clock:Lcom/google/api/client/util/Clock;

.field jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field final method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field refreshListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

.field transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)V
    .registers 3
    .param p1, "method"    # Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential$Builder;->clock:Lcom/google/api/client/util/Clock;

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential$Builder;->refreshListeners:Ljava/util/Collection;

    .line 1127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 632
    check-cast v0, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential$Builder;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 633
    return-void
.end method


# virtual methods
.method public setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .registers 3
    .param p1, "tokenServerEncodedUrl"    # Ljava/lang/String;

    .prologue
    .line 741
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential$Builder;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    .line 743
    return-object p0

    .line 741
    :cond_6
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method
