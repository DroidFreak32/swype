.class public final Lcom/google/api/client/auth/oauth2/BearerToken;
.super Ljava/lang/Object;
.source "BearerToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/BearerToken$AuthorizationHeaderAccessMethod;
    }
.end annotation


# static fields
.field static final INVALID_TOKEN_ERROR:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "\\s*error\\s*=\\s*\"?invalid_token\"?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/BearerToken;->INVALID_TOKEN_ERROR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/google/api/client/auth/oauth2/BearerToken$AuthorizationHeaderAccessMethod;

    invoke-direct {v0}, Lcom/google/api/client/auth/oauth2/BearerToken$AuthorizationHeaderAccessMethod;-><init>()V

    return-object v0
.end method
