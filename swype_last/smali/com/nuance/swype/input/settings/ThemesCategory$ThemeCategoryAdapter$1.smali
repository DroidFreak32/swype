.class Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;
.super Ljava/lang/Object;
.source "ThemesCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    iput p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 488
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    # getter for: Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themesCategoryWeakReference:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->access$000(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 489
    .local v0, "category":Lcom/nuance/swype/input/settings/ThemesCategory;
    if-eqz v0, :cond_30

    .line 490
    # getter for: Lcom/nuance/swype/input/settings/ThemesCategory;->themeManager:Lcom/nuance/swype/input/ThemeManager;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$100(Lcom/nuance/swype/input/settings/ThemesCategory;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v2

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    iget v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/inapp/CategoryItem;

    .line 1024
    iget-object v1, v1, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 490
    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/ThemeManager;->setCurrentCategoryId(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    iget v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/inapp/CategoryItem;

    .line 2024
    iget-object v1, v1, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 491
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ThemesCategory;->showMoreThemes(Ljava/lang/String;)V

    .line 493
    :cond_30
    return-void
.end method
