.class final Lcom/nuance/swype/startup/ComboBox$1;
.super Ljava/lang/Object;
.source "ComboBox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ComboBox;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ComboBox;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/nuance/swype/startup/ComboBox$1;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 229
    if-eqz p2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$1;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ComboBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/nuance/swype/startup/ComboBox$1;->this$0:Lcom/nuance/swype/startup/ComboBox;

    invoke-static {v1}, Lcom/nuance/swype/startup/ComboBox;->access$000(Lcom/nuance/swype/startup/ComboBox;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 234
    :cond_0
    return-void
.end method
