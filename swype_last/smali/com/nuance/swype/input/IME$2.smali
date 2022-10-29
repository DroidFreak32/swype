.class Lcom/nuance/swype/input/IME$2;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->getCandidatesViewCreate()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;

.field final synthetic val$appPreferences:Lcom/nuance/swype/input/AppPreferences;

.field final synthetic val$imeApp:Lcom/nuance/swype/input/IMEApplication;

.field final synthetic val$toggle:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;Landroid/widget/ImageButton;Lcom/nuance/swype/input/IMEApplication;Lcom/nuance/swype/input/AppPreferences;)V
    .registers 5
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/nuance/swype/input/IME$2;->this$0:Lcom/nuance/swype/input/IME;

    iput-object p2, p0, Lcom/nuance/swype/input/IME$2;->val$toggle:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/nuance/swype/input/IME$2;->val$imeApp:Lcom/nuance/swype/input/IMEApplication;

    iput-object p4, p0, Lcom/nuance/swype/input/IME$2;->val$appPreferences:Lcom/nuance/swype/input/AppPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 859
    iget-object v1, p0, Lcom/nuance/swype/input/IME$2;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v2, "hindiTransliteration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 860
    iget-object v1, p0, Lcom/nuance/swype/input/IME$2;->val$toggle:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/nuance/swype/input/IME$2;->val$imeApp:Lcom/nuance/swype/input/IMEApplication;

    sget v3, Lcom/nuance/swype/input/R$attr;->iconTranslitHiQwerty:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 861
    iget-object v1, p0, Lcom/nuance/swype/input/IME$2;->this$0:Lcom/nuance/swype/input/IME;

    const-string/jumbo v2, "hindiTransliteration"

    # invokes: Lcom/nuance/swype/input/IME;->toggleInputMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/nuance/swype/input/IME;->access$200(Lcom/nuance/swype/input/IME;Ljava/lang/String;)V

    .line 867
    :goto_28
    return-void

    .line 863
    :cond_29
    iget-object v1, p0, Lcom/nuance/swype/input/IME$2;->val$toggle:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/nuance/swype/input/IME$2;->val$imeApp:Lcom/nuance/swype/input/IMEApplication;

    sget v3, Lcom/nuance/swype/input/R$attr;->iconTranslitHiHindi:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 864
    iget-object v1, p0, Lcom/nuance/swype/input/IME$2;->val$appPreferences:Lcom/nuance/swype/input/AppPreferences;

    const-string/jumbo v2, "pref_hindi_input_mode"

    const-string/jumbo v3, "devanagariAlphabetic"

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "mode":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/IME$2;->this$0:Lcom/nuance/swype/input/IME;

    # invokes: Lcom/nuance/swype/input/IME;->toggleInputMode(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/nuance/swype/input/IME;->access$200(Lcom/nuance/swype/input/IME;Ljava/lang/String;)V

    goto :goto_28
.end method
