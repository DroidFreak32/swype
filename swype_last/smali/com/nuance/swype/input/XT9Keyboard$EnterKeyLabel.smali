.class public final enum Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;
.super Ljava/lang/Enum;
.source "XT9Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/XT9Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterKeyLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

.field public static final enum EMOJI:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

.field public static final enum RETURN:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

.field public static final enum SEARCH:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    const-string/jumbo v1, "SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->SEARCH:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    .line 40
    new-instance v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    const-string/jumbo v1, "EMOJI"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->EMOJI:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    .line 41
    new-instance v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    const-string/jumbo v1, "RETURN"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->RETURN:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    sget-object v1, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->SEARCH:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->EMOJI:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->RETURN:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->$VALUES:[Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->$VALUES:[Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    return-object v0
.end method
