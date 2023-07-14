.class public final enum Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackupAndSyncStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

.field public static final enum OFF:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

.field public static final enum ON:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

.field public static final enum REGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

.field public static final enum UNREGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;


# instance fields
.field private final status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    const-string/jumbo v1, "UNREGISTERED"

    const-string/jumbo v2, "Not Registered"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->UNREGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .line 337
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    const-string/jumbo v1, "REGISTERED"

    const-string/jumbo v2, "Registered"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->REGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .line 338
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    const-string/jumbo v1, "ON"

    const-string/jumbo v2, "On"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->ON:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .line 339
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    const-string/jumbo v1, "OFF"

    const-string/jumbo v2, "Off"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->OFF:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .line 335
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->UNREGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->REGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->ON:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->OFF:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 344
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->status:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 335
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->status:Ljava/lang/String;

    return-object v0
.end method
