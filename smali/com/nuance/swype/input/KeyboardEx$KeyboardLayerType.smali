.class public final enum Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
.super Ljava/lang/Enum;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardLayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field public static final enum KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field public static final enum KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field public static final enum KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field public static final enum KEYBOARD_NUM_PW:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field public static final enum KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field public static final enum KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field public static final enum KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    const-string v1, "KEYBOARD_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 94
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    const-string v1, "KEYBOARD_SYMBOLS"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 95
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    const-string v1, "KEYBOARD_PHONE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 96
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    const-string v1, "KEYBOARD_EDIT"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 97
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    const-string v1, "KEYBOARD_NUM"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 98
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    const-string v1, "KEYBOARD_NUM_PW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM_PW:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 99
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    const-string v1, "KEYBOARD_INVALID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM_PW:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    return-object v0
.end method
