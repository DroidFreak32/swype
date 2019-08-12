.class final enum Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;
.super Ljava/lang/Enum;
.source "CJKCandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Tooltip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

.field public static final enum NOTMATCH_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

.field public static final enum SWYPE_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    const-string v1, "SWYPE_TOOLTIP"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->SWYPE_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    new-instance v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    const-string v1, "NOTMATCH_TOOLTIP"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->NOTMATCH_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    sget-object v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->SWYPE_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->NOTMATCH_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->$VALUES:[Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

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
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->$VALUES:[Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    return-object v0
.end method
