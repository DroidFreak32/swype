.class final enum Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermissionAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

.field public static final enum USER_ACTION:Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;


# instance fields
.field private final mAttrName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 235
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    const-string/jumbo v1, "USER_ACTION"

    const-string/jumbo v2, "UserAction"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->USER_ACTION:Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    .line 234
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->USER_ACTION:Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput-object p2, p0, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->mAttrName:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;
    .registers 1

    .prologue
    .line 234
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$PermissionAttribute;->mAttrName:Ljava/lang/String;

    return-object v0
.end method
