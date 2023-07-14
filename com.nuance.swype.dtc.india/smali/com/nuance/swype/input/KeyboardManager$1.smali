.class Lcom/nuance/swype/input/KeyboardManager$1;
.super Lcom/nuance/android/util/LruCache;
.source "KeyboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/android/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/nuance/swype/input/XT9Keyboard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/KeyboardManager;
    .param p2, "maxSize"    # I

    .prologue
    .line 34
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardManager$1;->this$0:Lcom/nuance/swype/input/KeyboardManager;

    invoke-direct {p0, p2}, Lcom/nuance/android/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Lcom/nuance/swype/input/XT9Keyboard;Lcom/nuance/swype/input/XT9Keyboard;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldKb"    # Lcom/nuance/swype/input/XT9Keyboard;
    .param p4, "newKb"    # Lcom/nuance/swype/input/XT9Keyboard;

    .prologue
    .line 41
    if-eqz p3, :cond_0

    .line 42
    invoke-virtual {p3}, Lcom/nuance/swype/input/XT9Keyboard;->destroyKeyboard()V

    .line 45
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/nuance/swype/input/XT9Keyboard;

    check-cast p4, Lcom/nuance/swype/input/XT9Keyboard;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/KeyboardManager$1;->entryRemoved(ZLjava/lang/Integer;Lcom/nuance/swype/input/XT9Keyboard;Lcom/nuance/swype/input/XT9Keyboard;)V

    return-void
.end method
