.class Lcom/nuance/swype/input/IME$11;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 3249
    iput-object p1, p0, Lcom/nuance/swype/input/IME$11;->this$0:Lcom/nuance/swype/input/IME;

    iput-object p2, p0, Lcom/nuance/swype/input/IME$11;->val$spw:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 3251
    iget-object v1, p0, Lcom/nuance/swype/input/IME$11;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$900(Lcom/nuance/swype/input/IME;)Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3252
    .local v0, "langName":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/IME$11;->val$spw:Lcom/nuance/swype/input/SpeechWrapper;

    iget-object v2, p0, Lcom/nuance/swype/input/IME$11;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/SpeechWrapper;->onChangeLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 3253
    return-void
.end method
