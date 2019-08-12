.class final enum Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;
.super Ljava/lang/Enum;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PURCHASED_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

.field public static final enum NOT_PURCHASED:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

.field public static final enum PURCHASED:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    new-instance v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    const-string v1, "NOT_PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;->NOT_PURCHASED:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    .line 210
    new-instance v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;->PURCHASED:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    .line 208
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    sget-object v1, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;->NOT_PURCHASED:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;->PURCHASED:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;->$VALUES:[Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

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
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    const-class v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;->$VALUES:[Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;

    return-object v0
.end method
