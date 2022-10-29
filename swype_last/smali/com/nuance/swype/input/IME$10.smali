.class Lcom/nuance/swype/input/IME$10;
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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 3516
    iput-object p1, p0, Lcom/nuance/swype/input/IME$10;->this$0:Lcom/nuance/swype/input/IME;

    iput-object p2, p0, Lcom/nuance/swype/input/IME$10;->val$spw:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3518
    const/4 v0, 0x5

    if-ne p2, v0, :cond_f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 3519
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3524
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0

    .line 3520
    :cond_f
    const/4 v0, 0x4

    if-ne p2, v0, :cond_d

    .line 3521
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3522
    iget-object v0, p0, Lcom/nuance/swype/input/IME$10;->val$spw:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->restartDictation()V

    goto :goto_d
.end method
