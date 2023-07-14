.class public final enum Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmojiSelectedSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

.field public static final enum EMOJEENIE:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

.field public static final enum NWP:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

.field public static final enum PICKER:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

.field public static final enum RECENT:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

.field public static final enum SHORTCUT:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;


# instance fields
.field private final mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    const-string/jumbo v1, "EMOJEENIE"

    const-string/jumbo v2, "emojeenie"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->EMOJEENIE:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    .line 282
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    const-string/jumbo v1, "SHORTCUT"

    const-string/jumbo v2, "shortcut"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->SHORTCUT:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    .line 283
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    const-string/jumbo v1, "NWP"

    const-string/jumbo v2, "nwp"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->NWP:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    .line 284
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    const-string/jumbo v1, "PICKER"

    const-string/jumbo v2, "picker"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->PICKER:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    .line 285
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    const-string/jumbo v1, "RECENT"

    const-string/jumbo v2, "recent"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->RECENT:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    .line 280
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->EMOJEENIE:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->SHORTCUT:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->NWP:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->PICKER:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->RECENT:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->mSource:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->mSource:Ljava/lang/String;

    return-object v0
.end method
