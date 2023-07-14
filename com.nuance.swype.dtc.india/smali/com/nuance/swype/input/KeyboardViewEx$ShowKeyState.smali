.class public final enum Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;
.super Ljava/lang/Enum;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ShowKeyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

.field public static final enum Moved:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

.field public static final enum Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

.field public static final enum Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    const-string/jumbo v1, "Pressed"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    const-string/jumbo v1, "Released"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    const-string/jumbo v1, "Moved"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Moved:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .line 555
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Moved:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->$VALUES:[Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

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
    .line 555
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 555
    const-class v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->$VALUES:[Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    return-object v0
.end method
