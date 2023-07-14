.class public final enum Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;
.super Ljava/lang/Enum;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "THEME_SOURCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

.field public static final enum CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

.field public static final enum EMBEDDED:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    const-string/jumbo v1, "EMBEDDED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->EMBEDDED:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    .line 117
    new-instance v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    const-string/jumbo v1, "CONNECT"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    sget-object v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->EMBEDDED:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->$VALUES:[Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->$VALUES:[Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    return-object v0
.end method
