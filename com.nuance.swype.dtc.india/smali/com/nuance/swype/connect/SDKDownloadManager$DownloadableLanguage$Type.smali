.class public final enum Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
.super Ljava/lang/Enum;
.source "SDKDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

.field public static final enum AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

.field public static final enum BUILTIN:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

.field public static final enum DOWNLOADED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

.field public static final enum UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const-string/jumbo v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 429
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const-string/jumbo v1, "DOWNLOADED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->DOWNLOADED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 430
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const-string/jumbo v1, "UPDATABLE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 431
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    const-string/jumbo v1, "BUILTIN"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->BUILTIN:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 427
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->DOWNLOADED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->BUILTIN:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->$VALUES:[Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 427
    const-class v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->$VALUES:[Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    return-object v0
.end method
