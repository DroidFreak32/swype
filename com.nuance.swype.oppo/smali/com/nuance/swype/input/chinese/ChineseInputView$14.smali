.class Lcom/nuance/swype/input/chinese/ChineseInputView$14;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->produceAltCharacterText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/swype/input/KeyboardEx$Key;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0

    .prologue
    .line 4988
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$14;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 2
    .param p1, "key1"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "key2"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4991
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4988
    check-cast p1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView$14;->compare(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    return v0
.end method
