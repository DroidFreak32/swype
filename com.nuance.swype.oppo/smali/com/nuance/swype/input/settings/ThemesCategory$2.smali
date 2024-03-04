.class Lcom/nuance/swype/input/settings/ThemesCategory$2;
.super Ljava/lang/Object;
.source "ThemesCategory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesCategory;->updateCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesCategory;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesCategory;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$2;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I
    .locals 3
    .param p1, "a"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p2, "b"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$2;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$000(Lcom/nuance/swype/input/settings/ThemesCategory;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$2;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$000(Lcom/nuance/swype/input/settings/ThemesCategory;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getNameResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 224
    check-cast p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesCategory$2;->compare(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I

    move-result v0

    return v0
.end method
