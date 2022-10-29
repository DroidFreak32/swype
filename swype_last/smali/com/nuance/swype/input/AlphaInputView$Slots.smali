.class public Lcom/nuance/swype/input/AlphaInputView$Slots;
.super Ljava/lang/Object;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slots"
.end annotation


# instance fields
.field private final slots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$Slots;->slots:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 607
    if-eqz p1, :cond_7

    .line 608
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$Slots;->slots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$Slots;->slots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 601
    return-void
.end method

.method public get(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$Slots;->slots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 617
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$Slots;->slots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 619
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
