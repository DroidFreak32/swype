.class public Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;
.super Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JapaneseHandwritingInputMode"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 2642
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 2644
    return-void
.end method


# virtual methods
.method public getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;
    .registers 3

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;->mLayouts:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 2651
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;->mLayouts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2653
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
