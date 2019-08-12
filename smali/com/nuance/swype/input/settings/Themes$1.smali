.class Lcom/nuance/swype/input/settings/Themes$1;
.super Ljava/lang/Object;
.source "Themes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Themes;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$1;->this$0:Lcom/nuance/swype/input/settings/Themes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$1;->this$0:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Themes;->showThemesPrefs()V

    .line 93
    return-void
.end method
