.class Lcom/nuance/swype/input/settings/PersonalDictionary$1;
.super Ljava/lang/Object;
.source "PersonalDictionary.java"

# interfaces
.implements Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/PersonalDictionary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PersonalDictionary;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/nuance/swype/widget/ImageCompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Lcom/nuance/swype/widget/ImageCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    if-eqz p2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllWords()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->unselectAllWords()V

    goto :goto_0
.end method
