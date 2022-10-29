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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/nuance/swype/widget/ImageCompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Lcom/nuance/swype/widget/ImageCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 83
    if-eqz p2, :cond_8

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    # invokes: Lcom/nuance/swype/input/settings/PersonalDictionary;->selectAllWords()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->access$100(Lcom/nuance/swype/input/settings/PersonalDictionary;)V

    .line 88
    :goto_7
    return-void

    .line 86
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$1;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    # invokes: Lcom/nuance/swype/input/settings/PersonalDictionary;->unselectAllWords()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->access$200(Lcom/nuance/swype/input/settings/PersonalDictionary;)V

    goto :goto_7
.end method
