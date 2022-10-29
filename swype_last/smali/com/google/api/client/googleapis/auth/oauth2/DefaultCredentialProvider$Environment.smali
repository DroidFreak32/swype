.class final enum Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;
.super Ljava/lang/Enum;
.source "DefaultCredentialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

.field public static final enum APP_ENGINE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

.field public static final enum CLOUD_SHELL:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

.field public static final enum COMPUTE_ENGINE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

.field public static final enum ENVIRONMENT_VARIABLE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

.field public static final enum UNKNOWN:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

.field public static final enum WELL_KNOWN_FILE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->UNKNOWN:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    const-string/jumbo v1, "ENVIRONMENT_VARIABLE"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->ENVIRONMENT_VARIABLE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    const-string/jumbo v1, "WELL_KNOWN_FILE"

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->WELL_KNOWN_FILE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    const-string/jumbo v1, "CLOUD_SHELL"

    invoke-direct {v0, v1, v6}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->CLOUD_SHELL:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    const-string/jumbo v1, "APP_ENGINE"

    invoke-direct {v0, v1, v7}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->APP_ENGINE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    const-string/jumbo v1, "COMPUTE_ENGINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->COMPUTE_ENGINE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    sget-object v1, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->UNKNOWN:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->ENVIRONMENT_VARIABLE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->WELL_KNOWN_FILE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->CLOUD_SHELL:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->APP_ENGINE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->COMPUTE_ENGINE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->$VALUES:[Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->$VALUES:[Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    invoke-virtual {v0}, [Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-object v0
.end method
