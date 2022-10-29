.class public final enum Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;
.super Ljava/lang/Enum;
.source "ScrubGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

.field public static final enum ANTI_CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

.field public static final enum CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

.field public static final enum UNDEF:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    const-string/jumbo v1, "UNDEF"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->UNDEF:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    .line 30
    new-instance v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    const-string/jumbo v1, "CLOCKWISE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    .line 31
    new-instance v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    const-string/jumbo v1, "ANTI_CLOCKWISE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->ANTI_CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    sget-object v1, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->UNDEF:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->ANTI_CLOCKWISE:Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->$VALUES:[Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->$VALUES:[Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureDetector$Direction;

    return-object v0
.end method
