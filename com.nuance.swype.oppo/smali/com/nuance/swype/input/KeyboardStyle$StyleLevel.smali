.class public final enum Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
.super Ljava/lang/Enum;
.source "KeyboardStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StyleLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

.field public static final enum ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

.field public static final enum BASE:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

.field public static final enum KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

.field public static final enum KEYBOARD:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    const-string v1, "BASE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->BASE:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .line 31
    new-instance v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    const-string v1, "KEYBOARD"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEYBOARD:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .line 35
    new-instance v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    const-string v1, "KEY"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .line 39
    new-instance v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    sget-object v1, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->BASE:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEYBOARD:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->$VALUES:[Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->$VALUES:[Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    return-object v0
.end method
