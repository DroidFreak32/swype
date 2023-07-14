.class Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwypeThemeWeightComparator"
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
.field collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/nuance/swype/input/ThemeManager;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/ThemeManager;)V
    .locals 1

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;->this$0:Lcom/nuance/swype/input/ThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;->collator:Ljava/text/Collator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/ThemeManager;Lcom/nuance/swype/input/ThemeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/ThemeManager;
    .param p2, "x1"    # Lcom/nuance/swype/input/ThemeManager$1;

    .prologue
    .line 1654
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;-><init>(Lcom/nuance/swype/input/ThemeManager;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I
    .locals 3
    .param p1, "lhs"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p2, "rhs"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 1659
    iget v0, p2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->weight:I

    iget v1, p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->weight:I

    if-ne v0, v1, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;->collator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;->this$0:Lcom/nuance/swype/input/ThemeManager;

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->access$100(Lcom/nuance/swype/input/ThemeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;->this$0:Lcom/nuance/swype/input/ThemeManager;

    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->access$100(Lcom/nuance/swype/input/ThemeManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1663
    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->weight:I

    iget v1, p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->weight:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1654
    check-cast p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    check-cast p2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;->compare(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I

    move-result v0

    return v0
.end method
