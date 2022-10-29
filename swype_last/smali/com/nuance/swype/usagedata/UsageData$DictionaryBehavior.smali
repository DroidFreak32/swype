.class final enum Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DictionaryBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

.field public static final enum EXPLICIT:Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

.field public static final enum IMPLICIT:Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;


# instance fields
.field private final behavior:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 355
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    const-string/jumbo v1, "EXPLICIT"

    const-string/jumbo v2, "Explicit"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->EXPLICIT:Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    .line 356
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    const-string/jumbo v1, "IMPLICIT"

    const-string/jumbo v2, "Implicit"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->IMPLICIT:Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->EXPLICIT:Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->IMPLICIT:Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

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
    .line 360
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 361
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->behavior:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 353
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;
    .registers 1

    .prologue
    .line 353
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$DictionaryBehavior;->behavior:Ljava/lang/String;

    return-object v0
.end method
