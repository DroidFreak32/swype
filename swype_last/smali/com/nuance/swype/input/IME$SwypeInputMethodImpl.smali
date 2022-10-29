.class Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;
.super Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwypeInputMethodImpl"
.end annotation


# instance fields
.field myToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/nuance/swype/input/IME;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/IME;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/IME$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/IME;
    .param p2, "x1"    # Lcom/nuance/swype/input/IME$1;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;-><init>(Lcom/nuance/swype/input/IME;)V

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->attachToken(Landroid/os/IBinder;)V

    .line 356
    iput-object p1, p0, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;->myToken:Landroid/os/IBinder;

    .line 357
    iget-object v0, p0, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->onTokenAttached()V

    .line 358
    return-void
.end method
