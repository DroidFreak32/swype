.class public final enum Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;
.super Ljava/lang/Enum;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShiftTransition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

.field public static final enum DROP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

.field public static final enum DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

.field public static final enum DROP_SHOW:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

.field public static final enum SWAP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    const-string v1, "DROP"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 366
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    const-string v1, "DROP_SHOW"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_SHOW:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 368
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    const-string v1, "DROP_HIDE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 370
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    const-string v1, "SWAP"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->SWAP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 362
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_SHOW:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->SWAP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

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
    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convert(I)Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 374
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->values()[Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 375
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->values()[Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    move-result-object v0

    aget-object v0, v0, p0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    const-class v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    return-object v0
.end method
