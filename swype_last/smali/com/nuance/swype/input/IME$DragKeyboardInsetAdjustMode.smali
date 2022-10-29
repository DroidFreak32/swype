.class public final enum Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;
.super Ljava/lang/Enum;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragKeyboardInsetAdjustMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

.field public static final enum ALL_INSETS:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

.field public static final enum NONE:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

.field public static final enum VISIBLE_INSETS:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    new-instance v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->NONE:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    .line 292
    new-instance v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    const-string/jumbo v1, "VISIBLE_INSETS"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->VISIBLE_INSETS:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    .line 297
    new-instance v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    const-string/jumbo v1, "ALL_INSETS"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->ALL_INSETS:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    .line 285
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    sget-object v1, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->NONE:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->VISIBLE_INSETS:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->ALL_INSETS:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->$VALUES:[Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

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
    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;
    .registers 3
    .param p0, "value"    # I

    .prologue
    .line 300
    invoke-static {}, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->values()[Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    move-result-object v0

    .line 301
    .local v0, "map":[Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;
    if-ltz p0, :cond_c

    array-length v1, v0

    if-ge p0, v1, :cond_c

    .line 302
    aget-object v1, v0, p0

    .line 304
    :goto_b
    return-object v1

    :cond_c
    sget-object v1, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->NONE:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    const-class v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;
    .registers 1

    .prologue
    .line 285
    sget-object v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->$VALUES:[Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    return-object v0
.end method
