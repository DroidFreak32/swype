.class Lcom/nuance/swype/input/settings/Themes$3;
.super Ljava/lang/Object;
.source "Themes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Themes;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Themes;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Themes;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Themes;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$3;->this$0:Lcom/nuance/swype/input/settings/Themes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$3;->this$0:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes;->navigateBackFromBundlePage()V

    .line 198
    return-void
.end method
