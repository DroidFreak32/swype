.class public enum Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;
.super Ljava/lang/Enum;
.source "StatisticsEnabledEditState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/stats/StatisticsEnabledEditState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "DefaultSelectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum CURSOR_REPOSITION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum MULTITAP_TIMEOUT:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum SELECTION_CHANGED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum SELECTION_WCL:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum SWYPE_NEXT_WORD:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum TAPPED_PREFIX:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

.field public static final enum UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$1;

    const-string/jumbo v1, "CURSOR_REPOSITION"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->CURSOR_REPOSITION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 181
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$2;

    const-string/jumbo v1, "GENERIC"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 182
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$3;

    const-string/jumbo v1, "MULTITAP_TOGGLE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 183
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$4;

    const-string/jumbo v1, "MULTITAP_TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TIMEOUT:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 184
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$5;

    const-string/jumbo v1, "SELECTION_WCL"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SELECTION_WCL:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 185
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$6;

    const-string/jumbo v1, "SELECTION_CHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SELECTION_CHANGED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 186
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$7;

    const-string/jumbo v1, "SWYPE_NEXT_WORD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SWYPE_NEXT_WORD:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 187
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$8;

    const-string/jumbo v1, "TAPPED_SPACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 188
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$9;

    const-string/jumbo v1, "TAPPED_PUNCTUATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 189
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$10;

    const-string/jumbo v1, "TAPPED_PREFIX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PREFIX:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 190
    new-instance v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$11;

    const-string/jumbo v1, "UNSPECIFIED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .line 179
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->CURSOR_REPOSITION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TIMEOUT:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SELECTION_WCL:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SELECTION_CHANGED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SWYPE_NEXT_WORD:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PREFIX:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->UNSPECIFIED:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->$VALUES:[Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

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
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/nuance/swype/stats/StatisticsEnabledEditState$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$1;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    const-class v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->$VALUES:[Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {v0}, [Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    return-object v0
.end method
