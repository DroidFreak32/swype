.class public final enum Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
.super Ljava/lang/Enum;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

.field public static final enum AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

.field public static final enum CANCELED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

.field public static final enum DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

.field public static final enum INSTALLED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

.field public static final enum UPDATABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 680
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->INSTALLED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 681
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    const-string v1, "UPDATABLE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->UPDATABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 682
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 683
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->CANCELED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 678
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->INSTALLED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->UPDATABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->CANCELED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->$VALUES:[Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

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
    .line 678
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 678
    const-class v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->$VALUES:[Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    return-object v0
.end method
