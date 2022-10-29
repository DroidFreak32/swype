.class public final enum Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionUserAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

.field public static final enum ALLOWED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

.field public static final enum BLOCKED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

.field public static final enum DENIED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

.field public static final enum NEVER_SHOW_AGAIN:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    const-string/jumbo v1, "ALLOWED"

    const-string/jumbo v2, "Allowed"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->ALLOWED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 249
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    const-string/jumbo v1, "DENIED"

    const-string/jumbo v2, "Denied"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->DENIED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 250
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    const-string/jumbo v1, "NEVER_SHOW_AGAIN"

    const-string/jumbo v2, "Never Show Again"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->NEVER_SHOW_AGAIN:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 251
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    const-string/jumbo v1, "BLOCKED"

    const-string/jumbo v2, "Blocked (NSA Previously Selected"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->BLOCKED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    .line 247
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->ALLOWED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->DENIED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->NEVER_SHOW_AGAIN:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->BLOCKED:Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 257
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->result:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;
    .registers 1

    .prologue
    .line 247
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$PermissionUserAction;->result:Ljava/lang/String;

    return-object v0
.end method
