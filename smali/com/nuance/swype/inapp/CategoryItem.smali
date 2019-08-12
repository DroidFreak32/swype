.class public final Lcom/nuance/swype/inapp/CategoryItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"


# instance fields
.field public categoryId:Ljava/lang/String;

.field public themes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/nuance/swype/inapp/CategoryItem;->title:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/nuance/swype/inapp/CategoryItem;->themes:Ljava/util/List;

    .line 22
    return-void
.end method
