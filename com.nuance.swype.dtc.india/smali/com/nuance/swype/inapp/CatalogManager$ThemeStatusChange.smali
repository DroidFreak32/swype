.class public final enum Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;
.super Ljava/lang/Enum;
.source "CatalogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/CatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeStatusChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

.field public static final enum THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

.field public static final enum THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

.field public static final enum THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

.field public static final enum THEME_NOSTATE:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

.field public static final enum THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

.field public static final enum THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    const-string/jumbo v1, "THEME_NOSTATE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_NOSTATE:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 127
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    const-string/jumbo v1, "THEME_PURCHASED"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 128
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    const-string/jumbo v1, "THEME_INSTALLING"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 129
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    const-string/jumbo v1, "THEME_INSTALLED"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 130
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    const-string/jumbo v1, "THEME_UNINSTALLED"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 131
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    const-string/jumbo v1, "THEME_INSTALL_CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 125
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_NOSTATE:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->$VALUES:[Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    const-class v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->$VALUES:[Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-virtual {v0}, [Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    return-object v0
.end method
