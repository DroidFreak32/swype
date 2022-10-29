.class public final enum Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

.field public static final enum GOOGLE_PLAY:Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 196
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    const-string/jumbo v1, "GOOGLE_PLAY"

    const-string/jumbo v2, "Google Play"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->GOOGLE_PLAY:Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->GOOGLE_PLAY:Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput-object p2, p0, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->result:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->result:Ljava/lang/String;

    return-object v0
.end method
