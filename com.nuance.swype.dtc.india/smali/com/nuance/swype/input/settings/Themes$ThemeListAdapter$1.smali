.class Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;
.super Ljava/lang/Object;
.source "Themes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I

.field final synthetic val$theme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;Landroid/view/ViewGroup;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;->this$0:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;->val$theme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    iput p4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;->this$0:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->access$100(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;)Lcom/nuance/swype/input/settings/Themes;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;->val$theme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    iget v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/Themes;->access$200(Lcom/nuance/swype/input/settings/Themes;Landroid/view/ViewGroup;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;I)V

    .line 664
    return-void
.end method
