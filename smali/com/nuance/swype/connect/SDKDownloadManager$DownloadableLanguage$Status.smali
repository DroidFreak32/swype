.class public final enum Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
.super Ljava/lang/Enum;
.source "SDKDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field public static final enum CANCELED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field public static final enum DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field public static final enum DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field public static final enum INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field public static final enum STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field public static final enum UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field public static final enum UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 461
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const-string v1, "DOWNLOAD_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 462
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 463
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const-string v1, "UPDATE_AVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 464
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 465
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 466
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const-string v1, "CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->CANCELED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 467
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 460
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->CANCELED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->$VALUES:[Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

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
    .line 460
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 460
    const-class v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->$VALUES:[Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    return-object v0
.end method
