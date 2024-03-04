.class Lcom/nuance/swype/input/IME$9;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->showDictationLanguageMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;

.field final synthetic val$spw:Lcom/nuance/swype/input/SpeechWrapper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 0

    .prologue
    .line 3230
    iput-object p1, p0, Lcom/nuance/swype/input/IME$9;->this$0:Lcom/nuance/swype/input/IME;

    iput-object p2, p0, Lcom/nuance/swype/input/IME$9;->val$spw:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3232
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3238
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3234
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 3235
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3236
    iget-object v0, p0, Lcom/nuance/swype/input/IME$9;->val$spw:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->restartDictation()V

    goto :goto_0
.end method
