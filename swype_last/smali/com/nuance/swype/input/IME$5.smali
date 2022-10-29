.class Lcom/nuance/swype/input/IME$5;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Lcom/nuance/swype/input/IME$IntentDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 2584
    iput-object p1, p0, Lcom/nuance/swype/input/IME$5;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2586
    const-string/jumbo v0, "wakeup"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2587
    return-void
.end method
