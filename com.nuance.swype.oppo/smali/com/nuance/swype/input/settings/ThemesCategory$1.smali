.class Lcom/nuance/swype/input/settings/ThemesCategory$1;
.super Ljava/lang/Object;
.source "ThemesCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesCategory;->onCreateCategoryListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesCategory;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesCategory;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->showThemesPrefs()V

    .line 91
    return-void
.end method
