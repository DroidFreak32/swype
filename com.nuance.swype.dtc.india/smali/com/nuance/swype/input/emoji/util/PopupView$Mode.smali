.class public final enum Lcom/nuance/swype/input/emoji/util/PopupView$Mode;
.super Ljava/lang/Enum;
.source "PopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/util/PopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/emoji/util/PopupView$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

.field public static final enum MODE_DEFAULT:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

.field public static final enum MODE_DISABLE_HW_ACCEL:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

.field public static final enum MODE_ENABLE_HW_LAYER:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    const-string/jumbo v1, "MODE_ENABLE_HW_LAYER"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->MODE_ENABLE_HW_LAYER:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    .line 27
    new-instance v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    const-string/jumbo v1, "MODE_DISABLE_HW_ACCEL"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->MODE_DISABLE_HW_ACCEL:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    .line 28
    new-instance v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    const-string/jumbo v1, "MODE_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->MODE_DEFAULT:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    sget-object v1, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->MODE_ENABLE_HW_LAYER:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->MODE_DISABLE_HW_ACCEL:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->MODE_DEFAULT:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->$VALUES:[Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/util/PopupView$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/emoji/util/PopupView$Mode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->$VALUES:[Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    return-object v0
.end method
