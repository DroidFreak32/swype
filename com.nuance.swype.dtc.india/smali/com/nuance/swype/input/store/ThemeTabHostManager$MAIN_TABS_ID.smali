.class public final enum Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;
.super Ljava/lang/Enum;
.source "ThemeTabHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/store/ThemeTabHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MAIN_TABS_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

.field public static final enum GET_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

.field public static final enum MY_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    const-string/jumbo v1, "MY_THEMES"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->MY_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    .line 74
    new-instance v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    const-string/jumbo v1, "GET_THEMES"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->GET_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    sget-object v1, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->MY_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->GET_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->$VALUES:[Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->$VALUES:[Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    return-object v0
.end method
