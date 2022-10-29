.class Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;
.super Ljava/lang/Object;
.source "KeyboardInputInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardInputInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputViewHolder"
.end annotation


# instance fields
.field private final container:Landroid/view/View;

.field private final inputView:Lcom/nuance/swype/input/InputView;

.field private final t9write:Lcom/nuance/input/swypecorelib/T9Write;

.field private final xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;)V
    .registers 5
    .param p1, "container"    # Landroid/view/View;
    .param p2, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p3, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p4, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->container:Landroid/view/View;

    .line 56
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->inputView:Lcom/nuance/swype/input/InputView;

    .line 57
    iput-object p3, p0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 58
    iput-object p4, p0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->t9write:Lcom/nuance/input/swypecorelib/T9Write;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/swype/input/InputView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->inputView:Lcom/nuance/swype/input/InputView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Lcom/nuance/input/swypecorelib/T9Write;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->t9write:Lcom/nuance/input/swypecorelib/T9Write;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardInputInflater$InputViewHolder;->container:Landroid/view/View;

    return-object v0
.end method
