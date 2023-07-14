.class public final enum Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
.super Ljava/lang/Enum;
.source "FingerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PressState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

.field public static final enum DOUBLE:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

.field public static final enum LONG:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

.field public static final enum PRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

.field public static final enum SHORT:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

.field public static final enum UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    const-string/jumbo v1, "UNPRESSED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .line 14
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    const-string/jumbo v1, "PRESSED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->PRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .line 15
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    const-string/jumbo v1, "SHORT"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->SHORT:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .line 16
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    const-string/jumbo v1, "LONG"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->LONG:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .line 17
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    const-string/jumbo v1, "DOUBLE"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->DOUBLE:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->PRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->SHORT:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->LONG:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->DOUBLE:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->$VALUES:[Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->$VALUES:[Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method
