.class public final enum Lcom/fsck/k9/Account$HideButtons;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HideButtons"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/Account$HideButtons;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/Account$HideButtons;

.field private static enum ALWAYS:Lcom/fsck/k9/Account$HideButtons;

.field private static enum KEYBOARD_AVAILABLE:Lcom/fsck/k9/Account$HideButtons;

.field public static final enum NEVER:Lcom/fsck/k9/Account$HideButtons;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    new-instance v0, Lcom/fsck/k9/Account$HideButtons;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/Account$HideButtons;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    new-instance v0, Lcom/fsck/k9/Account$HideButtons;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/Account$HideButtons;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$HideButtons;->ALWAYS:Lcom/fsck/k9/Account$HideButtons;

    new-instance v0, Lcom/fsck/k9/Account$HideButtons;

    const-string v1, "KEYBOARD_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/Account$HideButtons;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$HideButtons;->KEYBOARD_AVAILABLE:Lcom/fsck/k9/Account$HideButtons;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/Account$HideButtons;

    sget-object v1, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/Account$HideButtons;->ALWAYS:Lcom/fsck/k9/Account$HideButtons;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/Account$HideButtons;->KEYBOARD_AVAILABLE:Lcom/fsck/k9/Account$HideButtons;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/Account$HideButtons;->$VALUES:[Lcom/fsck/k9/Account$HideButtons;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$HideButtons;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Lcom/fsck/k9/Account$HideButtons;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$HideButtons;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/Account$HideButtons;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/fsck/k9/Account$HideButtons;->$VALUES:[Lcom/fsck/k9/Account$HideButtons;

    invoke-virtual {v0}, [Lcom/fsck/k9/Account$HideButtons;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/Account$HideButtons;

    return-object v0
.end method
