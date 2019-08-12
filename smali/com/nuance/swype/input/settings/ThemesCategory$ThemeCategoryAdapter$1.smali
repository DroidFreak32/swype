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
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    iput p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    invoke-static {}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$100()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    iget v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/inapp/CategoryItem;

    iget-object v0, v0, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/ThemeManager;->setCurrentCategoryId(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->access$200(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 291
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->showMoreThemes()V

    .line 292
    return-void
.end method
